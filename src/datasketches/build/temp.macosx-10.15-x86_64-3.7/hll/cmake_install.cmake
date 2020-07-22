# Install script for directory: /Volumes/Workspace/apache-datasketches-cpp/hll

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
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/hll.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/AuxHashMap.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/CompositeInterpolationXTable.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/CouponHashSet.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/CouponList.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/CubicInterpolation.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/HarmonicNumbers.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/Hll4Array.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/Hll6Array.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/Hll8Array.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/HllArray.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/HllSketchImpl.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/HllUtil.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/coupon_iterator.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/RelativeErrorTables.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/AuxHashMap-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/CompositeInterpolationXTable-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/CouponHashSet-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/CouponList-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/CubicInterpolation-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/HarmonicNumbers-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/Hll4Array-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/Hll6Array-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/Hll8Array-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/HllArray-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/HllSketch-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/HllSketchImpl-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/HllUnion-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/coupon_iterator-internal.hpp"
    "/Volumes/Workspace/apache-datasketches-cpp/hll/include/RelativeErrorTables-internal.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test/cmake_install.cmake")

endif()

