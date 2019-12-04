
(cl:in-package :asdf)

(defsystem "utility_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "get_time" :depends-on ("_package_get_time"))
    (:file "_package_get_time" :depends-on ("_package"))
  ))