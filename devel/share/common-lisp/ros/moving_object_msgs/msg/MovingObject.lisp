; Auto-generated. Do not edit!


(cl:in-package moving_object_msgs-msg)


;//! \htmlinclude MovingObject.msg.html

(cl:defclass <MovingObject> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0)
   (roi
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
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass MovingObject (<MovingObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovingObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovingObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moving_object_msgs-msg:<MovingObject> is deprecated: use moving_object_msgs-msg:MovingObject instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:id-val is deprecated.  Use moving_object_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:type-val is deprecated.  Use moving_object_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:probability-val is deprecated.  Use moving_object_msgs-msg:probability instead.")
  (probability m))

(cl:ensure-generic-function 'roi-val :lambda-list '(m))
(cl:defmethod roi-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:roi-val is deprecated.  Use moving_object_msgs-msg:roi instead.")
  (roi m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:min-val is deprecated.  Use moving_object_msgs-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:max-val is deprecated.  Use moving_object_msgs-msg:max instead.")
  (max m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:velocity-val is deprecated.  Use moving_object_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovingObject>) ostream)
  "Serializes a message object of type '<MovingObject>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovingObject>) istream)
  "Deserializes a message object of type '<MovingObject>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovingObject>)))
  "Returns string type for a message object of type '<MovingObject>"
  "moving_object_msgs/MovingObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovingObject)))
  "Returns string type for a message object of type 'MovingObject"
  "moving_object_msgs/MovingObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovingObject>)))
  "Returns md5sum for a message object of type '<MovingObject>"
  "cabc63dcb76cee6ba7670da10556e256")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovingObject)))
  "Returns md5sum for a message object of type 'MovingObject"
  "cabc63dcb76cee6ba7670da10556e256")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovingObject>)))
  "Returns full string definition for message of type '<MovingObject>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%int32 id                           # Object ID~%string type                        # The object type detected in this roi~%float32 probability                # The detection probability of object in this roi~%sensor_msgs/RegionOfInterest roi   # region of interest~%geometry_msgs/Point32 min          # min and max locate the diagonal of a bounding-box of the detected object whose~%geometry_msgs/Point32 max          # x, y and z axis parellel to the axises correspondingly in camera coordinates~%geometry_msgs/Point   velocity     # The velocity with which the roi moves.~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovingObject)))
  "Returns full string definition for message of type 'MovingObject"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%int32 id                           # Object ID~%string type                        # The object type detected in this roi~%float32 probability                # The detection probability of object in this roi~%sensor_msgs/RegionOfInterest roi   # region of interest~%geometry_msgs/Point32 min          # min and max locate the diagonal of a bounding-box of the detected object whose~%geometry_msgs/Point32 max          # x, y and z axis parellel to the axises correspondingly in camera coordinates~%geometry_msgs/Point   velocity     # The velocity with which the roi moves.~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovingObject>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'type))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovingObject>))
  "Converts a ROS message object to a list"
  (cl:list 'MovingObject
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':probability (probability msg))
    (cl:cons ':roi (roi msg))
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
    (cl:cons ':velocity (velocity msg))
))
