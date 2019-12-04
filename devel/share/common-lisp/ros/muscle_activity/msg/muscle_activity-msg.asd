
(cl:in-package :asdf)

(defsystem "muscle_activity-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "muscle_eg_signal" :depends-on ("_package_muscle_eg_signal"))
    (:file "_package_muscle_eg_signal" :depends-on ("_package"))
  ))