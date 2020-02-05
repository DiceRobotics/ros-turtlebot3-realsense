;; Auto-generated. Do not edit!


(when (boundp 'object_map::Objects)
  (if (not (find-package "OBJECT_MAP"))
    (make-package "OBJECT_MAP"))
  (shadow 'Objects (find-package "OBJECT_MAP")))
(unless (find-package "OBJECT_MAP::OBJECTS")
  (make-package "OBJECT_MAP::OBJECTS"))

(in-package "ROS")
;;//! \htmlinclude Objects.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass object_map::Objects
  :super ros::object
  :slots (_header _Objects ))

(defmethod object_map::Objects
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Objects __Objects) (let (r) (dotimes (i 0) (push (instance object_map::Object :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _Objects __Objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Objects
   (&rest __Objects)
   (if (keywordp (car __Objects))
       (send* _Objects __Objects)
     (progn
       (if __Objects (setq _Objects (car __Objects)))
       _Objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; object_map/Object[] _Objects
    (apply #'+ (send-all _Objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; object_map/Object[] _Objects
     (write-long (length _Objects) s)
     (dolist (elem _Objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; object_map/Object[] _Objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Objects (let (r) (dotimes (i n) (push (instance object_map::Object :init) r)) r))
     (dolist (elem- _Objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get object_map::Objects :md5sum-) "bb659f4717e280a402696a6be66ca095")
(setf (get object_map::Objects :datatype-) "object_map/Objects")
(setf (get object_map::Objects :definition-)
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
std_msgs/Header header
Object[] Objects


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
MSG: object_map/Object
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
uint32 id
string name
float32 probability 
geometry_msgs/Point32 min_point
geometry_msgs/Point32 max_point


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
")



(provide :object_map/Objects "bb659f4717e280a402696a6be66ca095")


