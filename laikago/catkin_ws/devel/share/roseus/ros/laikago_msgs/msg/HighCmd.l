;; Auto-generated. Do not edit!


(when (boundp 'laikago_msgs::HighCmd)
  (if (not (find-package "LAIKAGO_MSGS"))
    (make-package "LAIKAGO_MSGS"))
  (shadow 'HighCmd (find-package "LAIKAGO_MSGS")))
(unless (find-package "LAIKAGO_MSGS::HIGHCMD")
  (make-package "LAIKAGO_MSGS::HIGHCMD"))

(in-package "ROS")
;;//! \htmlinclude HighCmd.msg.html


(defclass laikago_msgs::HighCmd
  :super ros::object
  :slots (_levelFlag _mode _forwardSpeed _sideSpeed _rotateSpeed _bodyHeight _footRaiseHeight _yaw _pitch _roll _led _wirelessRemote _crc ))

(defmethod laikago_msgs::HighCmd
  (:init
   (&key
    ((:levelFlag __levelFlag) 0)
    ((:mode __mode) 0)
    ((:forwardSpeed __forwardSpeed) 0.0)
    ((:sideSpeed __sideSpeed) 0.0)
    ((:rotateSpeed __rotateSpeed) 0.0)
    ((:bodyHeight __bodyHeight) 0.0)
    ((:footRaiseHeight __footRaiseHeight) 0.0)
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:led __led) (let (r) (dotimes (i 4) (push (instance laikago_msgs::LED :init) r)) r))
    ((:wirelessRemote __wirelessRemote) (make-array 40 :initial-element 0 :element-type :char))
    ((:crc __crc) 0)
    )
   (send-super :init)
   (setq _levelFlag (round __levelFlag))
   (setq _mode (round __mode))
   (setq _forwardSpeed (float __forwardSpeed))
   (setq _sideSpeed (float __sideSpeed))
   (setq _rotateSpeed (float __rotateSpeed))
   (setq _bodyHeight (float __bodyHeight))
   (setq _footRaiseHeight (float __footRaiseHeight))
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _led __led)
   (setq _wirelessRemote __wirelessRemote)
   (setq _crc (round __crc))
   self)
  (:levelFlag
   (&optional __levelFlag)
   (if __levelFlag (setq _levelFlag __levelFlag)) _levelFlag)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
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
  (:footRaiseHeight
   (&optional __footRaiseHeight)
   (if __footRaiseHeight (setq _footRaiseHeight __footRaiseHeight)) _footRaiseHeight)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
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
    ;; uint8 _mode
    1
    ;; float32 _forwardSpeed
    4
    ;; float32 _sideSpeed
    4
    ;; float32 _rotateSpeed
    4
    ;; float32 _bodyHeight
    4
    ;; float32 _footRaiseHeight
    4
    ;; float32 _yaw
    4
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ;; laikago_msgs/LED[4] _led
    (apply #'+ (send-all _led :serialization-length))
    ;; uint8[40] _wirelessRemote
    (* 1    40)
    ;; int32 _crc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _levelFlag
       (write-byte _levelFlag s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; float32 _forwardSpeed
       (sys::poke _forwardSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sideSpeed
       (sys::poke _sideSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rotateSpeed
       (sys::poke _rotateSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bodyHeight
       (sys::poke _bodyHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _footRaiseHeight
       (sys::poke _footRaiseHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; laikago_msgs/LED[4] _led
     (dolist (elem _led)
       (send elem :serialize s)
       )
     ;; uint8[40] _wirelessRemote
     (princ _wirelessRemote s)
     ;; int32 _crc
       (write-long _crc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _levelFlag
     (setq _levelFlag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _forwardSpeed
     (setq _forwardSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sideSpeed
     (setq _sideSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rotateSpeed
     (setq _rotateSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bodyHeight
     (setq _bodyHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _footRaiseHeight
     (setq _footRaiseHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; laikago_msgs/LED[4] _led
   (dotimes (i 4)
     (send (elt _led i) :deserialize buf ptr-) (incf ptr- (send (elt _led i) :serialization-length))
     )
   ;; uint8[40] _wirelessRemote
   (setq _wirelessRemote (make-array 40 :element-type :char))
   (replace _wirelessRemote buf :start2 ptr-) (incf ptr- 40)
   ;; int32 _crc
     (setq _crc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get laikago_msgs::HighCmd :md5sum-) "2dd27d670ca407541b0dd80079b1b2f6")
(setf (get laikago_msgs::HighCmd :datatype-) "laikago_msgs/HighCmd")
(setf (get laikago_msgs::HighCmd :definition-)
      "uint8 levelFlag
uint8 mode
float32 forwardSpeed
float32 sideSpeed
float32 rotateSpeed	
float32 bodyHeight
float32 footRaiseHeight
float32 yaw
float32 pitch
float32 roll
LED[4] led
uint8[40] wirelessRemote
int32 crc
================================================================================
MSG: laikago_msgs/LED
uint8 r
uint8 g
uint8 b
")



(provide :laikago_msgs/HighCmd "2dd27d670ca407541b0dd80079b1b2f6")


