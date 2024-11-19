{:user {:plugins [#_[lein-localrepo "0.4.0"]
                  #_[lein-auto "0.1.3"]
                  #_[lein-ancient "1.0.0-RC3"]
                  #_[lein-nsorg "0.3.0"]
                  #_[lein-cloverage "1.2.2"]
                  #_[cider/cider-nrepl "0.28.5"]]
        :repl-options {:timeout 200000
                       ;:nrepl-middleware ["cider.nrepl/cider-middleware"]
                       }
        :dependencies [[djblue/portal "0.58.2"]
                       #_[nrepl"1.0.0"]
                       #_[com.google.protobuf/protobuf-java "3.25.1"]
                       #_[org.clojure/clojure "1.11.1"]
                       #_[org.clojars.abhinav/snitch "0.1.14" :exclusions [com.cognitect/transit-java org.clojure/clojure nrepl]]]

        ;; :dependencies [[compliment "0.3.11"]
        ;;                [vvvvalvalval/scope-capture "0.3.2"]]
                       ;[org.rksm/suitable "0.3.5" :exclusions [clojurescript org.clojure/clojurescript]]]
;;        :global-vars {*warn-on-reflection* true
;;                      *assert* true
;;                      *print-meta* false}

        :injections [(load-file (str (System/getProperty "user.home") "/.lein/jba.clj"))
                     (require 'jba)
                     (load-file (str (System/getProperty "user.home") "/.lein/java_member.clj"))
                     (require 'java-member)]}}
                     ;(require 'sc.api)
                     ;(require 'clojure.inspector)]}}
