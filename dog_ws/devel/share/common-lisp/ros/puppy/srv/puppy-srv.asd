
(cl:in-package :asdf)

(defsystem "puppy-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HumanActions" :depends-on ("_package_HumanActions"))
    (:file "_package_HumanActions" :depends-on ("_package"))
  ))