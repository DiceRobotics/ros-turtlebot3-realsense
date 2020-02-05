;; Auto-generated. Do not edit!


(when (boundp 'ca_policy_msgs::CaPolicy)
  (if (not (find-package "CA_POLICY_MSGS"))
    (make-package "CA_POLICY_MSGS"))
  (shadow 'CaPolicy (find-package "CA_POLICY_MSGS")))
(unless (find-package "CA_POLICY_MSGS::CAPOLICY")
  (make-package "CA_POLICY_MSGS::CAPOLICY"))

(in-package "ROS")
;;//! \htmlinclude CaPolicy.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CAPOLICY_NORMAL*" (find-package "CA_POLICY_MSGS::CAPOLICY"))
(shadow '*CAPOLICY_NORMAL* (find-package "CA_POLICY_MSGS::CAPOLICY"))
(defconstant ca_policy_msgs::CaPolicy::*CAPOLICY_NORMAL* 0)
(intern "*CAPOLICY_PEOPLE*" (find-package "CA_POLICY_MSGS::CAPOLICY"))
(shadow '*CAPOLICY_PEOPLE* (find-package "CA_POLICY_MSGS::CAPOLICY"))
(defconstant ca_policy_msgs::CaPolicy::*CAPOLICY_PEOPLE* 1)
(intern "*CAPOLICY_ROBOT*" (find-package "CA_POLICY_MSGS::CAPOLICY"))
(shadow '*CAPOLICY_ROBOT* (find-package "CA_POLICY_MSGS::CAPOLICY"))
(defconstant ca_policy_msgs::CaPolicy::*CAPOLICY_ROBOT* 2)
(defclass ca_policy_msgs::CaPolicy
  :super ros::object
  :slots (_header _id _name _robot_id ))

(defmethod ca_policy_msgs::CaPolicy
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:name __name) "")
    ((:robot_id __robot_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _robot_id (round __robot_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _id
    1
    ;; string _name
    4 (length _name)
    ;; uint32 _robot_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _id
       (write-byte _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint32 _robot_id
       (write-long _robot_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ca_policy_msgs::CaPolicy :md5sum-) "2cf14769c8c2d2c6a1c44b1286ddff28")
(setf (get ca_policy_msgs::CaPolicy :datatype-) "ca_policy_msgs/CaPolicy")
(setf (get ca_policy_msgs::CaPolicy :definition-)
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
uint8 CAPOLICY_NORMAL=0
uint8 CAPOLICY_PEOPLE=1
uint8 CAPOLICY_ROBOT=2

uint8 id
string name
uint32 robot_id  # identifying the robot publishing the topic
                 # in case to multiple robots are sharing data.
                 # robot_id==0 means the self robot.


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

")



(provide :ca_policy_msgs/CaPolicy "2cf14769c8c2d2c6a1c44b1286ddff28")


