;; Auto-generated. Do not edit!


(when (boundp 'ros_learning::servo)
  (if (not (find-package "ROS_LEARNING"))
    (make-package "ROS_LEARNING"))
  (shadow 'servo (find-package "ROS_LEARNING")))
(unless (find-package "ROS_LEARNING::SERVO")
  (make-package "ROS_LEARNING::SERVO"))
(unless (find-package "ROS_LEARNING::SERVOREQUEST")
  (make-package "ROS_LEARNING::SERVOREQUEST"))
(unless (find-package "ROS_LEARNING::SERVORESPONSE")
  (make-package "ROS_LEARNING::SERVORESPONSE"))

(in-package "ROS")





(defclass ros_learning::servoRequest
  :super ros::object
  :slots (_a ))

(defmethod ros_learning::servoRequest
  (:init
   (&key
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass ros_learning::servoResponse
  :super ros::object
  :slots ())

(defmethod ros_learning::servoResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ros_learning::servo
  :super ros::object
  :slots ())

(setf (get ros_learning::servo :md5sum-) "019706110004b728d56d8baaa8e32797")
(setf (get ros_learning::servo :datatype-) "ros_learning/servo")
(setf (get ros_learning::servo :request) ros_learning::servoRequest)
(setf (get ros_learning::servo :response) ros_learning::servoResponse)

(defmethod ros_learning::servoRequest
  (:response () (instance ros_learning::servoResponse :init)))

(setf (get ros_learning::servoRequest :md5sum-) "019706110004b728d56d8baaa8e32797")
(setf (get ros_learning::servoRequest :datatype-) "ros_learning/servoRequest")
(setf (get ros_learning::servoRequest :definition-)
      "int64 a

---
")

(setf (get ros_learning::servoResponse :md5sum-) "019706110004b728d56d8baaa8e32797")
(setf (get ros_learning::servoResponse :datatype-) "ros_learning/servoResponse")
(setf (get ros_learning::servoResponse :definition-)
      "int64 a

---
")



(provide :ros_learning/servo "019706110004b728d56d8baaa8e32797")


