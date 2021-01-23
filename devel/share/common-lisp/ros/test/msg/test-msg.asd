
(cl:in-package :asdf)

(defsystem "test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "adder" :depends-on ("_package_adder"))
    (:file "_package_adder" :depends-on ("_package"))
  ))