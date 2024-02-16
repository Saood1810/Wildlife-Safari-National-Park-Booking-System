unit checkOut_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, jpeg, pngimage, Buttons;

type
  TfrmCheckout = class(TForm)
    redout: TRichEdit;
    cmbtype: TComboBox;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image2: TImage;
    Image3: TImage;
    BitBtn1: TBitBtn;
    edtpayment: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheckout: TfrmCheckout;

implementation

{$R *.dfm}

procedure TfrmCheckout.BitBtn1Click(Sender: TObject);
var
  Tf: textfile;
  rTotal: Real;
  iCounter: integer;
  sGuest: string;
begin
  inc(iCounter);
  //sGuest := frmlogin.cmbusername1;
  rTotal := StrToFloat(Label1.Caption);
  AssignFile(Tf, 'Payments.txt');
  Append(Tf);
  Writeln((InttoStr(iCounter) + 'Payment Received from' + sGuest  +'on' +
        datetoStr(Now) + ' For an Amount of' + FloatToStrf(rTotal, ffcurrency,
        5, 2)));

end;

procedure TfrmCheckout.FormActivate(Sender: TObject);
begin
  edtpayment.text := 'EFT';
end;

procedure TfrmCheckout.Image1Click(Sender: TObject);
begin
  edtpayment.text := 'EFT';
end;

procedure TfrmCheckout.Image2Click(Sender: TObject);
begin
  edtpayment.text := 'Credit Card';
end;

procedure TfrmCheckout.Image3Click(Sender: TObject);
begin
edtpayment.text:='e Bucks';
end;

end.
