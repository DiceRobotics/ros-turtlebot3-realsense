;; Auto-generated. Do not edit!


(when (boundp 'moving_object_msgs::MovingObjectStamped)
  (if (not (find-package "MOVING_OBJECT_MSGS"))
    (make-package "MOVING_OBJECT_MSGS"))
  (shadow 'MovingObjectStamped (find-package "MOVING_OBJECT_MSGS")))
(unless (find-package "MOVING_OBJECT_MSGS::MOVINGOBJECTSTAMPED")
  (make-package "MOVING_OBJECT_MSGS::MOVINGOBJECTSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude MovingObjectStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass moving_object_msgs::MovingObjectStamped
  :super ros::object
  :slots (_header _object ))

(defmethod moving_object_msgs::MovingObjectStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object __object) (instance moving_object_msgs::MovingObject :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _object __object)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:object
   (&rest __object)
   (if (keywordp (car __object))
       (send* _object __object)
     (progn
       (if __object (setq _object (car __object)))
       _object)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; moving_object_msgs/MovingObject _object
    (send _object :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; moving_object_msgs/MovingObject _object
       (send _object :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; moving_object_msgs/MovingObject _object
     (send _object :deserialize buf ptr-) (incf ptr- (send _object :serialization-length))
   ;;
   self)
  )

(setf (get moving_object_msgs::MovingObjectStamped :md5sum-) "f1fc9e196e417c4282fa9c2339291e16")
(setf (get moving_object_msgs::MovingObjectStamped :datatype-) "moving_object_msgs/MovingObjectStamped")
(setf (get moving_object_msgs::MovingObjectStamped :definition-)
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

Header header
moving_object_msgs/MovingObject object

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
MSG: moving_object_msgs/MovingObject
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

int32 id                           # Object ID
string type                        # The object type detected in this roi
float32 probability                # The detection probability of object in this roi
sensor_msgs/RegionOfInterest roi   # region of interest
geometry_msgs/Point32 min          # min and max locate the diagonal of a bounding-box of the detected object whose
geometry_msgs/Point32 max          # x, y and z axis parellel to the axises correspondingly in camera coordinates
geometry_msgs/Point   velocity     # The velocity with which the roi moves.
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
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :moving_object_msgs/MovingObjectStamped "f1fc9e196e417c4282fa9c2339291e16")


