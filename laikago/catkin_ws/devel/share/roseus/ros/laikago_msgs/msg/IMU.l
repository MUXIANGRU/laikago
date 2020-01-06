;; Auto-generated. Do not edit!


(when (boundp 'laikago_msgs::IMU)
  (if (not (find-package "LAIKAGO_MSGS"))
    (make-package "LAIKAGO_MSGS"))
  (shadow 'IMU (find-package "LAIKAGO_MSGS")))
(unless (find-package "LAIKAGO_MSGS::IMU")
  (make-package "LAIKAGO_MSGS::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html


(defclass laikago_msgs::IMU
  :super ros::object
  :slots (_quaternion _gyroscope _acceleration _rpy _temp ))

(defmethod laikago_msgs::IMU
  (:init
   (&key
    ((:quaternion __quaternion) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:gyroscope __gyroscope) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:acceleration __acceleration) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:rpy __rpy) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:temp __temp) 0.0)
    )
   (send-super :init)
   (setq _quaternion __quaternion)
   (setq _gyroscope __gyroscope)
   (setq _acceleration __acceleration)
   (setq _rpy __rpy)
   (setq _temp (float __temp))
   self)
  (:quaternion
   (&optional __quaternion)
   (if __quaternion (setq _quaternion __quaternion)) _quaternion)
  (:gyroscope
   (&optional __gyroscope)
   (if __gyroscope (setq _gyroscope __gyroscope)) _gyroscope)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:rpy
   (&optional __rpy)
   (if __rpy (setq _rpy __rpy)) _rpy)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:serialization-length
   ()
   (+
    ;; float32[4] _quaternion
    (* 4    4)
    ;; float32[3] _gyroscope
    (* 4    3)
    ;; float32[3] _acceleration
    (* 4    3)
    ;; float32[3] _rpy
    (* 4    3)
    ;; float32 _temp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _quaternion
     (dotimes (i 4)
       (sys::poke (elt _quaternion i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _gyroscope
     (dotimes (i 3)
       (sys::poke (elt _gyroscope i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _acceleration
     (dotimes (i 3)
       (sys::poke (elt _acceleration i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _rpy
     (dotimes (i 3)
       (sys::poke (elt _rpy i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _quaternion
   (dotimes (i (length _quaternion))
     (setf (elt _quaternion i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _gyroscope
   (dotimes (i (length _gyroscope))
     (setf (elt _gyroscope i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _acceleration
   (dotimes (i (length _acceleration))
     (setf (elt _acceleration i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _rpy
   (dotimes (i (length _rpy))
     (setf (elt _rpy i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _temp
     (setq _temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get laikago_msgs::IMU :md5sum-) "6067de14374c97a8666801686a8446fb")
(setf (get laikago_msgs::IMU :datatype-) "laikago_msgs/IMU")
(setf (get laikago_msgs::IMU :definition-)
      "float32[4] quaternion
float32[3] gyroscope
float32[3] acceleration
float32[3] rpy
float32 temp
")



(provide :laikago_msgs/IMU "6067de14374c97a8666801686a8446fb")


