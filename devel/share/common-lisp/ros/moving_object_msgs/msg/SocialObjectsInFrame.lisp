; Auto-generated. Do not edit!


(cl:in-package moving_object_msgs-msg)


;//! \htmlinclude SocialObjectsInFrame.msg.html

(cl:defclass <SocialObjectsInFrame> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector moving_object_msgs-msg:SocialObject)
   :initform (cl:make-array 0 :element-type 'moving_object_msgs-msg:SocialObject :initial-element (cl:make-instance 'moving_object_msgs-msg:SocialObject))))
)

(cl:defclass SocialObjectsInFrame (<SocialObjectsInFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SocialObjectsInFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SocialObjectsInFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moving_object_msgs-msg:<SocialObjectsInFrame> is deprecated: use moving_object_msgs-msg:SocialObjectsInFrame instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SocialObjectsInFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:header-val is deprecated.  Use moving_object_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <SocialObjectsInFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_object_msgs-msg:objects-val is deprecated.  Use moving_object_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SocialObjectsInFrame>) ostream)
  "Serializes a message object of type '<SocialObjectsInFrame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SocialObjectsInFrame>) istream)
  "Deserializes a message object of type '<SocialObjectsInFrame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'moving_object_msgs-msg:SocialObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SocialObjectsInFrame>)))
  "Returns string type for a message object of type '<SocialObjectsInFrame>"
  "moving_object_msgs/SocialObjectsInFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SocialObjectsInFrame)))
  "Returns string type for a message object of type 'SocialObjectsInFrame"
  "moving_object_msgs/SocialObjectsInFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SocialObjectsInFrame>)))
  "Returns md5sum for a message object of type '<SocialObjectsInFrame>"
  "f3d11bf129e2f4382ed37179e39d8777")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SocialObjectsInFrame)))
  "Returns md5sum for a message object of type 'SocialObjectsInFrame"
  "f3d11bf129e2f4382ed37179e39d8777")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SocialObjectsInFrame>)))
  "Returns full string definition for message of type '<SocialObjectsInFrame>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%Header header~%moving_object_msgs/SocialObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: moving_object_msgs/SocialObject~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%int32               id            # Object ID~%string              name          # Object Type~%geometry_msgs/Point position      # 3D coordinates info of the center position of the object~%geometry_msgs/Point velocity      # the velocity of the object moving. Unit: m/s~%float64             reliability   # The detection probability. ~%string[]            tagnames~%string[]            tags~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SocialObjectsInFrame)))
  "Returns full string definition for message of type 'SocialObjectsInFrame"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%Header header~%moving_object_msgs/SocialObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: moving_object_msgs/SocialObject~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%int32               id            # Object ID~%string              name          # Object Type~%geometry_msgs/Point position      # 3D coordinates info of the center position of the object~%geometry_msgs/Point velocity      # the velocity of the object moving. Unit: m/s~%float64             reliability   # The detection probability. ~%string[]            tagnames~%string[]            tags~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SocialObjectsInFrame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SocialObjectsInFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'SocialObjectsInFrame
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
