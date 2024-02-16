unit BookingAccomodation_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Printers, Grids, DBGrids, StdCtrls, dmWildlifeSafari_U, dateUtils,
  ComCtrls,
  Mask, DBCtrls, Buttons, ExtCtrls, math, db, jpeg, CheckLst;

type
  TfrmBookAccom = class(TForm)
    PageControl1: TPageControl;
    tbinfo: TTabSheet;
    tbBook: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    btnCalculateCost: TBitBtn;
    cmbRoomnumber: TComboBox;
    redoutput: TRichEdit;
    tbSafaris: TTabSheet;
    cmbPrices: TComboBox;
    GroupBox2: TGroupBox;
    imgviews: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Timer1: TTimer;
    Image1: TImage;
    Image2: TImage;
    cmbSort: TComboBox;
    Label2: TLabel;
    ChkExtra: TCheckListBox;
    Label3: TLabel;
    btnBook: TBitBtn;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    btnPrint: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure btnCalculateCostClick(Sender: TObject);
    Procedure ClearEverything();
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cmbSortChange(Sender: TObject);
    procedure btnBookClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBookAccom: TfrmBookAccom;
  sGuestUsername, sGuestID, sGuestFname, sGuestsurname: string;
  sFAgentName, sAgentSurname: String;
  icounta: integer = 1;
  iTravelAgentId: integer;
  rCostPerNight, rTotalcost: real;
  slodgetype: string;
  scheckindate, scheckoutdate, sCheckinday, scheckoutday, smonth1, smonth2,
    sRoomNumber, sCostPerNight: string;
  iNoofNights, icheckin, icheckout, imonth1, imonth2: integer;

  rCost, rTotal: real;

implementation

uses guestMenu_U;
{$R *.dfm}

procedure TfrmBookAccom.btnBookClick(Sender: TObject);
var
  sID, semail, spassword, sGuest, sdate: string;
  bvalid: Boolean;
begin
  btnBook.Enabled := False;
  btnPrint.Enabled := True;
  spassword := InputBox('', 'Please enter Your Password for Security purposes',
    '');

  if spassword = '' then
  begin
    Showmessage('Please enter Your Password');
    Exit;
  end;

  with dmwildlifesafari do
  begin
    tblGuests.Open;
    while not tblGuests.eof do
    begin // wrong Password
      if (dmwildlifesafari.tblGuests['username'] = sGuestUsername) and
        (dmwildlifesafari.tblGuests['Password'] <> spassword) then
      begin
        Showmessage('Incorrect Password');
        Exit;
      end;

      tblGuests.Next;

    end;
    btnPrint.visible := True;
    tblAccom.Open;
    tblAccom.Last;
    tblAccom.Append;

    tblAccom['RoomNumber'] := IntToStr(cmbRoomnumber.ItemIndex + 1);
    tblAccom['GuestID'] := sGuestID;

    tblAccom['Sales Amount'] := rTotalcost;
    tblAccom['Check in Date'] := DateTimePicker1.date;
    tblAccom['Check Out Date'] := DateTimePicker2.time;
    tblAccom['TravelAgentID'] := IntToStr(iTravelAgentId);
    tblAccom['Date of Sale'] := (now);
    tblAccom.Post;
    Showmessage('You Have Successfully booked Room Number ' + IntToStr
        (cmbRoomnumber.ItemIndex + 1) + ' For' + scheckindate + ' Till ' +
        scheckoutdate);
    btnBook.Enabled := False;
    // ClearEverything;
  end;
end;

procedure TfrmBookAccom.BitBtn1Click(Sender: TObject);
begin
  tbinfo.Show;
end;

procedure TfrmBookAccom.BitBtn2Click(Sender: TObject);
begin
  tbBook.Show;
end;

procedure TfrmBookAccom.BitBtn3Click(Sender: TObject);
begin
  ClearEverything;

  btnBook.Enabled := False;
  btnPrint.Enabled := False;
  ChkExtra.ItemIndex := -1;

  btnCalculateCost.Enabled := True;
  redoutput.Lines.Clear;
  cmbPrices.ItemIndex := -1;
  cmbRoomnumber.ItemIndex := -1;
end;

procedure TfrmBookAccom.btnCalculateCostClick(Sender: TObject);
var

  // this will be used if user books in 2 diff months
  iNightsinFirstMonth, iNightsinSecondMonth, iroomNo: integer;
begin
  if cmbRoomnumber.Text = '' then
  begin
    Showmessage('Please Select a Lodge you would like to Book');
    Exit;
  end;

  sRoomNumber := IntToStr(cmbRoomnumber.ItemIndex + 1);
  // iroomNo := StrToInt(sRoomNumber);
  cmbPrices.ItemIndex := cmbRoomnumber.ItemIndex;
  rCostPerNight := strtoFloat(cmbPrices.items[cmbPrices.ItemIndex]);

  if cmbRoomnumber.ItemIndex = -1 then
  Begin
    Showmessage('Please Select a Lodge');
    Exit;
  End;

  with dmwildlifesafari do

  begin
    tblaccomodation.Open;
    tblaccomodation.First;

    while not tblaccomodation.eof do
    begin
      if tblaccomodation['RoomNumber'] = sRoomNumber then
      begin
        if tblaccomodation['Vacant'] = False then
        Begin
          Showmessage('Sorry This Lodge is not available!');
          Exit;
        End;

        // rCostPerNight := tblaccomodation['Price Per Night'];
        slodgetype := tblaccomodation['Type of Lodge'];

      end;
      tblaccomodation.Next;
    end;
  end;
  // If the Check in Monthh is after the checkout Month
  if MonthOf(DateTimePicker1.date) > MonthOf(DateTimePicker2.date) Then
  Begin
    Showmessage('Please Check Your check in and Chec Out dates Properly!');
  End;
  // If Checkout Day is before checki in Day

  if (MonthOf(DateTimePicker1.date) = MonthOf(DateTimePicker2.date)) and
    (dayof(DateTimePicker1.date) > dayof(DateTimePicker2.date)) then
  Begin
    Showmessage('Please Check Your check in and Chec Out dates Properly!');
    Exit;
  End;

  if (dayof(DateTimePicker1.date) = dayof(DateTimePicker2.date)) then
  Begin
    Showmessage('Sorry But You cannot Check in and Check out The same day');
    Exit;
  End;

  // Trying To work out the No Of Nights
  scheckindate := Datetostr(DateTimePicker1.date);
  scheckoutdate := Datetostr(DateTimePicker2.date);

  icheckin := dayof(DateTimePicker1.date);
  icheckout := dayof(DateTimePicker2.date);
  // This needs to be knwon incase the guest books in one month and cehcks out in another month

  imonth1 := MonthOf(DateTimePicker1.date);
  imonth2 := MonthOf(DateTimePicker2.date);
  // rCostPerNight := 5;

  if imonth1 = imonth2 then
  begin

    iNoofNights := icheckout - icheckin;
    rTotalcost := iNoofNights * rCostPerNight;
    // if is not in the same month

  end;

  if (imonth1 <> imonth2) then
  begin
    // these months have 31 days
    if (imonth1 in [1, 3, 5, 7, 8, 10, 12]) then
    begin
      iNightsinFirstMonth := 31 - icheckin;
      iNoofNights := iNightsinFirstMonth + icheckout; // total No Of Nights
      rTotalcost := iNoofNights * rCostPerNight;
    end;
    // these months hav 30 days
    if (imonth1 in [4, 6, 9, 11]) then
    begin
      iNightsinFirstMonth := 30 - icheckin;
      iNoofNights := iNightsinFirstMonth + icheckout;
      rTotalcost := iNoofNights * rCostPerNight;
    end;
    // february
    if imonth1 = 2 then
    begin
      // since feb 2020 is leap year
      iNightsinFirstMonth := 29 - icheckin;
      iNoofNights := icheckout + iNightsinFirstMonth;
    end;

  end;
  btnBook.Enabled := True;
  with redoutput do
  begin
    Lines.add('     WILDLIFE SAFARI NATIONAL PARK    ');
    Lines.add('               DURBAN           ');
    Lines.add('               SOUTH AFRICA          ');
    Lines.add('          TEL: (031)209 7895         ');
    Lines.add('===========================');
    Lines.add(Datetostr(now));
    Lines.add(TimetoStr(now));
    Lines.add('Travel Agent: ' + sFAgentName + ' ' + sAgentSurname);
    Lines.add('Guest: ' + sGuestFname + ' ' + sGuestsurname);
  end;
  redoutput.Paragraph.TabCount := 2;
  redoutput.Paragraph.Tab[0] := 10;
  redoutput.Paragraph.Tab[1] := 90;
  redoutput.Lines.add('Booking Details');

  redoutput.Lines.add('====================');
  redoutput.Lines.add('Room Number' + #9 + sRoomNumber);
  redoutput.Lines.add('Lodge' + #9 + slodgetype);
  redoutput.Lines.add('Check in Date' + #9 + scheckindate);
  redoutput.Lines.add('Check Out Date' + #9 + scheckoutdate);
  redoutput.Lines.add('Total No of Nights' + #9 + IntToStr(iNoofNights)
      + ' @' + FloatToStrF(rCostPerNight, ffcurrency, 6, 2) + ' Per Night');

  // These are the additional costs that are requested by the customers
  if ChkExtra.Checked[0] then
  Begin
    redoutput.Lines.add('Ordered Clean linen ' + #9 + 'R100');
    rTotalcost := rTotalcost + 50;
  End;
  if ChkExtra.Checked[1] then
  Begin
    redoutput.Lines.add('Ordered Cleaning Service' + #9 + 'R100');
    rTotalcost := rTotalcost + 50;
  End;
  if ChkExtra.Checked[2] then
  Begin
    redoutput.Lines.add('Hired Table Tennis set' + #9 + 'R80');
    rTotalcost := rTotalcost + 50;
  End;
  if ChkExtra.Checked[3] then
  Begin
    redoutput.Lines.add('Hired Board Game' + #9 + 'R50');
    rTotalcost := rTotalcost + 50;
  End;
  if ChkExtra.Checked[4] then
  Begin
    redoutput.Lines.add('Hired Pool table' + #9 + 'R200');
    rTotalcost := rTotalcost + 200;
  End;
  btnCalculateCost.Enabled := False;
  redoutput.Lines.add('====================');
  redoutput.Lines.add('Total Cost' + #9 + FloatToStrF
      (rTotalcost, ffcurrency, 5, 2));
  btnBook.Enabled := True;
  btnCalculateCost.Enabled := False;
end;

procedure TfrmBookAccom.btnPrintClick(Sender: TObject);
var
  i: integer;
  PrintFile: textfile;
  printDialog: TPrintDialog;
begin
  // print the receipt
  btnPrint.Enabled := False;
  printDialog := TPrintDialog.Create(frmBookAccom);

  if printDialog.Execute then
  begin
    AssignPrn(PrintFile);
    Rewrite(PrintFile);

    for i := 0 to redoutput.Lines.Count do
    begin
      Writeln(PrintFile, redoutput.Lines[i]);
    end;

    CloseFile(PrintFile);

  end;

  printDialog.Free;
end;

procedure TfrmBookAccom.BitBtn5Click(Sender: TObject);
begin
  frmBookAccom.Close;
  frmguestmenu.Show;
end;

procedure TfrmBookAccom.ClearEverything;
begin
  redoutput.Lines.Clear;

end;

procedure TfrmBookAccom.cmbSortChange(Sender: TObject);
begin
  // sorting Records
  { Price
    No Of Rooms
    Star Ratings
    Room number }

  case cmbSort.ItemIndex of
    0:
      begin
        dmwildlifesafari.tblaccomodation.Sort := ' [Price Per Night] ASC ';
      end;
    1:
      begin
        dmwildlifesafari.tblaccomodation.Sort := ' [No Of Bedrooms] ASC ';
      end;
    2:
      begin
        dmwildlifesafari.tblaccomodation.Sort := ' [Star Ratings] DESC ';
      end;
    3:
      begin
        dmwildlifesafari.tblaccomodation.Sort := ' [Type Of Lodge] ASC ';
      end;

    4:
      begin
        dmwildlifesafari.tblaccomodation.Sort := ' [RoomNumber] ASC ';
      end;

  end;
end;

procedure TfrmBookAccom.FormActivate(Sender: TObject);
begin
  CurrencyString := 'R';
  TFloatField(dmwildlifesafari.tblaccomodation.FieldByName('Price Per Night'))
    .currency := True;
  ClearEverything;
  ChkExtra.ItemIndex := -1;
  PageControl1.ActivePageIndex := 0;
  btnCalculateCost.Enabled := True;
  redoutput.Lines.Clear;
  cmbPrices.ItemIndex := -1;
  cmbRoomnumber.ItemIndex := -1;
  btnCalculateCost.Enabled := True;
  btnBook.Enabled := False;
  btnPrint.Enabled := False;
  with dmwildlifesafari do
  begin

    tblaccomodation.Open;
    tblaccomodation.Refresh; // Putting Prices per person from tblactivities into a lsitbox
    tblaccomodation.First;
    while not tblaccomodation.eof do
    begin
      cmbRoomnumber.items.add(tblaccomodation['Roomnumber']);
      cmbPrices.items.add(FloatToStr(tblaccomodation['Price Per Night']));
      tblaccomodation.Next;
    end;

  end;
  cmbPrices.visible := False;
  TFloatField(dmwildlifesafari.tblaccomodation.FieldByName('Price Per Night'))
    .currency := True;

  iTravelAgentId := RandomRange(1, 7);
  dmwildlifesafari.tbltravelAgent.Open;
  dmwildlifesafari.tbltravelAgent.First;

  while not dmwildlifesafari.tbltravelAgent.eof do
  Begin
    if dmwildlifesafari.tbltravelAgent['TravelAgentID'] = IntToStr
      (iTravelAgentId) then
    begin
      sFAgentName := dmwildlifesafari.tbltravelAgent['First Name'];
      sAgentSurname := dmwildlifesafari.tbltravelAgent['Surname'];

    End;
    dmwildlifesafari.tbltravelAgent.Next;
  End;
  sGuestUsername := frmguestmenu.Label2.Caption;
  // sGuestID := frmGuestMenu.Label5.Caption;
  // Getting the Guests Details
  while not dmwildlifesafari.tblGuests.eof do
  Begin
    if dmwildlifesafari.tblGuests['Username'] = sGuestUsername then
    begin
      sGuestFname := dmwildlifesafari.tblGuests['First Name'];
      sGuestsurname := dmwildlifesafari.tblGuests['Surname'];
      sGuestID := dmwildlifesafari.tblGuests['GuestID'];
    End;
    dmwildlifesafari.tblGuests.Next;
  End;
end;

procedure TfrmBookAccom.Timer1Timer(Sender: TObject);

begin

  imgviews.Picture.LoadFromFile('Lodges' + IntToStr(icounta) + '.jpg');
  inc(icounta);
  if icounta > 4 then
    icounta := 1;

end;

end.
