unit TravelAgentmenu_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ManageGuests_U, finalise_U, pngimage;

type
  TFrmAgenthome = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    lbltime: TLabel;
    Timer1: TTimer;
    lblDate: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image4: TImage;
    Label5: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgenthome: TFrmAgenthome;

implementation

uses WildlifeSafari_u, UpdateProfile_U;
{$R *.dfm}

procedure TFrmAgenthome.BitBtn1Click(Sender: TObject);
begin
  frmhome.show;
end;

procedure TFrmAgenthome.Image1Click(Sender: TObject);
begin
  frmmanageRecords.show;
end;

procedure TFrmAgenthome.Image2Click(Sender: TObject);
begin
  frmGuestsManage.show;
end;

procedure TFrmAgenthome.Image3Click(Sender: TObject);
var
  msg: string;
begin
  msg := ('Are You Sure You Want To Logout?'); // exit button

  if MessageDlg(msg, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  FrmAgenthome.Close;
  frmhome.show;
//frmLogin.Close;
end;

procedure TFrmAgenthome.Image4Click(Sender: TObject);
begin
  frmProfile.show;
end;

procedure TFrmAgenthome.Timer1Timer(Sender: TObject);
begin
  lblDate.Caption := dateToStr(now); // coding for date and time
  lbltime.Caption := TimeToStr(now);
end;

end.
