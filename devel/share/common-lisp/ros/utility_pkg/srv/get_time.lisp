; Auto-generated. Do not edit!


(cl:in-package utility_pkg-srv)


;//! \htmlinclude get_time-request.msg.html

(cl:defclass <get_time-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform ""))
)

(cl:defclass get_time-request (<get_time-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_time-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_time-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name utility_pkg-srv:<get_time-request> is deprecated: use utility_pkg-srv:get_time-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <get_time-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utility_pkg-srv:cmd-val is deprecated.  Use utility_pkg-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_time-request>) ostream)
  "Serializes a message object of type '<get_time-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_time-request>) istream)
  "Deserializes a message object of type '<get_time-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_time-request>)))
  "Returns string type for a service object of type '<get_time-request>"
  "utility_pkg/get_timeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_time-request)))
  "Returns string type for a service object of type 'get_time-request"
  "utility_pkg/get_timeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_time-request>)))
  "Returns md5sum for a message object of type '<get_time-request>"
  "d4463b49bd5bb77dbd8c4356f5dc1c28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_time-request)))
  "Returns md5sum for a message object of type 'get_time-request"
  "d4463b49bd5bb77dbd8c4356f5dc1c28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_time-request>)))
  "Returns full string definition for message of type '<get_time-request>"
  (cl:format cl:nil "string cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_time-request)))
  "Returns full string definition for message of type 'get_time-request"
  (cl:format cl:nil "string cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_time-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_time-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_time-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude get_time-response.msg.html

(cl:defclass <get_time-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:string
    :initform ""))
)

(cl:defclass get_time-response (<get_time-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_time-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_time-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name utility_pkg-srv:<get_time-response> is deprecated: use utility_pkg-srv:get_time-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <get_time-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utility_pkg-srv:res-val is deprecated.  Use utility_pkg-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_time-response>) ostream)
  "Serializes a message object of type '<get_time-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_time-response>) istream)
  "Deserializes a message object of type '<get_time-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'res) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_time-response>)))
  "Returns string type for a service object of type '<get_time-response>"
  "utility_pkg/get_timeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_time-response)))
  "Returns string type for a service object of type 'get_time-response"
  "utility_pkg/get_timeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_time-response>)))
  "Returns md5sum for a message object of type '<get_time-response>"
  "d4463b49bd5bb77dbd8c4356f5dc1c28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_time-response)))
  "Returns md5sum for a message object of type 'get_time-response"
  "d4463b49bd5bb77dbd8c4356f5dc1c28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_time-response>)))
  "Returns full string definition for message of type '<get_time-response>"
  (cl:format cl:nil "string res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_time-response)))
  "Returns full string definition for message of type 'get_time-response"
  (cl:format cl:nil "string res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_time-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'res))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_time-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_time-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_time)))
  'get_time-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_time)))
  'get_time-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_time)))
  "Returns string type for a service object of type '<get_time>"
  "utility_pkg/get_time")