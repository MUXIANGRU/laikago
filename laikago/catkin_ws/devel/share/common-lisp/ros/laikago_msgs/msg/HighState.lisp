; Auto-generated. Do not edit!


(cl:in-package laikago_msgs-msg)


;//! \htmlinclude HighState.msg.html

(cl:defclass <HighState> (roslisp-msg-protocol:ros-message)
  ((levelFlag
    :reader levelFlag
    :initarg :levelFlag
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (imu
    :reader imu
    :initarg :imu
    :type laikago_msgs-msg:IMU
    :initform (cl:make-instance 'laikago_msgs-msg:IMU))
   (forwardSpeed
    :reader forwardSpeed
    :initarg :forwardSpeed
    :type cl:float
    :initform 0.0)
   (sideSpeed
    :reader sideSpeed
    :initarg :sideSpeed
    :type cl:float
    :initform 0.0)
   (rotateSpeed
    :reader rotateSpeed
    :initarg :rotateSpeed
    :type cl:float
    :initform 0.0)
   (bodyHeight
    :reader bodyHeight
    :initarg :bodyHeight
    :type cl:float
    :initform 0.0)
   (updownSpeed
    :reader updownSpeed
    :initarg :updownSpeed
    :type cl:float
    :initform 0.0)
   (forwardPosition
    :reader forwardPosition
    :initarg :forwardPosition
    :type laikago_msgs-msg:Cartesian
    :initform (cl:make-instance 'laikago_msgs-msg:Cartesian))
   (sidePosition
    :reader sidePosition
    :initarg :sidePosition
    :type laikago_msgs-msg:Cartesian
    :initform (cl:make-instance 'laikago_msgs-msg:Cartesian))
   (footPosition2Body
    :reader footPosition2Body
    :initarg :footPosition2Body
    :type (cl:vector laikago_msgs-msg:Cartesian)
   :initform (cl:make-array 4 :element-type 'laikago_msgs-msg:Cartesian :initial-element (cl:make-instance 'laikago_msgs-msg:Cartesian)))
   (footSpeed2Body
    :reader footSpeed2Body
    :initarg :footSpeed2Body
    :type (cl:vector laikago_msgs-msg:Cartesian)
   :initform (cl:make-array 4 :element-type 'laikago_msgs-msg:Cartesian :initial-element (cl:make-instance 'laikago_msgs-msg:Cartesian)))
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
   :initform (cl:make-array 4 :element-type 'laikago_msgs-msg:Cartesian :initial-element (cl:make-instance 'laikago_msgs-msg:Cartesian)))
   (jointP
    :reader jointP
    :initarg :jointP
    :type (cl:vector cl:float)
   :initform (cl:make-array 12 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass HighState (<HighState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HighState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HighState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laikago_msgs-msg:<HighState> is deprecated: use laikago_msgs-msg:HighState instead.")))

(cl:ensure-generic-function 'levelFlag-val :lambda-list '(m))
(cl:defmethod levelFlag-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:levelFlag-val is deprecated.  Use laikago_msgs-msg:levelFlag instead.")
  (levelFlag m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:mode-val is deprecated.  Use laikago_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:imu-val is deprecated.  Use laikago_msgs-msg:imu instead.")
  (imu m))

(cl:ensure-generic-function 'forwardSpeed-val :lambda-list '(m))
(cl:defmethod forwardSpeed-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:forwardSpeed-val is deprecated.  Use laikago_msgs-msg:forwardSpeed instead.")
  (forwardSpeed m))

(cl:ensure-generic-function 'sideSpeed-val :lambda-list '(m))
(cl:defmethod sideSpeed-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:sideSpeed-val is deprecated.  Use laikago_msgs-msg:sideSpeed instead.")
  (sideSpeed m))

(cl:ensure-generic-function 'rotateSpeed-val :lambda-list '(m))
(cl:defmethod rotateSpeed-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:rotateSpeed-val is deprecated.  Use laikago_msgs-msg:rotateSpeed instead.")
  (rotateSpeed m))

(cl:ensure-generic-function 'bodyHeight-val :lambda-list '(m))
(cl:defmethod bodyHeight-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:bodyHeight-val is deprecated.  Use laikago_msgs-msg:bodyHeight instead.")
  (bodyHeight m))

(cl:ensure-generic-function 'updownSpeed-val :lambda-list '(m))
(cl:defmethod updownSpeed-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:updownSpeed-val is deprecated.  Use laikago_msgs-msg:updownSpeed instead.")
  (updownSpeed m))

(cl:ensure-generic-function 'forwardPosition-val :lambda-list '(m))
(cl:defmethod forwardPosition-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:forwardPosition-val is deprecated.  Use laikago_msgs-msg:forwardPosition instead.")
  (forwardPosition m))

(cl:ensure-generic-function 'sidePosition-val :lambda-list '(m))
(cl:defmethod sidePosition-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:sidePosition-val is deprecated.  Use laikago_msgs-msg:sidePosition instead.")
  (sidePosition m))

(cl:ensure-generic-function 'footPosition2Body-val :lambda-list '(m))
(cl:defmethod footPosition2Body-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:footPosition2Body-val is deprecated.  Use laikago_msgs-msg:footPosition2Body instead.")
  (footPosition2Body m))

(cl:ensure-generic-function 'footSpeed2Body-val :lambda-list '(m))
(cl:defmethod footSpeed2Body-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:footSpeed2Body-val is deprecated.  Use laikago_msgs-msg:footSpeed2Body instead.")
  (footSpeed2Body m))

(cl:ensure-generic-function 'footForce-val :lambda-list '(m))
(cl:defmethod footForce-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:footForce-val is deprecated.  Use laikago_msgs-msg:footForce instead.")
  (footForce m))

(cl:ensure-generic-function 'tick-val :lambda-list '(m))
(cl:defmethod tick-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:tick-val is deprecated.  Use laikago_msgs-msg:tick instead.")
  (tick m))

(cl:ensure-generic-function 'wirelessRemote-val :lambda-list '(m))
(cl:defmethod wirelessRemote-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:wirelessRemote-val is deprecated.  Use laikago_msgs-msg:wirelessRemote instead.")
  (wirelessRemote m))

(cl:ensure-generic-function 'crc-val :lambda-list '(m))
(cl:defmethod crc-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:crc-val is deprecated.  Use laikago_msgs-msg:crc instead.")
  (crc m))

(cl:ensure-generic-function 'eeForce-val :lambda-list '(m))
(cl:defmethod eeForce-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:eeForce-val is deprecated.  Use laikago_msgs-msg:eeForce instead.")
  (eeForce m))

(cl:ensure-generic-function 'jointP-val :lambda-list '(m))
(cl:defmethod jointP-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:jointP-val is deprecated.  Use laikago_msgs-msg:jointP instead.")
  (jointP m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HighState>) ostream)
  "Serializes a message object of type '<HighState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'levelFlag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'forwardSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sideSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rotateSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bodyHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'updownSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'forwardPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sidePosition) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'footPosition2Body))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'footSpeed2Body))
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
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'jointP))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HighState>) istream)
  "Deserializes a message object of type '<HighState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'levelFlag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'forwardSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sideSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotateSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bodyHeight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'updownSpeed) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'forwardPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sidePosition) istream)
  (cl:setf (cl:slot-value msg 'footPosition2Body) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'footPosition2Body)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'laikago_msgs-msg:Cartesian))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'footSpeed2Body) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'footSpeed2Body)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'laikago_msgs-msg:Cartesian))
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
  (cl:setf (cl:slot-value msg 'jointP) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'jointP)))
    (cl:dotimes (i 12)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HighState>)))
  "Returns string type for a message object of type '<HighState>"
  "laikago_msgs/HighState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighState)))
  "Returns string type for a message object of type 'HighState"
  "laikago_msgs/HighState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HighState>)))
  "Returns md5sum for a message object of type '<HighState>"
  "01d4600477cd3acd91bd469708ab5526")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighState)))
  "Returns md5sum for a message object of type 'HighState"
  "01d4600477cd3acd91bd469708ab5526")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighState>)))
  "Returns full string definition for message of type '<HighState>"
  (cl:format cl:nil "uint8 levelFlag~%uint8 mode~%IMU imu~%float32 forwardSpeed~%float32 sideSpeed~%float32 rotateSpeed~%float32 bodyHeight~%float32 updownSpeed~%Cartesian forwardPosition       # (will be float type next version)~%Cartesian sidePosition          # (will be float type next version)~%Cartesian[4] footPosition2Body~%Cartesian[4] footSpeed2Body~%float32[4] footForce    ~%uint32 tick               ~%uint8[40] wirelessRemote~%uint32 crc~%~%# Under are not defined in SDK yet.~%Cartesian[4] eeForce            # It's a 1-DOF force in real robot, but 3-DOF is better for visualization.~%float32[12] jointP              # for visualization~%~%================================================================================~%MSG: laikago_msgs/IMU~%float32[4] quaternion~%float32[3] gyroscope~%float32[3] acceleration~%float32[3] rpy~%float32 temp~%================================================================================~%MSG: laikago_msgs/Cartesian~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighState)))
  "Returns full string definition for message of type 'HighState"
  (cl:format cl:nil "uint8 levelFlag~%uint8 mode~%IMU imu~%float32 forwardSpeed~%float32 sideSpeed~%float32 rotateSpeed~%float32 bodyHeight~%float32 updownSpeed~%Cartesian forwardPosition       # (will be float type next version)~%Cartesian sidePosition          # (will be float type next version)~%Cartesian[4] footPosition2Body~%Cartesian[4] footSpeed2Body~%float32[4] footForce    ~%uint32 tick               ~%uint8[40] wirelessRemote~%uint32 crc~%~%# Under are not defined in SDK yet.~%Cartesian[4] eeForce            # It's a 1-DOF force in real robot, but 3-DOF is better for visualization.~%float32[12] jointP              # for visualization~%~%================================================================================~%MSG: laikago_msgs/IMU~%float32[4] quaternion~%float32[3] gyroscope~%float32[3] acceleration~%float32[3] rpy~%float32 temp~%================================================================================~%MSG: laikago_msgs/Cartesian~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighState>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'forwardPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sidePosition))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'footPosition2Body) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'footSpeed2Body) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'footForce) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wirelessRemote) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'eeForce) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'jointP) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HighState>))
  "Converts a ROS message object to a list"
  (cl:list 'HighState
    (cl:cons ':levelFlag (levelFlag msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':imu (imu msg))
    (cl:cons ':forwardSpeed (forwardSpeed msg))
    (cl:cons ':sideSpeed (sideSpeed msg))
    (cl:cons ':rotateSpeed (rotateSpeed msg))
    (cl:cons ':bodyHeight (bodyHeight msg))
    (cl:cons ':updownSpeed (updownSpeed msg))
    (cl:cons ':forwardPosition (forwardPosition msg))
    (cl:cons ':sidePosition (sidePosition msg))
    (cl:cons ':footPosition2Body (footPosition2Body msg))
    (cl:cons ':footSpeed2Body (footSpeed2Body msg))
    (cl:cons ':footForce (footForce msg))
    (cl:cons ':tick (tick msg))
    (cl:cons ':wirelessRemote (wirelessRemote msg))
    (cl:cons ':crc (crc msg))
    (cl:cons ':eeForce (eeForce msg))
    (cl:cons ':jointP (jointP msg))
))
