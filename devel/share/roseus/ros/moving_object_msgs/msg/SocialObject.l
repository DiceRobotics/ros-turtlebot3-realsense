;; Auto-generated. Do not edit!


(when (boundp 'moving_object_msgs::SocialObject)
  (if (not (find-package "MOVING_OBJECT_MSGS"))
    (make-package "MOVING_OBJECT_MSGS"))
  (shadow 'SocialObject (find-package "MOVING_OBJECT_MSGS")))
(unless (find-package "MOVING_OBJECT_MSGS::SOCIALOBJECT")
  (make-package "MOVING_OBJECT_MSGS::SOCIALOBJECT"))

(in-package "ROS")
;;//! \htmlinclude SocialObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass moving_object_msgs::SocialObject
  :super ros::object
  :slots (_id _name _position _velocity _reliability _tagnames _tags ))

(defmethod moving_object_msgs::SocialObject
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:velocity __velocity) (instance geometry_msgs::Point :init))
    ((:reliability __reliability) 0.0)
    ((:tagnames __tagnames) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _reliability (float __reliability))
   (setq _tagnames __tagnames)
   (setq _tags __tags)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:reliability
   (&optional __reliability)
   (if __reliability (setq _reliability __reliability)) _reliability)
  (:tagnames
   (&optional __tagnames)
   (if __tagnames (setq _tagnames __tagnames)) _tagnames)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Point _velocity
    (send _velocity :serialization-length)
    ;; float64 _reliability
    8
    ;; string[] _tagnames
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tagnames)) 4
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Point _velocity
       (send _velocity :serialize s)
     ;; float64 _reliability
       (sys::poke _reliability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _tagnames
     (write-long (length _tagnames) s)
     (dolist (elem _tagnames)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Point _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64 _reliability
     (setq _reliability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string[] _tagnames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tagnames (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tagnames i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get moving_object_msgs::SocialObject :md5sum-) "aa604aba50f59d0fd547bd74d7c34114")
(setf (get moving_object_msgs::SocialObject :datatype-) "moving_object_msgs/SocialObject")
(setf (get moving_object_msgs::SocialObject :definition-)
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



(provide :moving_object_msgs/SocialObject "aa604aba50f59d0fd547bd74d7c34114")


