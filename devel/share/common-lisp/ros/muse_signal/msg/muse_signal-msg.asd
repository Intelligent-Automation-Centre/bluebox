
(cl:in-package :asdf)

(defsystem "muse_signal-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "muse_signal_msg" :depends-on ("_package_muse_signal_msg"))
    (:file "_package_muse_signal_msg" :depends-on ("_package"))
  ))