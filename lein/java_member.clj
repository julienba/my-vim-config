(ns java-member)

;
; Copyright © 2023 Peter Monks
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;     http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.
;
; SPDX-License-Identifier: Apache-2.0
;

(require '[clojure.string  :as s])
(require '[clojure.reflect :as cr])

(defn object->class
  "Converts any object into a java.lang.Class."
  [obj]
  (cond
    (class?  obj) obj
; Note: Treating symbols as Java classes makes it impossible to introspect on
;       Clojure's symbol class itself.
;    (symbol? obj) (let [ns   (or (namespace obj) "java.lang")
;                      name (name obj)]
;                  (Class/forName (str ns "." name)))
    :else       (class obj)))

(defn type->string
  "Converts a Java object or class (including things like primitive arrays) to a
  human readable, idiomatic Clojure string."
  [t]
  (cr/typename (if (= java.lang.Class (class t))
                 t
                 (object->class t))))

(defn member-type->string
  "Converts a member type (e.g. its :type or one of its :parameter-types) to a
  human readable, idiomatic Clojure string."
  [t]
  (if (= "void" (str t))
    "nil"
    (s/replace (str t) "<>" "[]")))

(defn params->string
  "Converts the parameter types of a member to a human readable, idiomatic
  Clojure string."
  [params]
  (s/join " " (map member-type->string params)))

(defmulti member->string
  "Returns a human-readable, idiomatic Clojure string representation of the
  given member contained within the given class or object (e.g. returned from
  clojure.reflect/reflect)."
  (fn [_ m] (class m)))

(defmethod member->string clojure.reflect.Constructor
  [x m]
  (let [tn (type->string x)]
    (when (= tn (str (:declaring-class m)))    ; Constructors are not inherited in Java, yet they show up in the results of cr/reflect, so we filter them out.
      (str (when-not (contains? (:flags m) :public) "<non-public> ")
           "(" tn "."
           (let [params (str " "
                             (params->string (:parameter-types m)))]
             (when-not (s/blank? params) params))
           ") => " tn))))   ; Java constructors have an implicit return type of the type itself - just make it explicit as that's closer to how they're used in Clojure

(defmethod member->string clojure.reflect.Method
  [x m]
  (let [tn (type->string x)]
    (str (when-not (contains? (:flags m) :public) "<non-public> ")
         "("
         (if (contains? (:flags m) :static)
           (str tn "/")
           ".")
         (:name m)
         (let [params (str " "
                           (s/join " " (concat (when-not (contains? (:flags m) :static) [tn])
                                               (map member-type->string (:parameter-types m)))))]   ; We don't use params->string here as we want the collection
           (when-not (s/blank? params) params))
         ") => " (member-type->string (:return-type m)))))

(defmethod member->string clojure.reflect.Field
  [x m]
  (let [tn (type->string x)]
    (str
      (when-not (contains? (:flags m) :public) "<non-public> ")
      (if (contains? (:flags m) :static)
        (str tn "/" (:name m) " => " (:type m))
        (str "(.-" (:name m) " " tn ") => " (:type m))))))

(defn member-sort
  "Function for use in sort-by with Java members."
  [m]
  (when m
    (str (if (contains? (:flags m) :public) "0" "1")
         "-"
         (if (contains? (:flags m) :static) "0" "1")
         "-"
         (condp = (class m)    ; Note: case doesn't work property with class literals - see https://stackoverflow.com/questions/12028944/clojure-case-statement-with-classes
           clojure.reflect.Field       "0"
           clojure.reflect.Constructor "1"
           clojure.reflect.Method      "2")
         "-"
         (:name m)
         "-"
         (str (count (:parameter-types m)))
         "-"
         (params->string (:parameter-types m)))))

(defn java-members
  "Returns a human-readable string representation of all of the Java members
  (constructors, methods, fields) in the given class or object, including those
  inherited from superclasses, as semi-idiomatic Clojure code. Defaults to
  public members only, add {:public-only false} to get all."
  [x & {public-only :public-only :or {public-only true}}]
  (when x
    (let [clazz (object->class x)]
      (->> (cr/reflect clazz :ancestors true)
           :members
           (filter #(not (contains? (:flags %) :synthetic)))  ; Remove synthetic (compiler-inserted) members
           (filter #(or (not public-only) (contains? (:flags %) :public)))
           (sort-by member-sort)
           (map (partial member->string clazz))
           distinct
           (filter #(not (s/blank? %)))
           (s/join "\n")))))

(defn print-java-members
  "Prints to stdout a human-readable string representation of all of the Java
  members (constructors, methods, fields) in the given class or object,
  including those inherited from superclasses, as semi-idiomatic Clojure code.
  Defaults to public members only, add {:public-only false} to get all."
  [x & {public-only :public-only :or {public-only true}}]
  (let [clazz (object->class x)]
    (println "--------------------")
    (println (str (when-not (= java.lang.Class (class x)) (str "\"" x "\" of type "))
                  (type->string clazz)
                  " has these"
                  (when public-only " public")
                  " Java members:\n"))
    (println (java-members clazz {:public-only public-only}))))