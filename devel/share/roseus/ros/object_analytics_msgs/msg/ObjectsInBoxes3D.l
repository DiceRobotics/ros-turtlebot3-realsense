;; Auto-generated. Do not edit!


(when (boundp 'object_analytics_msgs::ObjectsInBoxes3D)
  (if (not (find-package "OBJECT_ANALYTICS_MSGS"))
    (make-package "OBJECT_ANALYTICS_MSGS"))
  (shadow 'ObjectsInBoxes3D (find-package "OBJECT_ANALYTICS_MSGS")))
(unless (find-package "OBJECT_ANALYTICS_MSGS::OBJECTSINBOXES3D")
  (make-package "OBJECT_ANALYTICS_MSGS::OBJECTSINBOXES3D"))

(in-package "ROS")
;;//! \htmlinclude ObjectsInBoxes3D.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass object_analytics_msgs::ObjectsInBoxes3D
  :super ros::object
  :slots (_header _objects_in_boxes ))

(defmethod object_analytics_msgs::ObjectsInBoxes3D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects_in_boxes __objects_in_boxes) (let (r) (dotimes (i 0) (push (instance object_analytics_msgs::ObjectInBox3D :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects_in_boxes __objects_in_boxes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects_in_boxes
   (&rest __objects_in_boxes)
   (if (keywordp (car __objects_in_boxes))
       (send* _objects_in_boxes __objects_in_boxes)
     (progn
       (if __objects_in_boxes (setq _objects_in_boxes (car __objects_in_boxes)))
       _objects_in_boxes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; object_analytics_msgs/ObjectInBox3D[] _objects_in_boxes
    (apply #'+ (send-all _objects_in_boxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; object_analytics_msgs/ObjectInBox3D[] _objects_in_boxes
     (write-long (length _objects_in_boxes) s)
     (dolist (elem _objects_in_boxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; object_analytics_msgs/ObjectInBox3D[] _objects_in_boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects_in_boxes (let (r) (dotimes (i n) (push (instance object_analytics_msgs::ObjectInBox3D :init) r)) r))
     (dolist (elem- _objects_in_boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get object_analytics_msgs::ObjectsInBoxes3D :md5sum-) "9c0963ec04b8a73778b7dfa2abfbc0cf")
(setf (get object_analytics_msgs::ObjectsInBoxes3D :datatype-) "object_analytics_msgs/ObjectsInBoxes3D")
(setf (get object_analytics_msgs::ObjectsInBoxes3D :definition-)
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

std_msgs/Header header            # timestamp in header is the time the sensor captured the raw data
ObjectInBox3D[] objects_in_boxes  # ObjectInBox3D array

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
MSG: object_analytics_msgs/ObjectInBox3D
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

# This message can represent a 3D detection object with 2D region of interest and 3D information (min & max)
sensor_msgs/RegionOfInterest roi      # region of interest
geometry_msgs/Point32 min             # min and max locate the diagonal of a bounding-box of the detected object whose
geometry_msgs/Point32 max             # x, y and z axis parellel to the axises correspondingly in camera coordinates

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

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :object_analytics_msgs/ObjectsInBoxes3D "9c0963ec04b8a73778b7dfa2abfbc0cf")


