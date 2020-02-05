; Auto-generated. Do not edit!


(cl:in-package object_analytics_msgs-msg)


;//! \htmlinclude ObjectInBox3D.msg.html

(cl:defclass <ObjectInBox3D> (roslisp-msg-protocol:ros-message)
  ((roi
    :reader roi
    :initarg :roi
    :type sensor_msgs-msg:RegionOfInterest
    :initform (cl:make-instance 'sensor_msgs-msg:RegionOfInterest))
   (min
    :reader min
    :initarg :min
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (max
    :reader max
    :initarg :max
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass ObjectInBox3D (<ObjectInBox3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectInBox3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectInBox3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_analytics_msgs-msg:<ObjectInBox3D> is deprecated: use object_analytics_msgs-msg:ObjectInBox3D instead.")))

(cl:ensure-generic-function 'roi-val :lambda-list '(m))
(cl:defmethod roi-val ((m <ObjectInBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_analytics_msgs-msg:roi-val is deprecated.  Use object_analytics_msgs-msg:roi instead.")
  (roi m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <ObjectInBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_analytics_msgs-msg:min-val is deprecated.  Use object_analytics_msgs-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <ObjectInBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_analytics_msgs-msg:max-val is deprecated.  Use object_analytics_msgs-msg:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectInBox3D>) ostream)
  "Serializes a message object of type '<ObjectInBox3D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectInBox3D>) istream)
  "Deserializes a message object of type '<ObjectInBox3D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectInBox3D>)))
  "Returns string type for a message object of type '<ObjectInBox3D>"
  "object_analytics_msgs/ObjectInBox3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectInBox3D)))
  "Returns string type for a message object of type 'ObjectInBox3D"
  "object_analytics_msgs/ObjectInBox3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectInBox3D>)))
  "Returns md5sum for a message object of type '<ObjectInBox3D>"
  "507469f9787211034d588b333ec709ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectInBox3D)))
  "Returns md5sum for a message object of type 'ObjectInBox3D"
  "507469f9787211034d588b333ec709ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectInBox3D>)))
  "Returns full string definition for message of type '<ObjectInBox3D>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent a 3D detection object with 2D region of interest and 3D information (min & max)~%sensor_msgs/RegionOfInterest roi      # region of interest~%geometry_msgs/Point32 min             # min and max locate the diagonal of a bounding-box of the detected object whose~%geometry_msgs/Point32 max             # x, y and z axis parellel to the axises correspondingly in camera coordinates~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectInBox3D)))
  "Returns full string definition for message of type 'ObjectInBox3D"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent a 3D detection object with 2D region of interest and 3D information (min & max)~%sensor_msgs/RegionOfInterest roi      # region of interest~%geometry_msgs/Point32 min             # min and max locate the diagonal of a bounding-box of the detected object whose~%geometry_msgs/Point32 max             # x, y and z axis parellel to the axises correspondingly in camera coordinates~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectInBox3D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectInBox3D>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectInBox3D
    (cl:cons ':roi (roi msg))
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
