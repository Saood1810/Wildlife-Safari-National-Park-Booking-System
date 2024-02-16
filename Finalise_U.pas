unit Finalise_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, dmwildlifeSafari_U, Buttons, Grids, DBGrids,
  Spin, Mask, db, DBCtrls, ExtCtrls;

type
  TfrmmanageRecords = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    spnActID: TSpinEdit;
    spnGuestID: TSpinEdit;
    spnNoofTickets: TSpinEdit;
    dtpBooked: TDateTimePicker;
    dtpTimebooked: TDateTimePicker;
    dtsale: TDateTimePicker;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    spnSafariId: TSpinEdit;
    spnGstId: TSpinEdit;
    spnTAgentid: TSpinEdit;
    spntickets: TSpinEdit;
    dtbked: TDateTimePicker;
    dttimebked: TDateTimePicker;
    dtdatesale: TDateTimePicker;
    edtsaleAmount: TEdit;
    spnAgentID: TSpinEdit;
    BitBtn1: TBitBtn;
    rgpSort: TRadioGroup;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    rgpsearch: TRadioGroup;
    edtSearch: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Add: TBitBtn;
    Delete: TBitBtn;
    Update: TBitBtn;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    edtcent1: TEdit;
    Label1: TLabel;
    edtcent2: TEdit;
    rgp: TGroupBox;
    GroupBox3: TGroupBox;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    BitBtn6: TBitBtn;
    Edit1: TEdit;
    edtsales: TEdit;
    edtActId: TEdit;
    DBGrid1: TDBGrid;
    edtsafTrans: TEdit;
    procedure extractactivitiedetails();
    procedure extractsafariDetails();
    procedure BitBtn1Click(Sender: TObject);
    procedure rgpSortClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SetProperties();
    procedure UpdateClick(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmanageRecords: TfrmmanageRecords;
  // Global variables
  sActivityID, sline1, sline2, sline3: string;
  TF1, Tf2, TF3: textfile;
  icounter1, icounter2, icounter3: integer;
  sGuestId1, sAgentID1, stimebooked, sdatebooked, sDateOfSale, sactTransNo,
    sTotAct, sactid: string;
  rActsales, rcent2: real;
  iNoofActTickets: integer;
  // Safars
  sGuestId2, sAgentID2, stimebooked2, sdatebooked2, sDateOfSale2,
    sSafariTransNo, sTotsafari, ssafariID: string;
  rSafarisales, rcent1, rTotsafari: real;
  iNoofSafariTickets: integer;

implementation

{$R *.dfm}

procedure TfrmmanageRecords.AddClick(Sender: TObject);
begin

  extractsafariDetails;

  if (sSafariTransNo = '') or (sGuestId2 = '') or (sAgentID2 = '') or
    (edtsaleAmount.text = '') then
  Begin
    Showmessage('Please enter all relevant fiedls');
    exit;
  end;

  with dmwildlifesafari do
  begin
    tblsafariTickets.open;
    tblsafariTickets.Last;
    tblsafariTickets.Append;
    tblsafariTickets['SafariID'] := ssafariID;
    tblsafariTickets['GuestID'] := sGuestId2;
    tblsafariTickets['TravelAgentID'] := sAgentID2;
    tblsafariTickets['Time'] := dttimebked.Time;
    tblsafariTickets['Date Booked'] := dtbked.Date;
    tblsafariTickets['Date of Sale'] := dtdatesale.Date;
    tblsafariTickets['No of Tickets'] := iNoofSafariTickets;
    tblsafariTickets['Total Sales Amount'] := rTotsafari;
    tblsafariTickets.post;
    Showmessage('Sucessfully Added to Database!');
  end;

end;

procedure TfrmmanageRecords.BitBtn1Click(Sender: TObject);
var
  found: boolean;

begin
  extractactivitiedetails;
  // sactTransNo := edtActId;
  found := False;
  with dmwildlifesafari do
  begin

    tblactivityTickets.first;

    while not tblactivityTickets.Eof and found = False do
    begin
      if tblactivityTickets['ActivityTransactionNo'] = edtActId.text then
      begin
        found := True;
          tblactivityTickets.edit;
        tblactivityTickets['ActivityID'] := StrToInt(sactid);
        tblactivityTickets['GuestID'] := sGuestId1;
        tblactivityTickets['TravelAgentID'] := sAgentID1;
        tblactivityTickets['Time'] := dtpTimebooked.Time;
        tblactivityTickets['Date Booked For'] := dtpBooked.Date;
        tblactivityTickets['Date of Sale'] := dtsale.Date;
        tblactivityTickets['No of Tickets'] := iNoofActTickets;
        tblactivityTickets['Sales Amount'] := rActsales;

      end;
      tblactivityTickets.Next;

    end;

  end;
  if found = False then
  Begin
    Showmessage('The Transaction could not be found');
  End;
end;

procedure TfrmmanageRecords.BitBtn2Click(Sender: TObject);
begin
  dmwildlifesafari.tblactivityTickets.Sort := 'ActivityTransactionNo ASC ';
end;

procedure TfrmmanageRecords.BitBtn3Click(Sender: TObject);
var
  irowNumber: integer;
  smessage: string;
begin
  irowNumber := DBGrid1.DataSource.DataSet.RecNo;
  smessage := ('Are you sure you want to delete selected record');
  // deleting a record

  if MessageDlg(smessage, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  begin
    dmwildlifesafari.tblactivityTickets.Delete;
    dmwildlifesafari.tblactivityTickets.refresh;
  end;
end;

procedure TfrmmanageRecords.BitBtn4Click(Sender: TObject);
var
  sSearch: string;
begin

  sSearch := edtSearch.text;
  case rgpsearch.ItemIndex of
    0:
      begin
        dmwildlifesafari.tblactivityTickets.Filter :=
          'GuestID ''' + sSearch + '%''';
        dmwildlifesafari.tblactivityTickets.Filtered := True;
      end;
    1:
      begin
        dmwildlifesafari.tblactivityTickets.Filter :=
          'TravelAgentID LIKE ''' + sSearch + '%''';
        dmwildlifesafari.tblactivityTickets.Filtered := True;

      end;
    2:
      begin
        dmwildlifesafari.tblactivityTickets.Filter :=
          'ActivityID''' + sSearch + '%''';
        dmwildlifesafari.tblactivityTickets.Filtered := True;

      end;

  end;

end;

procedure TfrmmanageRecords.BitBtn5Click(Sender: TObject);
begin
  extractactivitiedetails;
  if  (sGuestId1 = '') or (sAgentID1 = '') or
    (edtsales.text = '') then
  Begin
    Showmessage('Please enter all relevant fiedls');
    exit;
  End;

  with dmwildlifesafari do
  begin
    tblactivityTickets.open; // Adding new Guest
    tblactivityTickets.Last;
    tblactivityTickets.Append;
    tblactivityTickets['ActivityID'] := StrToInt(sactid);
    tblactivityTickets['GuestID'] := sGuestId1;
    tblactivityTickets['TravelAgentID'] := sAgentID1;
    tblactivityTickets['Time'] := dtpTimebooked.Time;
    tblactivityTickets['Date Booked For'] := dtpBooked.Date;
    tblactivityTickets['Date of Sale'] := dtsale.Date;
    tblactivityTickets['No of Tickets'] := iNoofActTickets;
    tblactivityTickets['Sales Amount'] := rActsales;
    Showmessage('Sucessfully Added to Database!');
    tblactivityTickets.post;
  end;
end;

procedure TfrmmanageRecords.BitBtn6Click(Sender: TObject);
begin
  frmmanageRecords.Close;

end;

procedure TfrmmanageRecords.DeleteClick(Sender: TObject);
var
  found: boolean;
begin
  extractsafariDetails;
  with dmwildlifesafari do
  begin
    found := False;
    // tblsafariTickets.open;
    tblsafariTickets.first;

    // tblsafariTickets.edit;
    while not tblsafariTickets.Eof and found = False do
    begin
      if tblsafariTickets['SafariTransactionsNo'] = sSafariTransNo then
      begin
        tblsafariTickets.edit;
        tblsafariTickets['SafariID'] := ssafariID;
        tblsafariTickets['GuestID'] := sGuestId2;
        tblsafariTickets['TravelAgentID'] := sAgentID2;
        tblsafariTickets['Time'] := dttimebked.Time;
        tblsafariTickets['Date Booked'] := dtbked.Date;
        tblsafariTickets['Date of Sale'] := dtdatesale.Date;
        tblsafariTickets['No of Tickets'] := iNoofSafariTickets;
        tblsafariTickets['Total Sales Amount'] := rTotsafari;
        found := True;
        Showmessage('Sucessfully updated Database!');

      end;
      tblsafariTickets.Next;

    end;

  end;
  if found = False then
  Begin
    Showmessage('The Transaction could not be found');
  End;
end;

procedure TfrmmanageRecords.extractactivitiedetails;
// sGuestId1, sAgentID1, stimebooked, sdatebooked: string;
// rActsales: real;
// iNoofActTickets: integer;
begin
  sactTransNo := edtActId.text;
  sactid := IntToStr(spnActID.Value);
  sGuestId1 := IntToStr(spnGuestID.Value);
  sAgentID1 := IntToStr(spnAgentID.Value);
  stimebooked := TimeToStr(dtpTimebooked.Time);
  sdatebooked := DateToStr(dtpBooked.Date);
  sDateOfSale := DateToStr(dtsale.Date);
  iNoofActTickets := spnNoofTickets.Value;
  // rActsales := StrToFloat(edtsales.text);
  if edtcent2.text = '' then
  begin
    edtcent2.text := '00'
  end;
  sTotAct := edtsales.text + '.' + edtcent2.text;
  rActsales := StrtoFloat(sTotAct);

end;

procedure TfrmmanageRecords.extractsafariDetails;
begin
  { sGuestId2, sAgentID2, stimebooked2, sdatebooked2, sDateOfSale2,
    sSafariTransNo: string;
    rSafarisales: real;
    iNoofSafariTickets: integer; }

  sGuestId2 := IntToStr(spnGstId.Value);
  sAgentID2 := IntToStr(spnTAgentid.Value);
  ssafariID := IntToStr(spnSafariId.Value);
  stimebooked2 := TimeToStr(dttimebked.Time);
  sdatebooked2 := DateToStr(dtbked.Date);
  sDateOfSale2 := DateToStr(dtdatesale.Date);
  iNoofSafariTickets := spntickets.Value;
  rSafarisales := StrtoFloat(edtsaleAmount.text);
  rcent1 := StrtoFloat(edtcent1.text);
  sSafariTransNo := edtsafTrans.Text;
  if edtcent1.text = '' then
  begin
    edtcent1.text := '00'
  end;
  sTotsafari := edtsaleAmount.text + '.' + edtcent1.text;
  rTotsafari := StrtoFloat(sTotsafari);

end;

procedure TfrmmanageRecords.FormActivate(Sender: TObject);
begin
  TFloatField(dmwildlifesafari.tblactivityTickets.FieldByName('Sales Amount'))
    .currency := True; // Formatting To Currency
  TFloatField(dmwildlifesafari.tblsafariTickets.FieldByName
      ('Total Sales Amount')).currency := True;


    // tblactivityTickets.open;

  end;


procedure TfrmmanageRecords.rgpSortClick(Sender: TObject);
begin
  case rgpSort.ItemIndex of
    0:
      begin
        dmwildlifesafari.tblactivityTickets.Sort := ' [Sales Amount] DESC';
      end;

    1:
      begin // sorting out the info
        dmwildlifesafari.tblactivityTickets.Sort := '[Sales Amount] ASC';
      end;

    2:
      begin
        dmwildlifesafari.tblactivityTickets.Sort := '[GuestID] ASC';
      end;

    3:
      begin
        dmwildlifesafari.tblactivityTickets.Sort := '[TravelAgentID] ASC';
      end;

  end;
end;

procedure TfrmmanageRecords.SetProperties;
begin
  spnActID.MinValue := 1;
  spnGuestID.MinValue := 1;
  spnAgentID.MinValue := 1;
  spnNoofTickets.MinValue := 1;

  spnActID.MaxValue := 14;
  spnGuestID.MaxValue := 30;
  spnAgentID.MaxValue := 14;
  spnNoofTickets.MaxValue := 20;
  edtsales.Clear;
end;

procedure TfrmmanageRecords.UpdateClick(Sender: TObject);
var
  irowNumber: integer;
  smessage: string;
begin
  irowNumber := DBGrid2.DataSource.DataSet.RecNo;
  smessage := ('Are you sure you want to delete selected record');
  // deleting a record

  if MessageDlg(smessage, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  begin
    dmwildlifesafari.tblsafariTickets.Delete;
    dmwildlifesafari.tblsafariTickets.refresh;
  end;

end;

end.
