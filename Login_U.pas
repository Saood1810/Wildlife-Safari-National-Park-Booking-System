unit Login_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, bookingSafari_u, dmWildlifeSafari_u,
  travelagentmenu_u, ManagerHome_U, Buttons, pngimage;

type
  TfrmLogin = class(TForm)
    lblLogin: TLabel;
    lblUsername: TLabel;
    Label3: TLabel;
    lblDate: TLabel;
    lblTime: TLabel;
    edtPassword: TEdit;
    btnBack: TBitBtn;
    btnLogin: TBitBtn;
    tmrTime: TTimer;
    cmbuser: TComboBox;
    cmbusername1: TComboBox;
    cmbusername2: TComboBox;
    ImgShowPassword: TImage;
    cmbusername3: TComboBox;
    procedure btnLoginClick(Sender: TObject);
    // User Defined
    procedure extractdata(); // Gets usernames and Password
    procedure FormActivate(Sender: TObject);
    procedure populateusernames();
    procedure ImgShowPasswordClick(Sender: TObject);
    // Populates username accpording to the user
    Procedure Guests();
    procedure btnBackClick(Sender: TObject);
    procedure tmrTimeTimer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  sUsername, spassword: string;
  iuser, tries, icounter1, icounter2: integer;
  Tf: textfile;
  sArrAgentUsernames: array [1 .. 50] of string;
  // Assume i dont know exact No of Agents
  sArrAgentPasswords: array [1 .. 50] of string;

implementation

uses guestMenu_U, selectUser_u;
{$R *.dfm}

procedure TfrmLogin.btnBackClick(Sender: TObject);
begin
  cmbusername1.Clear;
  cmbusername2.Clear;
  cmbusername3.Clear;

  cmbusername1.visible := False;
  cmbusername2.visible := False;
  cmbusername3.visible := False;
  frmloginas.show;
  { frmLogin.Height := 1;
    frmLogin.width := 2; }

end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
  i: TObject;
  Tf: textfile;
  sline: string;
begin
  extractdata;

  /// /////Guest Login

  if cmbuser.ItemIndex = 0 then
    Guests;

  /// //////////////////////////////////////////////////////////////////////////
  if cmbuser.ItemIndex = 1 then
  /// //////Travel Agent Login
  begin
    dmwildlifesafari.tbltravelAgent.Open;
    dmwildlifesafari.tbltravelAgent.First;

    while NOT dmwildlifesafari.tbltravelAgent.Eof do
    begin
      if (dmwildlifesafari.tbltravelAgent['username'] = sUsername) AND
        (dmwildlifesafari.tbltravelAgent['Password'] = spassword) then
      begin
        AssignFile(Tf, 'Userslist.txt'); // Kereps track off who logs in
        Append(Tf);
        sUsername := sUsername;
        spassword := spassword;
        // frmAdminHome.lblLogin.Caption:= 'User: '+ dmmatchattax.tblAdmin['AdminName'];

        FrmAgenthome.show; // if password and username ecorrect then show next form
        FrmAgenthome.label4.Caption := cmbusername2.text;
        // cmbusername2.ItemIndex := -1;
        edtPassword.Clear;
        frmLogin.close;
        // write To textfile as an activity Log
        sline := sUsername + ' logged in on ' + DatetoStr(Now)
          + ' at ' + timeToStr(Now);
        writeln(Tf, sline);
        CloseFile(Tf);
        Exit;
      end;

      dmwildlifesafari.tbltravelAgent.Next;
    end;

    if (dmwildlifesafari.tbltravelAgent['username'] <> sUsername) or
      (dmwildlifesafari.tbltravelAgent['Password'] <> spassword) then
    begin
      tries := tries - 1;
      showMessage('Incorrect Username/Password Entered' + #13 +
          'Tries Remaining: ' + IntToStr(tries));
      cmbusername2.ItemIndex := -1; // calculation-limited no of wrong entries
      edtPassword.Clear;

      cmbusername2.ItemIndex := -1;

    end;

    if tries = 0 then
    begin
      showMessage('Incorrect Username/Password Entered 3 Times' + #13 +
          'You Will be Re-Directed to the Users Screen');
      cmbusername2.ItemIndex := -1;
      edtPassword.Clear;
      frmLogin.close;
    end;
  end;
  /// ////////////////////////////////////////////////////////////////
  // Manager Login
  if cmbuser.ItemIndex = 2 then

  begin

    dmwildlifesafari.tblmanager.Open;
    dmwildlifesafari.tblmanager.First;

    while NOT dmwildlifesafari.tblmanager.Eof do
    begin
      if (dmwildlifesafari.tblmanager['username'] = sUsername) AND
        (dmwildlifesafari.tblmanager['Password'] = spassword) then
      begin

        sUsername := sUsername;
        spassword := spassword;
        AssignFile(Tf, 'Userslist.txt'); // Kereps track off who logs in
        Append(Tf);
        // cmbusername3.ItemIndex := -1;
        edtPassword.Clear;
        frmManagermenu.show; // if password and username ecorrect then show next form
        frmLogin.close;
        sline := sUsername + ' logged in on ' + DatetoStr(Now)
          + ' at ' + timeToStr(Now);
        writeln(Tf, sline);
        CloseFile(Tf);
        Exit;
      end;

      dmwildlifesafari.tblmanager.Next;
    end;

    if (dmwildlifesafari.tblmanager['username'] <> sUsername) or
      (dmwildlifesafari.tblmanager['Password'] <> spassword) then
    begin
      tries := tries - 1;
      showMessage('Incorrect Username/Password Entered' + #13 +
          'Tries Remaining: ' + IntToStr(tries));
      cmbusername3.ItemIndex := -1; // calculation-limited no of wrong entries
      edtPassword.Clear;

      cmbusername1.ItemIndex := -1;

    end;

    if tries = 0 then
    begin
      showMessage('Incorrect Username/Password Entered 3 Times' + #13 +
          'You Will be Re-Directed to the Users Screen');
      cmbusername1.ItemIndex := -1;
      edtPassword.Clear;
      frmLogin.close;
    end;

  end;

end;

procedure TfrmLogin.extractdata;
begin
  case cmbuser.ItemIndex of
    0:
      sUsername := cmbusername1.text;
    1:
      sUsername := cmbusername2.text;
    2:
      sUsername := cmbusername3.text;
  end;

  spassword := edtPassword.text;
  if (sUsername = '') or (spassword = '') then
    showMessage('Please Enter all Relevant Fields');
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
var
  sLine1, sline2: string;
begin
  iuser := cmbuser.ItemIndex;
  // clearing the combo boxes
  cmbusername2.ItemIndex := -1;
  cmbusername3.ItemIndex := -1;
  populateusernames(); // Will Check whether the user is a Guest,Agent or Manager
  edtPassword.Clear;
  tries := 3;
  icounter1 := 0;
  icounter2 := 0;

end;

procedure TfrmLogin.Guests;
var
  Tf: textfile;
  sline: string;
begin
  dmwildlifesafari.tblguests.Open;
  dmwildlifesafari.tblguests.First;

  while NOT dmwildlifesafari.tblguests.Eof do
  begin
    if (dmwildlifesafari.tblguests['username'] = sUsername) AND
      (dmwildlifesafari.tblguests['Password'] = spassword) then
    begin
      sUsername := sUsername;
      spassword := spassword;

      frmGuestMenu.show; // if password and username ecorrect then show next form
      frmGuestMenu.Label2.Caption := sUsername;
      sline := sUsername + ' logged in on ' + DatetoStr(Now)
        + ' at ' + timeToStr(Now);
      AssignFile(Tf, 'Userslist.txt'); // Kereps track off who logs in
      Append(Tf);
      writeln(Tf, sline);
      CloseFile(Tf);
      // frmLogin.close;
      Exit;
    end;

    dmwildlifesafari.tblguests.Next;
  end;

  if (dmwildlifesafari.tblguests['username'] <> sUsername) or
    (dmwildlifesafari.tblguests['Password'] <> spassword) then
  begin
    tries := tries - 1;
    showMessage('Incorrect Username/Password Entered' + #13 +
        'Tries Remaining: ' + IntToStr(tries));
    cmbusername1.ItemIndex := -1; // calculation-limited no of wrong entries
    edtPassword.Clear;

  end;

  if tries = 0 then
  begin
    showMessage('Incorrect Username/Password Entered 3 Times' + #13 +
        'You Will be Re-Directed to the Users Screen');
    cmbusername1.ItemIndex := -1;
    edtPassword.Clear;
    frmLogin.close;
  end;
end;

procedure TfrmLogin.ImgShowPasswordClick(Sender: TObject);
begin
  if edtPassword.PasswordChar = #0 then // if you can see the password then
  begin
    edtPassword.PasswordChar := '*'; // the password will be hidden
  end // if passwordchar
  else // ShowPasssword  / hide password
  begin
    edtPassword.PasswordChar := #0 // if you cant see the password, the the password will be shown
  end; // else

end;

procedure TfrmLogin.populateusernames();
var
  Tf1: textfile;
  sLine1: string;
  z: integer;
begin
  // If the user is a guest

  if (cmbuser.ItemIndex = 0) then

  begin

    // There will be 3 combo boxes each one for each user
    // Only rlevant combo box will be shown for each user

    cmbusername1.visible := true;
    cmbusername2.visible := False;
    cmbusername3.visible := False;
    cmbusername1.ItemIndex := -1;

    with dmwildlifesafari do
    begin
      tblguests.Open;
      tblguests.Refresh;
      tblguests.First;
      while not tblguests.Eof do
      begin
        cmbusername1.items.Add(tblguests['Username']);
        // Populating Combo box
        tblguests.Next;
      end;
      tblguests.close;
    end;
  end;

  if (cmbuser.ItemIndex = 1) then // If User is a travel agent
  begin

    cmbusername2.visible := true;
    // cmbusername2.ItemIndex := -1;
    cmbusername1.visible := False;
    cmbusername3.visible := False;

    if FileExists('Travelagentusernames.txt') then
      AssignFile(Tf1, 'Travelagentusernames.txt')
    else
      showMessage('File does not Exist');

    reset(Tf1); // move curosr to begining

    icounter1 := 0;
    while not Eof(Tf1) do // Tf 1 is usernames
    begin
      inc(icounter1); // Populating it to Array
      Readln(Tf1, sLine1);
      // sArrAgentUsernames[icounter1] := sline;
      cmbusername2.items.Add(sLine1);
      delete(sLine1, 1, 10);

    end;
    CloseFile(Tf1);

  end;

  { with dmwildlifesafari do
    begin
    tbltravelAgent.Open;
    tbltravelAgent.Refresh;
    tbltravelAgent.First;
    while not tbltravelAgent.Eof do
    begin // Populating combo box with Usernames
    cmbusername2.items.Add(tbltravelAgent['Username']);
    tbltravelAgent.Next;
    end;
    tbltravelAgent.Close;
    end; }

  if (cmbuser.ItemIndex = 2) then
  begin
    cmbusername3.ItemIndex := -1; // if the user is a manager then populate the usernames from the manager table
    cmbusername3.visible := true;
    cmbusername2.visible := False;
    cmbusername1.visible := False;

    with dmwildlifesafari do
    begin
      tblmanager.Open;
      tblmanager.Refresh;
      tblmanager.First;
      while not tblmanager.Eof do
      begin
        cmbusername3.items.Add(tblmanager['Username']);
        tblmanager.Next;
      end;
      tblmanager.close;
    end;
  end;

end;

procedure TfrmLogin.tmrTimeTimer(Sender: TObject);
begin
  lblDate.Caption := DatetoStr(Now); // coding for date and time
  lblTime.Caption := timeToStr(Now);
end;

end.
