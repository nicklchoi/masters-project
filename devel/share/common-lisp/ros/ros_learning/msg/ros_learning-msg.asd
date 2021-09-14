
(cl:in-package :asdf)

(defsystem "ros_learning-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MotorAngle" :depends-on ("_package_MotorAngle"))
    (:file "_package_MotorAngle" :depends-on ("_package"))
    (:file "Num" :depends-on ("_package_Num"))
    (:file "_package_Num" :depends-on ("_package"))
  ))