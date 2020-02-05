; Auto-generated. Do not edit!


(cl:in-package moving_object_msgs-msg)


;//! \htmlinclude MovingObjectStamped.msg.html

(cl:defclass <MovingObjectStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (object
    :reader object
    :initarg :object
    :type moving_object_msgs-msg:MovingObject
    :initform (cl:make-instance 'moving_object_msgs-msg:MovingObject)))
)

(cl:defclass MovingObjectStamped (<MovingObjectStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovingObjectStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovingObjectStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moving_object_msgs-msg:<MovingObjectStamped> is deprecated: use moving_object_msgs-msg:MovingObjectStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MovingObjectStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:header-val is deprecated.  Use moving_object_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <MovingObjectStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:object-val is deprecated.  Use moving_object_msgs-msg:object instead.")
  (object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovingObjectStamped>) ostream)
  "Serializes a message object of type '<MovingObjectStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovingObjectStamped>) istream)
  "Deserializes a message object of type '<MovingObjectStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovingObjectStamped>)))
  "Returns string type for a message object of type '<MovingObjectStamped>"
  "moving_object_msgs/MovingObjectStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovingObjectStamped)))
  "Returns string type for a message object of type 'MovingObjectStamped"
  "moving_object_msgs/MovingObjectStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovingObjectStamped>)))
  "Returns md5sum for a message object of type '<MovingObjectStamped>"
  "f1fc9e196e417c4282fa9c2339291e16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovingObjectStamped)))
  "Returns md5sum for a message object of type 'MovingObjectStamped"
  "f1fc9e196e417c4282fa9c2339291e16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovingObjectStamped>)))
  "Returns full string definition for message of type '<MovingObjectStamped>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%Header header~%moving_object_msgs/MovingObject object~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: moving_object_msgs/MovingObject~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%int32 id                           # Object ID~%string type                        # The object type detected in this roi~%float32 probability                # The detection probability of object in this roi~%sensor_msgs/RegionOfInterest roi   # region of interest~%geometry_msgs/Point32 min          # min and max locate the diagonal of a bounding-box of the detected object whose~%geometry_msgs/Point32 max          # x, y and z axis parellel to the axises correspondingly in camera coordinates~%geometry_msgs/Point   velocity     # The velocity with which the roi moves.~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovingObjectStamped)))
  "Returns full string definition for message of type 'MovingObjectStamped"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%Header header~%moving_object_msgs/MovingObject object~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: moving_object_msgs/MovingObject~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%int32 id                           # Object ID~%string type                        # The object type detected in this roi~%float32 probability                # The detection probability of object in this roi~%sensor_msgs/RegionOfInterest roi   # region of interest~%geometry_msgs/Point32 min          # min and max locate the diagonal of a bounding-box of the detected object whose~%geometry_msgs/Point32 max          # x, y and z axis parellel to the axises correspondingly in camera coordinates~%geometry_msgs/Point   velocity     # The velocity with which the roi moves.~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovingObjectStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovingObjectStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'MovingObjectStamped
    (cl:cons ':header (header msg))
    (cl:cons ':object (object msg))
))
