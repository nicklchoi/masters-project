;; Auto-generated. Do not edit!


(when (boundp 'ros_learning::Num)
  (if (not (find-package "ROS_LEARNING"))
    (make-package "ROS_LEARNING"))
  (shadow 'Num (find-package "ROS_LEARNING")))
(unless (find-package "ROS_LEARNING::NUM")
  (make-package "ROS_LEARNING::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass ros_learning::Num
  :super ros::object
  :slots (_num _fsr1 _fsr2 _fsr_raw ))

(defmethod ros_learning::Num
  (:init
   (&key
    ((:num __num) 0)
    ((:fsr1 __fsr1) 0)
    ((:fsr2 __fsr2) 0)
    ((:fsr_raw __fsr_raw) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _fsr1 (round __fsr1))
   (setq _fsr2 (round __fsr2))
   (setq _fsr_raw __fsr_raw)
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:fsr1
   (&optional __fsr1)
   (if __fsr1 (setq _fsr1 __fsr1)) _fsr1)
  (:fsr2
   (&optional __fsr2)
   (if __fsr2 (setq _fsr2 __fsr2)) _fsr2)
  (:fsr_raw
   (&optional __fsr_raw)
   (if __fsr_raw (setq _fsr_raw __fsr_raw)) _fsr_raw)
  (:serialization-length
   ()
   (+
    ;; int64 _num
    8
    ;; int32 _fsr1
    4
    ;; int32 _fsr2
    4
    ;; int32[] _fsr_raw
    (* 4    (length _fsr_raw)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;; int32 _fsr1
       (write-long _fsr1 s)
     ;; int32 _fsr2
       (write-long _fsr2 s)
     ;; int32[] _fsr_raw
     (write-long (length _fsr_raw) s)
     (dotimes (i (length _fsr_raw))
       (write-long (elt _fsr_raw i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _fsr1
     (setq _fsr1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fsr2
     (setq _fsr2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _fsr_raw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fsr_raw (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _fsr_raw i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ros_learning::Num :md5sum-) "3dbc71f4adf6d91823c26a117a2b6ba4")
(setf (get ros_learning::Num :datatype-) "ros_learning/Num")
(setf (get ros_learning::Num :definition-)
      "int64 num
int32 fsr1
int32 fsr2
int32[] fsr_raw


")



(provide :ros_learning/Num "3dbc71f4adf6d91823c26a117a2b6ba4")


