
qt5_wrap_ui(ui_createinsurancecompany.h ui/createinsurancecompany.ui)
qt5_wrap_ui(ui_dlgexportcash.h ui/dlgexportcash.ui)
qt5_wrap_ui(ui_dlgexportedcash.h ui/dlgexportedcash.ui)
qt5_wrap_ui(ui_dlgexportedtopass.h ui/dlgexportedtopass.ui)
qt5_wrap_ui(ui_dlgimport.h ui/dlgimport.ui)
qt5_wrap_ui(ui_dlgmarkets.h ui/dlgmarkets.ui)
qt5_wrap_ui(ui_dlgmenu.h ui/dlgmenu.ui)
qt5_wrap_ui(ui_dlgnewcontact.h ui/dlgnewcontact.ui)
qt5_wrap_ui(ui_dlgpassword.h ui/dlgpassword.ui)
qt5_wrap_ui(ui_dlgpasswordconfirm.h ui/dlgpasswordconfirm.ui)
qt5_wrap_ui(ui_getstringdialog.h ui/getstringdialog.ui)
qt5_wrap_ui(ui_marketwindow.h ui/marketwindow.ui)
qt5_wrap_ui(ui_accountdetails.h widgets/accountdetails.ui)
qt5_wrap_ui(ui_agreementdetails.h widgets/agreementdetails.ui)
qt5_wrap_ui(ui_assetdetails.h widgets/assetdetails.ui)
qt5_wrap_ui(ui_btcguitest.h widgets/btcguitest.ui)
qt5_wrap_ui(ui_btcguitestp2p.h widgets/btcguitestp2p.ui)
qt5_wrap_ui(ui_btcsenddlg.h widgets/btcsenddlg.ui)
qt5_wrap_ui(ui_cashpurse.h widgets/cashpurse.ui)
qt5_wrap_ui(ui_compose.h widgets/compose.ui)
qt5_wrap_ui(ui_contactdetails.h widgets/contactdetails.ui)
qt5_wrap_ui(ui_corporationdetails.h widgets/corporationdetails.ui)
qt5_wrap_ui(ui_credentials.h widgets/credentials.ui)
qt5_wrap_ui(ui_detailedit.h widgets/detailedit.ui)
qt5_wrap_ui(ui_dlgchooser.h widgets/dlgchooser.ui)
qt5_wrap_ui(ui_dlggetamount.h widgets/dlggetamount.ui)
qt5_wrap_ui(ui_editdetails.h widgets/editdetails.ui)
qt5_wrap_ui(ui_home.h widgets/home.ui)
qt5_wrap_ui(ui_homedetail.h widgets/homedetail.ui)
qt5_wrap_ui(ui_identifierwidget.h widgets/identifierwidget.ui)
qt5_wrap_ui(ui_marketdetails.h widgets/marketdetails.ui)
qt5_wrap_ui(ui_nymdetails.h widgets/nymdetails.ui)
qt5_wrap_ui(ui_offerdetails.h widgets/offerdetails.ui)
qt5_wrap_ui(ui_pageacct_asset.h widgets/pageacct_asset.ui)
qt5_wrap_ui(ui_pageacct_name.h widgets/pageacct_name.ui)
qt5_wrap_ui(ui_pageacct_nym.h widgets/pageacct_nym.ui)
qt5_wrap_ui(ui_pageacct_server.h widgets/pageacct_server.ui)
qt5_wrap_ui(ui_pageaddcontract.h widgets/pageaddcontract.ui)
qt5_wrap_ui(ui_pagecreatecontract.h widgets/pagecreatecontract.ui)
qt5_wrap_ui(ui_pageimportcontract.h widgets/pageimportcontract.ui)
qt5_wrap_ui(ui_pagenym_altlocation.h widgets/pagenym_altlocation.ui)
qt5_wrap_ui(ui_pagenym_authority.h widgets/pagenym_authority.ui)
qt5_wrap_ui(ui_pagenym_keysize.h widgets/pagenym_keysize.ui)
qt5_wrap_ui(ui_pagenym_source.h widgets/pagenym_source.ui)
qt5_wrap_ui(ui_pageoffer_accounts.h widgets/pageoffer_accounts.ui)
qt5_wrap_ui(ui_pageoffer_amounts.h widgets/pageoffer_amounts.ui)
qt5_wrap_ui(ui_pageoffer_assets.h widgets/pageoffer_assets.ui)
qt5_wrap_ui(ui_pageoffer_bidask.h widgets/pageoffer_bidask.ui)
qt5_wrap_ui(ui_pageoffer_summary.h widgets/pageoffer_summary.ui)
qt5_wrap_ui(ui_requestdlg.h widgets/requestdlg.ui)
qt5_wrap_ui(ui_senddlg.h widgets/senddlg.ui)
qt5_wrap_ui(ui_serverdetails.h widgets/serverdetails.ui)
qt5_wrap_ui(ui_settings.h widgets/settings.ui)
qt5_wrap_ui(ui_wizardaddaccount.h widgets/wizardaddaccount.ui)
qt5_wrap_ui(ui_wizardaddcontract.h widgets/wizardaddcontract.ui)
qt5_wrap_ui(ui_wizardaddnym.h widgets/wizardaddnym.ui)
qt5_wrap_ui(ui_wizardnewoffer.h widgets/wizardnewoffer.ui)
qt5_wrap_ui(ui_transportdetails.h widgets/transportdetails.ui)

add_executable(moneychanger-qt
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



