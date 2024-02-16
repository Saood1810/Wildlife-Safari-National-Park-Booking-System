unit managerHome_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, Buttons, pngimage, managerStats_u, adminManage_U,
  WildlifeSafari_U,
  ExtCtrls;

type
  TfrmManagermenu = class(TForm)
    Image1: TImage;
    BitBtn3: TBitBtn;
    Image2: TImage;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    lbldate: TLabel;
    lbltime: TLabel;
    Timer1: TTimer;
    procedure BitBtn3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManagermenu: TfrmManagermenu;

implementation

{$R *.dfm}

procedure TfrmManagermenu.BitBtn3Click(Sender: TObject);
var
  msg: string;
begin
  msg := ('So Soon.Are You Sure You Want To Logout?'); // exit button

  if MessageDlg(msg, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  begin
    frmHome.show;
    frmManagermenu.close;
  end;
end;

procedure TfrmManagermenu.Image1Click(Sender: TObject);
begin
  frmManage.show;
end;

procedure TfrmManagermenu.Image2Click(Sender: TObject);
begin
frmreports.show;
end;

procedure TfrmManagermenu.Timer1Timer(Sender: TObject);
begin
 lbldate.Caption := DatetoStr(Now); // coding for date and time
  lbltime.Caption := timeToStr(Now);
end;

end.
