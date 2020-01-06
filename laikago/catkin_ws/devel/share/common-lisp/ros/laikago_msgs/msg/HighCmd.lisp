; Auto-generated. Do not edit!


(cl:in-package laikago_msgs-msg)


;//! \htmlinclude HighCmd.msg.html

(cl:defclass <HighCmd> (roslisp-msg-protocol:ros-message)
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
   (footRaiseHeight
    :reader footRaiseHeight
    :initarg :footRaiseHeight
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (led
    :reader led
    :initarg :led
    :type (cl:vector laikago_msgs-msg:LED)
   :initform (cl:make-array 4 :element-type 'laikago_msgs-msg:LED :initial-element (cl:make-instance 'laikago_msgs-msg:LED)))
   (wirelessRemote
    :reader wirelessRemote
    :initarg :wirelessRemote
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 40 :element-type 'cl:fixnum :initial-element 0))
   (crc
    :reader crc
    :initarg :crc
    :type cl:integer
    :initform 0))
)

(cl:defclass HighCmd (<HighCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HighCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HighCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laikago_msgs-msg:<HighCmd> is deprecated: use laikago_msgs-msg:HighCmd instead.")))

(cl:ensure-generic-function 'levelFlag-val :lambda-list '(m))
(cl:defmethod levelFlag-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:levelFlag-val is deprecated.  Use laikago_msgs-msg:levelFlag instead.")
  (levelFlag m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:mode-val is deprecated.  Use laikago_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'forwardSpeed-val :lambda-list '(m))
(cl:defmethod forwardSpeed-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:forwardSpeed-val is deprecated.  Use laikago_msgs-msg:forwardSpeed instead.")
  (forwardSpeed m))

(cl:ensure-generic-function 'sideSpeed-val :lambda-list '(m))
(cl:defmethod sideSpeed-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:sideSpeed-val is deprecated.  Use laikago_msgs-msg:sideSpeed instead.")
  (sideSpeed m))

(cl:ensure-generic-function 'rotateSpeed-val :lambda-list '(m))
(cl:defmethod rotateSpeed-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:rotateSpeed-val is deprecated.  Use laikago_msgs-msg:rotateSpeed instead.")
  (rotateSpeed m))

(cl:ensure-generic-function 'bodyHeight-val :lambda-list '(m))
(cl:defmethod bodyHeight-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:bodyHeight-val is deprecated.  Use laikago_msgs-msg:bodyHeight instead.")
  (bodyHeight m))

(cl:ensure-generic-function 'footRaiseHeight-val :lambda-list '(m))
(cl:defmethod footRaiseHeight-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:footRaiseHeight-val is deprecated.  Use laikago_msgs-msg:footRaiseHeight instead.")
  (footRaiseHeight m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:yaw-val is deprecated.  Use laikago_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:pitch-val is deprecated.  Use laikago_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:roll-val is deprecated.  Use laikago_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'led-val :lambda-list '(m))
(cl:defmethod led-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:led-val is deprecated.  Use laikago_msgs-msg:led instead.")
  (led m))

(cl:ensure-generic-function 'wirelessRemote-val :lambda-list '(m))
(cl:defmethod wirelessRemote-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:wirelessRemote-val is deprecated.  Use laikago_msgs-msg:wirelessRemote instead.")
  (wirelessRemote m))

(cl:ensure-generic-function 'crc-val :lambda-list '(m))
(cl:defmethod crc-val ((m <HighCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:crc-val is deprecated.  Use laikago_msgs-msg:crc instead.")
  (crc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HighCmd>) ostream)
  "Serializes a message object of type '<HighCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'levelFlag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'footRaiseHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'led))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'wirelessRemote))
  (cl:let* ((signed (cl:slot-value msg 'crc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HighCmd>) istream)
  "Deserializes a message object of type '<HighCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'levelFlag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
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
    (cl:setf (cl:slot-value msg 'footRaiseHeight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'led) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'led)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'laikago_msgs-msg:LED))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'wirelessRemote) (cl:make-array 40))
  (cl:let ((vals (cl:slot-value msg 'wirelessRemote)))
    (cl:dotimes (i 40)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'crc) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HighCmd>)))
  "Returns string type for a message object of type '<HighCmd>"
  "laikago_msgs/HighCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighCmd)))
  "Returns string type for a message object of type 'HighCmd"
  "laikago_msgs/HighCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HighCmd>)))
  "Returns md5sum for a message object of type '<HighCmd>"
  "2dd27d670ca407541b0dd80079b1b2f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighCmd)))
  "Returns md5sum for a message object of type 'HighCmd"
  "2dd27d670ca407541b0dd80079b1b2f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighCmd>)))
  "Returns full string definition for message of type '<HighCmd>"
  (cl:format cl:nil "uint8 levelFlag~%uint8 mode~%float32 forwardSpeed~%float32 sideSpeed~%float32 rotateSpeed	~%float32 bodyHeight~%float32 footRaiseHeight~%float32 yaw~%float32 pitch~%float32 roll~%LED[4] led~%uint8[40] wirelessRemote~%int32 crc~%================================================================================~%MSG: laikago_msgs/LED~%uint8 r~%uint8 g~%uint8 b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighCmd)))
  "Returns full string definition for message of type 'HighCmd"
  (cl:format cl:nil "uint8 levelFlag~%uint8 mode~%float32 forwardSpeed~%float32 sideSpeed~%float32 rotateSpeed	~%float32 bodyHeight~%float32 footRaiseHeight~%float32 yaw~%float32 pitch~%float32 roll~%LED[4] led~%uint8[40] wirelessRemote~%int32 crc~%================================================================================~%MSG: laikago_msgs/LED~%uint8 r~%uint8 g~%uint8 b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighCmd>))
  (cl:+ 0
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'led) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wirelessRemote) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HighCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'HighCmd
    (cl:cons ':levelFlag (levelFlag msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':forwardSpeed (forwardSpeed msg))
    (cl:cons ':sideSpeed (sideSpeed msg))
    (cl:cons ':rotateSpeed (rotateSpeed msg))
    (cl:cons ':bodyHeight (bodyHeight msg))
    (cl:cons ':footRaiseHeight (footRaiseHeight msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':led (led msg))
    (cl:cons ':wirelessRemote (wirelessRemote msg))
    (cl:cons ':crc (crc msg))
))
