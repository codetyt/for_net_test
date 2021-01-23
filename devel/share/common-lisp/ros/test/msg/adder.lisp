; Auto-generated. Do not edit!


(cl:in-package test-msg)


;//! \htmlinclude adder.msg.html

(cl:defclass <adder> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:fixnum
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:fixnum
    :initform 0))
)

(cl:defclass adder (<adder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test-msg:<adder> is deprecated: use test-msg:adder instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <adder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:a-val is deprecated.  Use test-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <adder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:b-val is deprecated.  Use test-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adder>) ostream)
  "Serializes a message object of type '<adder>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'b)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adder>) istream)
  "Deserializes a message object of type '<adder>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'b)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adder>)))
  "Returns string type for a message object of type '<adder>"
  "test/adder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adder)))
  "Returns string type for a message object of type 'adder"
  "test/adder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adder>)))
  "Returns md5sum for a message object of type '<adder>"
  "e689bd5e4bb85cf611fb121d2a0d923b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adder)))
  "Returns md5sum for a message object of type 'adder"
  "e689bd5e4bb85cf611fb121d2a0d923b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adder>)))
  "Returns full string definition for message of type '<adder>"
  (cl:format cl:nil "uint16 a~%uint16 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adder)))
  "Returns full string definition for message of type 'adder"
  (cl:format cl:nil "uint16 a~%uint16 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adder>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adder>))
  "Converts a ROS message object to a list"
  (cl:list 'adder
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
