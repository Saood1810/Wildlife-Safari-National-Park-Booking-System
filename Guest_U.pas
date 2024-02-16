unit Guest_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, dmwildlifesafari_u, DBGrids, ExtCtrls, Mask, StdCtrls,
  DBCtrls,
  Buttons;

type
  TfrmManageGuests = class(TForm)
    rgpEDetails: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edtGuestID: TEdit;
    edtusername: TEdit;
    edtname: TEdit;
    edtemail: TEdit;
    edtsurname: TEdit;
    edtpassword: TEdit;
    edtcell: TMaskEdit;
    edtId: TMaskEdit;
    rgpOption: TRadioGroup;
    rgpESearch: TGroupBox;
    rgpEFilter: TRadioGroup;
    edtsearch: TEdit;
    btnEsearch: TBitBtn;
    btnEclear: TButton;
    Panel2: TPanel;
    lblDateTime: TLabel;
    lblUsername: TLabel;
    btnBack: TBitBtn;
    btnHelp: TBitBtn;
    DBNavigator1: TDBNavigator;
    btnProceed: TBitBtn;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    btnDelete: TBitBtn;
    procedure btnEsearchClick(Sender: TObject);
    procedure btnEclearClick(Sender: TObject);
    procedure btnProceedClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManageGuests: TfrmManageGuests;
  sSearch: string;
  iFilter: integer;

implementation

{$R *.dfm}

procedure TfrmManageGuests.btnProceedClick(Sender: TObject);
var
  sSelect, sName, sSurname, sID, sPassword, sEmail, sCell, sUsername,sGuestID: string;
begin
  case rgpOption.ItemIndex of
    0:
      sSelect := 'Add';
    1:
      sSelect := 'Update';
    2:
      sSelect := 'Delete';

  end;
  sName := edtname.Text;
  sSurname := edtsurname.Text; // extracting information
  sPassword := edtpassword.Text;
  sUsername := edtusername.Text;
  sEmail := edtemail.Text;
  sCell := edtcell.Text;
  sID := edtId.Text;
  sGuestID:=edtguestid.text;
  if (sSelect = '') or (sName = '') or (sPassword = '') or (sUsername = '') or
    (sEmail = '') or (sCell = '') or (sSurname = '') or (sID = '') then
    showmessage('Please Enter all relevent Fields');

  if sSelect = 'Add' then
    with dmWildlifeSafari do
    begin // with statement
      tblguests.Open;
      tblguests.Last; // adding new record to a table
      tblguests.Append;
      tblguests['First Name'] := sName;
      tblguests['Surname'] := sSurname;
      tblguests['Username'] := sUsername;
      tblguests['Password'] := sPassword;
      tblguests['Email Adress'] := sEmail;
      tblguests['Cell Phone'] := sCell;
      tblguests['ID Number'] := sID;
      tblguests.Post;
    end;

  if sSelect = 'Delete' then
    with dmWildlifeSafari do
    begin
      tblguests.Last;
      tblguests['First Name'] := sName;
      tblguests['Surname'] := sSurname;
      tblguests['Username'] := sUsername;
      tblguests['Password'] := sPassword;
      tblguests[' Email adress'] := sEmail;
      tblguests['ID Number'] := sID;
      tblguests['Cell Phone'] := sCell;
      tblguests.Post;
    end;
  if sSelect = 'Update' then
  begin
    begin
      dmWildlifeSafari.tblguests.Filtered := false;
      dmWildlifeSafari.tblguests.First;
      while Not dmWildlifeSafari.tblguests.Eof do
      begin
        if dmWildlifeSafari.tblguests['GuestID'] = StrToInt(edtGuestID.Text)
          then
        begin
          dmWildlifeSafari.tblguests.Edit;
          dmWildlifeSafari.tblguests['First Name'] := sName;
          dmWildlifeSafari.tblguests['Surname'] := sSurname;
          dmWildlifeSafari.tblguests['Username'] := sUsername;
          dmWildlifeSafari.tblguests['Password'] := sPassword;
          dmWildlifeSafari.tblguests['email adress'] := sEmail;
          dmWildlifeSafari.tblguests['Cell Phone'] := sCell;
          dmWildlifeSafari.tblguests['ID Number'] := sID;
        end;
      end;
      dmWildlifeSafari.tblguests.Next;
    end;
  end;

end;

procedure TfrmManageGuests.btnDeleteClick(Sender: TObject);
var
  irowNumber: integer;
  smessage: string;
begin
  irowNumber := DBGrid1.DataSource.DataSet.RecNo;
  smessage := ('Are you sure you want to delete selected record');
  // deleting a record

  if MessageDlg(smessage, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  begin
    dmWildlifeSafari.tblguests.Delete;
    dmWildlifeSafari.tblguests.refresh;
  end;

end;

procedure TfrmManageGuests.btnEclearClick(Sender: TObject);
begin
  dmWildlifeSafari.tblguests.Filtered := false;
  edtsearch.Text := '';
  rgpEFilter.ItemIndex := -1;
end;

procedure TfrmManageGuests.btnEsearchClick(Sender: TObject);

begin

  // managing table

  sSearch := edtsearch.Text; // Searching
  if sSearch = '' then
  begin
    showmessage('Please enter a value in the search field');
    Exit;
  end;

  if rgpEFilter.ItemIndex = -1 then
  begin
    showmessage('Please select a filter to search by');
    Exit;
  end;

  iFilter := rgpEFilter.ItemIndex;
  with dmWildlifeSafari do
  begin // display according to critera
    with tblguests do
    begin
      case iFilter of
        0:
          Filter := '[GuestID] LIKE ' + sSearch;
        // Employee ID    //Employee ID is an integer
        1:
          Filter := '[ID Number] LIKE ''%' + sSearch + '%''';
        // ID Number   //ID Number is a string
        2:
          Filter := 'Username LIKE ''%' + sSearch + '%'''; // Username
        3:
          Filter := 'First Name LIKE ''%' + sSearch + '%''';
        // First Name(s)
        4:
          Filter := 'Surname LIKE ''%' + sSearch + '%'''; // Surname
      end;
      Filtered := True; // will apply to all cases

    end;
  end;

end;

end.
