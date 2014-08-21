# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)
# We need add -DQT_WIDGETS_LIB when using QtWidgets in Qt 5.
add_definitions(${Qt5Widgets_DEFINITIONS})


set(GuiDialogs
    createinsurancecompany
    dlgexportcash
    dlgexportedcash
    dlgexportedtopass
    dlgimport
    dlgmarkets
    dlgmenu
    dlgnewcontact
    dlgpassword
    dlgpasswordconfirm
    getstringdialog
    marketwindow
)

set(GuiWidgets
    accountdetails
    agreementdetails
    assetdetails
    btcguitest
    btcguitestp2p
    btcsenddlg
    cashpurse
    compose
    contactdetails
    corporationdetails
    credentials
    detailedit
    dlgchooser
    dlggetamount
    editdetails
    home
    homedetail
    identifierwidget
    marketdetails
    nymdetails
    offerdetails
    pageacct_asset
    pageacct_name
    pageacct_nym
    pageacct_server
    pageaddcontract
    pagecreatecontract
    pageimportcontract
    pagenym_altlocation
    pagenym_authority
    pagenym_keysize
    pagenym_source
    pageoffer_accounts
    pageoffer_amounts
    pageoffer_assets
    pageoffer_bidask
    pageoffer_summary
    requestdlg
    senddlg
    serverdetails
    settings
    wizardaddaccount
    wizardaddcontract
    wizardaddnym
    wizardnewoffer
    transportdetails
)

set(gui_src
    ui/dlgexportcash.cpp
    ui/dlgexportedcash.cpp
    ui/dlgexportedtopass.cpp
    ui/dlgimport.cpp
    ui/dlgmarkets.cpp
    ui/dlgmenu.cpp
    ui/dlgnewcontact.cpp
    ui/dlgpassword.cpp
    ui/dlgpasswordconfirm.cpp
    ui/getstringdialog.cpp
    widgets/accountdetails.cpp
    widgets/agreementdetails.cpp
    widgets/assetdetails.cpp
    widgets/btcguitest.cpp
    widgets/btcguitestp2p.cpp
    widgets/btcsenddlg.cpp
    widgets/cashpurse.cpp
    widgets/compose.cpp
    widgets/contactdetails.cpp
    widgets/corporationdetails.cpp
    widgets/createinsurancecompany.cpp
    widgets/credentials.cpp
    widgets/detailedit.cpp
    widgets/dlgchooser.cpp
    widgets/dlggetamount.cpp
    widgets/editdetails.cpp
    widgets/home.cpp
    widgets/homedetail.cpp
    widgets/identifierwidget.cpp
    widgets/marketdetails.cpp
    widgets/nymdetails.cpp
    widgets/offerdetails.cpp
    widgets/overridecursor.cpp
    widgets/pageacct_asset.cpp
    widgets/pageacct_name.cpp
    widgets/pageacct_nym.cpp
    widgets/pageacct_server.cpp
    widgets/pageaddcontract.cpp
    widgets/pagecreatecontract.cpp
    widgets/pageimportcontract.cpp
    widgets/pagenym_altlocation.cpp
    widgets/pagenym_authority.cpp
    widgets/pagenym_keysize.cpp
    widgets/pagenym_source.cpp
    widgets/pageoffer_accounts.cpp
    widgets/pageoffer_amounts.cpp
    widgets/pageoffer_assets.cpp
    widgets/pageoffer_bidask.cpp
    widgets/pageoffer_summary.cpp
    widgets/requestdlg.cpp
    widgets/senddlg.cpp
    widgets/serverdetails.cpp
    widgets/settings.cpp
    widgets/wizardaddaccount.cpp
    widgets/wizardaddcontract.cpp
    widgets/wizardaddnym.cpp
    widgets/wizardnewoffer.cpp
    widgets/transportdetails.cpp
)


foreach(DlgName  ${GuiDialogs})
    qt5_wrap_ui(ui_${DlgName}.h ui/${DlgName}.ui)
    SET(gui_hdrs  ${gui_hdrs}  ui_${DlgName}.h)
    SET(gui_res   ${gui_res}   ui/${DlgName}.ui)
endforeach(DlgName)

foreach(WidgetName  ${GuiWidgets})
    qt5_wrap_ui(ui_${WidgetName}.h widgets/${WidgetName}.ui)
    SET(gui_hdrs  ${gui_hdrs}  ui_${WidgetName}.h)
    SET(gui_res   ${gui_res}   widgets/${WidgetName}.ui)
endforeach(WidgetName)

add_executable(moneychanger-qt
    ${gui_src}
    ${gui_hdrs}
    ${gui_res}
)

target_link_libraries(moneychanger-qt
    moneychanger-core
    ${core}
    ${ext}
    ${api}
    ${XMLRPC_LIBRARIES}
    ${Qt5Core_LIBRARIES}
    ${Qt5Widgets_LIBRARIES}
    ${Qt5Gui_LIBRARIES}
    ${Qt5Network_LIBRARIES}
    ${Qt5Widgets_LIBRARIES}
    ${Qt5Sql_LIBRARIES}
)

install(TARGETS moneychanger-qt DESTINATION bin)

