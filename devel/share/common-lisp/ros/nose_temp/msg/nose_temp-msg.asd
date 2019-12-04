
(cl:in-package :asdf)

(defsystem "nose_temp-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "nose_temp" :depends-on ("_package_nose_temp"))
    (:file "_package_nose_temp" :depends-on ("_package"))
  ))