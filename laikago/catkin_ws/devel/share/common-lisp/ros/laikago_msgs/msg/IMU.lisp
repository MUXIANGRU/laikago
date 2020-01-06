; Auto-generated. Do not edit!


(cl:in-package laikago_msgs-msg)


;//! \htmlinclude IMU.msg.html

(cl:defclass <IMU> (roslisp-msg-protocol:ros-message)
  ((quaternion
    :reader quaternion
    :initarg :quaternion
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (gyroscope
    :reader gyroscope
    :initarg :gyroscope
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (rpy
    :reader rpy
    :initarg :rpy
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0))
)

(cl:defclass IMU (<IMU>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IMU>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IMU)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laikago_msgs-msg:<IMU> is deprecated: use laikago_msgs-msg:IMU instead.")))

(cl:ensure-generic-function 'quaternion-val :lambda-list '(m))
(cl:defmethod quaternion-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:quaternion-val is deprecated.  Use laikago_msgs-msg:quaternion instead.")
  (quaternion m))

(cl:ensure-generic-function 'gyroscope-val :lambda-list '(m))
(cl:defmethod gyroscope-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:gyroscope-val is deprecated.  Use laikago_msgs-msg:gyroscope instead.")
  (gyroscope m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:acceleration-val is deprecated.  Use laikago_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:rpy-val is deprecated.  Use laikago_msgs-msg:rpy instead.")
  (rpy m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:temp-val is deprecated.  Use laikago_msgs-msg:temp instead.")
  (temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IMU>) ostream)
  "Serializes a message object of type '<IMU>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'quaternion))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'gyroscope))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'acceleration))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rpy))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IMU>) istream)
  "Deserializes a message object of type '<IMU>"
  (cl:setf (cl:slot-value msg 'quaternion) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'quaternion)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'gyroscope) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'gyroscope)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'acceleration) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'acceleration)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'rpy) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'rpy)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IMU>)))
  "Returns string type for a message object of type '<IMU>"
  "laikago_msgs/IMU")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IMU)))
  "Returns string type for a message object of type 'IMU"
  "laikago_msgs/IMU")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IMU>)))
  "Returns md5sum for a message object of type '<IMU>"
  "6067de14374c97a8666801686a8446fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IMU)))
  "Returns md5sum for a message object of type 'IMU"
  "6067de14374c97a8666801686a8446fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IMU>)))
  "Returns full string definition for message of type '<IMU>"
  (cl:format cl:nil "float32[4] quaternion~%float32[3] gyroscope~%float32[3] acceleration~%float32[3] rpy~%float32 temp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IMU)))
  "Returns full string definition for message of type 'IMU"
  (cl:format cl:nil "float32[4] quaternion~%float32[3] gyroscope~%float32[3] acceleration~%float32[3] rpy~%float32 temp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IMU>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'quaternion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gyroscope) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'acceleration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rpy) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IMU>))
  "Converts a ROS message object to a list"
  (cl:list 'IMU
    (cl:cons ':quaternion (quaternion msg))
    (cl:cons ':gyroscope (gyroscope msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':rpy (rpy msg))
    (cl:cons ':temp (temp msg))
))
