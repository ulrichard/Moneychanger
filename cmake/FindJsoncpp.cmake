# - Try to find Jsoncpp
# Once done, this will define
#
#  Jsoncpp_FOUND - system has Jsoncpp
#  Jsoncpp_INCLUDE_DIRS - the Jsoncpp include directories
#  Jsoncpp_LIBRARIES - link these to use Jsoncpp


# Include dir
find_path(Jsoncpp_INCLUDE_DIR
  NAMES json/features.h
  PATH_SUFFIXES jsoncpp
  PATHS /usr/include /usr/include/jsoncpp
)

# Finally the library itself
find_library(Jsoncpp_LIBRARY
  NAMES jsoncpp
  PATHS /usr/lib
)

set(Jsoncpp_INCLUDE_DIRS ${Jsoncpp_INCLUDE_DIR})
set(Jsoncpp_LIBRARIES    ${Jsoncpp_LIBRARY})

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Jsoncpp  DEFAULT_MSG
    Jsoncpp_INCLUDE_DIR
    Jsoncpp_LIBRARY
)

MARK_AS_ADVANCED(
    Jsoncpp_INCLUDE_DIR
    Jsoncpp_LIBRARY
)

