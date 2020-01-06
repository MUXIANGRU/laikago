# Install script for directory: /home/unitree/lcm-1.4.0/lcm

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/unitree/lcm-1.4.0/build/lcm/liblcm.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcm" TYPE FILE FILES
    "/home/unitree/lcm-1.4.0/lcm/eventlog.h"
    "/home/unitree/lcm-1.4.0/lcm/lcm.h"
    "/home/unitree/lcm-1.4.0/lcm/lcm_coretypes.h"
    "/home/unitree/lcm-1.4.0/lcm/lcm_version.h"
    "/home/unitree/lcm-1.4.0/lcm/lcm-cpp.hpp"
    "/home/unitree/lcm-1.4.0/lcm/lcm-cpp-impl.hpp"
    "/home/unitree/lcm-1.4.0/build/lcm/lcm_export.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblcm.so.1.4.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblcm.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblcm.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/unitree/lcm-1.4.0/build/lcm/liblcm.so.1.4.0"
    "/home/unitree/lcm-1.4.0/build/lcm/liblcm.so.1"
    "/home/unitree/lcm-1.4.0/build/lcm/liblcm.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblcm.so.1.4.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblcm.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblcm.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcm" TYPE FILE FILES
    "/home/unitree/lcm-1.4.0/lcm/eventlog.h"
    "/home/unitree/lcm-1.4.0/lcm/lcm.h"
    "/home/unitree/lcm-1.4.0/lcm/lcm_coretypes.h"
    "/home/unitree/lcm-1.4.0/lcm/lcm_version.h"
    "/home/unitree/lcm-1.4.0/lcm/lcm-cpp.hpp"
    "/home/unitree/lcm-1.4.0/lcm/lcm-cpp-impl.hpp"
    "/home/unitree/lcm-1.4.0/build/lcm/lcm_export.h"
    )
endif()

