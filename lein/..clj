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
   [clojure.repl]
   [clojure.core.server]))

(defn start-repl [& [port]]
  (clojure.core.server/start-server
   {:name "socket-repl"
    :port (or port 1234)
    :accept 'clojure.main/repl
    :address "localhost"}))
