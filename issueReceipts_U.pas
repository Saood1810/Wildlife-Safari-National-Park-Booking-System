unit issueReceipts_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmGenerate = class(TForm)
    Receipts: TPageControl;
    Payments: TTabSheet;
    TabSheet2: TTabSheet;
    redOut: TRichEdit;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerate: TfrmGenerate;

implementation

{$R *.dfm}

procedure TfrmGenerate.FormActivate(Sender: TObject);
var
  Tf: textfile;
  slIne: string;
  icounter: integer;
begin
  icounter := 0;
  Inc(icounter);
  redOut.Lines.Clear;
  redOut.Lines.Add('New Payments');
  AssignFile(Tf,'Payments.txt');
  Reset(Tf);
  while not Eof(Tf) do
  begin
    readln(Tf, slIne);
    redOut.Lines.Add(InttoStr(icounter) + ' ' + slIne);

  end;
  CloseFile(Tf);
end;

end.
