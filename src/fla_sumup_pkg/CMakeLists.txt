cmake_minimum_required(VERSION 2.8.3)
project(fla_sumup_pkg)

add_compile_options(-std=c++11) 

## Has dependency on message_generation, std_msgs, roscpp.
## An error occurs during the build if these packages do not exist.
find_package(catkin REQUIRED COMPONENTS message_generation std_msgs roscpp sensor_msgs open_manipulator_msgs)
## Declaration Message: MsgTutorial.msg
add_message_files(FILES MsgTutorial.msg)
## an option to configure the dependent message.
## An error occurs duing the build if "std_msgs" is not installed.
generate_messages(DEPENDENCIES std_msgs)
## A Catkin package option that describes the library, the Catkin build dependencies,
## and the system dependent packages.
catkin_package(
INCLUDE_DIRS include
LIBRARIES fla_sumup_pkg
CATKIN_DEPENDS std_msgs roscpp sensor_msgs open_manipulator_msgs
)
## Include directory configuration.
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

## Build option for the "topic_publisher" node.
## Configuration of Executable files, target link libraries, and additional dependencies.
add_executable(fla_topic_publisher_node src/fla_topic_publisher_node.cpp)
add_dependencies(fla_topic_publisher_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(fla_topic_publisher_node ${catkin_LIBRARIES})

## Build option for the "topic_subscriber" node.
add_executable(fla_topic_subscriber_node src/fla_topic_subscriber_node.cpp)
add_dependencies(fla_topic_subscriber_node ${${PROJECT_NAME}_EXPORTED_TARGETS}
${catkin_EXPORTED_TARGETS})
target_link_libraries(fla_topic_subscriber_node ${catkin_LIBRARIES})

add_executable(open_manipulator_teleop_fla_keyboard src/open_manipulator_teleop_fla_keyboard.cpp)
add_dependencies(open_manipulator_teleop_fla_keyboard ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(open_manipulator_teleop_fla_keyboard ${catkin_LIBRARIES} )

add_executable(open_manipulator_teleop_fla_joystick src/open_manipulator_teleop_fla_joystick.cpp)
add_dependencies(open_manipulator_teleop_fla_joystick ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(open_manipulator_teleop_fla_joystick ${catkin_LIBRARIES} )


################################################################################
# Install
################################################################################
install(TARGETS open_manipulator_teleop_fla_keyboard open_manipulator_teleop_fla_joystick
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)





