
(cl:in-package :asdf)

(defsystem "object_analytics_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectInBox3D" :depends-on ("_package_ObjectInBox3D"))
    (:file "_package_ObjectInBox3D" :depends-on ("_package"))
    (:file "ObjectsInBoxes3D" :depends-on ("_package_ObjectsInBoxes3D"))
    (:file "_package_ObjectsInBoxes3D" :depends-on ("_package"))
    (:file "TrackedObject" :depends-on ("_package_TrackedObject"))
    (:file "_package_TrackedObject" :depends-on ("_package"))
    (:file "TrackedObjects" :depends-on ("_package_TrackedObjects"))
    (:file "_package_TrackedObjects" :depends-on ("_package"))
  ))