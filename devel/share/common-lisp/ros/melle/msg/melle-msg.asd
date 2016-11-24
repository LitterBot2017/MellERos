
(cl:in-package :asdf)

(defsystem "melle-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AndroidSensorData" :depends-on ("_package_AndroidSensorData"))
    (:file "_package_AndroidSensorData" :depends-on ("_package"))
    (:file "ArduinoSensorData" :depends-on ("_package_ArduinoSensorData"))
    (:file "_package_ArduinoSensorData" :depends-on ("_package"))
  ))