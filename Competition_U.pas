unit Competition_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, dmwildlifesafari_U, ExtCtrls, Buttons, jpeg,
  ClsRollandWin, GuestMenu_U, ComCtrls;

type
  TfrmRoll = class(TForm)

    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    lblDate: TLabel;
    lblTime: TLabel;
    tmrTime: TTimer;
    edtScore1: TEdit;
    edtScore2: TEdit;
    edtScore3: TEdit;
    edtfName: TEdit;
    edtSurname: TEdit;
    BitBtn4: TBitBtn;
    Label2: TLabel;
    btnDone: TBitBtn;
    btnsubmit: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    RedOut: TRichEdit;
    btntryagain: TBitBtn;

    grpRollbtn1: TGroupBox;
    grpRollbtn3: TGroupBox;
    grpRollbtn2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure tmrTimeTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnroll1Click(Sender: TObject);
    procedure btnsubmitClick(Sender: TObject);
    procedure btnDoneClick(Sender: TObject);
    procedure btnroll2Click(Sender: TObject);
    procedure btnroll3Click(Sender: TObject);
    procedure btntryagainClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRoll: TfrmRoll;
  sUserName, sFname, sSurname: string;
  Roll: TRoll;
  iDice1, idice2, idice3: integer;
  btnroll1: TBitBtn;
  btnroll2: TBitBtn;
  btnroll3: TBitBtn;

implementation

{$R *.dfm}

procedure TfrmRoll.btnroll1Click(Sender: TObject);
var
  idice: integer;
begin
  // rolling Dice 1
  iDice1 := randomRange(1, 7); // dice has values from 1 to 6 only

  btnroll1.Enabled := False;
  edtScore1.Text := IntToStr(iDice1); // display it
  Roll.RollDice3(idice3);
end;

procedure TfrmRoll.btnroll2Click(Sender: TObject);
var
  idice: integer;
begin // rolling Dice 2
  idice2 := randomRange(1, 7); // dice has values from 1 to 6 only

  edtScore2.Text := IntToStr(idice2);
  Roll.RollDice2(idice2);
  btnroll2.Enabled := False;
end;

procedure TfrmRoll.btnroll3Click(Sender: TObject);

var
  idice: integer;
begin // rolling Dice 3
  idice3 := randomRange(1, 7);
  edtScore3.Text := IntToStr(idice3);
  Roll.RollDice3(idice3); // dice has values from 1 to 6 only
  btnroll3.Enabled := False;
end;

procedure TfrmRoll.btntryagainClick(Sender: TObject);
begin

  // option to retry
  edtfName.Text := sFname;
  edtSurname.Text := sSurname;
  btnroll1.Enabled := False;
  btnroll2.Enabled := False; // Put everything back to default
  btnroll3.Enabled := False;
  RedOut.Lines.Clear;
  edtScore1.Clear;
  edtScore2.Clear;
  edtScore3.Clear;
  btnsubmit.Enabled := True;
  btnDone.Enabled := False;

  btntryagain.Enabled := False;
end;

procedure TfrmRoll.BitBtn4Click(Sender: TObject);
begin
  frmRoll.Close; // Takes You back to Home page
  frmGuestmenu.Show;
end;

procedure TfrmRoll.btnDoneClick(Sender: TObject);
var
  Tf: textfile;
begin

  if (edtScore1.Text = '') or (edtScore2.Text = '') or (edtScore3.Text = '')
    Then // Validating that all dices rolled
  Begin
    Showmessage('Please roll all the dices');
    Exit;
  End;
  btnDone.Enabled := False;
  btntryagain.Enabled := True;

  // If they win
  if (Roll.GetDice1score = Roll.GetDice2score) and
    (Roll.GetDice1score = Roll.GetDice3score) then
  Begin // Friendly Message
    Showmessage(
      'Congratulations!You have won Yourself a discount of your next trip!');

    RedOut.Lines.Add(Roll.ToString);
    Assignfile(Tf, 'DiscountCodes.txt'); // Write the disocunt code to Tetxfile so it can bbe stored
    Append(Tf);
    Writeln(Tf, Roll.ToString);

  end
  else // If they dont win
  Begin
    RedOut.Lines.Clear;
    Showmessage('Better Luck Next time');
    RedOut.Lines.Add('Better Luck Next Time');
    Exit;

  End;

end;

procedure TfrmRoll.btnsubmitClick(Sender: TObject);
var
  ddob: tDateTime;

begin

  if (edtSurname.Text = '') or (edtfName.Text = '') then
  Begin
    Showmessage('Please Enter all our details');
    Exit;
  End;

  ddob := DateTimePicker1.date;
  // insansiate Object
  Roll := TRoll.Create(sUserName, sFname, sSurname, ddob);

  // If person is too Young
  if Roll.CheckIfeligible = False then
  Begin // Must be older than 30
    Showmessage('Sorry, You do not meet the age Requirements');
    Exit;
  End;
  Showmessage
    ('Roll the same 3 numbers and win a 5% Disocunt on your next Trip!');
  btnsubmit.Enabled := False;
  btnDone.Enabled := True;
  btnsubmit.Enabled := False;
  // dyanimc Objects

  btnroll1 := TBitBtn.Create(grpRollbtn1);
  btnroll1.Parent := grpRollbtn1; // When the perosn enters and if he meets the requirmenets  then the following dynamic comopinents will apear
  btnroll1.Caption := 'Roll';
  btnroll1.OnClick := btnroll1Click;

  btnroll2 := TBitBtn.Create(grpRollbtn2);
  btnroll2.Parent := grpRollbtn2;
  btnroll2.Caption := 'Roll';
  btnroll2.OnClick := btnroll2Click; // rolling the dice button

  btnroll3 := TBitBtn.Create(grpRollbtn3);
  btnroll3.Parent := grpRollbtn3;
  btnroll3.Caption := 'Roll';
  btnroll3.OnClick := btnroll3Click;

  btnroll1.Enabled := True;
  btnroll2.Enabled := True;
  btnroll3.Enabled := True;

  btnDone.Enabled := True;
end;

procedure TfrmRoll.FormActivate(Sender: TObject);
begin
  sUserName := frmGuestmenu.Label2.Caption; // getting the username
  while not dmwildlifesafari.tblGuests.Eof do
  Begin
    if dmwildlifesafari.tblGuests['Username'] = sUserName then // from the username we will extract his other perosnal nfo
    begin
      sFname := dmwildlifesafari.tblGuests['First Name'];
      sSurname := dmwildlifesafari.tblGuests['Surname'];

    End;
    dmwildlifesafari.tblGuests.Next;
  End;

  // Setting everything
  edtfName.Text := sFname;
  edtSurname.Text := sSurname;

  // only if the user is eligible then these components can be enabled
  btnroll1.Enabled := False;
  btnroll2.Enabled := False;
  btnroll3.Enabled := False;
  RedOut.Lines.Clear;
  btnDone.Enabled := False;
  btntryagain.Enabled := False;

end;

procedure TfrmRoll.tmrTimeTimer(Sender: TObject);
begin
  lblDate.Caption := DatetoStr(Now); // coding for date and time
  lblTime.Caption := timeToStr(Now);
end;

end.
