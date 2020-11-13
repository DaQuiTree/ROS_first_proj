
(cl:in-package :asdf)

(defsystem "puppy-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PuppyHealth" :depends-on ("_package_PuppyHealth"))
    (:file "_package_PuppyHealth" :depends-on ("_package"))
  ))