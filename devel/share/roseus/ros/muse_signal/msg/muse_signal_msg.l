;; Auto-generated. Do not edit!


(when (boundp 'muse_signal::muse_signal_msg)
  (if (not (find-package "MUSE_SIGNAL"))
    (make-package "MUSE_SIGNAL"))
  (shadow 'muse_signal_msg (find-package "MUSE_SIGNAL")))
(unless (find-package "MUSE_SIGNAL::MUSE_SIGNAL_MSG")
  (make-package "MUSE_SIGNAL::MUSE_SIGNAL_MSG"))

(in-package "ROS")
;;//! \htmlinclude muse_signal_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass muse_signal::muse_signal_msg
  :super ros::object
  :slots (_header _name _signal ))

(defmethod muse_signal::muse_signal_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:signal __signal) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _signal __signal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _signal
    (* 8    (length _signal)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _signal
     (write-long (length _signal) s)
     (dotimes (i (length _signal))
       (sys::poke (elt _signal i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _signal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _signal i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get muse_signal::muse_signal_msg :md5sum-) "b1f20b4a32a60f17a676c278f6e49d2b")
(setf (get muse_signal::muse_signal_msg :datatype-) "muse_signal/muse_signal_msg")
(setf (get muse_signal::muse_signal_msg :definition-)
      "# This message hold data that describes the temperature  of the Muse headband signal
#
# this messages conatines an arry based on the defined \"name\" sensors ()
#
#
#
#

Header header
string[] name
float64[] signal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :muse_signal/muse_signal_msg "b1f20b4a32a60f17a676c278f6e49d2b")


