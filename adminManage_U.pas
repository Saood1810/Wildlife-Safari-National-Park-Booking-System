unit adminManage_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Mask, dmwildlifesafari_u,
  StdCtrls, ComCtrls, db,
  ExtCtrls, Buttons, DBCtrls, Spin;

type
  TfrmManage = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtGUsername: TEdit;
    edtSurname: TEdit;
    edtpassword: TEdit;
    edtID: TEdit;
    edtCell: TEdit;
    edtEmail: TEdit;
    btnUpdateGuest: TBitBtn;
    rgpESearch: TGroupBox;
    rgpGFilter: TRadioGroup;
    edtsearch: TEdit;
    btnEclear: TButton;
    TabSheet3: TTabSheet;
    Label9: TLabel;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    rgpLodge: TRadioGroup;
    spnnoofRooms: TSpinEdit;
    btnaddaccom: TBitBtn;
    btnUpdateaccom: TBitBtn;
    chkbAvailable: TCheckBox;
    edtPriceaccomodation: TEdit;
    TabSheet5: TTabSheet;
    GroupBox6: TGroupBox;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    spnppl: TSpinEdit;
    edtcost: TEdit;
    DBGrid5: TDBGrid;
    btnUpdateAct: TBitBtn;
    btndeleteAct: TBitBtn;
    grpAgent2: TGroupBox;
    Label10: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edtagentUsername: TEdit;
    edtagentSurname: TEdit;
    edtagentpassword: TEdit;
    edtagentID: TEdit;
    edtagentCell: TEdit;
    edtagentEmail: TEdit;
    btnAddAgent: TBitBtn;
    btnUpdateAgent: TBitBtn;
    rgpASearch: TGroupBox;
    rgpAFilter: TRadioGroup;
    edtSearch2: TEdit;
    btnclear: TButton;
    BitBtn14: TBitBtn;
    Label21: TLabel;
    Label31: TLabel;
    BitBtn3: TBitBtn;
    Label33: TLabel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    BitBtn13: TBitBtn;
    Label34: TLabel;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edtCent3: TEdit;
    edt3: TEdit;
    edtCent2: TEdit;
    edtCent1: TEdit;
    edtCent4: TEdit;
    edtCent5: TEdit;
    edtCent6: TEdit;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    DBNavigator5: TDBNavigator;
    DBNavigator6: TDBNavigator;
    DBNavigator7: TDBNavigator;
    DBNavigator8: TDBNavigator;
    DBNavigator9: TDBNavigator;
    DBNavigator10: TDBNavigator;
    Label40: TLabel;
    Label41: TLabel;
    cmbActivities: TComboBox;
    edtcent: TEdit;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    cmbRoomNumber: TComboBox;
    Label46: TLabel;
    DBGrid3: TDBGrid;
    edtaname: TEdit;
    edtAgentsId: TEdit;
    GuestName: TEdit;
    edtGuestID: TEdit;
    edtCents: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label29: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    // Agent
    procedure ExtractAgentDetails();
    Procedure ExtractGuestdetails(); // Extracts the name,surnam,ID etc
    Function CheckValid(sID, sCell, sEmail: string): boolean;
    procedure btnUpdateGuestClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure rgpGFilterClick(Sender: TObject);
    procedure btnaddaccomClick(Sender: TObject);
    // accomodation Sheet
    procedure ExtractAccomodationdetails();
    procedure btnUpdateaccomClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnAddAgentClick(Sender: TObject);
    procedure btnUpdateAgentClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure btnUpdateActClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure rgpAFilterClick(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManage: TfrmManage;
  sUsername, sGuestUsername, sAgentUsername, sCellNo, sGuestID, sname,
    sPassword, sSurname, sEmail, sIDno: string;
  // Agent
  sAUsername, sACellNo, sAgentID, sAname, sAPassword, sASurname, sAEmail,
    saIDno: string;
  // for accomodation
  icost, iNoofBeds: integer;
  bAvailable: boolean;
  rAccomCost: real;
  slodge, sWholeCost, sDeciCost, StotalCost, sRoomNumber: string;
  // Safari
  sSafari, sopeningTime, sClosingTime, ssafariID: string;
  bVehicle, bTourGuide: boolean;
  iNoofppl: integer;
  rPricesafari: real;
  // activities
  sact, sopenTime, sClosetime, sActID: string;
  bVeh, bTour: boolean;
  iNoofpeople: integer;
  rPriceAct: real;

  X: integer;

implementation

uses WildlifeSafari_u;
{$R *.dfm}

procedure TfrmManage.btnAddAgentClick(Sender: TObject);
begin
  ExtractAgentDetails;
  sAgentUsername := edtagentUsername.Text;
  sASurname := edtagentSurname.Text;
  sAname := edtaname.Text;
  saIDno := edtagentID.Text;
  sAEmail := edtagentEmail.Text;
  sACellNo := edtagentCell.Text;
  sAPassword := edtagentpassword.Text;
  saIDno := stringreplace(saIDno, '', '', [rfReplaceall]); // removes spaces
  sACellNo := stringreplace(sACellNo, '', '', [rfReplaceall]);
  { if CheckValid(saIDno, sACellNo, sAEmail) = false then
    begin
    Showmessage('Sorry,Please re enter the user''s ID No ,Cell No or Email adress.It seems to be Invalid');
    exit;
    end; }
  sUsername := copy(sname, 1, length(sname));
  with dmwildlifesafari do
  begin
    tbltravelagent.open; // Adding new Guest

    tbltravelagent.Insert;
    tbltravelagent['First Name'] := sAname;
    tbltravelagent['Surname'] := sASurname;
    tbltravelagent['Username'] := sAgentUsername;
    tbltravelagent['Password'] := sAPassword;
    tbltravelagent['Email Adress'] := sAEmail;
    tbltravelagent['Cell Phone'] := sACellNo;
    tbltravelagent['ID Number'] := saIDno;

    tbltravelagent.Post;
  end;
end;

procedure TfrmManage.btnUpdateAgentClick(Sender: TObject);
var
  found: boolean;
begin
  ExtractAgentDetails;
  ExtractAgentDetails;
  sAgentUsername := edtagentUsername.Text;
  sASurname := edtagentSurname.Text;
  sAname := edtaname.Text;
  saIDno := edtagentID.Text;
  sAEmail := edtagentEmail.Text;
  sACellNo := edtagentCell.Text;
  sAPassword := edtagentpassword.Text;
  saIDno := stringreplace(saIDno, '', '', [rfReplaceall]); // removes spaces
  sACellNo := stringreplace(sACellNo, '', '', [rfReplaceall]);
  // AUsername := copy(sname, 1, length(sname));
  if CheckValid(saIDno, sACellNo, sAEmail) = false then
  begin
    Showmessage(
      'Please Check your ID No ,Cell No or Email adress.They seen to be invalid'
      );
    exit;
  end;
  found := false;
  if edtAgentsId.Text = '' then
  Begin
    Showmessage('Please Enter an Agents ID');
    exit;
  End;

  with dmwildlifesafari do
  begin

    tbltravelagent.open; // updating new Guest
    tbltravelagent.First;
    tbltravelagent.edit;
    while not tbltravelagent.Eof and found = false do
    begin
      if edtAgentsId.Text = tbltravelagent['ID Number'] then
      begin

        tbltravelagent['First Name'] := sAname;
        tbltravelagent['Surname'] := sASurname;
        tbltravelagent['Username'] := edtagentUsername.Text;
        tbltravelagent['Password'] := sAPassword;
        tbltravelagent['Email Adress'] := sAEmail;
        tbltravelagent['Cell Phone'] := sACellNo;
        tbltravelagent['ID Number'] := saIDno;
        found := true;
      end;
      tbltravelagent.Next;

    end;

  end;
  if found = false then
  Begin
    Showmessage('The User could not be found');
    exit;
  End;
end;

procedure TfrmManage.BitBtn13Click(Sender: TObject);
var
  irowNumber: integer;
  smessage: string;
begin
  irowNumber := DBGrid1.DataSource.DataSet.RecNo;
  smessage := ('Are you sure you want to delete selected record');
  // deleting a record

  if MessageDlg(smessage, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  begin
    dmwildlifesafari.tbltravelagent.Delete;
    dmwildlifesafari.tbltravelagent.refresh;
  end;

end;

procedure TfrmManage.BitBtn14Click(Sender: TObject);
begin
  frmManage.close;
  // frmManagermenu.show;
end;

procedure TfrmManage.BitBtn15Click(Sender: TObject);
var
  msg: string;
begin
  msg := ('So Soon.Are You Sure You Want To Exit?'); // exit button

  if MessageDlg(msg, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  begin
    frmHome.Show;
    frmManage.close;
  end;

end;

procedure TfrmManage.BitBtn16Click(Sender: TObject);
var
  sprice: string;
  rPrice: real;
begin
  if edt1.Text = '' then
  begin
    Showmessage('Please Enter A Price');
    exit;
  end;
  if edtCent1.Text = '' then
  begin
    edtCent1.Text := '00'
  end;
  sprice := edt1.Text + '.' + edtCent1.Text;
  rPrice := StrToFloat(sprice);
  dmwildlifesafari.tblsafaris.open; // Updating Ticket Prices
  dmwildlifesafari.tblsafaris.First;
  dmwildlifesafari.tblsafaris.edit;

  while not dmwildlifesafari.tblsafaris.Eof do
  Begin
    if dmwildlifesafari.tblsafaris['SafariID'] = '1' then
    begin
      dmwildlifesafari.tblsafaris['Cost Per adult'] := rPrice;

    end;
    dmwildlifesafari.tblsafaris.Next;
  End;

end;

procedure TfrmManage.BitBtn17Click(Sender: TObject);
var
  sprice: string;
  rPrice: real;
begin
  if edt2.Text = '' then
  begin
    Showmessage('Please Enter A Price');
    exit;
  end;
  if edtCent2.Text = '' then
  begin
    edtCent2.Text := '00'
  end;
  sprice := edt2.Text + '.' + edtCent2.Text;
  rPrice := StrToFloat(sprice);
  dmwildlifesafari.tblsafaris.open; // Updating Ticket Prices
  dmwildlifesafari.tblsafaris.First;
  dmwildlifesafari.tblsafaris.edit;

  while not dmwildlifesafari.tblsafaris.Eof do
  Begin
    if dmwildlifesafari.tblsafaris['SafariID'] = '2' then
    begin
      dmwildlifesafari.tblsafaris['Cost Per adult'] := rPrice;

    end;
    dmwildlifesafari.tblsafaris.Next;
  End;

end;

procedure TfrmManage.BitBtn18Click(Sender: TObject);
var
  sprice: string;
  rPrice: real;
begin
  if edt3.Text = '' then
  begin
    Showmessage('Please Enter A Price');
    exit;
  end;
  if edtCent3.Text = '' then
  begin
    edtCent3.Text := '00'
  end;
  sprice := edt3.Text + '.' + edtCent3.Text;
  rPrice := StrToFloat(sprice);
  dmwildlifesafari.tblsafaris.open; // Updating Ticket Prices
  dmwildlifesafari.tblsafaris.First;
  dmwildlifesafari.tblsafaris.edit;

  while not dmwildlifesafari.tblsafaris.Eof do
  Begin
    if dmwildlifesafari.tblsafaris['SafariID'] = '3' then
    begin
      dmwildlifesafari.tblsafaris['Cost Per adult'] := rPrice;

    end;
    dmwildlifesafari.tblsafaris.Next;
  End;

end;

procedure TfrmManage.BitBtn19Click(Sender: TObject);
var
  sprice: string;
  rPrice: real;
begin
  if edt4.Text = '' then
  begin
    Showmessage('Please Enter A Price');
    exit;
  end;
  if edtCent4.Text = '' then
  begin
    edtCent4.Text := '00'
  end;
  sprice := edt4.Text + '.' + edtCent4.Text;
  rPrice := StrToFloat(sprice);
  dmwildlifesafari.tblsafaris.open; // Updating Ticket Prices
  dmwildlifesafari.tblsafaris.First;
  dmwildlifesafari.tblsafaris.edit;

  while not dmwildlifesafari.tblsafaris.Eof do
  Begin
    if dmwildlifesafari.tblsafaris['SafariID'] = '4' then
    begin
      dmwildlifesafari.tblsafaris['Cost Per adult'] := rPrice;

    end;
    dmwildlifesafari.tblsafaris.Next;
  End;

end;

procedure TfrmManage.BitBtn1Click(Sender: TObject);
begin
  ExtractGuestdetails; // call in Procedure and Function
  if CheckValid(sCellNo, sIDno, sEmail) = false then
  begin
    Showmessage('Please Check your ID No ,Cell No or Email adress')
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
      tblguests['Username'] := sGuestUsername;
      tblguests['Password'] := sPassword;
      tblguests['Email Adress'] := sEmail;
      tblguests['Cell Phone'] := sCellNo;
      tblguests['ID Number'] := sIDno;

      tblguests.Post;
    end;
  end;

end;

procedure TfrmManage.BitBtn20Click(Sender: TObject);
var
  sprice: string;
  rPrice: real;
begin
  if edt5.Text = '' then
  begin
    Showmessage('Please Enter A Price');
    exit;
  end;
  if edtCent5.Text = '' then
  begin
    edtCent5.Text := '00'
  end;
  sprice := edt5.Text + '.' + edtCent5.Text;
  rPrice := StrToFloat(sprice);
  dmwildlifesafari.tblsafaris.open; // Updating Ticket Prices
  dmwildlifesafari.tblsafaris.First;
  dmwildlifesafari.tblsafaris.edit;

  while not dmwildlifesafari.tblsafaris.Eof do
  Begin
    if dmwildlifesafari.tblsafaris['SafariID'] = '5' then
    begin
      dmwildlifesafari.tblsafaris['Cost Per adult'] := rPrice;

    end;
    dmwildlifesafari.tblsafaris.Next;
  End;

end;

procedure TfrmManage.BitBtn21Click(Sender: TObject);
var
  sprice: string;
  rPrice: real;
begin
  if edt6.Text = '' then
  begin
    Showmessage('Please Enter A Price');
    exit;
  end;
  if edtCent6.Text = '' then
  begin
    edtCent6.Text := '00'
  end;
  sprice := edt6.Text + '.' + edtCent6.Text;
  rPrice := StrToFloat(sprice);
  dmwildlifesafari.tblsafaris.open; // Updating Ticket Prices
  dmwildlifesafari.tblsafaris.First;
  dmwildlifesafari.tblsafaris.edit;

  while not dmwildlifesafari.tblsafaris.Eof do
  Begin
    if dmwildlifesafari.tblsafaris['SafariID'] = '6' then
    begin
      dmwildlifesafari.tblsafaris['Cost Per adult'] := rPrice;

    end;
    dmwildlifesafari.tblsafaris.Next;
  End;

end;

procedure TfrmManage.btnUpdateGuestClick(Sender: TObject);
var
  found: boolean;
begin
  found := false;
  ExtractGuestdetails;
  sUsername := copy(sname, 1, length(sname));
  if CheckValid(sCellNo, sIDno, sEmail) = false then
  begin
    Showmessage('Please Check your ID No ,Cell No or Email adress');
    exit;
  end;
  with dmwildlifesafari do
  begin
    tblguests.open;
    tblguests.First;
    tblguests.edit;
    while not tblguests.Eof and found = false do
    begin
      if edtGuestID.Text = tblguests['GuestID'] then
      begin
        found := true;
        tblguests.open; // updating new Guest
        tblguests.edit;
        tblguests['First Name'] := sname;
        tblguests['Surname'] := sSurname;
        tblguests['Username'] := sGuestUsername;
        tblguests['Password'] := sPassword;
        tblguests['Email Adress'] := sEmail;
        tblguests['Cell Phone'] := sCellNo;
        tblguests['ID Number'] := sIDno;

      end;
      tblguests.Next;

    end;

  end;
  if found = false then
  Begin
    Showmessage('The User could not be found');
    exit;
  End;
end;

procedure TfrmManage.BitBtn3Click(Sender: TObject);
var
  irowNumber: integer;
  smessage: string;
begin
  irowNumber := DBGrid1.DataSource.DataSet.RecNo;
  smessage := ('Are you sure you want to delete selected record');
  // deleting a record

  if MessageDlg(smessage, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  begin
    dmwildlifesafari.tblguests.Delete;
    dmwildlifesafari.tblguests.refresh;
  end;

end;

procedure TfrmManage.btnaddaccomClick(Sender: TObject);
var
  rPrice: real;
  sprice: string;
begin
  ExtractAccomodationdetails;
  if (edtPriceaccomodation.Text = '') or (slodge = ' ') or
    (cmbRoomNumber.Text = '') then
  Begin
    Showmessage('Please make sure all fields are entered');
    exit;
  End;
  sprice := edtPriceaccomodation.Text + '.' + edtCents.Text;
  rPrice := StrToFloat(sprice);
  with dmwildlifesafari do
  begin

    tblaccomodation.open;
    tblaccomodation.Last;
    tblaccomodation.append;

    tblaccomodation['No Of Bedrooms'] := iNoofBeds;
    tblaccomodation['Type Of Lodge'] := slodge;
    tblaccomodation['Vacant'] := bAvailable;
    tblaccomodation['Price Per Night'] := (rPrice);
    tblaccomodation.Post;
  end;

end;

procedure TfrmManage.btnUpdateaccomClick(Sender: TObject);
var
  found: boolean;
  rPrice:real;
  sPrice:string;
begin
  found := false;
  ExtractAccomodationdetails;
  sRoomNumber := InttoStr(cmbRoomNumber.ItemIndex + 1);
  if (edtPriceaccomodation.Text = '') or (slodge = ' ') or
    (cmbRoomNumber.Text = '') then
  Begin
    Showmessage('Please make sure all fields are entered');
    exit;
  End;
  sprice := edtPriceaccomodation.Text + '.' + edtCents.Text;
  rPrice := StrToFloat(sprice);
  with dmwildlifesafari do
  begin
    tblaccomodation.open;

    tblaccomodation.First;

    while not tblaccomodation.Eof and found = false do
    begin
      if (sRoomNumber = tblaccomodation['RoomNumber']) then
      begin
        tblaccomodation.edit;
        found := true;
        tblaccomodation['No Of Bedrooms'] := iNoofBeds;
        tblaccomodation['Type Of Lodge'] := slodge;
        tblaccomodation['Vacant'] := bAvailable;
        tblaccomodation['Price Per Night'] := (rPrice);
        Showmessage('Database Updated Successfully!');
      end;
      tblaccomodation.Next;

    end;

  end;
  if found = false then
  Begin
    Showmessage('The Lodge specified could not be found');
    exit;
  End;
end;

procedure TfrmManage.BitBtn6Click(Sender: TObject);
begin
  { sSafari := lstsafaris.Items[lstsafaris.Itemindex];
    rPricesafari := strToFloat(edtPrice.Text);
    iNoofppl := spnnoOfppl.Value;
    sopeningTime := TimetoStr(DateTimePicker1.time);
    sClosingTime := TimetoStr(DateTimePicker2.time);
    bTourGuide := false;
    bVehicle := false; }

end;

procedure TfrmManage.btnUpdateActClick(Sender: TObject);
var
  sprice, sact: string;
  rPrice: real;
  Maxppl: integer;
  found:boolean;
begin
  sact := cmbActivities.Text;
  found:=False;
  if cmbActivities.ItemIndex = -1 then
  Begin
    Showmessage('Please Select an Activity');
    exit;
  End;
  if edtcost.Text = '' then
  begin
    Showmessage('Please Enter A Price');
    exit;
  end;
  if edtcent.Text = '' then
  begin
    edtcent.Text := '00'
  end;
  sprice := edtcost.Text + '.' + edtcent.Text;
  rPrice := StrToFloat(sprice);
  Maxppl := spnppl.Value;
  with dmwildlifesafari do
  begin
    tblactivities.open;
    tblactivities.First;
    tblactivities.edit;
    while not tblactivities.Eof and Found=false do
    begin
      if sact = tblactivities['Name Of Activity'] then
      begin
        tblactivities.open; //
        tblactivities.edit;
        tblactivities['Name Of Activity'] := sact;
        tblactivities['Max No of people Allowed'] := Maxppl;
        tblactivities['Opening Times'] := DateTimePicker4.Time;
        tblactivities['Closing Times'] := DateTimePicker3.Time;
        tblactivities['Cost Per person'] := rPrice;
       found:=True;
      end;
      tblactivities.Next;

    end;
  end;
   if found = false then
  Begin
    Showmessage('The Activity could not be found');
    exit;
  End;
end;

procedure TfrmManage.btnclearClick(Sender: TObject);
var
  iFilter: integer;
  ssearch: string;
begin
  with dmwildlifesafari do
  begin // display according to critera
    with tbltravelagent do
    begin
      case iFilter of
        0:
          Filter := '[TravelAgentID] LIKE ' + ssearch;
        // Employee ID    //Employee ID is an integer
        1:
          Filter := '[ID Number] LIKE ''%' + ssearch + '%''';
        // ID Number   //ID Number is a string
        2:
          Filter := 'Username LIKE ''%' + ssearch + '%'''; // Username
        3:
          Filter := '[First Name(s)] LIKE ''%' + ssearch + '%''';
        // First Name(s)
        4:
          Filter := 'Surname LIKE ''%' + ssearch + '%'''; // Surname
      end;
      Filtered := true; // will apply to all cases

    end;
  end;
end;

function TfrmManage.CheckValid(sID, sCell, sEmail: string): boolean;
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

procedure TfrmManage.ExtractAccomodationdetails;
begin
  iNoofBeds := spnnoofRooms.Value;
  slodge := rgpLodge.Items[rgpLodge.ItemIndex];
  bAvailable := false;
  if chkbAvailable.Checked then
    bAvailable := true;
  rAccomCost := StrToFloat(edtPriceaccomodation.Text);

  sRoomNumber := InttoStr(cmbRoomNumber.ItemIndex + 1);
end;

procedure TfrmManage.ExtractAgentDetails;
begin
  sAname := edtaname.Text; // Agent details
  // sAgentID := InttoStr(cmbagentFname.itemindex + 1);
  // sAgentID := dbedtAgentID.datafield;
  sAgentUsername := edtagentUsername.Text;
  sASurname := edtagentSurname.Text;
  saIDno := edtagentID.Text;
  sAEmail := edtagentEmail.Text;
  sACellNo := edtagentCell.Text;
  sAPassword := edtagentpassword.Text;
  saIDno := stringreplace(saIDno, '', '', [rfReplaceall]); // removes spaces
  sACellNo := stringreplace(sACellNo, '', '', [rfReplaceall]);

end;

procedure TfrmManage.ExtractGuestdetails;
begin
  sname := GuestName.Text;
  // sGuestID := dbedtGuestID.datafield;
  sGuestUsername := edtGUsername.Text;
  sSurname := edtSurname.Text;
  sIDno := edtID.Text;
  sEmail := edtEmail.Text;
  // sGuestID := InttoStr(cmbGuestFName.itemindex + 1);
  sCellNo := edtCell.Text;
  sPassword := edtpassword.Text;
  sIDno := stringreplace(sIDno, '', '', [rfReplaceall]); // removes spaces
  sCellNo := stringreplace(sCellNo, '', '', [rfReplaceall]);
end;

procedure TfrmManage.FormActivate(Sender: TObject);
begin
dmwildlifesafari.tblguests.Open;
  CurrencyString := 'R';
  PageControl1.ActivePageIndex := 0;
  TFloatField(dmwildlifesafari.tblactivities.FieldByName('Cost Per Person'))
    .currency := true;
  TFloatField(dmwildlifesafari.tblsafaris.FieldByName('Cost Per Adult'))
    .currency := true;
  TFloatField(dmwildlifesafari.tblaccomodation.FieldByName('Price Per Night'))
    .currency := true;
  cmbActivities.Clear;
  with dmwildlifesafari do
  begin
    tblactivities.open;
    tblactivities.First;
    while not tblactivities.Eof do
    begin
      cmbActivities.Items.Add(tblactivities['Name of Activity']);

      tblactivities.Next;

    end;
  end;

  with dmwildlifesafari do
  Begin
    tblaccomodation.open;
    tblaccomodation.First;
    while not tblaccomodation.Eof do
    Begin
      cmbRoomNumber.Items.Add(tblaccomodation['RoomNumber']);
      tblaccomodation.Next;

    End;
  end;

end;

procedure TfrmManage.rgpAFilterClick(Sender: TObject);
var
  ssearch: string;
begin
  ssearch := edtSearch2.Text;
  with dmwildlifesafari do
  begin // display according to critera
    with tbltravelagent do
    begin
      case rgpGFilter.ItemIndex of
        0:
          Filter := '[TravelAgentID] LIKE ' + ssearch;
        // Guest ID    //Employee ID is an integer
        1:
          Filter := '[ID Number] LIKE ''%' + ssearch + '%''';
        // ID Number   //ID Number is a string
        2:
          Filter := 'Username LIKE ''%' + ssearch + '%'''; // Username
        3:
          Filter := '[First Name] LIKE ''%' + ssearch + '%''';
        // First Name(s)
        4:
          Filter := 'Surname LIKE ''%' + ssearch + '%'''; // Surname
      end;
      Filtered := true; // will apply to all cases

    end;
  end;
end;

procedure TfrmManage.rgpGFilterClick(Sender: TObject);
var
  ssearch: string;
begin
  ssearch := edtsearch.Text;
  with dmwildlifesafari do
  begin // display according to critera
    with tblguests do
    begin
      case rgpGFilter.ItemIndex of
        0:
          Filter := '[GuestID] LIKE ' + ssearch;
        // Guest ID    //Employee ID is an integer
        1:
          Filter := '[ID Number] LIKE ''%' + ssearch + '%''';
        // ID Number   //ID Number is a string
        2:
          Filter := 'Username LIKE ''%' + ssearch + '%'''; // Username
        3:
          Filter := '[First Name] LIKE ''%' + ssearch + '%''';
        // First Name(s)
        4:
          Filter := 'Surname LIKE ''%' + ssearch + '%'''; // Surname
      end;
      Filtered := true; // will apply to all cases

    end;
  end;
end;

end.
