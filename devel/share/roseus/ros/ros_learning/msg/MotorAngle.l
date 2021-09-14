;; Auto-generated. Do not edit!


(when (boundp 'ros_learning::MotorAngle)
  (if (not (find-package "ROS_LEARNING"))
    (make-package "ROS_LEARNING"))
  (shadow 'MotorAngle (find-package "ROS_LEARNING")))
(unless (find-package "ROS_LEARNING::MOTORANGLE")
  (make-package "ROS_LEARNING::MOTORANGLE"))

(in-package "ROS")
;;//! \htmlinclude MotorAngle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_learning::MotorAngle
  :super ros::object
  :slots (_header _motor1 _motor2 _motor3 _motor4 _motor5 _motor6 _motor7 _motor8 _motor9 _motor10 ))

(defmethod ros_learning::MotorAngle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motor1 __motor1) 0)
    ((:motor2 __motor2) 0)
    ((:motor3 __motor3) 0)
    ((:motor4 __motor4) 0)
    ((:motor5 __motor5) 0)
    ((:motor6 __motor6) 0)
    ((:motor7 __motor7) 0)
    ((:motor8 __motor8) 0)
    ((:motor9 __motor9) 0)
    ((:motor10 __motor10) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _motor1 (round __motor1))
   (setq _motor2 (round __motor2))
   (setq _motor3 (round __motor3))
   (setq _motor4 (round __motor4))
   (setq _motor5 (round __motor5))
   (setq _motor6 (round __motor6))
   (setq _motor7 (round __motor7))
   (setq _motor8 (round __motor8))
   (setq _motor9 (round __motor9))
   (setq _motor10 (round __motor10))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motor1
   (&optional __motor1)
   (if __motor1 (setq _motor1 __motor1)) _motor1)
  (:motor2
   (&optional __motor2)
   (if __motor2 (setq _motor2 __motor2)) _motor2)
  (:motor3
   (&optional __motor3)
   (if __motor3 (setq _motor3 __motor3)) _motor3)
  (:motor4
   (&optional __motor4)
   (if __motor4 (setq _motor4 __motor4)) _motor4)
  (:motor5
   (&optional __motor5)
   (if __motor5 (setq _motor5 __motor5)) _motor5)
  (:motor6
   (&optional __motor6)
   (if __motor6 (setq _motor6 __motor6)) _motor6)
  (:motor7
   (&optional __motor7)
   (if __motor7 (setq _motor7 __motor7)) _motor7)
  (:motor8
   (&optional __motor8)
   (if __motor8 (setq _motor8 __motor8)) _motor8)
  (:motor9
   (&optional __motor9)
   (if __motor9 (setq _motor9 __motor9)) _motor9)
  (:motor10
   (&optional __motor10)
   (if __motor10 (setq _motor10 __motor10)) _motor10)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _motor1
    4
    ;; int32 _motor2
    4
    ;; int32 _motor3
    4
    ;; int32 _motor4
    4
    ;; int32 _motor5
    4
    ;; int32 _motor6
    4
    ;; int32 _motor7
    4
    ;; int32 _motor8
    4
    ;; int32 _motor9
    4
    ;; int32 _motor10
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _motor1
       (write-long _motor1 s)
     ;; int32 _motor2
       (write-long _motor2 s)
     ;; int32 _motor3
       (write-long _motor3 s)
     ;; int32 _motor4
       (write-long _motor4 s)
     ;; int32 _motor5
       (write-long _motor5 s)
     ;; int32 _motor6
       (write-long _motor6 s)
     ;; int32 _motor7
       (write-long _motor7 s)
     ;; int32 _motor8
       (write-long _motor8 s)
     ;; int32 _motor9
       (write-long _motor9 s)
     ;; int32 _motor10
       (write-long _motor10 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _motor1
     (setq _motor1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor2
     (setq _motor2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor3
     (setq _motor3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor4
     (setq _motor4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor5
     (setq _motor5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor6
     (setq _motor6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor7
     (setq _motor7 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor8
     (setq _motor8 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor9
     (setq _motor9 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor10
     (setq _motor10 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_learning::MotorAngle :md5sum-) "f54c2c7b5eddb6d8e74ec2c7e3892930")
(setf (get ros_learning::MotorAngle :datatype-) "ros_learning/MotorAngle")
(setf (get ros_learning::MotorAngle :definition-)
      "std_msgs/Header header
int32 motor1
int32 motor2
int32 motor3
int32 motor4
int32 motor5
int32 motor6
int32 motor7
int32 motor8
int32 motor9
int32 motor10


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
string frame_id

")



(provide :ros_learning/MotorAngle "f54c2c7b5eddb6d8e74ec2c7e3892930")


