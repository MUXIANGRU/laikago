; Auto-generated. Do not edit!


(cl:in-package laikago_msgs-msg)


;//! \htmlinclude MotorCmd.msg.html

(cl:defclass <MotorCmd> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (positionStiffness
    :reader positionStiffness
    :initarg :positionStiffness
    :type cl:float
    :initform 0.0)
   (velocityStiffness
    :reader velocityStiffness
    :initarg :velocityStiffness
    :type cl:float
    :initform 0.0)
   (torque
    :reader torque
    :initarg :torque
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorCmd (<MotorCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laikago_msgs-msg:<MotorCmd> is deprecated: use laikago_msgs-msg:MotorCmd instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <MotorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:mode-val is deprecated.  Use laikago_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MotorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:position-val is deprecated.  Use laikago_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <MotorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:velocity-val is deprecated.  Use laikago_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'positionStiffness-val :lambda-list '(m))
(cl:defmethod positionStiffness-val ((m <MotorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:positionStiffness-val is deprecated.  Use laikago_msgs-msg:positionStiffness instead.")
  (positionStiffness m))

(cl:ensure-generic-function 'velocityStiffness-val :lambda-list '(m))
(cl:defmethod velocityStiffness-val ((m <MotorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:velocityStiffness-val is deprecated.  Use laikago_msgs-msg:velocityStiffness instead.")
  (velocityStiffness m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <MotorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:torque-val is deprecated.  Use laikago_msgs-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorCmd>) ostream)
  "Serializes a message object of type '<MotorCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'positionStiffness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocityStiffness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorCmd>) istream)
  "Deserializes a message object of type '<MotorCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'positionStiffness) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocityStiffness) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorCmd>)))
  "Returns string type for a message object of type '<MotorCmd>"
  "laikago_msgs/MotorCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorCmd)))
  "Returns string type for a message object of type 'MotorCmd"
  "laikago_msgs/MotorCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorCmd>)))
  "Returns md5sum for a message object of type '<MotorCmd>"
  "6bbe425e3cd73a40e74b88b2f03b321c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorCmd)))
  "Returns md5sum for a message object of type 'MotorCmd"
  "6bbe425e3cd73a40e74b88b2f03b321c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorCmd>)))
  "Returns full string definition for message of type '<MotorCmd>"
  (cl:format cl:nil "uint8 mode                  # motor target mode~%float32 position           # motor target position~%float32 velocity           # motor target velocity~%float32 positionStiffness  # motor spring stiffness coefficient~%float32 velocityStiffness  # motor damper coefficient~%float32 torque             # motor target torque~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorCmd)))
  "Returns full string definition for message of type 'MotorCmd"
  (cl:format cl:nil "uint8 mode                  # motor target mode~%float32 position           # motor target position~%float32 velocity           # motor target velocity~%float32 positionStiffness  # motor spring stiffness coefficient~%float32 velocityStiffness  # motor damper coefficient~%float32 torque             # motor target torque~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorCmd>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorCmd
    (cl:cons ':mode (mode msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':positionStiffness (positionStiffness msg))
    (cl:cons ':velocityStiffness (velocityStiffness msg))
    (cl:cons ':torque (torque msg))
))
