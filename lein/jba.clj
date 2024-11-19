(ns jba
  "Inspired from [https://github.com/ChrisBlom/dotfiles/blob/master/dot/lein/..clj](https://github.com/ChrisBlom/dotfiles/blob/master/dot/lein/..clj)
Dev utils
Don't include this in production code, keep it in you lein profile, it personal stuff, like a shameful secret.
To make it available in all clojure projects add this to your leiningen profile:
:injections
[(load-file (str (System/getProperty \"user.home\") \"/.lein/..clj\"))
(require '.)]"
  (:require
   [clojure.pprint]
   [clojure.repl :refer [demunge]]
   [clojure.core.server]
   [clojure.test]
   [clojure.string :as string]
   #_[snitch.core :refer [defn* defmethod* *fn *let]]))

(defn start-repl [& [port]]
  (clojure.core.server/start-server
   {:name "socket-repl"
    :port (or port 1234)
    :accept 'clojure.main/repl
    :address "localhost"}))

(defn run-test [ns]
  (let [report (atom [])]
    (tap> report)
    (with-redefs [clojure.test/do-report #(swap! report conj %)]
      (clojure.test/run-tests ns))))

(defn redirect-log-to-tap!
  "Source: https://github.com/seancorfield/dot-clojure/blob/4431e13ed66aa9eabb424b6b89a10639b5f3f71d/src/org/corfield/dev/repl.clj#L87"
  []
  ;; if Portal and clojure.tools.logging are both present,
  ;; cause all (successful) logging to also be tap>'d:
  (try
    ;; if we have Portal on the classpath...
    (require 'portal.console)
    ;; ...then install a tap> ahead of tools.logging:
    (let [log-star (requiring-resolve 'clojure.tools.logging/log*)
          log*-fn  (deref log-star)]
      (alter-var-root
       log-star
       (constantly
        (fn [logger level throwable message]
          (try
            (let [^StackTraceElement frame (nth (.getStackTrace (Throwable. "")) 2)
                  class-name (symbol (demunge (.getClassName frame)))]
                ;; only called for enabled log levels:
              (tap>
               (with-meta
                 {:form     '()
                  :level    level
                  :result   (or throwable message)
                  :ns       (symbol (or (namespace class-name)
                                        ;; fully-qualified classname - strip class:
                                        (string/replace (name class-name) #"\.[^\.]*$" "")))
                  :file     (.getFileName frame)
                  :line     (.getLineNumber frame)
                  :column   0
                  :time     (java.util.Date.)
                  :runtime  :clj}
                 {:dev.repl/logging true})))
            (catch Throwable _))
          (log*-fn logger level throwable message)))))
    (println "Logging will be tap>'d...")
    (catch Throwable _)))

;; https://gist.github.com/pmonks/223e60def27266e79fff47de734d060a
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

