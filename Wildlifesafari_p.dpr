program Wildlifesafari_p;

uses
  Forms,
  WildlifeSafari_u in 'WildlifeSafari_u.pas' { frmHome },
  About_u in 'About_u.pas' { AboutBox },
  Login_U in 'Login_U.pas' { frmLogin },
  Splash_U in 'Splash_U.pas' { frmsplashscreen },
  dmWildlifeSafari_u in 'dmWildlifeSafari_u.pas' { dmWildlifeSafari: TDataModule},
  TravelAgentmenu_u in 'TravelAgentmenu_u.pas' { FrmAgenthome },
  Homepage_u in 'Homepage_u.pas' { frmExplore },
  CreateAccount_U in 'CreateAccount_U.pas' { frmCreateAccount },
  bookingSafari_U in 'bookingSafari_U.pas' { frmBook },
  managerHome_U in 'managerHome_U.pas' { frmManagermenu },
  adminManage_U in 'adminManage_U.pas' { frmManage },
  Finalise_U in 'Finalise_U.pas' { frmmanageRecords },
  selectUser_u in 'selectUser_u.pas' { frmLoginas },
  ManagerStats_U in 'ManagerStats_U.pas' { frmReports },
  ManageGuests_u in 'ManageGuests_u.pas' { frmGuestsManage },
  guestMenu_U in 'guestMenu_U.pas' { frmGuestMenu },
  UpdateProfile_U in 'UpdateProfile_U.pas' { frmProfile },
  BookingAccomodation_U in 'BookingAccomodation_U.pas' { frmBookAccom },
  Competition_U in 'Competition_U.pas' {frmRoll},
  ClsRollAndWin in 'ClsRollAndWin.pas',
  viewHistory_U in 'viewHistory_U.pas' {frmHistory};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(Tfrmsplashscreen, frmsplashscreen);
  Application.CreateForm(TdmWildlifeSafari, dmWildlifeSafari);
  Application.CreateForm(TFrmAgenthome, FrmAgenthome);
  Application.CreateForm(TfrmExplore, frmExplore);
  Application.CreateForm(TfrmCreateAccount, frmCreateAccount);
  Application.CreateForm(TfrmBook, frmBook);
  Application.CreateForm(TfrmManagermenu, frmManagermenu);
  Application.CreateForm(TfrmManage, frmManage);
  Application.CreateForm(TfrmmanageRecords, frmmanageRecords);
  Application.CreateForm(TfrmLoginas, frmLoginas);
  Application.CreateForm(TfrmReports, frmReports);
  Application.CreateForm(TfrmGuestsManage, frmGuestsManage);
  Application.CreateForm(TfrmGuestMenu, frmGuestMenu);
  Application.CreateForm(TfrmProfile, frmProfile);
  Application.CreateForm(TfrmBookAccom, frmBookAccom);
  Application.CreateForm(TfrmRoll, frmRoll);
  Application.CreateForm(TfrmHistory, frmHistory);
  //Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
