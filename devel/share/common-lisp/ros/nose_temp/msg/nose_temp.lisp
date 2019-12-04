; Auto-generated. Do not edit!


(cl:in-package nose_temp-msg)


;//! \htmlinclude nose_temp.msg.html

(cl:defclass <nose_temp> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (temprature
    :reader temprature
    :initarg :temprature
    :type cl:float
    :initform 0.0)
   (variance
    :reader variance
    :initarg :variance
    :type cl:float
    :initform 0.0))
)

(cl:defclass nose_temp (<nose_temp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nose_temp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nose_temp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nose_temp-msg:<nose_temp> is deprecated: use nose_temp-msg:nose_temp instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <nose_temp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nose_temp-msg:header-val is deprecated.  Use nose_temp-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'temprature-val :lambda-list '(m))
(cl:defmethod temprature-val ((m <nose_temp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nose_temp-msg:temprature-val is deprecated.  Use nose_temp-msg:temprature instead.")
  (temprature m))

(cl:ensure-generic-function 'variance-val :lambda-list '(m))
(cl:defmethod variance-val ((m <nose_temp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nose_temp-msg:variance-val is deprecated.  Use nose_temp-msg:variance instead.")
  (variance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nose_temp>) ostream)
  "Serializes a message object of type '<nose_temp>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temprature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nose_temp>) istream)
  "Deserializes a message object of type '<nose_temp>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temprature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'variance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nose_temp>)))
  "Returns string type for a message object of type '<nose_temp>"
  "nose_temp/nose_temp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nose_temp)))
  "Returns string type for a message object of type 'nose_temp"
  "nose_temp/nose_temp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nose_temp>)))
  "Returns md5sum for a message object of type '<nose_temp>"
  "8c425f1f093219ce6fd8452e59aff77b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nose_temp)))
  "Returns md5sum for a message object of type 'nose_temp"
  "8c425f1f093219ce6fd8452e59aff77b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nose_temp>)))
  "Returns full string definition for message of type '<nose_temp>"
  (cl:format cl:nil "# This message hold data that describes the temperature  of the nose signal~%#~%# this messages conatines an arry based on the defined \"name\" sensors (arm, forearm, back, thigh, calf,ect)~%#~%#~%#~%#~%~%Header header~%float64 temprature~%float64 variance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nose_temp)))
  "Returns full string definition for message of type 'nose_temp"
  (cl:format cl:nil "# This message hold data that describes the temperature  of the nose signal~%#~%# this messages conatines an arry based on the defined \"name\" sensors (arm, forearm, back, thigh, calf,ect)~%#~%#~%#~%#~%~%Header header~%float64 temprature~%float64 variance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nose_temp>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nose_temp>))
  "Converts a ROS message object to a list"
  (cl:list 'nose_temp
    (cl:cons ':header (header msg))
    (cl:cons ':temprature (temprature msg))
    (cl:cons ':variance (variance msg))
))
