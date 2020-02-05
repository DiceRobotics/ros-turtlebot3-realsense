;; Auto-generated. Do not edit!


(when (boundp 'object_analytics_msgs::ObjectInBox3D)
  (if (not (find-package "OBJECT_ANALYTICS_MSGS"))
    (make-package "OBJECT_ANALYTICS_MSGS"))
  (shadow 'ObjectInBox3D (find-package "OBJECT_ANALYTICS_MSGS")))
(unless (find-package "OBJECT_ANALYTICS_MSGS::OBJECTINBOX3D")
  (make-package "OBJECT_ANALYTICS_MSGS::OBJECTINBOX3D"))

(in-package "ROS")
;;//! \htmlinclude ObjectInBox3D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass object_analytics_msgs::ObjectInBox3D
  :super ros::object
  :slots (_roi _min _max ))

(defmethod object_analytics_msgs::ObjectInBox3D
  (:init
   (&key
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    ((:min __min) (instance geometry_msgs::Point32 :init))
    ((:max __max) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _roi __roi)
   (setq _min __min)
   (setq _max __max)
   self)
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
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ;; geometry_msgs/Point32 _min
    (send _min :serialization-length)
    ;; geometry_msgs/Point32 _max
    (send _max :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;; geometry_msgs/Point32 _min
       (send _min :serialize s)
     ;; geometry_msgs/Point32 _max
       (send _max :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;; geometry_msgs/Point32 _min
     (send _min :deserialize buf ptr-) (incf ptr- (send _min :serialization-length))
   ;; geometry_msgs/Point32 _max
     (send _max :deserialize buf ptr-) (incf ptr- (send _max :serialization-length))
   ;;
   self)
  )

(setf (get object_analytics_msgs::ObjectInBox3D :md5sum-) "507469f9787211034d588b333ec709ee")
(setf (get object_analytics_msgs::ObjectInBox3D :datatype-) "object_analytics_msgs/ObjectInBox3D")
(setf (get object_analytics_msgs::ObjectInBox3D :definition-)
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

# This message can represent a 3D detection object with 2D region of interest and 3D information (min & max)
sensor_msgs/RegionOfInterest roi      # region of interest
geometry_msgs/Point32 min             # min and max locate the diagonal of a bounding-box of the detected object whose
geometry_msgs/Point32 max             # x, y and z axis parellel to the axises correspondingly in camera coordinates

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
")



(provide :object_analytics_msgs/ObjectInBox3D "507469f9787211034d588b333ec709ee")


