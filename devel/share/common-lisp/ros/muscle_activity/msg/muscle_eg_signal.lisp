; Auto-generated. Do not edit!


(cl:in-package muscle_activity-msg)


;//! \htmlinclude muscle_eg_signal.msg.html

(cl:defclass <muscle_eg_signal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (eg_signal
    :reader eg_signal
    :initarg :eg_signal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass muscle_eg_signal (<muscle_eg_signal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <muscle_eg_signal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'muscle_eg_signal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name muscle_activity-msg:<muscle_eg_signal> is deprecated: use muscle_activity-msg:muscle_eg_signal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <muscle_eg_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader muscle_activity-msg:header-val is deprecated.  Use muscle_activity-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <muscle_eg_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader muscle_activity-msg:name-val is deprecated.  Use muscle_activity-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'eg_signal-val :lambda-list '(m))
(cl:defmethod eg_signal-val ((m <muscle_eg_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader muscle_activity-msg:eg_signal-val is deprecated.  Use muscle_activity-msg:eg_signal instead.")
  (eg_signal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <muscle_eg_signal>) ostream)
  "Serializes a message object of type '<muscle_eg_signal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'eg_signal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'eg_signal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <muscle_eg_signal>) istream)
  "Deserializes a message object of type '<muscle_eg_signal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'eg_signal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'eg_signal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<muscle_eg_signal>)))
  "Returns string type for a message object of type '<muscle_eg_signal>"
  "muscle_activity/muscle_eg_signal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'muscle_eg_signal)))
  "Returns string type for a message object of type 'muscle_eg_signal"
  "muscle_activity/muscle_eg_signal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<muscle_eg_signal>)))
  "Returns md5sum for a message object of type '<muscle_eg_signal>"
  "8ecdb2d26a43893b3259d731510454fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'muscle_eg_signal)))
  "Returns md5sum for a message object of type 'muscle_eg_signal"
  "8ecdb2d26a43893b3259d731510454fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<muscle_eg_signal>)))
  "Returns full string definition for message of type '<muscle_eg_signal>"
  (cl:format cl:nil "# This message hold data that describes the Electromyography signal~%#~%# this messages conatines an arry based on the defined \"name\" sensors (arm, forearm, back, thigh, calf,ect)~%#~%#~%#~%#~%~%Header header~%string[] name~%float32[] eg_signal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'muscle_eg_signal)))
  "Returns full string definition for message of type 'muscle_eg_signal"
  (cl:format cl:nil "# This message hold data that describes the Electromyography signal~%#~%# this messages conatines an arry based on the defined \"name\" sensors (arm, forearm, back, thigh, calf,ect)~%#~%#~%#~%#~%~%Header header~%string[] name~%float32[] eg_signal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <muscle_eg_signal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'eg_signal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <muscle_eg_signal>))
  "Converts a ROS message object to a list"
  (cl:list 'muscle_eg_signal
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':eg_signal (eg_signal msg))
))
