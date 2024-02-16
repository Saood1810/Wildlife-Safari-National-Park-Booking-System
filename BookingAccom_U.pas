unit BookingAccom_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons, dateUtils, dmWildlifeSafari_u, ExtCtrls,
  Grids,
  DBGrids, Calendar, ComCtrls,
  jpeg, Mask, DBCtrls;

type
  Tfrmaccomodation = class(TForm)
    PageControl1: TPageControl;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    lstprices: TListBox;
    DBEdit1: TDBEdit;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn3: TBitBtn;
    dbedtroomnumber: TDBEdit;
    redoutput: TRichEdit;
    DBGrid1: TDBGrid;
    cmbsort: TComboBox;
    Label7: TLabel;
    rgpLodges: TRadioGroup;
    procedure BitBtn3Click(Sender: TObject);

    procedure BitBtn2Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure rgpLodgesClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaccomodation: Tfrmaccomodation;

implementation

{$R *.dfm}

procedure Tfrmaccomodation.BitBtn2Click(Sender: TObject);
begin
  with dmwildlifesafari do
  begin

  end;
end;

procedure Tfrmaccomodation.BitBtn3Click(Sender: TObject);
var
  rCostPerNight, rTotalcost: real;
  slodgetype: string;
  scheckindate, scheckoutdate, sCheckinday, scheckoutday, smonth1, smonth2,
    sRoomNumber: string;
  iNoofNights, icheckin, icheckout, imonth1, imonth2: integer;

  rCost, rTotal: real;
  // this will be used if user books in 2 diff months
  iNightsinFirstMonth, iNightsinSecondMonth, iroomNo: integer;
begin

  sRoomNumber := (dbedtroomnumber.datafield);
  // iroomNo := StrToInt(dbedtroomnumber.datafield);

  with dmwildlifesafari do
  begin
    tblaccomodation.open;
    tblaccomodation.First;
    while not tblaccomodation.Eof do
    begin
      if (sRoomNumber = tblaccomodation['Room Number']) then
      begin
        rCostPerNight := tblaccomodation['Price Per Night'];
        slodgetype := tblaccomodation['Type of Lodge'];

      end;
      tblaccomodation.Next;
    end;
  end;

  // Trying To work out the No Of Nights
  scheckindate := Datetostr(DateTimePicker1.date);
  scheckoutdate := Datetostr(DateTimePicker2.date);

  icheckin := dayof(DateTimePicker1.date);
  icheckout := dayof(DateTimePicker2.date);
  // This needs to be knwon incase the guest books in one month and cehcks out in another month

  imonth1 := MonthOf(DateTimePicker1.date);
  imonth2 := MonthOf(DateTimePicker2.date);
  // if is not in the same month

  if (imonth1 <> imonth2) then
  begin
    // these months have 31 days
    if imonth1 in [1, 3, 5, 7, 8, 10, 12] then
    begin
      iNightsinFirstMonth := 31 - icheckin;
      iNoofNights := iNightsinFirstMonth + icheckout; // total No Of Nights

    end;
    // these months hav 30 days
    if imonth1 in [4, 6, 9, 11] then
    begin
      iNightsinFirstMonth := 30 - icheckin;
      iNoofNights := iNightsinFirstMonth + icheckout;

    end;
    // february
    if imonth1 = 2 then
    begin
      // since feb 2020 is leap year
      iNightsinFirstMonth := 29 - icheckin;
      iNoofNights := icheckout + iNightsinFirstMonth;
    end;
  end
  else
  begin
    iNoofNights := icheckout - icheckin;
    // Selecting Price according
    // lstprices.ItemIndex := 1 + iroomNo;
    // rCostPerNight := StrToFloat(lstprices.Items[lstprices.ItemIndex]);
    rTotalcost := iNoofNights * rCostPerNight;
  end;

  { if (imonth1 = imonth2) then begin
    iNoofNights := icheckout - icheckin;
    // Selecting Price according
    //lstprices.ItemIndex := 1 + iroomNo;
    // rCostPerNight := StrToFloat(lstprices.Items[lstprices.ItemIndex]);
    rTotalcost := iNoofNights * rCostPerNight;
    end; }

  // Displaying Tikcet
  redoutput.Paragraph.TabCount := 2;
  redoutput.Paragraph.Tab[0] := 10;
  redoutput.Paragraph.Tab[1] := 100;
  redoutput.Lines.Add('Booking Details');
  redoutput.Lines.Add('Guest:''sGuestUsername');
  redoutput.Lines.Add(Datetostr(Now) + ' ' + TimeToStr(Now));
  redoutput.Lines.Add('Check in Date' + scheckindate);
  redoutput.Lines.Add('Check Out Date' + scheckoutdate);
  redoutput.Lines.Add('Total No of Nights');
  redoutput.Lines.Add('====================');
  redoutput.Lines.Add('Total Cost' + #9 + FloattoStrf
      (rTotalcost, ffcurrency, 5, 2));

end;

procedure Tfrmaccomodation.FormActivate(Sender: TObject);
begin
  { lstprices.Clear;

    dmwildlifesafari.tblaccomodation.open;
    dmwildlifesafari.tblaccomodation.First;
    with dmwildlifesafari do
    begin
    while not tblaccomodation.Eof do
    begin
    lstprices.Items.Add(FloattoStr(tblaccomodation['Price Per Night']));
    tblaccomodation.Next;

    end;
    // tblaccomodation.Close;
    end; }

end;

procedure Tfrmaccomodation.rgpLodgesClick(Sender: TObject);
var
  sSearch: string;
begin

  with dmwildlifesafari do
  begin
    tblaccomodation.Filtered := false;
    case rgpLodges.ItemIndex of
      0:
        begin
          sSearch := 'Luxury and Deluxe Tented Lodge';

          tblaccomodation.Filter := 'Type of Lodge LIKE ''' + sSearch + '%''';
          tblaccomodation.Filtered := true;
        end;
      1:
        begin
          sSearch := 'Classic';

          tblaccomodation.Filter := 'Type of Lodge LIKE ''' + sSearch + '%''';
          tblaccomodation.Filtered := true;
        end;

    end;
  end; // end of with

end;

procedure Tfrmaccomodation.TabSheet2Show(Sender: TObject);
begin
  // You cant book for something after the date has passed
  DateTimePicker1.MinDate := (Now);
  DateTimePicker2.MinDate := (Tomorrow);

end;

end.
