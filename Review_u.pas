unit Review_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, pngimage, jpeg;

type
  TForm2 = class(TForm)
    TrackBar1: TTrackBar;
    edtSurname: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    redOut: TRichEdit;
    Image1: TImage;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    Image2: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
