
(cl:in-package :asdf)

(defsystem "object_map-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "ObjectInfo" :depends-on ("_package_ObjectInfo"))
    (:file "_package_ObjectInfo" :depends-on ("_package"))
    (:file "Objects" :depends-on ("_package_Objects"))
    (:file "_package_Objects" :depends-on ("_package"))
  ))