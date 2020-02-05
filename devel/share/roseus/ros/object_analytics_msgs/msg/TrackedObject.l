;; Auto-generated. Do not edit!


(when (boundp 'object_analytics_msgs::TrackedObject)
  (if (not (find-package "OBJECT_ANALYTICS_MSGS"))
    (make-package "OBJECT_ANALYTICS_MSGS"))
  (shadow 'TrackedObject (find-package "OBJECT_ANALYTICS_MSGS")))
(unless (find-package "OBJECT_ANALYTICS_MSGS::TRACKEDOBJECT")
  (make-package "OBJECT_ANALYTICS_MSGS::TRACKEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude TrackedObject.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass object_analytics_msgs::TrackedObject
  :super ros::object
  :slots (_id _roi ))

(defmethod object_analytics_msgs::TrackedObject
  (:init
   (&key
    ((:id __id) 0)
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _roi __roi)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;;
   self)
  )

(setf (get object_analytics_msgs::TrackedObject :md5sum-) "8eae2ec8acb754ac6a4f850eeaa417a7")
(setf (get object_analytics_msgs::TrackedObject :datatype-) "object_analytics_msgs/TrackedObject")
(setf (get object_analytics_msgs::TrackedObject :definition-)
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

# This message can represent a 2D tracking object with 2D region of interest and tracking id.
int32 id                            # object identifier
sensor_msgs/RegionOfInterest roi    # region of interest

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

")



(provide :object_analytics_msgs/TrackedObject "8eae2ec8acb754ac6a4f850eeaa417a7")


