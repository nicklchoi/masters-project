; Auto-generated. Do not edit!


(cl:in-package ros_learning-msg)


;//! \htmlinclude MotorAngle.msg.html

(cl:defclass <MotorAngle> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motor1
    :reader motor1
    :initarg :motor1
    :type cl:integer
    :initform 0)
   (motor2
    :reader motor2
    :initarg :motor2
    :type cl:integer
    :initform 0)
   (motor3
    :reader motor3
    :initarg :motor3
    :type cl:integer
    :initform 0)
   (motor4
    :reader motor4
    :initarg :motor4
    :type cl:integer
    :initform 0)
   (motor5
    :reader motor5
    :initarg :motor5
    :type cl:integer
    :initform 0)
   (motor6
    :reader motor6
    :initarg :motor6
    :type cl:integer
    :initform 0)
   (motor7
    :reader motor7
    :initarg :motor7
    :type cl:integer
    :initform 0)
   (motor8
    :reader motor8
    :initarg :motor8
    :type cl:integer
    :initform 0)
   (motor9
    :reader motor9
    :initarg :motor9
    :type cl:integer
    :initform 0)
   (motor10
    :reader motor10
    :initarg :motor10
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorAngle (<MotorAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_learning-msg:<MotorAngle> is deprecated: use ros_learning-msg:MotorAngle instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:header-val is deprecated.  Use ros_learning-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motor1-val :lambda-list '(m))
(cl:defmethod motor1-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:motor1-val is deprecated.  Use ros_learning-msg:motor1 instead.")
  (motor1 m))

(cl:ensure-generic-function 'motor2-val :lambda-list '(m))
(cl:defmethod motor2-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:motor2-val is deprecated.  Use ros_learning-msg:motor2 instead.")
  (motor2 m))

(cl:ensure-generic-function 'motor3-val :lambda-list '(m))
(cl:defmethod motor3-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:motor3-val is deprecated.  Use ros_learning-msg:motor3 instead.")
  (motor3 m))

(cl:ensure-generic-function 'motor4-val :lambda-list '(m))
(cl:defmethod motor4-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:motor4-val is deprecated.  Use ros_learning-msg:motor4 instead.")
  (motor4 m))

(cl:ensure-generic-function 'motor5-val :lambda-list '(m))
(cl:defmethod motor5-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:motor5-val is deprecated.  Use ros_learning-msg:motor5 instead.")
  (motor5 m))

(cl:ensure-generic-function 'motor6-val :lambda-list '(m))
(cl:defmethod motor6-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:motor6-val is deprecated.  Use ros_learning-msg:motor6 instead.")
  (motor6 m))

(cl:ensure-generic-function 'motor7-val :lambda-list '(m))
(cl:defmethod motor7-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:motor7-val is deprecated.  Use ros_learning-msg:motor7 instead.")
  (motor7 m))

(cl:ensure-generic-function 'motor8-val :lambda-list '(m))
(cl:defmethod motor8-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:motor8-val is deprecated.  Use ros_learning-msg:motor8 instead.")
  (motor8 m))

(cl:ensure-generic-function 'motor9-val :lambda-list '(m))
(cl:defmethod motor9-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:motor9-val is deprecated.  Use ros_learning-msg:motor9 instead.")
  (motor9 m))

(cl:ensure-generic-function 'motor10-val :lambda-list '(m))
(cl:defmethod motor10-val ((m <MotorAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_learning-msg:motor10-val is deprecated.  Use ros_learning-msg:motor10 instead.")
  (motor10 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorAngle>) ostream)
  "Serializes a message object of type '<MotorAngle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'motor1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor6)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor7)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor8)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor9)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor10)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorAngle>) istream)
  "Deserializes a message object of type '<MotorAngle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor6) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor7) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor8) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor9) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor10) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorAngle>)))
  "Returns string type for a message object of type '<MotorAngle>"
  "ros_learning/MotorAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorAngle)))
  "Returns string type for a message object of type 'MotorAngle"
  "ros_learning/MotorAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorAngle>)))
  "Returns md5sum for a message object of type '<MotorAngle>"
  "f54c2c7b5eddb6d8e74ec2c7e3892930")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorAngle)))
  "Returns md5sum for a message object of type 'MotorAngle"
  "f54c2c7b5eddb6d8e74ec2c7e3892930")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorAngle>)))
  "Returns full string definition for message of type '<MotorAngle>"
  (cl:format cl:nil "std_msgs/Header header~%int32 motor1~%int32 motor2~%int32 motor3~%int32 motor4~%int32 motor5~%int32 motor6~%int32 motor7~%int32 motor8~%int32 motor9~%int32 motor10~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorAngle)))
  "Returns full string definition for message of type 'MotorAngle"
  (cl:format cl:nil "std_msgs/Header header~%int32 motor1~%int32 motor2~%int32 motor3~%int32 motor4~%int32 motor5~%int32 motor6~%int32 motor7~%int32 motor8~%int32 motor9~%int32 motor10~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorAngle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorAngle
    (cl:cons ':header (header msg))
    (cl:cons ':motor1 (motor1 msg))
    (cl:cons ':motor2 (motor2 msg))
    (cl:cons ':motor3 (motor3 msg))
    (cl:cons ':motor4 (motor4 msg))
    (cl:cons ':motor5 (motor5 msg))
    (cl:cons ':motor6 (motor6 msg))
    (cl:cons ':motor7 (motor7 msg))
    (cl:cons ':motor8 (motor8 msg))
    (cl:cons ':motor9 (motor9 msg))
    (cl:cons ':motor10 (motor10 msg))
))
