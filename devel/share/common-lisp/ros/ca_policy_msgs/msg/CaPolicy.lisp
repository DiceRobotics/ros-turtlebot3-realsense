; Auto-generated. Do not edit!


(cl:in-package ca_policy_msgs-msg)


;//! \htmlinclude CaPolicy.msg.html

(cl:defclass <CaPolicy> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0))
)

(cl:defclass CaPolicy (<CaPolicy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CaPolicy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CaPolicy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ca_policy_msgs-msg:<CaPolicy> is deprecated: use ca_policy_msgs-msg:CaPolicy instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CaPolicy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ca_policy_msgs-msg:header-val is deprecated.  Use ca_policy_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CaPolicy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ca_policy_msgs-msg:id-val is deprecated.  Use ca_policy_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CaPolicy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ca_policy_msgs-msg:name-val is deprecated.  Use ca_policy_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <CaPolicy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ca_policy_msgs-msg:robot_id-val is deprecated.  Use ca_policy_msgs-msg:robot_id instead.")
  (robot_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CaPolicy>)))
    "Constants for message type '<CaPolicy>"
  '((:CAPOLICY_NORMAL . 0)
    (:CAPOLICY_PEOPLE . 1)
    (:CAPOLICY_ROBOT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CaPolicy)))
    "Constants for message type 'CaPolicy"
  '((:CAPOLICY_NORMAL . 0)
    (:CAPOLICY_PEOPLE . 1)
    (:CAPOLICY_ROBOT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CaPolicy>) ostream)
  "Serializes a message object of type '<CaPolicy>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CaPolicy>) istream)
  "Deserializes a message object of type '<CaPolicy>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CaPolicy>)))
  "Returns string type for a message object of type '<CaPolicy>"
  "ca_policy_msgs/CaPolicy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CaPolicy)))
  "Returns string type for a message object of type 'CaPolicy"
  "ca_policy_msgs/CaPolicy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CaPolicy>)))
  "Returns md5sum for a message object of type '<CaPolicy>"
  "2cf14769c8c2d2c6a1c44b1286ddff28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CaPolicy)))
  "Returns md5sum for a message object of type 'CaPolicy"
  "2cf14769c8c2d2c6a1c44b1286ddff28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CaPolicy>)))
  "Returns full string definition for message of type '<CaPolicy>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%Header header~%uint8 CAPOLICY_NORMAL=0~%uint8 CAPOLICY_PEOPLE=1~%uint8 CAPOLICY_ROBOT=2~%~%uint8 id~%string name~%uint32 robot_id  # identifying the robot publishing the topic~%                 # in case to multiple robots are sharing data.~%                 # robot_id==0 means the self robot.~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CaPolicy)))
  "Returns full string definition for message of type 'CaPolicy"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%Header header~%uint8 CAPOLICY_NORMAL=0~%uint8 CAPOLICY_PEOPLE=1~%uint8 CAPOLICY_ROBOT=2~%~%uint8 id~%string name~%uint32 robot_id  # identifying the robot publishing the topic~%                 # in case to multiple robots are sharing data.~%                 # robot_id==0 means the self robot.~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CaPolicy>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CaPolicy>))
  "Converts a ROS message object to a list"
  (cl:list 'CaPolicy
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':robot_id (robot_id msg))
))
