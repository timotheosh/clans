(defpackage clans/tests/main
  (:use :cl
        :clans
        :rove))
(in-package :clans/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :clans)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
