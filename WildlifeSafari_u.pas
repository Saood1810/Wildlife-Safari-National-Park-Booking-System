unit WildlifeSafari_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, dmwildlifesafari_U, Homepage_U,
  About_U, Splash_u, Finalise_U, Issuereceipts_U, CreateAccount_U,
  pngimage, jpeg, ComCtrls, GIFImg, MPlayer;

type
  TfrmHome = class(TForm)
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    Image3: TImage;
    imgact: TImage;
    imgAnimal: TImage;
    RichEdit2: TRichEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    RichEdit1: TRichEdit;
    BitBtn2: TBitBtn;
    imgViews: TImage;
    Image6: TImage;
    noise: TMediaPlayer;
    Tmrviews: TTimer;
    Timer2: TTimer;
    Timer1: TTimer;
    lblDate: TLabel;
    lblTime: TLabel;
    tmrTime: TTimer;
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TmrviewsTimer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure tmrTimeTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;
  sUser: string;
  icounta: integer = 1;
  icountB: integer = 1;
  icountc: integer = 1;

implementation

uses selectUser_u, adminManage_U, bookingSafari_U, BookingAccom_U,
  BookingAccomodation_U, ManagerStats_U, ManageGuests_U, Competition_U;
{$R *.dfm}

procedure TfrmHome.BitBtn1Click(Sender: TObject);
begin
  frmExplore.showmodal;


end;

procedure TfrmHome.BitBtn2Click(Sender: TObject);
begin
  frmLoginas.showmodal;
  // frmmanageRecords.showmodal;

end;

procedure TfrmHome.BitBtn3Click(Sender: TObject);

var
  msg: string;
begin
  msg := ('So Soon.Are You Sure You Want To Exit?'); // exit button

  if MessageDlg(msg, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
    frmHome.Close; // Asking user if he is sure he wants to exit
end;

procedure TfrmHome.BitBtn4Click(Sender: TObject);

var
  sMessage, sline: string;
  f: textFile;
begin

  sMessage := '';
  sline := '';
  if FileExists('Help.txt') = False then // Retreiveing data from textfile
  begin
    showmessage('Text File Not found');
  end
  else
  begin
    assignFile(f, 'Help.txt');
    Reset(f);
    while Not Eof(f) do
    begin
      Readln(f, sline);
      sMessage := sMessage + #13 + sline;
    end;
    showmessage(sMessage);
    CloseFile(f);
  end;
end;

procedure TfrmHome.BitBtn5Click(Sender: TObject);
begin
  ABoutbox.Show;
  // frmaccomodation.show;
end;

procedure TfrmHome.BitBtn6Click(Sender: TObject);
begin
  frmcreateaccount.showmodal;

end;

procedure TfrmHome.FormActivate(Sender: TObject);
var
  TF1, Tf2: textFile;
  sUsername, spassword: string;
begin (Image3.Picture.Graphic as TGIFImage)
  .Animate := true;
  noise.FileName := 'Tranquility.mp3'; // adds music to the program
  noise.Open;
  noise.Play;

  showmessage('Welcome to Wildlife Safari National Park!');
  // Pupulating Names in Textfile
  if FileExists('Travelagentusernames.txt') then // check if its exists
    assignFile(TF1, 'Travelagentusernames.txt')
  else
    showmessage('File does not Exist');
  if FileExists('TravelagentsPasswords.txt') then
    assignFile(Tf2, 'Travelagentspasswords.txt')
  else
    showmessage('File does not Exist');

  rewrite(TF1); // clear evrything
  rewrite(Tf2);

  with dmwildlifesafari do
  begin
    tbltravelAgent.Open;
    tbltravelAgent.First; // Go to first Record
    while not tbltravelAgent.Eof do
    begin
      sUsername := tbltravelAgent['Username'];
      spassword := tbltravelAgent['Password']; // Get the data from the table
      writeln(TF1, sUsername);
      writeln(Tf2, spassword);
      tbltravelAgent.Next;
    end;
    // tbltravelAgent.Close;
    CloseFile(TF1);
    CloseFile(Tf2);
  end;
  assignFile(tf, 'safariPrices.txt');
  rewrite(tf);


  while not dmwildlifesafari.tblsafaris.Eof do
  begin
    writeln(tf, FloatToStr(dmwildlifesafari.tblsafaris['Cost Per Adult']));
    dmwildlifesafari.tblsafaris.Next;
  end;
  CloseFile(tf);
end;

procedure TfrmHome.FormShow(Sender: TObject);
begin
  frmsplashscreen.showmodal;
end;

procedure TfrmHome.Timer1Timer(Sender: TObject);
begin
  imgAnimal.Picture.LoadFromFile('Animal' + IntTostr(icountc) + '.jpg');
  inc(icountc);
  if icountc > 5 then
    icountc := 1;
end;

procedure TfrmHome.Timer2Timer(Sender: TObject);
begin
  imgact.Picture.LoadFromFile('Act' + IntTostr(icountB) + '.jpg');
  inc(icountB);
  if icountB > 11 then
    icountB := 1;

end;

procedure TfrmHome.tmrTimeTimer(Sender: TObject);
begin
  lblDate.Caption := DatetoStr(Now); // coding for date and time
  lblTime.Caption := timeToStr(Now);
end;

procedure TfrmHome.TmrviewsTimer(Sender: TObject);
var
  i: integer;
begin

  imgViews.Picture.LoadFromFile(IntTostr(icounta) + '.jpg');
  inc(icounta);
  if icounta > 4 then
    icounta := 1;

end;

end.
