unit receipts_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, jpeg, math, ExtCtrls, pngimage;

type
  TForm1 = class(TForm)
    Image1: TImage;
    edtTravelAgent: TEdit;
    edtfor: TEdit;
    edtGuestname: TEdit;
    edtNumber: TEdit;
    edtAmountpaid: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    Image2: TImage;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    Procedure ClearEverything();
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  semail: string;
begin


  semail := InputBox('', 'Please Enter the clients email Adress', '');

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  ClearEverything;

end;

procedure TForm1.ClearEverything;
begin
  edtGuestname.Clear;
  edtAmountpaid.Clear;
  edtfor.Clear;

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  edtNumber.Text := InttoStr(randomRange(1, 1000));
  DateTimePicker1.Date := now;

end;

end.
