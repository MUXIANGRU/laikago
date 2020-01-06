# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "laikago_msgs: 9 messages, 0 services")

set(MSG_I_FLAGS "-Ilaikago_msgs:/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(laikago_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg" NAME_WE)
add_custom_target(_laikago_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laikago_msgs" "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg" "laikago_msgs/IMU:laikago_msgs/Cartesian"
)

get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg" NAME_WE)
add_custom_target(_laikago_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laikago_msgs" "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg" ""
)

get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg" NAME_WE)
add_custom_target(_laikago_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laikago_msgs" "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg" "laikago_msgs/MotorCmd:laikago_msgs/LED"
)

get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg" NAME_WE)
add_custom_target(_laikago_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laikago_msgs" "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg" "laikago_msgs/IMU:laikago_msgs/Cartesian:laikago_msgs/MotorState"
)

get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg" NAME_WE)
add_custom_target(_laikago_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laikago_msgs" "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg" ""
)

get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg" NAME_WE)
add_custom_target(_laikago_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laikago_msgs" "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg" ""
)

get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg" NAME_WE)
add_custom_target(_laikago_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laikago_msgs" "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg" "laikago_msgs/LED"
)

get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg" NAME_WE)
add_custom_target(_laikago_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laikago_msgs" "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg" ""
)

get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg" NAME_WE)
add_custom_target(_laikago_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laikago_msgs" "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_cpp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_cpp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_cpp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_cpp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_cpp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_cpp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_cpp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_cpp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(laikago_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(laikago_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(laikago_msgs_generate_messages laikago_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_cpp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_cpp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_cpp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_cpp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_cpp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_cpp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_cpp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_cpp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_cpp _laikago_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laikago_msgs_gencpp)
add_dependencies(laikago_msgs_gencpp laikago_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laikago_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
)
_generate_msg_eus(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
)
_generate_msg_eus(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
)
_generate_msg_eus(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
)
_generate_msg_eus(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
)
_generate_msg_eus(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
)
_generate_msg_eus(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
)
_generate_msg_eus(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
)
_generate_msg_eus(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(laikago_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(laikago_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(laikago_msgs_generate_messages laikago_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_eus _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_eus _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_eus _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_eus _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_eus _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_eus _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_eus _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_eus _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_eus _laikago_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laikago_msgs_geneus)
add_dependencies(laikago_msgs_geneus laikago_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laikago_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_lisp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_lisp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_lisp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_lisp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_lisp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_lisp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_lisp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
)
_generate_msg_lisp(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(laikago_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(laikago_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(laikago_msgs_generate_messages laikago_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_lisp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_lisp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_lisp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_lisp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_lisp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_lisp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_lisp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_lisp _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_lisp _laikago_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laikago_msgs_genlisp)
add_dependencies(laikago_msgs_genlisp laikago_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laikago_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
)
_generate_msg_nodejs(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
)
_generate_msg_nodejs(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
)
_generate_msg_nodejs(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
)
_generate_msg_nodejs(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
)
_generate_msg_nodejs(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
)
_generate_msg_nodejs(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
)
_generate_msg_nodejs(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
)
_generate_msg_nodejs(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(laikago_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(laikago_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(laikago_msgs_generate_messages laikago_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_nodejs _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_nodejs _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_nodejs _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_nodejs _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_nodejs _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_nodejs _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_nodejs _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_nodejs _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_nodejs _laikago_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laikago_msgs_gennodejs)
add_dependencies(laikago_msgs_gennodejs laikago_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laikago_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
)
_generate_msg_py(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
)
_generate_msg_py(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
)
_generate_msg_py(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg;/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
)
_generate_msg_py(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
)
_generate_msg_py(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
)
_generate_msg_py(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
)
_generate_msg_py(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
)
_generate_msg_py(laikago_msgs
  "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(laikago_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(laikago_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(laikago_msgs_generate_messages laikago_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_py _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_py _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_py _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_py _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_py _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_py _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_py _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_py _laikago_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg" NAME_WE)
add_dependencies(laikago_msgs_generate_messages_py _laikago_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laikago_msgs_genpy)
add_dependencies(laikago_msgs_genpy laikago_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laikago_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laikago_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(laikago_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(laikago_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(laikago_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laikago_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(laikago_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(laikago_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(laikago_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laikago_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(laikago_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(laikago_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(laikago_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laikago_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(laikago_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(laikago_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(laikago_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laikago_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(laikago_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(laikago_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(laikago_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
