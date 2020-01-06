;; Auto-generated. Do not edit!


(when (boundp 'laikago_msgs::MotorState)
  (if (not (find-package "LAIKAGO_MSGS"))
    (make-package "LAIKAGO_MSGS"))
  (shadow 'MotorState (find-package "LAIKAGO_MSGS")))
(unless (find-package "LAIKAGO_MSGS::MOTORSTATE")
  (make-package "LAIKAGO_MSGS::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(defclass laikago_msgs::MotorState
  :super ros::object
  :slots (_mode _position _velocity _torque _temperature _iReserve _fReserve ))

(defmethod laikago_msgs::MotorState
  (:init
   (&key
    ((:mode __mode) 0)
    ((:position __position) 0.0)
    ((:velocity __velocity) 0.0)
    ((:torque __torque) 0.0)
    ((:temperature __temperature) 0.0)
    ((:iReserve __iReserve) 0)
    ((:fReserve __fReserve) 0.0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _position (float __position))
   (setq _velocity (float __velocity))
   (setq _torque (float __torque))
   (setq _temperature (float __temperature))
   (setq _iReserve (round __iReserve))
   (setq _fReserve (float __fReserve))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:iReserve
   (&optional __iReserve)
   (if __iReserve (setq _iReserve __iReserve)) _iReserve)
  (:fReserve
   (&optional __fReserve)
   (if __fReserve (setq _fReserve __fReserve)) _fReserve)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; float32 _position
    4
    ;; float32 _velocity
    4
    ;; float32 _torque
    4
    ;; float32 _temperature
    4
    ;; int32 _iReserve
    4
    ;; float32 _fReserve
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _torque
       (sys::poke _torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _iReserve
       (write-long _iReserve s)
     ;; float32 _fReserve
       (sys::poke _fReserve (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _torque
     (setq _torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _iReserve
     (setq _iReserve (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _fReserve
     (setq _fReserve (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get laikago_msgs::MotorState :md5sum-) "45138c3d7a603ce307daeb241ea2207a")
(setf (get laikago_msgs::MotorState :datatype-) "laikago_msgs/MotorState")
(setf (get laikago_msgs::MotorState :definition-)
      "uint8 mode            # motor current mode 
float32 position     # motor current position（rad）
float32 velocity     # motor current speed（rad/s）
float32 torque       # current estimated output torque（N*m）
float32 temperature  # motor temperature（slow conduction of temperature leads to lag）
int32 iReserve
float32 fReserve
")



(provide :laikago_msgs/MotorState "45138c3d7a603ce307daeb241ea2207a")


