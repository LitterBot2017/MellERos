; Auto-generated. Do not edit!


(cl:in-package melle-msg)


;//! \htmlinclude ArduinoSensorData.msg.html

(cl:defclass <ArduinoSensorData> (roslisp-msg-protocol:ros-message)
  ((binFullness
    :reader binFullness
    :initarg :binFullness
    :type cl:fixnum
    :initform 0)
   (batteryLevel
    :reader batteryLevel
    :initarg :batteryLevel
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ArduinoSensorData (<ArduinoSensorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArduinoSensorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArduinoSensorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name melle-msg:<ArduinoSensorData> is deprecated: use melle-msg:ArduinoSensorData instead.")))

(cl:ensure-generic-function 'binFullness-val :lambda-list '(m))
(cl:defmethod binFullness-val ((m <ArduinoSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader melle-msg:binFullness-val is deprecated.  Use melle-msg:binFullness instead.")
  (binFullness m))

(cl:ensure-generic-function 'batteryLevel-val :lambda-list '(m))
(cl:defmethod batteryLevel-val ((m <ArduinoSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader melle-msg:batteryLevel-val is deprecated.  Use melle-msg:batteryLevel instead.")
  (batteryLevel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArduinoSensorData>) ostream)
  "Serializes a message object of type '<ArduinoSensorData>"
  (cl:let* ((signed (cl:slot-value msg 'binFullness)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'batteryLevel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArduinoSensorData>) istream)
  "Deserializes a message object of type '<ArduinoSensorData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'binFullness) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'batteryLevel) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArduinoSensorData>)))
  "Returns string type for a message object of type '<ArduinoSensorData>"
  "melle/ArduinoSensorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArduinoSensorData)))
  "Returns string type for a message object of type 'ArduinoSensorData"
  "melle/ArduinoSensorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArduinoSensorData>)))
  "Returns md5sum for a message object of type '<ArduinoSensorData>"
  "78ac0557f2be5bfe3f1764f8836b3aca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArduinoSensorData)))
  "Returns md5sum for a message object of type 'ArduinoSensorData"
  "78ac0557f2be5bfe3f1764f8836b3aca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArduinoSensorData>)))
  "Returns full string definition for message of type '<ArduinoSensorData>"
  (cl:format cl:nil "int8 binFullness~%int8 batteryLevel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArduinoSensorData)))
  "Returns full string definition for message of type 'ArduinoSensorData"
  (cl:format cl:nil "int8 binFullness~%int8 batteryLevel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArduinoSensorData>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArduinoSensorData>))
  "Converts a ROS message object to a list"
  (cl:list 'ArduinoSensorData
    (cl:cons ':binFullness (binFullness msg))
    (cl:cons ':batteryLevel (batteryLevel msg))
))
