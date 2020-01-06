; Auto-generated. Do not edit!


(cl:in-package laikago_msgs-msg)


;//! \htmlinclude LowCmd.msg.html

(cl:defclass <LowCmd> (roslisp-msg-protocol:ros-message)
  ((levelFlag
    :reader levelFlag
    :initarg :levelFlag
    :type cl:fixnum
    :initform 0)
   (motorCmd
    :reader motorCmd
    :initarg :motorCmd
    :type (cl:vector laikago_msgs-msg:MotorCmd)
   :initform (cl:make-array 20 :element-type 'laikago_msgs-msg:MotorCmd :initial-element (cl:make-instance 'laikago_msgs-msg:MotorCmd)))
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

(cl:defclass LowCmd (<LowCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LowCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LowCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laikago_msgs-msg:<LowCmd> is deprecated: use laikago_msgs-msg:LowCmd instead.")))

(cl:ensure-generic-function 'levelFlag-val :lambda-list '(m))
(cl:defmethod levelFlag-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:levelFlag-val is deprecated.  Use laikago_msgs-msg:levelFlag instead.")
  (levelFlag m))

(cl:ensure-generic-function 'motorCmd-val :lambda-list '(m))
(cl:defmethod motorCmd-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:motorCmd-val is deprecated.  Use laikago_msgs-msg:motorCmd instead.")
  (motorCmd m))

(cl:ensure-generic-function 'led-val :lambda-list '(m))
(cl:defmethod led-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:led-val is deprecated.  Use laikago_msgs-msg:led instead.")
  (led m))

(cl:ensure-generic-function 'wirelessRemote-val :lambda-list '(m))
(cl:defmethod wirelessRemote-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:wirelessRemote-val is deprecated.  Use laikago_msgs-msg:wirelessRemote instead.")
  (wirelessRemote m))

(cl:ensure-generic-function 'crc-val :lambda-list '(m))
(cl:defmethod crc-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laikago_msgs-msg:crc-val is deprecated.  Use laikago_msgs-msg:crc instead.")
  (crc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LowCmd>) ostream)
  "Serializes a message object of type '<LowCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'levelFlag)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motorCmd))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'led))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'wirelessRemote))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LowCmd>) istream)
  "Deserializes a message object of type '<LowCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'levelFlag)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motorCmd) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'motorCmd)))
    (cl:dotimes (i 20)
    (cl:setf (cl:aref vals i) (cl:make-instance 'laikago_msgs-msg:MotorCmd))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'led) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'led)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'laikago_msgs-msg:LED))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'wirelessRemote) (cl:make-array 40))
  (cl:let ((vals (cl:slot-value msg 'wirelessRemote)))
    (cl:dotimes (i 40)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LowCmd>)))
  "Returns string type for a message object of type '<LowCmd>"
  "laikago_msgs/LowCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LowCmd)))
  "Returns string type for a message object of type 'LowCmd"
  "laikago_msgs/LowCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LowCmd>)))
  "Returns md5sum for a message object of type '<LowCmd>"
  "07bb727e47213ef7a2c819ad6a8669b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LowCmd)))
  "Returns md5sum for a message object of type 'LowCmd"
  "07bb727e47213ef7a2c819ad6a8669b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LowCmd>)))
  "Returns full string definition for message of type '<LowCmd>"
  (cl:format cl:nil "uint8 levelFlag~%MotorCmd[20] motorCmd~%LED[4] led~%uint8[40] wirelessRemote~%uint32 crc                # check bit~%================================================================================~%MSG: laikago_msgs/MotorCmd~%uint8 mode                  # motor target mode~%float32 position           # motor target position~%float32 velocity           # motor target velocity~%float32 positionStiffness  # motor spring stiffness coefficient~%float32 velocityStiffness  # motor damper coefficient~%float32 torque             # motor target torque~%================================================================================~%MSG: laikago_msgs/LED~%uint8 r~%uint8 g~%uint8 b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LowCmd)))
  "Returns full string definition for message of type 'LowCmd"
  (cl:format cl:nil "uint8 levelFlag~%MotorCmd[20] motorCmd~%LED[4] led~%uint8[40] wirelessRemote~%uint32 crc                # check bit~%================================================================================~%MSG: laikago_msgs/MotorCmd~%uint8 mode                  # motor target mode~%float32 position           # motor target position~%float32 velocity           # motor target velocity~%float32 positionStiffness  # motor spring stiffness coefficient~%float32 velocityStiffness  # motor damper coefficient~%float32 torque             # motor target torque~%================================================================================~%MSG: laikago_msgs/LED~%uint8 r~%uint8 g~%uint8 b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LowCmd>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'motorCmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'led) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wirelessRemote) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LowCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'LowCmd
    (cl:cons ':levelFlag (levelFlag msg))
    (cl:cons ':motorCmd (motorCmd msg))
    (cl:cons ':led (led msg))
    (cl:cons ':wirelessRemote (wirelessRemote msg))
    (cl:cons ':crc (crc msg))
))
