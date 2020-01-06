# Install script for directory: /home/unitree/catkin_ws/src/laikago_ros/laikago_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/unitree/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/laikago_msgs/msg" TYPE FILE FILES
    "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorCmd.msg"
    "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/MotorState.msg"
    "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/Cartesian.msg"
    "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/IMU.msg"
    "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LED.msg"
    "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowCmd.msg"
    "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/LowState.msg"
    "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighCmd.msg"
    "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg/HighState.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/laikago_msgs/cmake" TYPE FILE FILES "/home/unitree/catkin_ws/build/laikago_ros/laikago_msgs/catkin_generated/installspace/laikago_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/unitree/catkin_ws/devel/include/laikago_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/unitree/catkin_ws/devel/share/roseus/ros/laikago_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/unitree/catkin_ws/devel/share/common-lisp/ros/laikago_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/unitree/catkin_ws/devel/share/gennodejs/ros/laikago_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/unitree/catkin_ws/devel/lib/python2.7/dist-packages/laikago_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/unitree/catkin_ws/devel/lib/python2.7/dist-packages/laikago_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/unitree/catkin_ws/build/laikago_ros/laikago_msgs/catkin_generated/installspace/laikago_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/laikago_msgs/cmake" TYPE FILE FILES "/home/unitree/catkin_ws/build/laikago_ros/laikago_msgs/catkin_generated/installspace/laikago_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/laikago_msgs/cmake" TYPE FILE FILES
    "/home/unitree/catkin_ws/build/laikago_ros/laikago_msgs/catkin_generated/installspace/laikago_msgsConfig.cmake"
    "/home/unitree/catkin_ws/build/laikago_ros/laikago_msgs/catkin_generated/installspace/laikago_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/laikago_msgs" TYPE FILE FILES "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/laikago_msgs" TYPE DIRECTORY FILES "/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/include/laikago_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

