; Auto-generated. Do not edit!


(cl:in-package melle-srv)


;//! \htmlinclude Http-request.msg.html

(cl:defclass <Http-request> (roslisp-msg-protocol:ros-message)
  ((url
    :reader url
    :initarg :url
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (body
    :reader body
    :initarg :body
    :type cl:string
    :initform ""))
)

(cl:defclass Http-request (<Http-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Http-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Http-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name melle-srv:<Http-request> is deprecated: use melle-srv:Http-request instead.")))

(cl:ensure-generic-function 'url-val :lambda-list '(m))
(cl:defmethod url-val ((m <Http-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader melle-srv:url-val is deprecated.  Use melle-srv:url instead.")
  (url m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Http-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader melle-srv:type-val is deprecated.  Use melle-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'body-val :lambda-list '(m))
(cl:defmethod body-val ((m <Http-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader melle-srv:body-val is deprecated.  Use melle-srv:body instead.")
  (body m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Http-request>) ostream)
  "Serializes a message object of type '<Http-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'url))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'url))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'body))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'body))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Http-request>) istream)
  "Deserializes a message object of type '<Http-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'url) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'url) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'body) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'body) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Http-request>)))
  "Returns string type for a service object of type '<Http-request>"
  "melle/HttpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Http-request)))
  "Returns string type for a service object of type 'Http-request"
  "melle/HttpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Http-request>)))
  "Returns md5sum for a message object of type '<Http-request>"
  "2236ff0ca90aedd2de55c88e9611d43e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Http-request)))
  "Returns md5sum for a message object of type 'Http-request"
  "2236ff0ca90aedd2de55c88e9611d43e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Http-request>)))
  "Returns full string definition for message of type '<Http-request>"
  (cl:format cl:nil "string url~%string type~%string body~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Http-request)))
  "Returns full string definition for message of type 'Http-request"
  (cl:format cl:nil "string url~%string type~%string body~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Http-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'url))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'body))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Http-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Http-request
    (cl:cons ':url (url msg))
    (cl:cons ':type (type msg))
    (cl:cons ':body (body msg))
))
;//! \htmlinclude Http-response.msg.html

(cl:defclass <Http-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass Http-response (<Http-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Http-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Http-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name melle-srv:<Http-response> is deprecated: use melle-srv:Http-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <Http-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader melle-srv:response-val is deprecated.  Use melle-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Http-response>) ostream)
  "Serializes a message object of type '<Http-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Http-response>) istream)
  "Deserializes a message object of type '<Http-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Http-response>)))
  "Returns string type for a service object of type '<Http-response>"
  "melle/HttpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Http-response)))
  "Returns string type for a service object of type 'Http-response"
  "melle/HttpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Http-response>)))
  "Returns md5sum for a message object of type '<Http-response>"
  "2236ff0ca90aedd2de55c88e9611d43e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Http-response)))
  "Returns md5sum for a message object of type 'Http-response"
  "2236ff0ca90aedd2de55c88e9611d43e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Http-response>)))
  "Returns full string definition for message of type '<Http-response>"
  (cl:format cl:nil "string response~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Http-response)))
  "Returns full string definition for message of type 'Http-response"
  (cl:format cl:nil "string response~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Http-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Http-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Http-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Http)))
  'Http-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Http)))
  'Http-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Http)))
  "Returns string type for a service object of type '<Http>"
  "melle/Http")