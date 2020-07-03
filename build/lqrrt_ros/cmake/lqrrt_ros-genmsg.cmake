# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lqrrt_ros: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ilqrrt_ros:/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lqrrt_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg" NAME_WE)
add_custom_target(_lqrrt_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lqrrt_ros" "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg" ""
)

get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg" NAME_WE)
add_custom_target(_lqrrt_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lqrrt_ros" "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg" NAME_WE)
add_custom_target(_lqrrt_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lqrrt_ros" "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg" "lqrrt_ros/MoveResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg" NAME_WE)
add_custom_target(_lqrrt_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lqrrt_ros" "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg" "lqrrt_ros/MoveResult:geometry_msgs/Pose:std_msgs/Header:lqrrt_ros/MoveGoal:geometry_msgs/Quaternion:geometry_msgs/Point:lqrrt_ros/MoveActionResult:lqrrt_ros/MoveActionGoal:lqrrt_ros/MoveActionFeedback:actionlib_msgs/GoalID:lqrrt_ros/MoveFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg" NAME_WE)
add_custom_target(_lqrrt_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lqrrt_ros" "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:lqrrt_ros/MoveGoal:geometry_msgs/Quaternion:geometry_msgs/Point:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg" NAME_WE)
add_custom_target(_lqrrt_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lqrrt_ros" "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:lqrrt_ros/MoveFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg" NAME_WE)
add_custom_target(_lqrrt_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lqrrt_ros" "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_cpp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_cpp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_cpp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_cpp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_cpp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_cpp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lqrrt_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(lqrrt_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lqrrt_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lqrrt_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lqrrt_ros_generate_messages lqrrt_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_cpp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_cpp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_cpp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_cpp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_cpp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_cpp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_cpp _lqrrt_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lqrrt_ros_gencpp)
add_dependencies(lqrrt_ros_gencpp lqrrt_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lqrrt_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_eus(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_eus(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_eus(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_eus(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_eus(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_eus(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lqrrt_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(lqrrt_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lqrrt_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lqrrt_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lqrrt_ros_generate_messages lqrrt_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_eus _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_eus _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_eus _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_eus _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_eus _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_eus _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_eus _lqrrt_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lqrrt_ros_geneus)
add_dependencies(lqrrt_ros_geneus lqrrt_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lqrrt_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_lisp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_lisp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_lisp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_lisp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_lisp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_lisp(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lqrrt_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(lqrrt_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lqrrt_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lqrrt_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lqrrt_ros_generate_messages lqrrt_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_lisp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_lisp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_lisp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_lisp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_lisp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_lisp _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_lisp _lqrrt_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lqrrt_ros_genlisp)
add_dependencies(lqrrt_ros_genlisp lqrrt_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lqrrt_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_nodejs(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_nodejs(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_nodejs(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_nodejs(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_nodejs(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_nodejs(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lqrrt_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lqrrt_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lqrrt_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lqrrt_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lqrrt_ros_generate_messages lqrrt_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_nodejs _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_nodejs _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_nodejs _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_nodejs _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_nodejs _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_nodejs _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_nodejs _lqrrt_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lqrrt_ros_gennodejs)
add_dependencies(lqrrt_ros_gennodejs lqrrt_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lqrrt_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_py(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_py(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_py(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_py(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_py(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros
)
_generate_msg_py(lqrrt_ros
  "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros
)

### Generating Services

### Generating Module File
_generate_module_py(lqrrt_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lqrrt_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lqrrt_ros_generate_messages lqrrt_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveResult.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_py _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveGoal.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_py _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_py _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveAction.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_py _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_py _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_py _lqrrt_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerryrain/rrt_ws/devel/share/lqrrt_ros/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(lqrrt_ros_generate_messages_py _lqrrt_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lqrrt_ros_genpy)
add_dependencies(lqrrt_ros_genpy lqrrt_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lqrrt_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lqrrt_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lqrrt_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(lqrrt_ros_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lqrrt_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lqrrt_ros_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(lqrrt_ros_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lqrrt_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lqrrt_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(lqrrt_ros_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lqrrt_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lqrrt_ros_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(lqrrt_ros_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lqrrt_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lqrrt_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(lqrrt_ros_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lqrrt_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lqrrt_ros_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(lqrrt_ros_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lqrrt_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lqrrt_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(lqrrt_ros_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lqrrt_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(lqrrt_ros_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(lqrrt_ros_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lqrrt_ros/.+/__init__.pyc?$"
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(lqrrt_ros_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lqrrt_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lqrrt_ros_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(lqrrt_ros_generate_messages_py nav_msgs_generate_messages_py)
endif()
