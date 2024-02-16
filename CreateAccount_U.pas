unit CreateAccount_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,math, Buttons, jpeg, dmwildlifesafari_u, ExtCtrls,
  pngimage;

type
  TfrmCreateAccount = class(TForm)
    Label1: TLabel;
    edtname: TEdit;
    edtsurname: TEdit;
    edtID: TEdit;
    edtCell: TEdit;
    edtemail: TEdit;
    btnEnter: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnBack: TBitBtn;
    Label7: TLabel;
    edtpassword: TEdit;
    ImgShowPassword: TImage;
    procedure btnEnterClick(Sender: TObject);
    // Userr Written
    procedure extractdata();
    Function ValidID(sID: string): boolean; // Validates ID
    function ValidCell(sCell: string): boolean;
    procedure ImgShowPasswordClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnHelpClick(Sender: TObject); // validates Cell Phone number
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCreateAccount: TfrmCreateAccount;
  sFirstname, sID, sSurname, sCell, sPassword, sEmail: string;

implementation

uses WildlifeSafari_u;
{$R *.dfm}

procedure TfrmCreateAccount.btnEnterClick(Sender: TObject);
var
  susername, sprofilepic: string;
  BEmail: boolean;
  i, Icount, iprofilePic: integer;
begin
  extractdata;
  Icount := 0;
  sprofilepic:=InttoStr(RandomRange(1,10));
  // Validating Password
  if length(sPassword) < 7 then
  Begin
    Showmessage('Sorry,Your Password must have at least 7 characters');
    Exit;
  end;
  for i := 1 to length(sPassword) do
  Begin
    if sPassword[i] in ['0' .. '9'] then
      inc(Icount);
  End;
  if Icount = 0 then
  Begin
    Showmessage('Sorry,Your Password must Contain atleast 1 Number!');
    Exit;
  End;

  // Validating Strength of Password

  BEmail := false;
  // Valdiating email
  if pos('@', sEmail) <> 0 then
    BEmail := true;

  // String manipulation
  susername := copy(sFirstname, 1, length(sFirstname));
  if (ValidID(sID) = false) Then
  Begin
    Showmessage('Please Enter a Valid ID number');
    Exit;
  end;
  // Calling in functioj Checking ifscell is valid
  if (ValidCell(sCell) = false) Then
  begin
    Showmessage('Please Enter a Valid cell Number');
    Exit;
  end;
  btnEnter.Enabled := false;
  Showmessage('Profile sucessfully created');
  Showmessage('You will now be directed to the Home Screen');
  edtname.Text := '';
  edtsurname.Text := '';
  edtCell.Text := '';
  edtemail.Text := '';
  edtID.Text := '';
  edtpassword.Text := '';
  with dmwildlifesafari do
  begin
    tblguests.open;
    tblguests.Last;
    tblguests.append;
    tblguests['First Name'] := sFirstname;
    tblguests['Surname'] := sSurname;
    tblguests['Username'] := susername;
    tblguests['Password'] := sPassword;
    tblguests['Email Adress'] := sEmail;
    tblguests['ID Number'] := sID;
    tblguests['Cell Phone'] := sCell;
    tblguests['Profilepic'] := sprofilepic;
    tblguests.Post;
  end;

 frmCreateAccount.Close;





  // if the details are valid then it will be written to textfile and when the
  // admin/travelagents activate the manage guests from it will be written from the textfile

end;

procedure TfrmCreateAccount.btnHelpClick(Sender: TObject);
begin

end;

// Extarcting Info
procedure TfrmCreateAccount.btnBackClick(Sender: TObject);
begin
  frmHome.show;
  frmCreateAccount.Close;
end;

procedure TfrmCreateAccount.extractdata;
begin
  sFirstname := edtname.Text; // Thios procedur extracts all the guests details
  sSurname := edtsurname.Text;
  sID := edtID.Text;
  sCell := edtCell.Text;
  sEmail := edtemail.Text;
  sID := stringreplace(sID, '', '', [rfReplaceall]); // removes spaces
  sCell := stringreplace(sCell, '', '', [rfReplaceall]);
  sPassword := edtpassword.Text;
end;

procedure TfrmCreateAccount.FormActivate(Sender: TObject);
begin
  edtname.Text := '';
  edtsurname.Text := '';
  edtCell.Text := '';
  edtemail.Text := '';
  edtID.Text := '';
  edtpassword.Text := '';

end;

procedure TfrmCreateAccount.ImgShowPasswordClick(Sender: TObject);
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

// Validating Cell No
function TfrmCreateAccount.ValidCell(sCell: string): boolean;
var
  bflag: boolean;
  i, icountdigits: integer;
begin
  bflag := true;

  bflag := true;

  begin
    icountdigits := 0;
    if length(sCell) = 10 then
    begin
      for i := 1 to 10 do

        if sCell[i] in ['0' .. '9'] then
          inc(icountdigits);
    end;
  end;
  if icountdigits = 10 then
    result := true
  else
    result := false;

end;

// validating ID
function TfrmCreateAccount.ValidID(sID: string): boolean;
var
  i, icountdigits: integer;
  ValidLength, validdigits, bflag: boolean;
begin
  bflag := true;

  begin
    icountdigits := 0;
    if length(sID) = 13 then
    begin
      for i := 1 to 13 do

        if sID[i] in ['0' .. '9'] then
          inc(icountdigits);
    end;
    if (icountdigits = 13) and (strtoint(copy(sID, 3, 2)) <= 12) and
      (strtoint(copy(sID, 5, 2)) <= 31) then
      bflag := true
    else
      bflag := false;
  end;

  if bflag = true then

    result := true
  else
    result := false;

end;

end.
