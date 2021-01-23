;; Auto-generated. Do not edit!


(when (boundp 'test::adder)
  (if (not (find-package "TEST"))
    (make-package "TEST"))
  (shadow 'adder (find-package "TEST")))
(unless (find-package "TEST::ADDER")
  (make-package "TEST::ADDER"))

(in-package "ROS")
;;//! \htmlinclude adder.msg.html


(defclass test::adder
  :super ros::object
  :slots (_a _b ))

(defmethod test::adder
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; uint16 _a
    2
    ;; uint16 _b
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _a
       (write-word _a s)
     ;; uint16 _b
       (write-word _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _a
     (setq _a (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _b
     (setq _b (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get test::adder :md5sum-) "e689bd5e4bb85cf611fb121d2a0d923b")
(setf (get test::adder :datatype-) "test/adder")
(setf (get test::adder :definition-)
      "uint16 a
uint16 b

")



(provide :test/adder "e689bd5e4bb85cf611fb121d2a0d923b")


