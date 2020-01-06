;; Auto-generated. Do not edit!


(when (boundp 'laikago_msgs::MotorCmd)
  (if (not (find-package "LAIKAGO_MSGS"))
    (make-package "LAIKAGO_MSGS"))
  (shadow 'MotorCmd (find-package "LAIKAGO_MSGS")))
(unless (find-package "LAIKAGO_MSGS::MOTORCMD")
  (make-package "LAIKAGO_MSGS::MOTORCMD"))

(in-package "ROS")
;;//! \htmlinclude MotorCmd.msg.html


(defclass laikago_msgs::MotorCmd
  :super ros::object
  :slots (_mode _position _velocity _positionStiffness _velocityStiffness _torque ))

(defmethod laikago_msgs::MotorCmd
  (:init
   (&key
    ((:mode __mode) 0)
    ((:position __position) 0.0)
    ((:velocity __velocity) 0.0)
    ((:positionStiffness __positionStiffness) 0.0)
    ((:velocityStiffness __velocityStiffness) 0.0)
    ((:torque __torque) 0.0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _position (float __position))
   (setq _velocity (float __velocity))
   (setq _positionStiffness (float __positionStiffness))
   (setq _velocityStiffness (float __velocityStiffness))
   (setq _torque (float __torque))
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
  (:positionStiffness
   (&optional __positionStiffness)
   (if __positionStiffness (setq _positionStiffness __positionStiffness)) _positionStiffness)
  (:velocityStiffness
   (&optional __velocityStiffness)
   (if __velocityStiffness (setq _velocityStiffness __velocityStiffness)) _velocityStiffness)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; float32 _position
    4
    ;; float32 _velocity
    4
    ;; float32 _positionStiffness
    4
    ;; float32 _velocityStiffness
    4
    ;; float32 _torque
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
     ;; float32 _positionStiffness
       (sys::poke _positionStiffness (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocityStiffness
       (sys::poke _velocityStiffness (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _torque
       (sys::poke _torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _positionStiffness
     (setq _positionStiffness (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocityStiffness
     (setq _velocityStiffness (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _torque
     (setq _torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get laikago_msgs::MotorCmd :md5sum-) "6bbe425e3cd73a40e74b88b2f03b321c")
(setf (get laikago_msgs::MotorCmd :datatype-) "laikago_msgs/MotorCmd")
(setf (get laikago_msgs::MotorCmd :definition-)
      "uint8 mode                  # motor target mode
float32 position           # motor target position
float32 velocity           # motor target velocity
float32 positionStiffness  # motor spring stiffness coefficient
float32 velocityStiffness  # motor damper coefficient
float32 torque             # motor target torque
")



(provide :laikago_msgs/MotorCmd "6bbe425e3cd73a40e74b88b2f03b321c")


