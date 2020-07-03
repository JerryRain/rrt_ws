execute_process(COMMAND "/home/jerryrain/rrt_ws/build/lqRRT/demos/lqrrt_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/jerryrain/rrt_ws/build/lqRRT/demos/lqrrt_ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
