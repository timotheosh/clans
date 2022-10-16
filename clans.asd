(defsystem "clans"
  :version "0.1.0"
  :author "Tim Hawes"
  :license "MIT"
  :depends-on (#:trivial-ssh
               #:cl-ppcre
               #:modf)
  :components ((:module "src"
                :components
                ((:file "package")
                 (:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "clans/tests")))
  :build-operation "asdf:program-op"
  :build-pathname "target/clans"
  :entry-point "clans:-main")

(defsystem "clans/tests"
  :author "Tim Hawes"
  :license "MIT"
  :depends-on ("clans"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for clans"
  :perform (test-op (op c) (symbol-call :rove :run c)))
