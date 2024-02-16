unit Eligiblefordiscount_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    btnApprove: TButton;
    btnSubmitDetails: TButton;
    edtAge: TEdit;
    edtAgeResult: TEdit;
    edtDateOfBirth: TEdit;
    edtEmail: TEdit;
    edtName: TEdit;
    edtToday: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    redDisplay: TRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
