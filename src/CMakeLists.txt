
# ToDo : get the code warning free, then uncomment the following line
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${PEDANTIC_CXX_FLAGS}")

find_package(XMLRPC     REQUIRED)
find_package(Jsoncpp    REQUIRED)
find_package(Qt5Core    REQUIRED)
find_package(Qt5Gui     REQUIRED)
find_package(Qt5Network REQUIRED)
find_package(Qt5Widgets REQUIRED)
find_package(Qt5Sql     REQUIRED)


include_directories(${XMLRPC_INCLUDE_DIRS})
include_directories(${Jsoncpp_INCLUDE_DIRS})
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${Qt5Core_INCLUDE_DIRS})
include_directories(${Qt5Gui_INCLUDE_DIRS})
include_directories(${Qt5Network_INCLUDE_DIRS})
include_directories(${Qt5Widgets_INCLUDE_DIRS})
include_directories(${Qt5Sql_INCLUDE_DIRS})

add_definitions(-std=c++11 -fPIC)

if(MSVC)
  include_directories(
    ${PROJECT_SOURCE_DIR}/../opentxs/include
    ${PROJECT_SOURCE_DIR}/../opentxs/deps
  )
  link_directories(
    ${PROJECT_SOURCE_DIR}/../opentxs/build/lib
  )
  set(core opentxs-core)
  set(ext opentxs-ext)
  set(api opentxs-api)
else()
  find_path(opentxsIncludePath opentxs/core/OTglobal.h)

  include_directories(
    ${opentxsIncludePath}
  )

  find_library(core opentxs-core)
  find_library(ext opentxs-ext)
  find_library(api opentxs-api)
endif(MSVC)


subdirs(core gui)
