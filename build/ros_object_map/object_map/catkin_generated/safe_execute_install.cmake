execute_process(COMMAND "/home/awais/catkin_ws/build/ros_object_map/object_map/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/awais/catkin_ws/build/ros_object_map/object_map/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
