{:user {:plugins [[lein-localrepo "0.4.0"]
                  [lein-auto "0.1.3"]
                  [lein-cloverage "1.2.2"]]
        :repl-options {:timeout 200000}
        :dependencies [[compliment "0.3.11"]
                       [vvvvalvalval/scope-capture "0.3.2"]]
                       ;[org.rksm/suitable "0.3.5" :exclusions [clojurescript org.clojure/clojurescript]]]

        :injections [(load-file (str (System/getProperty "user.home") "/.lein/..clj"))
                     (require 'jba)
                     (require 'sc.api)]}}

