; Auto-generated. Do not edit!


(cl:in-package lqrrt_ros-msg)


;//! \htmlinclude MoveFeedback.msg.html

(cl:defclass <MoveFeedback> (roslisp-msg-protocol:ros-message)
  ((behavior
    :reader behavior
    :initarg :behavior
    :type cl:string
    :initform "")
   (tree_size
    :reader tree_size
    :initarg :tree_size
    :type cl:integer
    :initform 0)
   (tracking
    :reader tracking
    :initarg :tracking
    :type cl:boolean
    :initform cl:nil)
   (distance
    :reader distance
    :initarg :distance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (time_till_next_branch
    :reader time_till_next_branch
    :initarg :time_till_next_branch
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveFeedback (<MoveFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lqrrt_ros-msg:<MoveFeedback> is deprecated: use lqrrt_ros-msg:MoveFeedback instead.")))

(cl:ensure-generic-function 'behavior-val :lambda-list '(m))
(cl:defmethod behavior-val ((m <MoveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:behavior-val is deprecated.  Use lqrrt_ros-msg:behavior instead.")
  (behavior m))

(cl:ensure-generic-function 'tree_size-val :lambda-list '(m))
(cl:defmethod tree_size-val ((m <MoveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:tree_size-val is deprecated.  Use lqrrt_ros-msg:tree_size instead.")
  (tree_size m))

(cl:ensure-generic-function 'tracking-val :lambda-list '(m))
(cl:defmethod tracking-val ((m <MoveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:tracking-val is deprecated.  Use lqrrt_ros-msg:tracking instead.")
  (tracking m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <MoveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:distance-val is deprecated.  Use lqrrt_ros-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'time_till_next_branch-val :lambda-list '(m))
(cl:defmethod time_till_next_branch-val ((m <MoveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:time_till_next_branch-val is deprecated.  Use lqrrt_ros-msg:time_till_next_branch instead.")
  (time_till_next_branch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveFeedback>) ostream)
  "Serializes a message object of type '<MoveFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'behavior))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'behavior))
  (cl:let* ((signed (cl:slot-value msg 'tree_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tracking) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'distance))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_till_next_branch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveFeedback>) istream)
  "Deserializes a message object of type '<MoveFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'behavior) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tree_size) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'tracking) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'distance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'distance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_till_next_branch) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveFeedback>)))
  "Returns string type for a message object of type '<MoveFeedback>"
  "lqrrt_ros/MoveFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveFeedback)))
  "Returns string type for a message object of type 'MoveFeedback"
  "lqrrt_ros/MoveFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveFeedback>)))
  "Returns md5sum for a message object of type '<MoveFeedback>"
  "9406c8b108b277e4eb75c321d48ddcc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveFeedback)))
  "Returns md5sum for a message object of type 'MoveFeedback"
  "9406c8b108b277e4eb75c321d48ddcc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveFeedback>)))
  "Returns full string definition for message of type '<MoveFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%~%string behavior~%int64 tree_size~%bool tracking~%float64[] distance~%float64 time_till_next_branch~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveFeedback)))
  "Returns full string definition for message of type 'MoveFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%~%string behavior~%int64 tree_size~%bool tracking~%float64[] distance~%float64 time_till_next_branch~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'behavior))
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'distance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveFeedback
    (cl:cons ':behavior (behavior msg))
    (cl:cons ':tree_size (tree_size msg))
    (cl:cons ':tracking (tracking msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':time_till_next_branch (time_till_next_branch msg))
))
