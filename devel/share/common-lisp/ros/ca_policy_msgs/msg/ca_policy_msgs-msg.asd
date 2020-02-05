
(cl:in-package :asdf)

(defsystem "ca_policy_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CaPolicy" :depends-on ("_package_CaPolicy"))
    (:file "_package_CaPolicy" :depends-on ("_package"))
  ))