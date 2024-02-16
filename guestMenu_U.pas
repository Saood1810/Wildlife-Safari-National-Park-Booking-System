unit guestMenu_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Login_U, Buttons, ExtCtrls, BookingAccom_U,
  BookingSafari_U, jpeg, pngimage;

type
  TfrmGuestMenu = class(TForm)
    Image1: TImage;
    Image3: TImage;
    Label2: TLabel;
    lbldate: TLabel;
    lbltime: TLabel;
    Label5: TLabel;
    Image4: TImage;
    Label1: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Timer1: TTimer;
    Label3: TLabel;
    Image2: TImage;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGuestMenu: TfrmGuestMenu;

implementation

uses UpdateProfile_U, WildlifeSafari_U, BookingAccomodation_U, Competition_U,
  viewHistory_U;
{$R *.dfm}



procedure TfrmGuestMenu.BitBtn2Click(Sender: TObject);
begin

  // frmGuestMenu.Close;
end;

procedure TfrmGuestMenu.BitBtn4Click(Sender: TObject);
begin
  frmHome.show;
end;

procedure TfrmGuestMenu.FormActivate(Sender: TObject);
begin
  Label2.Caption := frmlogin.cmbusername1.text;
  Label5.Caption := IntToStr(frmlogin.cmbusername1.itemindex + 1);
end;

procedure TfrmGuestMenu.Image1Click(Sender: TObject);
begin
  frmBookAccom.show;

  frmGuestMenu.Close;
end;

procedure TfrmGuestMenu.Image2Click(Sender: TObject);
var
  msg: string;
begin
  msg := ('Are You Sure You Want To Logout?'); // exit button

  if MessageDlg(msg, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  frmGuestMenu.Close;
  frmlogin.Close;
  frmHome.show;
end;

procedure TfrmGuestMenu.Image3Click(Sender: TObject);
begin

  frmRoll.show;
end;

procedure TfrmGuestMenu.Image4Click(Sender: TObject);
begin
  frmBook.show;
  frmBook.Label13.Caption := Label2.Caption;

end;

procedure TfrmGuestMenu.Timer1Timer(Sender: TObject);
begin
  lbldate.Caption := DatetoStr(Now); // coding for date and time
  lbltime.Caption := timeToStr(Now);
end;

end.
