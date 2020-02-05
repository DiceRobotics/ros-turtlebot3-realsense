;; Auto-generated. Do not edit!


(when (boundp 'fla_sumup_pkg::MsgTutorial)
  (if (not (find-package "FLA_SUMUP_PKG"))
    (make-package "FLA_SUMUP_PKG"))
  (shadow 'MsgTutorial (find-package "FLA_SUMUP_PKG")))
(unless (find-package "FLA_SUMUP_PKG::MSGTUTORIAL")
  (make-package "FLA_SUMUP_PKG::MSGTUTORIAL"))

(in-package "ROS")
;;//! \htmlinclude MsgTutorial.msg.html


(defclass fla_sumup_pkg::MsgTutorial
  :super ros::object
  :slots (_stamp _data ))

(defmethod fla_sumup_pkg::MsgTutorial
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data (round __data))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fla_sumup_pkg::MsgTutorial :md5sum-) "bc5a8a0aefee54a11d41536be86744a6")
(setf (get fla_sumup_pkg::MsgTutorial :datatype-) "fla_sumup_pkg/MsgTutorial")
(setf (get fla_sumup_pkg::MsgTutorial :definition-)
      "time stamp
int32 data

")



(provide :fla_sumup_pkg/MsgTutorial "bc5a8a0aefee54a11d41536be86744a6")


