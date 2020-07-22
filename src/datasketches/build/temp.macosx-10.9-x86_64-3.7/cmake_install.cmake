# Install script for directory: /Volumes/Workspace/apache-datasketches-cpp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Volumes/Workspace/apache-datasketches-cpp/build/lib.macosx-10.9-x86_64-3.7/libdatasketches.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatasketches.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatasketches.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Users/andy/miniconda3/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatasketches.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/common/cmake_install.cmake")
  include("/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/hll/cmake_install.cmake")
  include("/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/cpc/cmake_install.cmake")
  include("/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/kll/cmake_install.cmake")
  include("/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/fi/cmake_install.cmake")
  include("/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/theta/cmake_install.cmake")
  include("/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/sampling/cmake_install.cmake")
  include("/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/python/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
