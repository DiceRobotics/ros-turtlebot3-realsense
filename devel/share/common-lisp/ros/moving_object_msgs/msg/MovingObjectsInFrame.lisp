; Auto-generated. Do not edit!


(cl:in-package moving_object_msgs-msg)


;//! \htmlinclude MovingObjectsInFrame.msg.html

(cl:defclass <MovingObjectsInFrame> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector moving_object_msgs-msg:MovingObject)
   :initform (cl:make-array 0 :element-type 'moving_object_msgs-msg:MovingObject :initial-element (cl:make-instance 'moving_object_msgs-msg:MovingObject))))
)

(cl:defclass MovingObjectsInFrame (<MovingObjectsInFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovingObjectsInFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovingObjectsInFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moving_object_msgs-msg:<MovingObjectsInFrame> is deprecated: use moving_object_msgs-msg:MovingObjectsInFrame instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MovingObjectsInFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:header-val is deprecated.  Use moving_object_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <MovingObjectsInFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:objects-val is deprecated.  Use moving_object_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovingObjectsInFrame>) ostream)
  "Serializes a message object of type '<MovingObjectsInFrame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovingObjectsInFrame>) istream)
  "Deserializes a message object of type '<MovingObjectsInFrame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'moving_object_msgs-msg:MovingObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovingObjectsInFrame>)))
  "Returns string type for a message object of type '<MovingObjectsInFrame>"
  "moving_object_msgs/MovingObjectsInFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovingObjectsInFrame)))
  "Returns string type for a message object of type 'MovingObjectsInFrame"
  "moving_object_msgs/MovingObjectsInFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovingObjectsInFrame>)))
  "Returns md5sum for a message object of type '<MovingObjectsInFrame>"
  "7c03861f72f429096f474b692be42623")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovingObjectsInFrame)))
  "Returns md5sum for a message object of type 'MovingObjectsInFrame"
  "7c03861f72f429096f474b692be42623")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovingObjectsInFrame>)))
  "Returns full string definition for message of type '<MovingObjectsInFrame>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%Header header~%moving_object_msgs/MovingObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: moving_object_msgs/MovingObject~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%int32 id                           # Object ID~%string type                        # The object type detected in this roi~%float32 probability                # The detection probability of object in this roi~%sensor_msgs/RegionOfInterest roi   # region of interest~%geometry_msgs/Point32 min          # min and max locate the diagonal of a bounding-box of the detected object whose~%geometry_msgs/Point32 max          # x, y and z axis parellel to the axises correspondingly in camera coordinates~%geometry_msgs/Point   velocity     # The velocity with which the roi moves.~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovingObjectsInFrame)))
  "Returns full string definition for message of type 'MovingObjectsInFrame"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%Header header~%moving_object_msgs/MovingObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: moving_object_msgs/MovingObject~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%int32 id                           # Object ID~%string type                        # The object type detected in this roi~%float32 probability                # The detection probability of object in this roi~%sensor_msgs/RegionOfInterest roi   # region of interest~%geometry_msgs/Point32 min          # min and max locate the diagonal of a bounding-box of the detected object whose~%geometry_msgs/Point32 max          # x, y and z axis parellel to the axises correspondingly in camera coordinates~%geometry_msgs/Point   velocity     # The velocity with which the roi moves.~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovingObjectsInFrame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovingObjectsInFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'MovingObjectsInFrame
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
