# Install script for directory: /home/parallella/svn/darts-parallella/DARTS/src/common

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/parallella")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bin")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/darts/lib" TYPE STATIC_LIBRARY FILES "/home/parallella/svn/darts-parallella/DARTS/build/src/common/libcommon.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bin")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/darts/include" TYPE FILE FILES
    "/home/parallella/svn/darts-parallella/DARTS/include/common/Atomics.h"
    "/home/parallella/svn/darts-parallella/DARTS/include/common/AutoLock.h"
    "/home/parallella/svn/darts-parallella/DARTS/include/common/darts.h"
    "/home/parallella/svn/darts-parallella/DARTS/include/common/getClock.h"
    "/home/parallella/svn/darts-parallella/DARTS/include/common/Lock.h"
    "/home/parallella/svn/darts-parallella/DARTS/include/common/rdtsc.h"
    "/home/parallella/svn/darts-parallella/DARTS/include/common/Thread.h"
    "/home/parallella/svn/darts-parallella/DARTS/include/common/ringbuffer.h"
    "/home/parallella/svn/darts-parallella/DARTS/include/common/dartsPool.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
