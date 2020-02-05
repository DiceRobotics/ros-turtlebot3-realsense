;; Auto-generated. Do not edit!


(when (boundp 'object_analytics_msgs::TrackedObjects)
  (if (not (find-package "OBJECT_ANALYTICS_MSGS"))
    (make-package "OBJECT_ANALYTICS_MSGS"))
  (shadow 'TrackedObjects (find-package "OBJECT_ANALYTICS_MSGS")))
(unless (find-package "OBJECT_ANALYTICS_MSGS::TRACKEDOBJECTS")
  (make-package "OBJECT_ANALYTICS_MSGS::TRACKEDOBJECTS"))

(in-package "ROS")
;;//! \htmlinclude TrackedObjects.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass object_analytics_msgs::TrackedObjects
  :super ros::object
  :slots (_header _tracked_objects ))

(defmethod object_analytics_msgs::TrackedObjects
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracked_objects __tracked_objects) (let (r) (dotimes (i 0) (push (instance object_analytics_msgs::TrackedObject :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracked_objects __tracked_objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracked_objects
   (&rest __tracked_objects)
   (if (keywordp (car __tracked_objects))
       (send* _tracked_objects __tracked_objects)
     (progn
       (if __tracked_objects (setq _tracked_objects (car __tracked_objects)))
       _tracked_objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; object_analytics_msgs/TrackedObject[] _tracked_objects
    (apply #'+ (send-all _tracked_objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; object_analytics_msgs/TrackedObject[] _tracked_objects
     (write-long (length _tracked_objects) s)
     (dolist (elem _tracked_objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; object_analytics_msgs/TrackedObject[] _tracked_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracked_objects (let (r) (dotimes (i n) (push (instance object_analytics_msgs::TrackedObject :init) r)) r))
     (dolist (elem- _tracked_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get object_analytics_msgs::TrackedObjects :md5sum-) "36a3a0ceb337855e0d695e5cebe8d607")
(setf (get object_analytics_msgs::TrackedObjects :datatype-) "object_analytics_msgs/TrackedObjects")
(setf (get object_analytics_msgs::TrackedObjects :definition-)
      "# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

std_msgs/Header header              # timestamp in header is the time the sensor captured the raw data
TrackedObject[] tracked_objects     # TrackedObject array

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: object_analytics_msgs/TrackedObject
# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This message can represent a 2D tracking object with 2D region of interest and tracking id.
int32 id                            # object identifier
sensor_msgs/RegionOfInterest roi    # region of interest

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :object_analytics_msgs/TrackedObjects "36a3a0ceb337855e0d695e5cebe8d607")


