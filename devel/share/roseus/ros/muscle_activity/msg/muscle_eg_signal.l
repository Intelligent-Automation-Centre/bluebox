;; Auto-generated. Do not edit!


(when (boundp 'muscle_activity::muscle_eg_signal)
  (if (not (find-package "MUSCLE_ACTIVITY"))
    (make-package "MUSCLE_ACTIVITY"))
  (shadow 'muscle_eg_signal (find-package "MUSCLE_ACTIVITY")))
(unless (find-package "MUSCLE_ACTIVITY::MUSCLE_EG_SIGNAL")
  (make-package "MUSCLE_ACTIVITY::MUSCLE_EG_SIGNAL"))

(in-package "ROS")
;;//! \htmlinclude muscle_eg_signal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass muscle_activity::muscle_eg_signal
  :super ros::object
  :slots (_header _name _eg_signal ))

(defmethod muscle_activity::muscle_eg_signal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:eg_signal __eg_signal) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _eg_signal __eg_signal)
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
  (:eg_signal
   (&optional __eg_signal)
   (if __eg_signal (setq _eg_signal __eg_signal)) _eg_signal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float32[] _eg_signal
    (* 4    (length _eg_signal)) 4
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
     ;; float32[] _eg_signal
     (write-long (length _eg_signal) s)
     (dotimes (i (length _eg_signal))
       (sys::poke (elt _eg_signal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32[] _eg_signal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _eg_signal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _eg_signal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get muscle_activity::muscle_eg_signal :md5sum-) "8ecdb2d26a43893b3259d731510454fb")
(setf (get muscle_activity::muscle_eg_signal :datatype-) "muscle_activity/muscle_eg_signal")
(setf (get muscle_activity::muscle_eg_signal :definition-)
      "# This message hold data that describes the Electromyography signal
#
# this messages conatines an arry based on the defined \"name\" sensors (arm, forearm, back, thigh, calf,ect)
#
#
#
#

Header header
string[] name
float32[] eg_signal

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



(provide :muscle_activity/muscle_eg_signal "8ecdb2d26a43893b3259d731510454fb")


