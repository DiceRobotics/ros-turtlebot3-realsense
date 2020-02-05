
(cl:in-package :asdf)

(defsystem "moving_object_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MovingObject" :depends-on ("_package_MovingObject"))
    (:file "_package_MovingObject" :depends-on ("_package"))
    (:file "MovingObjectStamped" :depends-on ("_package_MovingObjectStamped"))
    (:file "_package_MovingObjectStamped" :depends-on ("_package"))
    (:file "MovingObjectsInFrame" :depends-on ("_package_MovingObjectsInFrame"))
    (:file "_package_MovingObjectsInFrame" :depends-on ("_package"))
    (:file "SocialObject" :depends-on ("_package_SocialObject"))
    (:file "_package_SocialObject" :depends-on ("_package"))
    (:file "SocialObjectsInFrame" :depends-on ("_package_SocialObjectsInFrame"))
    (:file "_package_SocialObjectsInFrame" :depends-on ("_package"))
  ))