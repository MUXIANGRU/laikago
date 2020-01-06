;; Auto-generated. Do not edit!


(when (boundp 'laikago_msgs::LowCmd)
  (if (not (find-package "LAIKAGO_MSGS"))
    (make-package "LAIKAGO_MSGS"))
  (shadow 'LowCmd (find-package "LAIKAGO_MSGS")))
(unless (find-package "LAIKAGO_MSGS::LOWCMD")
  (make-package "LAIKAGO_MSGS::LOWCMD"))

(in-package "ROS")
;;//! \htmlinclude LowCmd.msg.html


(defclass laikago_msgs::LowCmd
  :super ros::object
  :slots (_levelFlag _motorCmd _led _wirelessRemote _crc ))

(defmethod laikago_msgs::LowCmd
  (:init
   (&key
    ((:levelFlag __levelFlag) 0)
    ((:motorCmd __motorCmd) (let (r) (dotimes (i 20) (push (instance laikago_msgs::MotorCmd :init) r)) r))
    ((:led __led) (let (r) (dotimes (i 4) (push (instance laikago_msgs::LED :init) r)) r))
    ((:wirelessRemote __wirelessRemote) (make-array 40 :initial-element 0 :element-type :char))
    ((:crc __crc) 0)
    )
   (send-super :init)
   (setq _levelFlag (round __levelFlag))
   (setq _motorCmd __motorCmd)
   (setq _led __led)
   (setq _wirelessRemote __wirelessRemote)
   (setq _crc (round __crc))
   self)
  (:levelFlag
   (&optional __levelFlag)
   (if __levelFlag (setq _levelFlag __levelFlag)) _levelFlag)
  (:motorCmd
   (&rest __motorCmd)
   (if (keywordp (car __motorCmd))
       (send* _motorCmd __motorCmd)
     (progn
       (if __motorCmd (setq _motorCmd (car __motorCmd)))
       _motorCmd)))
  (:led
   (&rest __led)
   (if (keywordp (car __led))
       (send* _led __led)
     (progn
       (if __led (setq _led (car __led)))
       _led)))
  (:wirelessRemote
   (&optional __wirelessRemote)
   (if __wirelessRemote (setq _wirelessRemote __wirelessRemote)) _wirelessRemote)
  (:crc
   (&optional __crc)
   (if __crc (setq _crc __crc)) _crc)
  (:serialization-length
   ()
   (+
    ;; uint8 _levelFlag
    1
    ;; laikago_msgs/MotorCmd[20] _motorCmd
    (apply #'+ (send-all _motorCmd :serialization-length))
    ;; laikago_msgs/LED[4] _led
    (apply #'+ (send-all _led :serialization-length))
    ;; uint8[40] _wirelessRemote
    (* 1    40)
    ;; uint32 _crc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _levelFlag
       (write-byte _levelFlag s)
     ;; laikago_msgs/MotorCmd[20] _motorCmd
     (dolist (elem _motorCmd)
       (send elem :serialize s)
       )
     ;; laikago_msgs/LED[4] _led
     (dolist (elem _led)
       (send elem :serialize s)
       )
     ;; uint8[40] _wirelessRemote
     (princ _wirelessRemote s)
     ;; uint32 _crc
       (write-long _crc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _levelFlag
     (setq _levelFlag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; laikago_msgs/MotorCmd[20] _motorCmd
   (dotimes (i 20)
     (send (elt _motorCmd i) :deserialize buf ptr-) (incf ptr- (send (elt _motorCmd i) :serialization-length))
     )
   ;; laikago_msgs/LED[4] _led
   (dotimes (i 4)
     (send (elt _led i) :deserialize buf ptr-) (incf ptr- (send (elt _led i) :serialization-length))
     )
   ;; uint8[40] _wirelessRemote
   (setq _wirelessRemote (make-array 40 :element-type :char))
   (replace _wirelessRemote buf :start2 ptr-) (incf ptr- 40)
   ;; uint32 _crc
     (setq _crc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get laikago_msgs::LowCmd :md5sum-) "07bb727e47213ef7a2c819ad6a8669b1")
(setf (get laikago_msgs::LowCmd :datatype-) "laikago_msgs/LowCmd")
(setf (get laikago_msgs::LowCmd :definition-)
      "uint8 levelFlag
MotorCmd[20] motorCmd
LED[4] led
uint8[40] wirelessRemote
uint32 crc                # check bit
================================================================================
MSG: laikago_msgs/MotorCmd
uint8 mode                  # motor target mode
float32 position           # motor target position
float32 velocity           # motor target velocity
float32 positionStiffness  # motor spring stiffness coefficient
float32 velocityStiffness  # motor damper coefficient
float32 torque             # motor target torque
================================================================================
MSG: laikago_msgs/LED
uint8 r
uint8 g
uint8 b
")



(provide :laikago_msgs/LowCmd "07bb727e47213ef7a2c819ad6a8669b1")


