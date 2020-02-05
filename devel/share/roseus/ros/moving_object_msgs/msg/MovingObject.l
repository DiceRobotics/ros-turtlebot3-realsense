;; Auto-generated. Do not edit!


(when (boundp 'moving_object_msgs::MovingObject)
  (if (not (find-package "MOVING_OBJECT_MSGS"))
    (make-package "MOVING_OBJECT_MSGS"))
  (shadow 'MovingObject (find-package "MOVING_OBJECT_MSGS")))
(unless (find-package "MOVING_OBJECT_MSGS::MOVINGOBJECT")
  (make-package "MOVING_OBJECT_MSGS::MOVINGOBJECT"))

(in-package "ROS")
;;//! \htmlinclude MovingObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass moving_object_msgs::MovingObject
  :super ros::object
  :slots (_id _type _probability _roi _min _max _velocity ))

(defmethod moving_object_msgs::MovingObject
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) "")
    ((:probability __probability) 0.0)
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    ((:min __min) (instance geometry_msgs::Point32 :init))
    ((:max __max) (instance geometry_msgs::Point32 :init))
    ((:velocity __velocity) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (string __type))
   (setq _probability (float __probability))
   (setq _roi __roi)
   (setq _min __min)
   (setq _max __max)
   (setq _velocity __velocity)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:min
   (&rest __min)
   (if (keywordp (car __min))
       (send* _min __min)
     (progn
       (if __min (setq _min (car __min)))
       _min)))
  (:max
   (&rest __max)
   (if (keywordp (car __max))
       (send* _max __max)
     (progn
       (if __max (setq _max (car __max)))
       _max)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _type
    4 (length _type)
    ;; float32 _probability
    4
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ;; geometry_msgs/Point32 _min
    (send _min :serialization-length)
    ;; geometry_msgs/Point32 _max
    (send _max :serialization-length)
    ;; geometry_msgs/Point _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;; geometry_msgs/Point32 _min
       (send _min :serialize s)
     ;; geometry_msgs/Point32 _max
       (send _max :serialize s)
     ;; geometry_msgs/Point _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;; geometry_msgs/Point32 _min
     (send _min :deserialize buf ptr-) (incf ptr- (send _min :serialization-length))
   ;; geometry_msgs/Point32 _max
     (send _max :deserialize buf ptr-) (incf ptr- (send _max :serialization-length))
   ;; geometry_msgs/Point _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get moving_object_msgs::MovingObject :md5sum-) "cabc63dcb76cee6ba7670da10556e256")
(setf (get moving_object_msgs::MovingObject :datatype-) "moving_object_msgs/MovingObject")
(setf (get moving_object_msgs::MovingObject :definition-)
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

int32 id                           # Object ID
string type                        # The object type detected in this roi
float32 probability                # The detection probability of object in this roi
sensor_msgs/RegionOfInterest roi   # region of interest
geometry_msgs/Point32 min          # min and max locate the diagonal of a bounding-box of the detected object whose
geometry_msgs/Point32 max          # x, y and z axis parellel to the axises correspondingly in camera coordinates
geometry_msgs/Point   velocity     # The velocity with which the roi moves.
================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

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
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :moving_object_msgs/MovingObject "cabc63dcb76cee6ba7670da10556e256")


