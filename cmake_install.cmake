# Install script for directory: E:/crashrpt

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/CrashRpt")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/crashrpt/demos/ConsoleDemo/cmake_install.cmake")
  include("E:/crashrpt/demos/WTLDemo/cmake_install.cmake")
  include("E:/crashrpt/demos/MFCDemo/cmake_install.cmake")
  include("E:/crashrpt/reporting/crashrpt/cmake_install.cmake")
  include("E:/crashrpt/reporting/crashsender/cmake_install.cmake")
  include("E:/crashrpt/processing/crashrptprobe/cmake_install.cmake")
  include("E:/crashrpt/processing/crprober/cmake_install.cmake")
  include("E:/crashrpt/tests/cmake_install.cmake")
  include("E:/crashrpt/thirdparty/tinyxml/cmake_install.cmake")
  include("E:/crashrpt/thirdparty/jpeg/cmake_install.cmake")
  include("E:/crashrpt/thirdparty/libpng/cmake_install.cmake")
  include("E:/crashrpt/thirdparty/minizip/cmake_install.cmake")
  include("E:/crashrpt/thirdparty/zlib/cmake_install.cmake")
  include("E:/crashrpt/thirdparty/libogg/cmake_install.cmake")
  include("E:/crashrpt/thirdparty/libtheora/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "E:/crashrpt/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
