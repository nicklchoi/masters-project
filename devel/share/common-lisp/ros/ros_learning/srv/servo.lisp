; Auto-generated. Do not edit!


(cl:in-package ros_learning-srv)


;//! \htmlinclude servo-request.msg.html

(cl:defclass <servo-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass servo-request (<servo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_learning-srv:<servo-request> is deprecated: use ros_learning-srv:servo-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <servo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-srv:a-val is deprecated.  Use ros_learning-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servo-request>) ostream)
  "Serializes a message object of type '<servo-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servo-request>) istream)
  "Deserializes a message object of type '<servo-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servo-request>)))
  "Returns string type for a service object of type '<servo-request>"
  "ros_learning/servoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servo-request)))
  "Returns string type for a service object of type 'servo-request"
  "ros_learning/servoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servo-request>)))
  "Returns md5sum for a message object of type '<servo-request>"
  "019706110004b728d56d8baaa8e32797")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servo-request)))
  "Returns md5sum for a message object of type 'servo-request"
  "019706110004b728d56d8baaa8e32797")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servo-request>)))
  "Returns full string definition for message of type '<servo-request>"
  (cl:format cl:nil "int64 a~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servo-request)))
  "Returns full string definition for message of type 'servo-request"
  (cl:format cl:nil "int64 a~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servo-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'servo-request
    (cl:cons ':a (a msg))
))
;//! \htmlinclude servo-response.msg.html

(cl:defclass <servo-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass servo-response (<servo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_learning-srv:<servo-response> is deprecated: use ros_learning-srv:servo-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servo-response>) ostream)
  "Serializes a message object of type '<servo-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servo-response>) istream)
  "Deserializes a message object of type '<servo-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servo-response>)))
  "Returns string type for a service object of type '<servo-response>"
  "ros_learning/servoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servo-response)))
  "Returns string type for a service object of type 'servo-response"
  "ros_learning/servoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servo-response>)))
  "Returns md5sum for a message object of type '<servo-response>"
  "019706110004b728d56d8baaa8e32797")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servo-response)))
  "Returns md5sum for a message object of type 'servo-response"
  "019706110004b728d56d8baaa8e32797")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servo-response>)))
  "Returns full string definition for message of type '<servo-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servo-response)))
  "Returns full string definition for message of type 'servo-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servo-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'servo-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'servo)))
  'servo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'servo)))
  'servo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servo)))
  "Returns string type for a service object of type '<servo>"
  "ros_learning/servo")