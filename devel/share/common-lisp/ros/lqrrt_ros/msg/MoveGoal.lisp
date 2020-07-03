; Auto-generated. Do not edit!


(cl:in-package lqrrt_ros-msg)


;//! \htmlinclude MoveGoal.msg.html

(cl:defclass <MoveGoal> (roslisp-msg-protocol:ros-message)
  ((move_type
    :reader move_type
    :initarg :move_type
    :type cl:string
    :initform "")
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (focus
    :reader focus
    :initarg :focus
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (initial_plan_time
    :reader initial_plan_time
    :initarg :initial_plan_time
    :type cl:float
    :initform 0.0)
   (blind
    :reader blind
    :initarg :blind
    :type cl:boolean
    :initform cl:nil)
   (speed_factor
    :reader speed_factor
    :initarg :speed_factor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MoveGoal (<MoveGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lqrrt_ros-msg:<MoveGoal> is deprecated: use lqrrt_ros-msg:MoveGoal instead.")))

(cl:ensure-generic-function 'move_type-val :lambda-list '(m))
(cl:defmethod move_type-val ((m <MoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:move_type-val is deprecated.  Use lqrrt_ros-msg:move_type instead.")
  (move_type m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:goal-val is deprecated.  Use lqrrt_ros-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'focus-val :lambda-list '(m))
(cl:defmethod focus-val ((m <MoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:focus-val is deprecated.  Use lqrrt_ros-msg:focus instead.")
  (focus m))

(cl:ensure-generic-function 'initial_plan_time-val :lambda-list '(m))
(cl:defmethod initial_plan_time-val ((m <MoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:initial_plan_time-val is deprecated.  Use lqrrt_ros-msg:initial_plan_time instead.")
  (initial_plan_time m))

(cl:ensure-generic-function 'blind-val :lambda-list '(m))
(cl:defmethod blind-val ((m <MoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:blind-val is deprecated.  Use lqrrt_ros-msg:blind instead.")
  (blind m))

(cl:ensure-generic-function 'speed_factor-val :lambda-list '(m))
(cl:defmethod speed_factor-val ((m <MoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lqrrt_ros-msg:speed_factor-val is deprecated.  Use lqrrt_ros-msg:speed_factor instead.")
  (speed_factor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveGoal>) ostream)
  "Serializes a message object of type '<MoveGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'move_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'move_type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'focus) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'initial_plan_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'blind) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speed_factor))))
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
   (cl:slot-value msg 'speed_factor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveGoal>) istream)
  "Deserializes a message object of type '<MoveGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'move_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'move_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'focus) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'initial_plan_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'blind) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speed_factor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speed_factor)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveGoal>)))
  "Returns string type for a message object of type '<MoveGoal>"
  "lqrrt_ros/MoveGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveGoal)))
  "Returns string type for a message object of type 'MoveGoal"
  "lqrrt_ros/MoveGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveGoal>)))
  "Returns md5sum for a message object of type '<MoveGoal>"
  "28ef4b28cd3586cf6002e8b5bf1dc40f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveGoal)))
  "Returns md5sum for a message object of type 'MoveGoal"
  "28ef4b28cd3586cf6002e8b5bf1dc40f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveGoal>)))
  "Returns full string definition for message of type '<MoveGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%~%string move_type  # 'hold', 'drive', 'drive!', 'skid', 'spiral', 'bypass'~%geometry_msgs/Pose goal~%geometry_msgs/Point focus~%float64 initial_plan_time~%bool blind~%float64[] speed_factor~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveGoal)))
  "Returns full string definition for message of type 'MoveGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%~%string move_type  # 'hold', 'drive', 'drive!', 'skid', 'spiral', 'bypass'~%geometry_msgs/Pose goal~%geometry_msgs/Point focus~%float64 initial_plan_time~%bool blind~%float64[] speed_factor~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'move_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'focus))
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speed_factor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveGoal
    (cl:cons ':move_type (move_type msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':focus (focus msg))
    (cl:cons ':initial_plan_time (initial_plan_time msg))
    (cl:cons ':blind (blind msg))
    (cl:cons ':speed_factor (speed_factor msg))
))
