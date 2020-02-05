;; Auto-generated. Do not edit!


(when (boundp 'moving_object_msgs::SocialObjectsInFrame)
  (if (not (find-package "MOVING_OBJECT_MSGS"))
    (make-package "MOVING_OBJECT_MSGS"))
  (shadow 'SocialObjectsInFrame (find-package "MOVING_OBJECT_MSGS")))
(unless (find-package "MOVING_OBJECT_MSGS::SOCIALOBJECTSINFRAME")
  (make-package "MOVING_OBJECT_MSGS::SOCIALOBJECTSINFRAME"))

(in-package "ROS")
;;//! \htmlinclude SocialObjectsInFrame.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass moving_object_msgs::SocialObjectsInFrame
  :super ros::object
  :slots (_header _objects ))

(defmethod moving_object_msgs::SocialObjectsInFrame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance moving_object_msgs::SocialObject :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; moving_object_msgs/SocialObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; moving_object_msgs/SocialObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; moving_object_msgs/SocialObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance moving_object_msgs::SocialObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get moving_object_msgs::SocialObjectsInFrame :md5sum-) "f3d11bf129e2f4382ed37179e39d8777")
(setf (get moving_object_msgs::SocialObjectsInFrame :datatype-) "moving_object_msgs/SocialObjectsInFrame")
(setf (get moving_object_msgs::SocialObjectsInFrame :definition-)
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
moving_object_msgs/SocialObject[] objects

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
MSG: moving_object_msgs/SocialObject
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

int32               id            # Object ID
string              name          # Object Type
geometry_msgs/Point position      # 3D coordinates info of the center position of the object
geometry_msgs/Point velocity      # the velocity of the object moving. Unit: m/s
float64             reliability   # The detection probability. 
string[]            tagnames
string[]            tags

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :moving_object_msgs/SocialObjectsInFrame "f3d11bf129e2f4382ed37179e39d8777")


