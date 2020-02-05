;; Auto-generated. Do not edit!


(when (boundp 'object_map::Object)
  (if (not (find-package "OBJECT_MAP"))
    (make-package "OBJECT_MAP"))
  (shadow 'Object (find-package "OBJECT_MAP")))
(unless (find-package "OBJECT_MAP::OBJECT")
  (make-package "OBJECT_MAP::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass object_map::Object
  :super ros::object
  :slots (_id _name _probability _min_point _max_point ))

(defmethod object_map::Object
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:probability __probability) 0.0)
    ((:min_point __min_point) (instance geometry_msgs::Point32 :init))
    ((:max_point __max_point) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _probability (float __probability))
   (setq _min_point __min_point)
   (setq _max_point __max_point)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:min_point
   (&rest __min_point)
   (if (keywordp (car __min_point))
       (send* _min_point __min_point)
     (progn
       (if __min_point (setq _min_point (car __min_point)))
       _min_point)))
  (:max_point
   (&rest __max_point)
   (if (keywordp (car __max_point))
       (send* _max_point __max_point)
     (progn
       (if __max_point (setq _max_point (car __max_point)))
       _max_point)))
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; string _name
    4 (length _name)
    ;; float32 _probability
    4
    ;; geometry_msgs/Point32 _min_point
    (send _min_point :serialization-length)
    ;; geometry_msgs/Point32 _max_point
    (send _max_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point32 _min_point
       (send _min_point :serialize s)
     ;; geometry_msgs/Point32 _max_point
       (send _max_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point32 _min_point
     (send _min_point :deserialize buf ptr-) (incf ptr- (send _min_point :serialization-length))
   ;; geometry_msgs/Point32 _max_point
     (send _max_point :deserialize buf ptr-) (incf ptr- (send _max_point :serialization-length))
   ;;
   self)
  )

(setf (get object_map::Object :md5sum-) "12ac37f35f272c1d2e0084c1be4dcb44")
(setf (get object_map::Object :datatype-) "object_map/Object")
(setf (get object_map::Object :definition-)
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



(provide :object_map/Object "12ac37f35f272c1d2e0084c1be4dcb44")


