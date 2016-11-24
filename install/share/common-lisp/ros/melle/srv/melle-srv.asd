
(cl:in-package :asdf)

(defsystem "melle-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Http" :depends-on ("_package_Http"))
    (:file "_package_Http" :depends-on ("_package"))
  ))