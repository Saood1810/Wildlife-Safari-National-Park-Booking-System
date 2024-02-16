unit bookingSafari_U;

interface

uses
  Windows, Printers, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms,
  Dialogs, Grids, DBGrids, StdCtrls, math, dmwildlifeSafari_u, ExtCtrls,
  Spin, Dateutils, db,
  ComCtrls, checkout_U,
  Buttons, jpeg, pngimage;

type
  TfrmBook = class(TForm)
    Label1: TLabel;
    PageControl1: TPageControl;
    tbSafaris: TTabSheet;
    Label3: TLabel;
    btnProceed: TBitBtn;
    Redoutput: TRichEdit;
    btnback: TBitBtn;
    tbActivities: TTabSheet;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    lstbxPrices: TListBox;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    BtnDisptick: TBitBtn;
    redout: TRichEdit;
    cmbPrices: TComboBox;
    BtnBookactivities: TBitBtn;
    btncheckout2: TBitBtn;
    Label17: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label13: TLabel;
    lbldate: TLabel;
    lbltime: TLabel;
    Timer1: TTimer;
    Label14: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Timer2: TTimer;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    grpAdults: TGroupBox;
    lblAdults: TLabel;
    Label22: TLabel;
    cmbAdults: TComboBox;
    grpKids: TGroupBox;
    lblKids: TLabel;
    Label23: TLabel;
    cmbKids: TComboBox;
    spnAdults1: TSpinEdit;
    spnChildren2: TSpinEdit;
    cmbActivity: TComboBox;
    reddisplay: TRichEdit;
    RichEdit1: TRichEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    cmbadult: TComboBox;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label24: TLabel;
    cmbkid: TComboBox;
    spnAdults: TSpinEdit;
    spnChildren: TSpinEdit;
    GroupBox4: TGroupBox;
    cmbSafari: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    rgpSort1: TRadioGroup;
    rgpsort2: TRadioGroup;
    btnPrintact: TBitBtn;
    btnbook: TBitBtn;
    GroupBox5: TGroupBox;
    chkVehicle: TCheckBox;
    btnClear: TBitBtn;
    BitBtn1: TBitBtn;
    procedure btnProceedClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnDisptickClick(Sender: TObject);
    procedure BtnBookactivitiesClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure rgpSort1Click(Sender: TObject);

    procedure rgpsort2Click(Sender: TObject);
    procedure btncheckout2Click(Sender: TObject);
    procedure btnbookClick(Sender: TObject);
    procedure btnPrintactClick(Sender: TObject);
    procedure btnbackClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnClearClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBook: TfrmBook;
  itravelAgentID: integer;
  stravelAgentID, sFAgentName, sAgentSurname, sGuestFname,
    sGuestsurname: string;
  iSafariID: integer;
  rArrPrice: array [1 .. 70] of real;
  // safaris
  sdatebooked1, stimebooked1: string;
  sGuestID, sGuestUsername, sSafariID: string;
  sSafari: string;
  // Variables for Activities Bookings
  sAct: string;
  iAct: integer;
  sActivity, sprice, sactID, sagent2, sAgent1: string;
  iNoofAdults, iTottickets, iNoofchildren, ItotalTickets, AgentID1,
    agentID2: integer;
  rAdult, rChildren, rPrice, rTotal1, rTotal: real;
  sDateBooked2: string; // global variables
  stimebooked2: string;
  TF: textfile;
  sLine: string;

implementation

uses Login_U, guestMenu_U;
{$R *.dfm}

procedure TfrmBook.BtnDisptickClick(Sender: TObject);
var
  itime, iactID, maxNo: integer;
  bValidTime, bfound: Boolean;
  rdiscount: real; // local variables
  tf2: textfile;
  sLine, sDiscountcode: string;
begin
  // BtnBookactivities.Enabled := True;
  redout.Lines.Clear;
  bValidTime := true;

  sActivity := cmbActivity.Text;
  iNoofAdults := spnAdults1.Value;

  // If not all the data is filled in
  if (sActivity = '') or (iNoofAdults = 0) then
  Begin
    Showmessage('Please Enter all relevant Fields');
    Exit;
  End;

  case cmbActivity.ItemIndex of
    0:
      begin
        maxNo := 8; // this is the limit for No Of People
      end; // That can partake in the activity
    1:
      begin
        maxNo := 4;
      end;
    2:
      begin
        maxNo := 6;
      end;
    3:
      begin
        maxNo := 4;
      end;
    4:
      begin // User cant book above these
        maxNo := 6;
      end;
    5:
      begin
        maxNo := 2;
      end;
    6:
      begin
        maxNo := 6;
      end;
    7:
      begin
        maxNo := 6;
      end;
    8:
      begin
        maxNo := 2;
      end;

  end;
  // no of tickets
  iNoofchildren := spnChildren2.Value;
  ItotalTickets := iNoofAdults + iNoofchildren;
  BtnBookactivities.Enabled := true;
  if ItotalTickets > maxNo then // if Too many people booked
  begin
    Showmessage('Sorry Too many people cant go on the same activity');
    Exit;
  end;
  iactID := cmbActivity.ItemIndex + 1;

  sactID := IntToStr(iactID); // assigning random agent to make the sale
  agentID2 := RandomRange(1, 7);
  sagent2 := IntToStr(agentID2);
  if (cmbActivity.ItemIndex = 5) or (cmbActivity.ItemIndex = 8) then
    spnChildren2.Enabled := false; // minors arent allowed to go on these activities

  cmbPrices.ItemIndex := cmbActivity.ItemIndex;
  // this combobox will not be visisble as its sole purpose is to store prices
  // // If a certain activity is selected then the price must get extarcted from the combo box
  rPrice := strToFloat(cmbPrices.Items[cmbPrices.ItemIndex]);

  iNoofAdults := spnAdults1.Value; // No of adults booked for

  iNoofchildren := spnChildren2.Value;
  ItotalTickets := iNoofAdults + iNoofchildren; // Working Out price
  rAdult := iNoofAdults * rPrice;
  rChildren := iNoofchildren * rPrice * 0.8;
  redout.Paragraph.TabCount := 3;
  redout.Paragraph.Tab[0] := 10;
  redout.Paragraph.Tab[1] := 100; // tab stops
  redout.Paragraph.Tab[2] := 115;
  // total cost for trip
  rTotal1 := rChildren + rAdult;

  sDateBooked2 := Datetostr(DateTimePicker3.date); // Date and time booked for
  stimebooked2 := TimetoStr(DateTimePicker4.time);

  // validating that Guests do not book after the permitted times
  if (HourOf(DateTimePicker4.time) > 17) or (HourOf(DateTimePicker4.time) < 9)
    and (iactID < 8) then
  Begin
    bValidTime := false;
    Showmessage('Sorry,You cannot book this activity at this time');
    Exit;
  End;

  if bValidTime = true then
  begin
    with redout do // Displayig Top part of ticket
    begin
      Lines.Add('            WILDLIFE SAFARI NATIONAL PARK      ');
      Lines.Add('                   DURBAN             ');
      Lines.Add('                SOUTH AFRICA           ');
      Lines.Add('             TEL: (031)209 7895          ');
      Lines.Add('================================');
      Lines.Add(Datetostr(now));
      Lines.Add(TimetoStr(now));
      Lines.Add('Travel Agent: ' + sFAgentName + ' ' + sAgentSurname);
      Lines.Add('Guest: ' + sGuestFname + ' ' + sGuestsurname);
    end;

    if iNoofchildren <> 0 then // If theres children that are booked
    begin
      redout.Lines.Add(#13 + 'Order Summary' + #13);
      redout.Lines.Add('Name of Activity:' + #9 + sActivity);
      redout.Lines.Add('No Of Adults tickets:' + #9 + IntToStr(iNoofAdults)
          + #9 + ' @' + FloatToStrF(rAdult, ffcurrency, 6, 2) + ' Each');
      redout.Lines.Add('No Of Children tickets:' + #9 + IntToStr(iNoofchildren)
        // Main part of ticket
          + #9 + ' @' + FloatToStrF(rChildren, ffcurrency, 6, 2) + ' Each');
      redout.Lines.Add('Total No of Tickets:' + #9 + IntToStr(ItotalTickets));
      redout.Lines.Add('Date Booked:' + #9 + sDateBooked2);
      redout.Lines.Add('Time Booked For:' + #9 + stimebooked2);
      // All the details
      redout.Lines.Add('Total Cost:' + #9 + FloatToStrF
          (rTotal1, ffcurrency, 5, 3));
      with redout do
      begin
        Lines.Add('========================');

        Lines.Add(#13 + // displaying bottom Part of Act
            'THANK YOU FOR SHOPPING WITH US WE LOOK FORWARD TO SEEING YOU AGAIN!   ');

      end;
    end
    else // If No children are booked fot
    begin // No children
      redout.Lines.Add(#13 + 'Order Summary' + #13);
      redout.Lines.Add('Name of Activity:' + '   ' + sActivity);
      redout.Lines.Add('No Of Adults tickets:' + #9 + IntToStr(iNoofAdults)
          + #9 + ' @' + FloatToStrF(rAdult, ffcurrency, 6, 2) + ' Each');

      redout.Lines.Add('Total No of Tickets:' + #9 + IntToStr(ItotalTickets));
      redout.Lines.Add('Date Booked For:' + #9 + sDateBooked2);
      redout.Lines.Add('Time Booked For:' + #9 + stimebooked2);
      redout.Lines.Add('Total Cost:' + #9 + FloatToStrF
          (rTotal1, ffcurrency, 5, 3));
      // displaying Ticket
      with redout do
      begin
        Lines.Add('========================');
        // bottom Part of Ticket
        Lines.Add(#13 +
            'THANK YOU FOR SHOPPING WITH US WE LOOK FORWARD TO SEEING YOU AGAIN!   ');

      end;
    end;

  end;

end;

procedure TfrmBook.btncheckout2Click(Sender: TObject);
var

  i: integer;
  PrintFile: textfile;
  printDialog: TPrintDialog;

begin
  // print the receipt

  printDialog := TPrintDialog.Create(frmBook);

  if printDialog.Execute then // Exceptional feature
  begin
    AssignPrn(PrintFile);
    Rewrite(PrintFile); // coding for printing

    for i := 0 to Redoutput.Lines.Count do
    begin
      Writeln(PrintFile, Redoutput.Lines[i]);
    end;

    CloseFile(PrintFile);

  end;

  printDialog.Free;
end;

procedure TfrmBook.btnClearClick(Sender: TObject);
begin
  redout.Lines.Clear;
  BtnDisptick.Enabled := true;
  BtnBookactivities.Enabled := false;
  btnPrintact.Enabled := false;
  cmbActivity.Text := '';
end;

procedure TfrmBook.BitBtn1Click(Sender: TObject);
begin
  Redoutput.Lines.Clear; // clearing the ticket
  btnProceed.Enabled := true;
  btnbook.Enabled := false;
  btncheckout2.Enabled := false;
end;

procedure TfrmBook.btnbookClick(Sender: TObject);
var
  sID, semail, spassword, sGuest, sdate: string;
  bvalid: Boolean;
begin
  // double checking for security purposes
  btncheckout2.Enabled := true;
  btnbook.Enabled := false;
  with dmwildlifesafari do
  begin

    // writing the transaction to the relevant table
    tblsafaritickets.Open;
    tblsafaritickets.Last;
    tblsafaritickets.Append;

    tblsafaritickets['SafariID'] := (iSafariID);
    tblsafaritickets['GuestID'] := sGuestID; // adding the sale to the table
    tblsafaritickets['No of Tickets'] := iTottickets;
    tblsafaritickets['Total Sales Amount'] := rTotal;
    tblsafaritickets['Date Booked'] := DateTimePicker1.date;
    tblsafaritickets['Time'] := DateTimePicker2.time;
    tblsafaritickets['TravelAgentID'] := IntToStr(itravelAgentID);
    tblsafaritickets['Date of Sale'] := (now);
    tblsafaritickets.Post;
    Showmessage('You Have Successfully booked a ' + sSafari + 'Tour For ' +
        sDateBooked2);
  end;

end;

procedure TfrmBook.btnbackClick(Sender: TObject);
begin
  frmBook.Close;
end;

procedure TfrmBook.BtnBookactivitiesClick(Sender: TObject);
var
  sID, semail, spassword, sGuest, sdate: string;
  bvalid: Boolean;
begin
  BtnDisptick.Enabled := false;
  BtnBookactivities.Enabled := false;
  btnPrintact.Enabled := true;


  // Writing to DB

  sdate := Datetostr(now);
  dmwildlifesafari.tblactivitytickets.Open;
  dmwildlifesafari.tblactivitytickets.Last;
  dmwildlifesafari.tblactivitytickets.Append;

  dmwildlifesafari.tblactivitytickets['ActivityID'] := StrtoInt(sactID);
  dmwildlifesafari.tblactivitytickets['GuestID'] := sGuestID;
  dmwildlifesafari.tblactivitytickets['No of Tickets'] := ItotalTickets;
  dmwildlifesafari.tblactivitytickets['Sales Amount'] := rTotal1;
  dmwildlifesafari.tblactivitytickets['Date Booked For'] :=
    DateTimePicker3.date;
  dmwildlifesafari.tblactivitytickets['Time'] := DateTimePicker4.time;
  dmwildlifesafari.tblactivitytickets['TravelAgentID'] := IntToStr
  // Writing the bookingto Bookings table
    (itravelAgentID);
  dmwildlifesafari.tblactivitytickets['Date of Sale'] := (now);
  dmwildlifesafari.tblactivitytickets.Post;
  Showmessage('You Have Successfully booked ' + sActivity + ' For ' +
      sDateBooked2 + ' at ' + TimetoStr(DateTimePicker4.time));

end;

procedure TfrmBook.btnPrintactClick(Sender: TObject);
var
  i: integer;
  PrintFile: textfile;
  printDialog: TPrintDialog;

begin
  // print the receipt

  printDialog := TPrintDialog.Create(frmBook);

  if printDialog.Execute then
  begin
    AssignPrn(PrintFile); // code for printing
    Rewrite(PrintFile);

    for i := 0 to redout.Lines.Count do
    begin
      Writeln(PrintFile, redout.Lines[i]);
    end;

    CloseFile(PrintFile);

  end;

  printDialog.Free;

end;

procedure TfrmBook.btnProceedClick(Sender: TObject);
var

  TF: textfile;
  z: integer;
  bVehicle, bfound: Boolean;
  sLine: string;
  MaxTime, MinTime: tDatetime;
  rTotalsafari, rChildrencost, radultCost: real;
  iNoofChildtickets, iNoofAdultTickets: integer;

  iNoofAdults2, imaxNoofppl, iNoofchildren2, i, iTicketNo, icounter,
    iTottickets: integer;
  rVehicle: real;
  sDateBooked: string;
  stimebooked: string;
begin

  Redoutput.Lines.Clear;
  // Validating to make sure that atleast 1 ticket must be booked
  if (spnAdults.Value = 0) and (spnChildren.Value = 0) then
  begin
    Showmessage('No Tickets were booked!');
    Exit;
  end;
  if spnAdults.Value = 0 then
  begin
    Showmessage('Atleast 1 Adult must be present!');
    Exit;
  end;
  sSafari := cmbSafari.Text;
  iSafariID := cmbSafari.ItemIndex + 1;
  if (sSafari = '') then // Validating if anything is empty
  begin
    Showmessage('Please Select a Safari to book');
    Exit;
  end;
  // No One can booked after this     //validating Time
  if (HourOf(DateTimePicker2.time) > 17) or (HourOf(DateTimePicker2.time) < 9)
    then
  Begin
    Showmessage('Sorry,You cannot book at this time');
    Exit;
  End;

  case cmbSafari.ItemIndex of
    0:
      begin
        z := 1;
        imaxNoofppl := 6;
      end;
    1:
      begin
        z := 2;
        imaxNoofppl := 8;
      end;
    2:
      begin // Max No of People That can go on the safari Tour begin i := 3;
        imaxNoofppl := 4;
        z := 3;
      end;
    3:
      begin
        z := 4;
        imaxNoofppl := 2;
      end;
    4:
      begin
        z := 5;
        imaxNoofppl := 4;
      end;
    5:
      begin
        z := 6;
        imaxNoofppl := 4;
      end;

  end;
  btnbook.Enabled := true;
  // Dsiplaying Top Part of Recipt
  with Redoutput do
  begin
    Lines.Add('           WILDLIFE SAFARI NATIONAL PARK     ');
    Lines.Add('                      DURBAN           ');
    Lines.Add('                   SOUTH AFRICA          ');
    Lines.Add('                TEL: (031)209 7895         ');
    Lines.Add('============================');
    Lines.Add(Datetostr(now));
    Lines.Add(TimetoStr(now));
    Lines.Add('Travel Agent: ' + sFAgentName + ' ' + sAgentSurname);
    Lines.Add('Guest: ' + sGuestFname + ' ' + sGuestsurname + #13);
  end;

  btncheckout2.Enabled := true;
  { rTotalsafari, rChildrencost, radultCost: real;
    iNoofChildtickets, iNoofAdultTickets, iTottickets: integer; }
  iNoofAdults2 := spnAdults.Value;
  iNoofchildren2 := spnChildren.Value;
  iTottickets := iNoofAdults2 + iNoofchildren2;

  if iTottickets > imaxNoofppl then
  begin
    Showmessage('Too many people Booked');
    Exit;
  end;

  radultCost := iNoofAdults2 * rArrPrice[z]; // Cost for all the adults using Array to calculate
  rChildrencost := iNoofchildren2 * rArrPrice[z] * 0.80;
  // Children get 20% discount

  rTotal := radultCost + rChildrencost;
  sdatebooked1 := Datetostr(DateTimePicker1.date);
  stimebooked1 := TimetoStr(DateTimePicker2.time); // Date and time booked for
  rVehicle := 400; // Cost of the vehicle
  if chkVehicle.Checked = true then
  Begin
    rTotal := rTotal + rVehicle;
    Redoutput.Lines.Add('NB:Vehicle Hired @' + FloatToStrF
        (rVehicle, ffcurrency, 5, 2));
  End;


  // iTicketNo := dmwildlifesafari.tblsafaritickets.recordset + 1;


  // redoutput.l

  // sample Ticket
  Redoutput.Paragraph.TabCount := 2;
  Redoutput.Paragraph.Tab[0] := 10; // tab stops
  Redoutput.Paragraph.Tab[1] := 100;
  if iNoofchildren2 <> 0 then // If theres  children Booked
  begin
    Redoutput.Lines.Add('Order Summary' + #13);
    Redoutput.Lines.Add('Name of Activity:' + #9 + sSafari);
    Redoutput.Lines.Add('No Of Adults tickets:' + #9 + IntToStr(iNoofAdults2)
        + ' @' + FloatToStrF(radultCost, ffcurrency, 5, 2) + ' Each');
    Redoutput.Lines.Add('No Of Children tickets:' + #9 + IntToStr
        (iNoofchildren2) + ' @' + FloatToStrF(rChildrencost, ffcurrency, 5, 2)
        + ' Each');
    Redoutput.Lines.Add('Total No of Tickets:' + #9 + IntToStr(iTottickets));
    Redoutput.Lines.Add('Date Booked:' + #9 + sdatebooked1);
    Redoutput.Lines.Add('Time Booked For:' + #9 + stimebooked1);
    Redoutput.Lines.Add('Total Cost:' + #9 + FloatToStrF
        (rTotal, ffcurrency, 5, 3));
  end
  else // If there is no children booked for
  begin
    Redoutput.Lines.Add('Order Summary' + #13);
    Redoutput.Lines.Add('Name of Safari:' + '   ' + sActivity);
    Redoutput.Lines.Add('No Of Adults tickets:' + #9 + IntToStr(iNoofAdults2)
        + ' @' + FloatToStrF(radultCost, ffcurrency, 5, 2) + ' Each');

    Redoutput.Lines.Add('Total No of Tickets:' + #9 + IntToStr(iTottickets));
    Redoutput.Lines.Add('Date Booked:' + #9 + sDateBooked2);
    Redoutput.Lines.Add('Time Booked For:' + #9 + stimebooked2);
    Redoutput.Lines.Add('Total Cost:' + #9 + FloatToStrF
        (rTotal, ffcurrency, 5, 3));
  end;
  with redoutput do
  begin
    Lines.Add('========================');
    // bottom part of ticktet

    Lines.Add(#13 +
        'THANK YOU FOR SHOPPING WITH US WE LOOK FORWARD TO SEEING YOU AGAIN!   '
      );

  end;

end;

procedure TfrmBook.FormActivate(Sender: TObject);
var
  TF: textfile;
  i: integer;
  slinetf: string;
begin
  Redoutput.Lines.Clear;
  btnProceed.Enabled := true; // disabling buttons so that User cannot click
  btnbook.Enabled := false;
  btncheckout2.Enabled := false;
  redout.Lines.Clear; // clearing Componnets
  BtnDisptick.Enabled := true;
  BtnBookactivities.Enabled := false;
  btnPrintact.Enabled := false;
  CurrencyString := 'R';
  cmbActivity.Clear;
  PageControl1.ActivePageIndex := 0;
  TFloatField(dmwildlifesafari.tblactivities.FieldByName('Cost Per Person'))
    .currency := true;
  TFloatField(dmwildlifesafari.tblsafaris.FieldByName('Cost Per Adult'))
    .currency := true;
  // populating Array from textfile

  assignfile(TF, 'safariPrices.txt');
  Reset(TF);
  i := 0;
  while not eof(TF) do // Textfile and Array Example
  begin
    inc(i);                 //Prices stored in Textfile
    Readln(TF, slinetf);    //Taking Prices from Tf and putting it inside a Textfile
    rArrPrice[i] := strToFloat(slinetf);
    delete(slinetf, 1, 8);
  end;
  CloseFile(TF);

  with dmwildlifesafari do
  begin

    tblactivities.Open;
    tblactivities.Refresh; // Putting Prices per person from tblactivities into a lsitbox
    tblactivities.First;
    while not tblactivities.eof do
    begin
      lstbxPrices.Items.Add(tblactivities['Name Of Activity']
          + '- R' + floattostr(tblactivities['Cost Per Person']));
      tblactivities.Next;
    end;
    // tblactivities.Close;
  end;
  // Getting Travel Agent
  itravelAgentID := RandomRange(1, 6);
  dmwildlifesafari.tbltravelAgent.Open;
  dmwildlifesafari.tbltravelAgent.First;

  while not dmwildlifesafari.tbltravelAgent.eof do
  Begin
    if dmwildlifesafari.tbltravelAgent['TravelAgentID'] = IntToStr
      (itravelAgentID) then
    begin
      sFAgentName := dmwildlifesafari.tbltravelAgent['First Name'];
      sAgentSurname := dmwildlifesafari.tbltravelAgent['Surname'];

    End;
    dmwildlifesafari.tbltravelAgent.Next;
  End;
  sGuestUsername := frmGuestMenu.Label2.Caption;
  // sGuestID := frmGuestMenu.Label5.Caption;
  // Getting the Guests Details
  dmwildlifesafari.tblGuests.Open;
  dmwildlifesafari.tblGuests.First;
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

  redout.Lines.Clear;
  Redoutput.Lines.Clear;

  cmbPrices.Clear;
  cmbSafari.Clear;

  with dmwildlifesafari do
  begin

    tblactivities.Open;
    tblactivities.Refresh; // Putting Prices per person from tblactivities into a lsitbox
    tblactivities.First;
    while not tblactivities.eof do
    begin
      cmbActivity.Items.Add(tblactivities['Name Of Activity']);
      tblactivities.Next;
    end;
    // tblactivities.Close;
  end;
  with dmwildlifesafari do
  begin

    tblsafaris.Open;
    tblsafaris.Refresh; // Putting Types of Safari per person from tblactivities into a combo box
    tblsafaris.First;
    while not tblsafaris.eof do
    begin
      cmbSafari.Items.Add(tblsafaris['Type Of Safari']);
      tblsafaris.Next;
    end;

  end;

  // adding prices to combo box
  with dmwildlifesafari do
  begin

    tblactivities.Open;
    tblactivities.Refresh; // Putting Prices per person from tblactivities into a lsitbox
    tblactivities.First;
    while not tblactivities.eof do
    begin
      cmbPrices.Items.Add(floattostr(tblactivities['Cost Per Person']));
      tblactivities.Next;
    end;

  end;
  cmbPrices.Visible := false;
end;

procedure TfrmBook.rgpsort2Click(Sender: TObject);
begin

  // sorting Records
  case rgpsort2.ItemIndex of
    0:
      begin
        dmwildlifesafari.tblactivities.Sort := ' [Cost Per Person] ASC ';
      end;
    1:
      begin
        dmwildlifesafari.tblactivities.Sort := ' [Name Of Activity] ASC ';
      end;
    2:
      begin
        dmwildlifesafari.tblactivities.Sort :=
          ' [Max No of people Allowed] ASC ';
      end;

  end;
end;

procedure TfrmBook.rgpSort1Click(Sender: TObject);
var
  Sort: string;
begin
  // sorting Records AGAIN
  Sort := uppercase(InputBox('Order By', 'Choose Increase or Decrease',
      'Enter Inc or Dec'));
  if (Sort = 'INC') or (Sort = 'DEC') then
  begin
    case rgpSort1.ItemIndex of
      0:
        begin

          if Sort = 'DEC' then
          begin
            dmwildlifesafari.tblsafaris.Sort := ' [Cost Per Adult] DESC ';
          end
          else
            dmwildlifesafari.tblsafaris.Sort := ' [Cost Per Adult] ASC ';

        end;
      1:
        begin
          if Sort = 'DEC' then
          begin
            dmwildlifesafari.tblsafaris.Sort := ' [Max No Of People] DESC ';
          end
          else
            dmwildlifesafari.tblsafaris.Sort := ' [Max No Of People] ASC ';

        end;
      2:
        begin
          if Sort = 'DEC' then
          begin
            dmwildlifesafari.tblsafaris.Sort := ' [Type of Safari] DESC ';
          end
          else
            dmwildlifesafari.tblsafaris.Sort := ' [Type of Safari] ASC ';

        end;

    end;
  end;

end;

procedure TfrmBook.Timer1Timer(Sender: TObject);
begin
  lbldate.Caption := Datetostr(now); // coding for date and time
  lbltime.Caption := TimetoStr(now);
end;

end.
