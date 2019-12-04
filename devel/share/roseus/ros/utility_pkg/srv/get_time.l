;; Auto-generated. Do not edit!


(when (boundp 'utility_pkg::get_time)
  (if (not (find-package "UTILITY_PKG"))
    (make-package "UTILITY_PKG"))
  (shadow 'get_time (find-package "UTILITY_PKG")))
(unless (find-package "UTILITY_PKG::GET_TIME")
  (make-package "UTILITY_PKG::GET_TIME"))
(unless (find-package "UTILITY_PKG::GET_TIMEREQUEST")
  (make-package "UTILITY_PKG::GET_TIMEREQUEST"))
(unless (find-package "UTILITY_PKG::GET_TIMERESPONSE")
  (make-package "UTILITY_PKG::GET_TIMERESPONSE"))

(in-package "ROS")





(defclass utility_pkg::get_timeRequest
  :super ros::object
  :slots (_cmd ))

(defmethod utility_pkg::get_timeRequest
  (:init
   (&key
    ((:cmd __cmd) "")
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass utility_pkg::get_timeResponse
  :super ros::object
  :slots (_res ))

(defmethod utility_pkg::get_timeResponse
  (:init
   (&key
    ((:res __res) "")
    )
   (send-super :init)
   (setq _res (string __res))
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; string _res
    4 (length _res)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _res
       (write-long (length _res) s) (princ _res s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _res
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _res (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass utility_pkg::get_time
  :super ros::object
  :slots ())

(setf (get utility_pkg::get_time :md5sum-) "d4463b49bd5bb77dbd8c4356f5dc1c28")
(setf (get utility_pkg::get_time :datatype-) "utility_pkg/get_time")
(setf (get utility_pkg::get_time :request) utility_pkg::get_timeRequest)
(setf (get utility_pkg::get_time :response) utility_pkg::get_timeResponse)

(defmethod utility_pkg::get_timeRequest
  (:response () (instance utility_pkg::get_timeResponse :init)))

(setf (get utility_pkg::get_timeRequest :md5sum-) "d4463b49bd5bb77dbd8c4356f5dc1c28")
(setf (get utility_pkg::get_timeRequest :datatype-) "utility_pkg/get_timeRequest")
(setf (get utility_pkg::get_timeRequest :definition-)
      "string cmd
---
string res

")

(setf (get utility_pkg::get_timeResponse :md5sum-) "d4463b49bd5bb77dbd8c4356f5dc1c28")
(setf (get utility_pkg::get_timeResponse :datatype-) "utility_pkg/get_timeResponse")
(setf (get utility_pkg::get_timeResponse :definition-)
      "string cmd
---
string res

")



(provide :utility_pkg/get_time "d4463b49bd5bb77dbd8c4356f5dc1c28")


