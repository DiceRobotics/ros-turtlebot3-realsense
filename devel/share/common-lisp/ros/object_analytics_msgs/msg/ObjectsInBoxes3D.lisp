; Auto-generated. Do not edit!


(cl:in-package object_analytics_msgs-msg)


;//! \htmlinclude ObjectsInBoxes3D.msg.html

(cl:defclass <ObjectsInBoxes3D> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects_in_boxes
    :reader objects_in_boxes
    :initarg :objects_in_boxes
    :type (cl:vector object_analytics_msgs-msg:ObjectInBox3D)
   :initform (cl:make-array 0 :element-type 'object_analytics_msgs-msg:ObjectInBox3D :initial-element (cl:make-instance 'object_analytics_msgs-msg:ObjectInBox3D))))
)

(cl:defclass ObjectsInBoxes3D (<ObjectsInBoxes3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectsInBoxes3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectsInBoxes3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_analytics_msgs-msg:<ObjectsInBoxes3D> is deprecated: use object_analytics_msgs-msg:ObjectsInBoxes3D instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectsInBoxes3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_analytics_msgs-msg:header-val is deprecated.  Use object_analytics_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects_in_boxes-val :lambda-list '(m))
(cl:defmethod objects_in_boxes-val ((m <ObjectsInBoxes3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_analytics_msgs-msg:objects_in_boxes-val is deprecated.  Use object_analytics_msgs-msg:objects_in_boxes instead.")
  (objects_in_boxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectsInBoxes3D>) ostream)
  "Serializes a message object of type '<ObjectsInBoxes3D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects_in_boxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects_in_boxes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectsInBoxes3D>) istream)
  "Deserializes a message object of type '<ObjectsInBoxes3D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects_in_boxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects_in_boxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_analytics_msgs-msg:ObjectInBox3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectsInBoxes3D>)))
  "Returns string type for a message object of type '<ObjectsInBoxes3D>"
  "object_analytics_msgs/ObjectsInBoxes3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectsInBoxes3D)))
  "Returns string type for a message object of type 'ObjectsInBoxes3D"
  "object_analytics_msgs/ObjectsInBoxes3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectsInBoxes3D>)))
  "Returns md5sum for a message object of type '<ObjectsInBoxes3D>"
  "9c0963ec04b8a73778b7dfa2abfbc0cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectsInBoxes3D)))
  "Returns md5sum for a message object of type 'ObjectsInBoxes3D"
  "9c0963ec04b8a73778b7dfa2abfbc0cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectsInBoxes3D>)))
  "Returns full string definition for message of type '<ObjectsInBoxes3D>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%std_msgs/Header header            # timestamp in header is the time the sensor captured the raw data~%ObjectInBox3D[] objects_in_boxes  # ObjectInBox3D array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: object_analytics_msgs/ObjectInBox3D~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent a 3D detection object with 2D region of interest and 3D information (min & max)~%sensor_msgs/RegionOfInterest roi      # region of interest~%geometry_msgs/Point32 min             # min and max locate the diagonal of a bounding-box of the detected object whose~%geometry_msgs/Point32 max             # x, y and z axis parellel to the axises correspondingly in camera coordinates~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectsInBoxes3D)))
  "Returns full string definition for message of type 'ObjectsInBoxes3D"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%std_msgs/Header header            # timestamp in header is the time the sensor captured the raw data~%ObjectInBox3D[] objects_in_boxes  # ObjectInBox3D array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: object_analytics_msgs/ObjectInBox3D~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent a 3D detection object with 2D region of interest and 3D information (min & max)~%sensor_msgs/RegionOfInterest roi      # region of interest~%geometry_msgs/Point32 min             # min and max locate the diagonal of a bounding-box of the detected object whose~%geometry_msgs/Point32 max             # x, y and z axis parellel to the axises correspondingly in camera coordinates~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectsInBoxes3D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects_in_boxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectsInBoxes3D>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectsInBoxes3D
    (cl:cons ':header (header msg))
    (cl:cons ':objects_in_boxes (objects_in_boxes msg))
))
