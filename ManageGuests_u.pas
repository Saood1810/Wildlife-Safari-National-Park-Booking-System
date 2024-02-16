unit ManageGuests_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dmwildlifesafari_u, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ExtCtrls;

type
  TfrmGuestsManage = class(TForm)
    GroupBox1: TGroupBox;
    dbedtGuestID: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtname: TEdit;
    edtSurname: TEdit;
    edtpassword: TEdit;
    edtID: TEdit;
    edtCell: TEdit;
    edtEmail: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    rgpESearch: TGroupBox;
    rgpEFilter: TRadioGroup;
    edtsearch: TEdit;
    btnEclear: TButton;
    Label9: TLabel;
    cmbGuestID: TComboBox;
    DBGrid2: TDBGrid;

    // User Defined
    Procedure ExtractGuestdetails(); // Extracts the name,surnam,ID etc
    Function CheckValid(sID, sCell, sEmail: string): boolean;
    // Checks if ID is and Cell No is correct Length
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnEsearchClick(Sender: TObject);
    procedure rgpEFilterClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGuestsManage: TfrmGuestsManage;
  sUsername, sCellNo, sGuestID, sname, sPassword, sSurname, sEmail,
    sIDno: string;

implementation

{$R *.dfm}

procedure TfrmGuestsManage.BitBtn1Click(Sender: TObject);
begin
  ExtractGuestdetails; // call in Procedure and Function
  if CheckValid(sCellNo, sIDno, sEmail) = false then
  begin
    Showmessage('Please Check your ID No ,Cell No or Email adress');

    Exit;
  end
  else
  begin
    sUsername := copy(sname, 1, length(sname));
    with dmwildlifesafari do
    begin
      tblguests.open; // Adding new Guest
      tblguests.Last;
      tblguests.append;
      tblguests['First Name'] := sname;
      tblguests['Surname'] := sSurname;
      tblguests['Username'] := sUsername;
      tblguests['Password'] := sPassword;
      tblguests['Email Adress'] := sEmail;
      tblguests['Cell Phone'] := sCellNo;
      tblguests['ID Number'] := sIDno;

      tblguests.Post;
    end;
  end;

end;

procedure TfrmGuestsManage.BitBtn2Click(Sender: TObject);
begin
  ExtractGuestdetails;
  sGuestID := IntToStr(cmbGuestID.ItemHeight + 1);
  sUsername := copy(sname, 1, length(sname));
  if CheckValid(sCellNo, sIDno, sEmail) = false then
  begin
    Showmessage('Please Check your ID No ,Cell No or Email adress');
    Exit;
  end;

  with dmwildlifesafari do
  begin
    tblguests.open; // updating new Guest
    tblguests.First;
    while not tblguests.Eof do
    begin
      if tblguests['GuestID'] = sGuestID then
      begin
        tblguests.edit;
        tblguests['First Name'] := sname;
        tblguests['Surname'] := sSurname; // Updating
        tblguests['Username'] := sUsername;
        tblguests['Password'] := sPassword;
        tblguests['Email Adress'] := sEmail;
        tblguests['Cell Phone'] := sCellNo;
        tblguests['ID Number'] := sIDno;

      end;
      tblguests.Next;

    end; // end loop
  end;

end; // end

procedure TfrmGuestsManage.BitBtn3Click(Sender: TObject);
var
  irowNumber: integer;
  smessage: string;
begin
  irowNumber := DBGrid2.DataSource.DataSet.RecNo;
  smessage := ('Are you sure you want to delete selected record');
  // deleting a record

  if MessageDlg(smessage, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  begin
    dmwildlifesafari.tblguests.Delete;
    dmwildlifesafari.tblguests.refresh;
  end;

end;

procedure TfrmGuestsManage.BitBtn4Click(Sender: TObject);
begin
  frmGuestsManage.Close;

end;

procedure TfrmGuestsManage.btnEsearchClick(Sender: TObject);
var
  sSearchValue: string;
begin
  sSearchValue := edtsearch.text;

end;

function TfrmGuestsManage.CheckValid(sID, sCell, sEmail: string): boolean;
var
  bemail, bCell, bID: boolean;
  i, icountdigitscell, icountdigitsID, Z: integer;
begin
  // validating cell Number
  icountdigitscell := 0;
  icountdigitsID := 0;
  bemail := true;
  bCell := true;
  bID := true;

  for i := 1 to 10 do
  begin

    if sCell[i] in ['0' .. '9'] then // must only contain digits
      inc(icountdigitscell);
  end;

  if icountdigitscell = 10 then // has to be 10 digits
    bCell := true
  else
    bCell := false;
  // validating ID Number
  icountdigitscell := 0;

  // validating ID number
  for Z := 1 to 13 do
  begin

    if sIDno[Z] in ['0' .. '9'] then // must only contain digits
      inc(icountdigitsID);
  end;

  if icountdigitsID = 13 then // has to be 13 digits
    bID := true
  else
    bID := false;

  if pos('@', sEmail) = 0 then
    bemail := false;

  if (bemail = true) and (bID = true) and (bCell = true) then
    Result := true
  else
    Result := false;

end;

procedure TfrmGuestsManage.ExtractGuestdetails;
begin
  sname := edtname.text;
  sGuestID := dbedtGuestID.DataField;
  sSurname := edtSurname.text;
  sIDno := edtID.text;
  sEmail := edtEmail.text;
  sCellNo := edtCell.text;
  sPassword := edtpassword.text;
  sIDno := stringreplace(sIDno, '', '', [rfReplaceall]); // removes spaces
  sCellNo := stringreplace(sCellNo, '', '', [rfReplaceall]);

end;

procedure TfrmGuestsManage.FormActivate(Sender: TObject);
begin

  cmbGuestID.Clear;

  sGuestID := IntToStr(cmbGuestID.ItemHeight + 1);

  with dmwildlifesafari do
  Begin
    tblguests.open;
    tblguests.First;
    while not tblguests.Eof do
    Begin
      cmbGuestID.Items.Add(tblguests['guestID']);
      tblguests.Next;

    End;

  end;
end;

procedure TfrmGuestsManage.rgpEFilterClick(Sender: TObject);
var
  sSearchValue: string;
begin
  sSearchValue := edtsearch.text;
  case rgpEFilter.ItemIndex of
    0:
      begin
        with dmwildlifesafari do
        begin
          if tblguests.Locate('GuestID', sSearchValue, []) = true then
          begin
            Showmessage('Found');
            tblguests.Filtered := false;
            tblguests.Filter := 'GuestID = ' + QuotedStr(sSearchValue);
            // Puts into quote for you
            tblguests.Filtered := true;

          end
          else
            Showmessage('Not found');

        end;
      end;
    1:
      begin
        with dmwildlifesafari do
        begin
          if tblguests.Locate('ID Number', sSearchValue, []) = true then
          begin
            Showmessage('Found');
            tblguests.Filtered := false;
            tblguests.Filter := 'ID Number = ' + QuotedStr(sSearchValue);
            // Puts into quote for you
            tblguests.Filtered := true;

          end
          else
            Showmessage('Not found');

        end;
      end;
    2:
      begin
        with dmwildlifesafari do
        begin
          if tblguests.Locate('Username', sSearchValue, []) = true then
          begin
            Showmessage('Found');
            tblguests.Filtered := false;
            tblguests.Filter := 'Username = ' + QuotedStr(sSearchValue);
            // Puts into quote for you
            tblguests.Filtered := true;

          end
          else
            Showmessage('Not found');
        end;

      end;
    3:
      begin
        with dmwildlifesafari do
        begin
          if tblguests.Locate('First Name', sSearchValue, []) = true then
          begin
            Showmessage('Found');
            tblguests.Filtered := false;
            tblguests.Filter := 'First Name = ' + QuotedStr(sSearchValue);
            // Puts into quote for you
            tblguests.Filtered := true;

          end
          else
            Showmessage('Not found');

        end;
      end;
    4:
      begin
        with dmwildlifesafari do
        begin
          if tblguests.Locate('Surname', sSearchValue, []) = true then
          begin
            Showmessage('Found');
            tblguests.Filtered := false;
            tblguests.Filter := 'Surname = ' + QuotedStr(sSearchValue);
            // Puts into quote for you
            tblguests.Filtered := true;

          end
          else
            Showmessage('Not found');

        end;

      end;
  end;

end;

end.
