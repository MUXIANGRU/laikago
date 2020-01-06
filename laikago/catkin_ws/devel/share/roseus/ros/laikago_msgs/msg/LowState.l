;; Auto-generated. Do not edit!


(when (boundp 'laikago_msgs::LowState)
  (if (not (find-package "LAIKAGO_MSGS"))
    (make-package "LAIKAGO_MSGS"))
  (shadow 'LowState (find-package "LAIKAGO_MSGS")))
(unless (find-package "LAIKAGO_MSGS::LOWSTATE")
  (make-package "LAIKAGO_MSGS::LOWSTATE"))

(in-package "ROS")
;;//! \htmlinclude LowState.msg.html


(defclass laikago_msgs::LowState
  :super ros::object
  :slots (_levelFlag _imu _motorState _footForce _tick _wirelessRemote _crc _eeForce ))

(defmethod laikago_msgs::LowState
  (:init
   (&key
    ((:levelFlag __levelFlag) 0)
    ((:imu __imu) (instance laikago_msgs::IMU :init))
    ((:motorState __motorState) (let (r) (dotimes (i 20) (push (instance laikago_msgs::MotorState :init) r)) r))
    ((:footForce __footForce) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:tick __tick) 0)
    ((:wirelessRemote __wirelessRemote) (make-array 40 :initial-element 0 :element-type :char))
    ((:crc __crc) 0)
    ((:eeForce __eeForce) (let (r) (dotimes (i 4) (push (instance laikago_msgs::Cartesian :init) r)) r))
    )
   (send-super :init)
   (setq _levelFlag (round __levelFlag))
   (setq _imu __imu)
   (setq _motorState __motorState)
   (setq _footForce __footForce)
   (setq _tick (round __tick))
   (setq _wirelessRemote __wirelessRemote)
   (setq _crc (round __crc))
   (setq _eeForce __eeForce)
   self)
  (:levelFlag
   (&optional __levelFlag)
   (if __levelFlag (setq _levelFlag __levelFlag)) _levelFlag)
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:motorState
   (&rest __motorState)
   (if (keywordp (car __motorState))
       (send* _motorState __motorState)
     (progn
       (if __motorState (setq _motorState (car __motorState)))
       _motorState)))
  (:footForce
   (&optional __footForce)
   (if __footForce (setq _footForce __footForce)) _footForce)
  (:tick
   (&optional __tick)
   (if __tick (setq _tick __tick)) _tick)
  (:wirelessRemote
   (&optional __wirelessRemote)
   (if __wirelessRemote (setq _wirelessRemote __wirelessRemote)) _wirelessRemote)
  (:crc
   (&optional __crc)
   (if __crc (setq _crc __crc)) _crc)
  (:eeForce
   (&rest __eeForce)
   (if (keywordp (car __eeForce))
       (send* _eeForce __eeForce)
     (progn
       (if __eeForce (setq _eeForce (car __eeForce)))
       _eeForce)))
  (:serialization-length
   ()
   (+
    ;; uint8 _levelFlag
    1
    ;; laikago_msgs/IMU _imu
    (send _imu :serialization-length)
    ;; laikago_msgs/MotorState[20] _motorState
    (apply #'+ (send-all _motorState :serialization-length))
    ;; float32[4] _footForce
    (* 4    4)
    ;; uint32 _tick
    4
    ;; uint8[40] _wirelessRemote
    (* 1    40)
    ;; uint32 _crc
    4
    ;; laikago_msgs/Cartesian[4] _eeForce
    (apply #'+ (send-all _eeForce :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _levelFlag
       (write-byte _levelFlag s)
     ;; laikago_msgs/IMU _imu
       (send _imu :serialize s)
     ;; laikago_msgs/MotorState[20] _motorState
     (dolist (elem _motorState)
       (send elem :serialize s)
       )
     ;; float32[4] _footForce
     (dotimes (i 4)
       (sys::poke (elt _footForce i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _tick
       (write-long _tick s)
     ;; uint8[40] _wirelessRemote
     (princ _wirelessRemote s)
     ;; uint32 _crc
       (write-long _crc s)
     ;; laikago_msgs/Cartesian[4] _eeForce
     (dolist (elem _eeForce)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _levelFlag
     (setq _levelFlag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; laikago_msgs/IMU _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; laikago_msgs/MotorState[20] _motorState
   (dotimes (i 20)
     (send (elt _motorState i) :deserialize buf ptr-) (incf ptr- (send (elt _motorState i) :serialization-length))
     )
   ;; float32[4] _footForce
   (dotimes (i (length _footForce))
     (setf (elt _footForce i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; uint32 _tick
     (setq _tick (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[40] _wirelessRemote
   (setq _wirelessRemote (make-array 40 :element-type :char))
   (replace _wirelessRemote buf :start2 ptr-) (incf ptr- 40)
   ;; uint32 _crc
     (setq _crc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; laikago_msgs/Cartesian[4] _eeForce
   (dotimes (i 4)
     (send (elt _eeForce i) :deserialize buf ptr-) (incf ptr- (send (elt _eeForce i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get laikago_msgs::LowState :md5sum-) "ff497aa2c0f42e68227aaf7b1f8c13c1")
(setf (get laikago_msgs::LowState :datatype-) "laikago_msgs/LowState")
(setf (get laikago_msgs::LowState :definition-)
      "uint8 levelFlag
IMU imu
MotorState[20] motorState
float32[4] footForce
uint32 tick                   # time reference
uint8[40] wirelessRemote      # wireless command
uint32 crc                    # check bit
Cartesian[4] eeForce          #it's a 1-DOF force infact, but we use 3-DOF here just for visualization 
================================================================================
MSG: laikago_msgs/IMU
float32[4] quaternion
float32[3] gyroscope
float32[3] acceleration
float32[3] rpy
float32 temp
================================================================================
MSG: laikago_msgs/MotorState
uint8 mode            # motor current mode 
float32 position     # motor current position（rad）
float32 velocity     # motor current speed（rad/s）
float32 torque       # current estimated output torque（N*m）
float32 temperature  # motor temperature（slow conduction of temperature leads to lag）
int32 iReserve
float32 fReserve
================================================================================
MSG: laikago_msgs/Cartesian
float32 x
float32 y
float32 z
")



(provide :laikago_msgs/LowState "ff497aa2c0f42e68227aaf7b1f8c13c1")


