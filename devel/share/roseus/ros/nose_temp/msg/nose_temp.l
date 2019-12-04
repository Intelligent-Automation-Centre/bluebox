;; Auto-generated. Do not edit!


(when (boundp 'nose_temp::nose_temp)
  (if (not (find-package "NOSE_TEMP"))
    (make-package "NOSE_TEMP"))
  (shadow 'nose_temp (find-package "NOSE_TEMP")))
(unless (find-package "NOSE_TEMP::NOSE_TEMP")
  (make-package "NOSE_TEMP::NOSE_TEMP"))

(in-package "ROS")
;;//! \htmlinclude nose_temp.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nose_temp::nose_temp
  :super ros::object
  :slots (_header _temprature _variance ))

(defmethod nose_temp::nose_temp
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:temprature __temprature) 0.0)
    ((:variance __variance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _temprature (float __temprature))
   (setq _variance (float __variance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:temprature
   (&optional __temprature)
   (if __temprature (setq _temprature __temprature)) _temprature)
  (:variance
   (&optional __variance)
   (if __variance (setq _variance __variance)) _variance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _temprature
    8
    ;; float64 _variance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _temprature
       (sys::poke _temprature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _variance
       (sys::poke _variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _temprature
     (setq _temprature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _variance
     (setq _variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nose_temp::nose_temp :md5sum-) "8c425f1f093219ce6fd8452e59aff77b")
(setf (get nose_temp::nose_temp :datatype-) "nose_temp/nose_temp")
(setf (get nose_temp::nose_temp :definition-)
      "# This message hold data that describes the temperature  of the nose signal
#
# this messages conatines an arry based on the defined \"name\" sensors (arm, forearm, back, thigh, calf,ect)
#
#
#
#

Header header
float64 temprature
float64 variance

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



(provide :nose_temp/nose_temp "8c425f1f093219ce6fd8452e59aff77b")


