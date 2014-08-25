

add_library(moneychanger-core SHARED
	applicationmc.cpp
    filedownloader.cpp
    httpinterface.cpp
    main.cpp
    modules.cpp
    moneychanger.cpp
    ot_worker.cpp
    passwordcallback.cpp
    translation.cpp
    utils.cpp
    handlers/contacthandler.cpp
    handlers/DBHandler.cpp
    handlers/FileHandler.cpp
    network/XmlRPC.cpp
    network/Network.cpp
    network/BitMessage.cpp
    mtcomms.cpp
    network/base64.cpp
    network/BitMessageQueue.cpp
)

target_link_libraries(moneychanger-core
    ${Jsoncpp_LIBRARIES}
    ${XMLRPC_LIBRARIES}
)

if(NOT WIN32)
  include(GNUInstallDirs)
  install(TARGETS moneychanger-core
          DESTINATION ${CMAKE_INSTALL_LIBDIR}
          COMPONENT)
endif()
