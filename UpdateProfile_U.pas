unit UpdateProfile_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, dmWildlifesafari_U, ComCtrls, jpeg,
  pngimage;

type
  TfrmProfile = class(TForm)
    BitBtn4: TBitBtn;
    Label8: TLabel;
    lbldate: TLabel;
    lbltime: TLabel;
    Timer1: TTimer;
    btnUpdate: TBitBtn;
    btnprior: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtUsername: TEdit;
    edtEmail: TEdit;
    edtPassword: TEdit;
    edtIdNo: TEdit;
    edtSurname: TEdit;
    edtCell: TEdit;
    edtFname: TEdit;
    imgpic: TImage;
    btnNext: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ImgShowPassword: TImage;
    redoutput: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    Procedure ExtractDetails();
    procedure btnUpdateClick(Sender: TObject);
    procedure btnpriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);

    // User defined Procedures
    Procedure PopulateSafariTransactions();
    Procedure PopulateActivitiesTrnasactions();
    Procedure PopulateAccomTransactions();
    procedure ImgShowPasswordClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProfile: TfrmProfile;
  sUsername, sPassword, sFname, ssurname, sEmail, sCell, sID: string;
  I: integer;

implementation

uses Login_U, guestMenu_U, TravelAgentmenu_u;
{$R *.dfm}

procedure TfrmProfile.btnUpdateClick(Sender: TObject);
begin
  ExtractDetails;
  with dmwildlifesafari do
    if frmlogin.cmbuser.ItemIndex = 1 then
    begin

      tblTravelAgent.Open; // Loading all the details
      tblTravelAgent.First;
      while not tblTravelAgent.Eof do
      begin
        if tblTravelAgent['TravelAgentID'] = InttoStr
          (frmlogin.cmbusername2.ItemIndex) then
        begin
          tblTravelAgent['Username'] := sUsername;
          tblTravelAgent['first name'] := sFname;
          tblTravelAgent['Surname'] := ssurname;
          tblTravelAgent['ID Number'] := sID;
          tblTravelAgent['Password'] := sPassword;
          tblTravelAgent['Cell Phone'] := sCell;
          tblTravelAgent['Email adress'] := sEmail;
          tblTravelAgent['Profile Pic'] := InttoStr(I);

        end;
        tblTravelAgent.Next;

      end; // end of while
      if frmlogin.cmbuser.ItemIndex = 0 then
      begin // If user is a Guest

        tblGuests.Open;
        tblGuests.First;
        while not tblGuests.Eof do // Loading all the details
        begin
          if tblGuests['GuestID'] = InttoStr(frmlogin.cmbusername1.ItemIndex)
            then
          begin
            tblGuests['Username'] := sUsername;
            tblGuests['first name'] := sFname;
            tblGuests['Surname'] := ssurname;
            tblGuests['ID Number'] := sID;
            tblGuests['Password'] := sPassword;
            tblGuests['Cell Phone'] := sCell;
            tblGuests['Email adress'] := sEmail;
            tblGuests['Profilepic'] := InttoStr(I);
          end;
          tblGuests.Next;
        end;
      end; // end of while
    end; // end of with
  ShowMessage('Your Profile has Successfully been Updated!');

end;

procedure TfrmProfile.btnpriorClick(Sender: TObject);

begin // Changing the Profile Pic
  dec(I);
  imgpic.Picture.LoadFromFile('Profilepic' + InttoStr(I) + '.jpg');
  btnNext.Enabled := false;
  if I > 1 then
  begin
    btnprior.Enabled := true;
    btnprior.Visible := true;
  end;

end;

procedure TfrmProfile.BitBtn4Click(Sender: TObject);
begin
//  frmGuestmenu.show;
  frmProfile.close;
end;

procedure TfrmProfile.btnNextClick(Sender: TObject);
begin
  inc(I);
  imgpic.Picture.LoadFromFile('Profilepic' + InttoStr(I) + '.jpg');

  if I = 12 then // Cant be Higer than 12
    btnNext.Enabled := false;

  if I < 2 then // Cant go lower than 1
  begin
    btnprior.Enabled := false;
    btnprior.Visible := true;
  end;
end;

procedure TfrmProfile.ExtractDetails;
begin
  sUsername := edtUsername.Text;
  sFname := edtFname.Text;
  ssurname := edtSurname.Text;
  sID := edtIdNo.Text; // displaying the dtaa to the rleevant components
  sPassword := edtPassword.Text;
  sCell := edtCell.Text;
  sEmail := edtEmail.Text;
end;

procedure TfrmProfile.FormActivate(Sender: TObject);
begin
  CurrencyString := 'R';
  // tblGuests['Email Adress'] imgpic.Picture.LoadFromFile('Profilepic' + InttoStr(I) + '.jpg');
  if I = 1 then
  begin
    btnprior.Enabled := false;
    btnprior.Visible := false;
  end;

  if I > 1 then
  begin
    btnprior.Enabled := true;
    btnprior.Visible := true;
  end;
  with dmwildlifesafari do
  begin

    if (frmlogin.cmbuser.ItemIndex = 0) then
    begin
      PopulateSafariTransactions; // These Procdures  basically Shows the user summary of all their previous transactions
      PopulateActivitiesTrnasactions;
      Redoutput.Visible := true;
      Label11.show;
      Label8.Caption := frmlogin.cmbusername1.Text;
      tblGuests.Open;
      tblGuests.First;
      while not tblGuests.Eof do
      begin
        if tblGuests['GuestID'] = InttoStr(frmlogin.cmbusername1.ItemIndex + 1)
          then
        begin
          edtUsername.Text := tblGuests['Username'];
          edtFname.Text := tblGuests['First Name'];
          edtSurname.Text := tblGuests['Surname'];
          edtIdNo.Text := tblGuests['ID Number'];
          edtPassword.Text := tblGuests['Password'];
          edtCell.Text := tblGuests['Cell Phone'];
          edtEmail.Text := tblGuests['Email Adress'];
          imgpic.Picture.LoadFromFile
            ('Profilepic' + tblGuests['Profilepic'] + '.jpg');
          I := StrtoInt(tblTravelAgent['Profilepic']);
        end;
        tblGuests.Next;

      end; // end of while

    end; // end of while
    // Travel Agent
    if (frmlogin.cmbuser.ItemIndex = 1) then
    begin
      Label8.Caption := FrmAgenthome.Label4.Caption;
      Redoutput.Visible := false;
      Label11.Hide;
      tblTravelAgent.Open;
      tblTravelAgent.First;

      // Getting the Personal details of the Agent
      while not tblTravelAgent.Eof do
      begin
        if tblTravelAgent['Username'] = Label8.Caption then
        begin
          edtUsername.Text := tblTravelAgent['Username'];
          edtFname.Text := tblTravelAgent['First Name'];
          edtSurname.Text := tblTravelAgent['Surname'];
          edtIdNo.Text := tblTravelAgent['ID Number'];
          edtPassword.Text := tblTravelAgent['Password'];
          edtCell.Text := tblTravelAgent['Cell Phone'];
          edtEmail.Text := tblTravelAgent['Email Adress'];
          I := StrtoInt(tblTravelAgent['Profilepic']);
          imgpic.Picture.LoadFromFile
            ('Profilepic' + tblTravelAgent['Profilepic'] + '.jpg');
        end;
        tblTravelAgent.Next;

      end; // end of If
      if frmlogin.cmbuser.ItemIndex = 2 then
      begin
        Label8.Caption := FrmAgenthome.Label4.Caption;
        Redoutput.Visible := false;
        Label8.Caption := frmlogin.cmbusername3.Text;
        tblmanager.Open;
        tblmanager.First;
        while not tblmanager.Eof do
        begin
          if tblmanager['ManagerID'] = InttoStr
            (frmlogin.cmbusername3.ItemIndex) then
          begin
            edtUsername.Text := tblmanager['Username'];
            edtFname.Text := tblmanager['First Name'];
            edtSurname.Text := tblmanager['Surname'];
            edtIdNo.Text := tblmanager['ID Number'];
            edtPassword.Text := tblmanager['Password'];
            edtCell.Text := tblmanager['Cell Phone'];
            edtEmail.Text := tblmanager['Email Adress'];
            tblmanager.Next;
          end;
          tblmanager.Next;
        end; // end of while

      end; // end of If

    end; // end of with statement
  end;
end;

procedure TfrmProfile.ImgShowPasswordClick(Sender: TObject);
begin
  if edtpassword.PasswordChar = #0 then // if you can see the password then
  begin
    edtpassword.PasswordChar := '*'; // the password will be hidden
  end // if passwordchar
  else // ShowPasssword  / hide password
  begin
    edtpassword.PasswordChar := #0 // if you cant see the password, the the password will be shown
  end; // else

end;

procedure TfrmProfile.PopulateAccomTransactions;
begin
  with dmwildlifesafari do
  begin
    // Pulling From 2 Tables
    tblAccom.Open;
    tblAccom.First;
    tblGuests.Open;
    tblGuests.First;
    // Basically Showing the user of Their previous Trnasactions
    Redoutput.Lines.Add('Accomodation Transactions' + #13);


    while not tblGuests.Eof do // Linking 2 tables at the same time
    begin
      if (tblGuests['GuestID'] = InttoStr(frmlogin.cmbusername1.ItemIndex + 1))
        then
      begin
        while not tblAccom.Eof do
        begin // Show the User all their previous transactions with our company
          if (tblAccom['GuestID'] = tblGuests['GuestID']) then
          begin
            Redoutput.Lines.Add(DateToStr(tblAccom['Date Of Sale'])
                + #9 + FloatToStrF(tblAccom['Sales Amount'], ffcurrency, 6, 2));

          end;
          tblAccom.Next;

        end; // end of safari loop
      end; // end of If
      tblGuests.Next;
    end; // end of while

    tblGuests.close;
    tblactivitytickets.close;
  end;
  Redoutput.Lines.Add('====================');

end;

procedure TfrmProfile.PopulateActivitiesTrnasactions;
begin
  with dmwildlifesafari do
  begin
    // Pulling From 2 Tables
    tblactivitytickets.Open;
    tblactivitytickets.First;
    tblGuests.Open;
    tblGuests.First;
    // Basically Showing the user of Their previous Trnasactions
    Redoutput.Lines.Add('Activities Transactions' + #13);


    while not tblGuests.Eof do
    begin
      if (tblGuests['GuestID'] = InttoStr(frmlogin.cmbusername1.ItemIndex + 1))
        then
      begin
        while not tblactivitytickets.Eof do
        begin
          if (tblactivitytickets['GuestID'] = tblGuests['GuestID']) then
          begin
            Redoutput.Lines.Add(DateToStr(tblactivitytickets['Date Of Sale'])
                + #9 + FloatToStrF(tblactivitytickets['Sales Amount'],
                ffcurrency, 6, 2)); // showing all previous transactions

          end;
          tblactivitytickets.Next;

        end; // end of safari loop
      end; // end of If
      tblGuests.Next;
    end; // end of while

    tblGuests.close;
    tblactivitytickets.close;
  end;
  Redoutput.Lines.Add('=======================');
end;

procedure TfrmProfile.PopulateSafariTransactions;
begin
  with dmwildlifesafari do
  begin
    // Pulling From 2 Tables
    tblsafaritickets.Open;
    tblsafaritickets.First;
    tblGuests.Open;
    tblGuests.First;
    // Basically Showing the user of Their previous Trnasactions
    Redoutput.Lines.Add('Safari Transactions' + #13);

    Redoutput.Lines.Add('Date' + #9 + 'Amount');

    while not tblGuests.Eof do
    begin // using 2 tables at the same time
      if (tblGuests['GuestID'] = InttoStr(frmlogin.cmbusername1.ItemIndex + 1))
        then
      begin
        while not tblsafaritickets.Eof do
        begin
          if (tblsafaritickets['GuestID'] = tblGuests['GuestID']) then
          begin
            Redoutput.Lines.Add(DateToStr(tblsafaritickets['Date Of Sale'])
                + #9 + FloatToStrF(tblsafaritickets['Total Sales Amount'],
                ffcurrency, 6, 2)); // showing all previous transactions

          end;
          tblsafaritickets.Next;

        end; // end of safari loop
      end; // end of If
      tblGuests.Next;
    end; // end of while

    tblGuests.close;
    tblsafaritickets.close;
  end;
  Redoutput.Lines.Add('=======================');
end;

procedure TfrmProfile.Timer1Timer(Sender: TObject);
begin
  lbldate.Caption := DateToStr(Now); // coding for date and time
  lbltime.Caption := timeToStr(Now);
end;

end.
