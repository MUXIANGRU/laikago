;; Auto-generated. Do not edit!


(when (boundp 'laikago_msgs::HighState)
  (if (not (find-package "LAIKAGO_MSGS"))
    (make-package "LAIKAGO_MSGS"))
  (shadow 'HighState (find-package "LAIKAGO_MSGS")))
(unless (find-package "LAIKAGO_MSGS::HIGHSTATE")
  (make-package "LAIKAGO_MSGS::HIGHSTATE"))

(in-package "ROS")
;;//! \htmlinclude HighState.msg.html


(defclass laikago_msgs::HighState
  :super ros::object
  :slots (_levelFlag _mode _imu _forwardSpeed _sideSpeed _rotateSpeed _bodyHeight _updownSpeed _forwardPosition _sidePosition _footPosition2Body _footSpeed2Body _footForce _tick _wirelessRemote _crc _eeForce _jointP ))

(defmethod laikago_msgs::HighState
  (:init
   (&key
    ((:levelFlag __levelFlag) 0)
    ((:mode __mode) 0)
    ((:imu __imu) (instance laikago_msgs::IMU :init))
    ((:forwardSpeed __forwardSpeed) 0.0)
    ((:sideSpeed __sideSpeed) 0.0)
    ((:rotateSpeed __rotateSpeed) 0.0)
    ((:bodyHeight __bodyHeight) 0.0)
    ((:updownSpeed __updownSpeed) 0.0)
    ((:forwardPosition __forwardPosition) (instance laikago_msgs::Cartesian :init))
    ((:sidePosition __sidePosition) (instance laikago_msgs::Cartesian :init))
    ((:footPosition2Body __footPosition2Body) (let (r) (dotimes (i 4) (push (instance laikago_msgs::Cartesian :init) r)) r))
    ((:footSpeed2Body __footSpeed2Body) (let (r) (dotimes (i 4) (push (instance laikago_msgs::Cartesian :init) r)) r))
    ((:footForce __footForce) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:tick __tick) 0)
    ((:wirelessRemote __wirelessRemote) (make-array 40 :initial-element 0 :element-type :char))
    ((:crc __crc) 0)
    ((:eeForce __eeForce) (let (r) (dotimes (i 4) (push (instance laikago_msgs::Cartesian :init) r)) r))
    ((:jointP __jointP) (make-array 12 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _levelFlag (round __levelFlag))
   (setq _mode (round __mode))
   (setq _imu __imu)
   (setq _forwardSpeed (float __forwardSpeed))
   (setq _sideSpeed (float __sideSpeed))
   (setq _rotateSpeed (float __rotateSpeed))
   (setq _bodyHeight (float __bodyHeight))
   (setq _updownSpeed (float __updownSpeed))
   (setq _forwardPosition __forwardPosition)
   (setq _sidePosition __sidePosition)
   (setq _footPosition2Body __footPosition2Body)
   (setq _footSpeed2Body __footSpeed2Body)
   (setq _footForce __footForce)
   (setq _tick (round __tick))
   (setq _wirelessRemote __wirelessRemote)
   (setq _crc (round __crc))
   (setq _eeForce __eeForce)
   (setq _jointP __jointP)
   self)
  (:levelFlag
   (&optional __levelFlag)
   (if __levelFlag (setq _levelFlag __levelFlag)) _levelFlag)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:forwardSpeed
   (&optional __forwardSpeed)
   (if __forwardSpeed (setq _forwardSpeed __forwardSpeed)) _forwardSpeed)
  (:sideSpeed
   (&optional __sideSpeed)
   (if __sideSpeed (setq _sideSpeed __sideSpeed)) _sideSpeed)
  (:rotateSpeed
   (&optional __rotateSpeed)
   (if __rotateSpeed (setq _rotateSpeed __rotateSpeed)) _rotateSpeed)
  (:bodyHeight
   (&optional __bodyHeight)
   (if __bodyHeight (setq _bodyHeight __bodyHeight)) _bodyHeight)
  (:updownSpeed
   (&optional __updownSpeed)
   (if __updownSpeed (setq _updownSpeed __updownSpeed)) _updownSpeed)
  (:forwardPosition
   (&rest __forwardPosition)
   (if (keywordp (car __forwardPosition))
       (send* _forwardPosition __forwardPosition)
     (progn
       (if __forwardPosition (setq _forwardPosition (car __forwardPosition)))
       _forwardPosition)))
  (:sidePosition
   (&rest __sidePosition)
   (if (keywordp (car __sidePosition))
       (send* _sidePosition __sidePosition)
     (progn
       (if __sidePosition (setq _sidePosition (car __sidePosition)))
       _sidePosition)))
  (:footPosition2Body
   (&rest __footPosition2Body)
   (if (keywordp (car __footPosition2Body))
       (send* _footPosition2Body __footPosition2Body)
     (progn
       (if __footPosition2Body (setq _footPosition2Body (car __footPosition2Body)))
       _footPosition2Body)))
  (:footSpeed2Body
   (&rest __footSpeed2Body)
   (if (keywordp (car __footSpeed2Body))
       (send* _footSpeed2Body __footSpeed2Body)
     (progn
       (if __footSpeed2Body (setq _footSpeed2Body (car __footSpeed2Body)))
       _footSpeed2Body)))
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
  (:jointP
   (&optional __jointP)
   (if __jointP (setq _jointP __jointP)) _jointP)
  (:serialization-length
   ()
   (+
    ;; uint8 _levelFlag
    1
    ;; uint8 _mode
    1
    ;; laikago_msgs/IMU _imu
    (send _imu :serialization-length)
    ;; float32 _forwardSpeed
    4
    ;; float32 _sideSpeed
    4
    ;; float32 _rotateSpeed
    4
    ;; float32 _bodyHeight
    4
    ;; float32 _updownSpeed
    4
    ;; laikago_msgs/Cartesian _forwardPosition
    (send _forwardPosition :serialization-length)
    ;; laikago_msgs/Cartesian _sidePosition
    (send _sidePosition :serialization-length)
    ;; laikago_msgs/Cartesian[4] _footPosition2Body
    (apply #'+ (send-all _footPosition2Body :serialization-length))
    ;; laikago_msgs/Cartesian[4] _footSpeed2Body
    (apply #'+ (send-all _footSpeed2Body :serialization-length))
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
    ;; float32[12] _jointP
    (* 4    12)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _levelFlag
       (write-byte _levelFlag s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; laikago_msgs/IMU _imu
       (send _imu :serialize s)
     ;; float32 _forwardSpeed
       (sys::poke _forwardSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sideSpeed
       (sys::poke _sideSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rotateSpeed
       (sys::poke _rotateSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bodyHeight
       (sys::poke _bodyHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _updownSpeed
       (sys::poke _updownSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; laikago_msgs/Cartesian _forwardPosition
       (send _forwardPosition :serialize s)
     ;; laikago_msgs/Cartesian _sidePosition
       (send _sidePosition :serialize s)
     ;; laikago_msgs/Cartesian[4] _footPosition2Body
     (dolist (elem _footPosition2Body)
       (send elem :serialize s)
       )
     ;; laikago_msgs/Cartesian[4] _footSpeed2Body
     (dolist (elem _footSpeed2Body)
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
     ;; float32[12] _jointP
     (dotimes (i 12)
       (sys::poke (elt _jointP i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _levelFlag
     (setq _levelFlag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; laikago_msgs/IMU _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; float32 _forwardSpeed
     (setq _forwardSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sideSpeed
     (setq _sideSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rotateSpeed
     (setq _rotateSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bodyHeight
     (setq _bodyHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _updownSpeed
     (setq _updownSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; laikago_msgs/Cartesian _forwardPosition
     (send _forwardPosition :deserialize buf ptr-) (incf ptr- (send _forwardPosition :serialization-length))
   ;; laikago_msgs/Cartesian _sidePosition
     (send _sidePosition :deserialize buf ptr-) (incf ptr- (send _sidePosition :serialization-length))
   ;; laikago_msgs/Cartesian[4] _footPosition2Body
   (dotimes (i 4)
     (send (elt _footPosition2Body i) :deserialize buf ptr-) (incf ptr- (send (elt _footPosition2Body i) :serialization-length))
     )
   ;; laikago_msgs/Cartesian[4] _footSpeed2Body
   (dotimes (i 4)
     (send (elt _footSpeed2Body i) :deserialize buf ptr-) (incf ptr- (send (elt _footSpeed2Body i) :serialization-length))
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
   ;; float32[12] _jointP
   (dotimes (i (length _jointP))
     (setf (elt _jointP i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get laikago_msgs::HighState :md5sum-) "01d4600477cd3acd91bd469708ab5526")
(setf (get laikago_msgs::HighState :datatype-) "laikago_msgs/HighState")
(setf (get laikago_msgs::HighState :definition-)
      "uint8 levelFlag
uint8 mode
IMU imu
float32 forwardSpeed
float32 sideSpeed
float32 rotateSpeed
float32 bodyHeight
float32 updownSpeed
Cartesian forwardPosition       # (will be float type next version)
Cartesian sidePosition          # (will be float type next version)
Cartesian[4] footPosition2Body
Cartesian[4] footSpeed2Body
float32[4] footForce    
uint32 tick               
uint8[40] wirelessRemote
uint32 crc

# Under are not defined in SDK yet.
Cartesian[4] eeForce            # It's a 1-DOF force in real robot, but 3-DOF is better for visualization.
float32[12] jointP              # for visualization

================================================================================
MSG: laikago_msgs/IMU
float32[4] quaternion
float32[3] gyroscope
float32[3] acceleration
float32[3] rpy
float32 temp
================================================================================
MSG: laikago_msgs/Cartesian
float32 x
float32 y
float32 z
")



(provide :laikago_msgs/HighState "01d4600477cd3acd91bd469708ab5526")


