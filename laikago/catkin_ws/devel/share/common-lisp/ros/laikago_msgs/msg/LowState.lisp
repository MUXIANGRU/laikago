; Auto-generated. Do not edit!


(cl:in-package laikago_msgs-msg)


;//! \htmlinclude LowState.msg.html

(cl:defclass <LowState> (roslisp-msg-protocol:ros-message)
  ((levelFlag
    :reader levelFlag
    :initarg :levelFlag
    :type cl:fixnum
    :initform 0)
   (imu
    :reader imu
    :initarg :imu
    :type laikago_msgs-msg:IMU
    :initform (cl:make-instance 'laikago_msgs-msg:IMU))
   (motorState
    :reader motorState
    :initarg :motorState
    :type (cl:vector laikago_msgs-msg:MotorState)
   :initform (cl:make-array 20 :element-type 'laikago_msgs-msg:MotorState :initial-element (cl:make-instance 'laikago_msgs-msg:MotorState)))
   (footForce
    :reader footForce
    :initarg :footForce
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (tick
    :reader tick
    :initarg :tick
    :type cl:integer
    :initform 0)
   (wirelessRemote
    :reader wirelessRemote
    :initarg :wirelessRemote
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 40 :element-type 'cl:fixnum :initial-element 0))
   (crc
    :reader crc
    :initarg :crc
    :type cl:integer
    :initform 0)
   (eeForce
    :reader eeForce
    :initarg :eeForce
    :type (cl:vector laikago_msgs-msg:Cartesian)
   :initform (cl:make-array 4 :element-type 'laikago_msgs-msg:Cartesian :initial-element (cl:make-instance 'laikago_msgs-msg:Cartesian))))
)

(cl:defclass LowState (<LowState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LowState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LowState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laikago_msgs-msg:<LowState> is deprecated: use laikago_msgs-msg:LowState instead.")))

(cl:ensure-generic-function 'levelFlag-val :lambda-list '(m))
(cl:defmethod levelFlag-val ((m <LowState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:levelFlag-val is deprecated.  Use laikago_msgs-msg:levelFlag instead.")
  (levelFlag m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <LowState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:imu-val is deprecated.  Use laikago_msgs-msg:imu instead.")
  (imu m))

(cl:ensure-generic-function 'motorState-val :lambda-list '(m))
(cl:defmethod motorState-val ((m <LowState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:motorState-val is deprecated.  Use laikago_msgs-msg:motorState instead.")
  (motorState m))

(cl:ensure-generic-function 'footForce-val :lambda-list '(m))
(cl:defmethod footForce-val ((m <LowState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:footForce-val is deprecated.  Use laikago_msgs-msg:footForce instead.")
  (footForce m))

(cl:ensure-generic-function 'tick-val :lambda-list '(m))
(cl:defmethod tick-val ((m <LowState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:tick-val is deprecated.  Use laikago_msgs-msg:tick instead.")
  (tick m))

(cl:ensure-generic-function 'wirelessRemote-val :lambda-list '(m))
(cl:defmethod wirelessRemote-val ((m <LowState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:wirelessRemote-val is deprecated.  Use laikago_msgs-msg:wirelessRemote instead.")
  (wirelessRemote m))

(cl:ensure-generic-function 'crc-val :lambda-list '(m))
(cl:defmethod crc-val ((m <LowState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:crc-val is deprecated.  Use laikago_msgs-msg:crc instead.")
  (crc m))

(cl:ensure-generic-function 'eeForce-val :lambda-list '(m))
(cl:defmethod eeForce-val ((m <LowState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:eeForce-val is deprecated.  Use laikago_msgs-msg:eeForce instead.")
  (eeForce m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LowState>) ostream)
  "Serializes a message object of type '<LowState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'levelFlag)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motorState))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'footForce))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tick)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tick)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tick)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tick)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'wirelessRemote))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'eeForce))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LowState>) istream)
  "Deserializes a message object of type '<LowState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'levelFlag)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  (cl:setf (cl:slot-value msg 'motorState) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'motorState)))
    (cl:dotimes (i 20)
    (cl:setf (cl:aref vals i) (cl:make-instance 'laikago_msgs-msg:MotorState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'footForce) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'footForce)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tick)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tick)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tick)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tick)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wirelessRemote) (cl:make-array 40))
  (cl:let ((vals (cl:slot-value msg 'wirelessRemote)))
    (cl:dotimes (i 40)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'eeForce) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'eeForce)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'laikago_msgs-msg:Cartesian))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LowState>)))
  "Returns string type for a message object of type '<LowState>"
  "laikago_msgs/LowState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LowState)))
  "Returns string type for a message object of type 'LowState"
  "laikago_msgs/LowState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LowState>)))
  "Returns md5sum for a message object of type '<LowState>"
  "ff497aa2c0f42e68227aaf7b1f8c13c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LowState)))
  "Returns md5sum for a message object of type 'LowState"
  "ff497aa2c0f42e68227aaf7b1f8c13c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LowState>)))
  "Returns full string definition for message of type '<LowState>"
  (cl:format cl:nil "uint8 levelFlag~%IMU imu~%MotorState[20] motorState~%float32[4] footForce~%uint32 tick                   # time reference~%uint8[40] wirelessRemote      # wireless command~%uint32 crc                    # check bit~%Cartesian[4] eeForce          #it's a 1-DOF force infact, but we use 3-DOF here just for visualization ~%================================================================================~%MSG: laikago_msgs/IMU~%float32[4] quaternion~%float32[3] gyroscope~%float32[3] acceleration~%float32[3] rpy~%float32 temp~%================================================================================~%MSG: laikago_msgs/MotorState~%uint8 mode            # motor current mode ~%float32 position     # motor current position（rad）~%float32 velocity     # motor current speed（rad/s）~%float32 torque       # current estimated output torque（N*m）~%float32 temperature  # motor temperature（slow conduction of temperature leads to lag）~%int32 iReserve~%float32 fReserve~%================================================================================~%MSG: laikago_msgs/Cartesian~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LowState)))
  "Returns full string definition for message of type 'LowState"
  (cl:format cl:nil "uint8 levelFlag~%IMU imu~%MotorState[20] motorState~%float32[4] footForce~%uint32 tick                   # time reference~%uint8[40] wirelessRemote      # wireless command~%uint32 crc                    # check bit~%Cartesian[4] eeForce          #it's a 1-DOF force infact, but we use 3-DOF here just for visualization ~%================================================================================~%MSG: laikago_msgs/IMU~%float32[4] quaternion~%float32[3] gyroscope~%float32[3] acceleration~%float32[3] rpy~%float32 temp~%================================================================================~%MSG: laikago_msgs/MotorState~%uint8 mode            # motor current mode ~%float32 position     # motor current position（rad）~%float32 velocity     # motor current speed（rad/s）~%float32 torque       # current estimated output torque（N*m）~%float32 temperature  # motor temperature（slow conduction of temperature leads to lag）~%int32 iReserve~%float32 fReserve~%================================================================================~%MSG: laikago_msgs/Cartesian~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LowState>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'motorState) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'footForce) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wirelessRemote) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'eeForce) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LowState>))
  "Converts a ROS message object to a list"
  (cl:list 'LowState
    (cl:cons ':levelFlag (levelFlag msg))
    (cl:cons ':imu (imu msg))
    (cl:cons ':motorState (motorState msg))
    (cl:cons ':footForce (footForce msg))
    (cl:cons ':tick (tick msg))
    (cl:cons ':wirelessRemote (wirelessRemote msg))
    (cl:cons ':crc (crc msg))
    (cl:cons ':eeForce (eeForce msg))
))
