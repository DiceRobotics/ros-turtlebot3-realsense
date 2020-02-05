# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "object_map: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iobject_map:/home/awais/catkin_ws/src/ros_object_map/object_map/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(object_map_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg" NAME_WE)
add_custom_target(_object_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_map" "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg" NAME_WE)
add_custom_target(_object_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_map" "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg" "geometry_msgs/Point32:std_msgs/Header:object_map/Object"
)

get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg" NAME_WE)
add_custom_target(_object_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_map" "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_map
)
_generate_msg_cpp(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_map
)
_generate_msg_cpp(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_map
)

### Generating Services

### Generating Module File
_generate_module_cpp(object_map
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_map
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(object_map_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(object_map_generate_messages object_map_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg" NAME_WE)
add_dependencies(object_map_generate_messages_cpp _object_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg" NAME_WE)
add_dependencies(object_map_generate_messages_cpp _object_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(object_map_generate_messages_cpp _object_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_map_gencpp)
add_dependencies(object_map_gencpp object_map_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_map_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_map
)
_generate_msg_eus(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_map
)
_generate_msg_eus(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_map
)

### Generating Services

### Generating Module File
_generate_module_eus(object_map
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_map
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(object_map_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(object_map_generate_messages object_map_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg" NAME_WE)
add_dependencies(object_map_generate_messages_eus _object_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg" NAME_WE)
add_dependencies(object_map_generate_messages_eus _object_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(object_map_generate_messages_eus _object_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_map_geneus)
add_dependencies(object_map_geneus object_map_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_map_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_map
)
_generate_msg_lisp(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_map
)
_generate_msg_lisp(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_map
)

### Generating Services

### Generating Module File
_generate_module_lisp(object_map
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_map
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(object_map_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(object_map_generate_messages object_map_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg" NAME_WE)
add_dependencies(object_map_generate_messages_lisp _object_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg" NAME_WE)
add_dependencies(object_map_generate_messages_lisp _object_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(object_map_generate_messages_lisp _object_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_map_genlisp)
add_dependencies(object_map_genlisp object_map_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_map_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_map
)
_generate_msg_nodejs(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_map
)
_generate_msg_nodejs(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_map
)

### Generating Services

### Generating Module File
_generate_module_nodejs(object_map
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_map
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(object_map_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(object_map_generate_messages object_map_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg" NAME_WE)
add_dependencies(object_map_generate_messages_nodejs _object_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg" NAME_WE)
add_dependencies(object_map_generate_messages_nodejs _object_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(object_map_generate_messages_nodejs _object_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_map_gennodejs)
add_dependencies(object_map_gennodejs object_map_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_map_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_map
)
_generate_msg_py(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_map
)
_generate_msg_py(object_map
  "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_map
)

### Generating Services

### Generating Module File
_generate_module_py(object_map
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_map
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(object_map_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(object_map_generate_messages object_map_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Object.msg" NAME_WE)
add_dependencies(object_map_generate_messages_py _object_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/Objects.msg" NAME_WE)
add_dependencies(object_map_generate_messages_py _object_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awais/catkin_ws/src/ros_object_map/object_map/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(object_map_generate_messages_py _object_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_map_genpy)
add_dependencies(object_map_genpy object_map_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_map_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_map
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(object_map_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(object_map_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_map
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(object_map_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(object_map_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_map
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(object_map_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(object_map_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_map
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(object_map_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(object_map_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_map)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_map\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_map
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_map
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_map/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(object_map_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(object_map_generate_messages_py sensor_msgs_generate_messages_py)
endif()
