# Install script for directory: /Volumes/Workspace/apache-datasketches-cpp/cpc

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/DataSketches" TYPE FILE FILES
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/compression_data.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/cpc_common.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/cpc_compressor.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/cpc_compressor_impl.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/cpc_confidence.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/cpc_sketch.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/cpc_sketch_impl.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/cpc_union.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/cpc_union_impl.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/cpc_util.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/icon_estimator.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/kxp_byte_lookup.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/u32_table.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/cpc/include/u32_table_impl.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/cpc/test/cmake_install.cmake")

endif()

