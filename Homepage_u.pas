unit Homepage_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls, MPlayer, Buttons, pngimage,
  GIFImg, OleCtrls;

type
  TfrmExplore = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    RichEdit1: TRichEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Image6: TImage;
    Label12: TLabel;
    btnback: TBitBtn;
    Label13: TLabel;
    Image7: TImage;
    Image8: TImage;
    Label16: TLabel;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Image29: TImage;
    Image30: TImage;
    Timer1: TTimer;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Image31: TImage;
    Image22: TImage;
    Label32: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    pnlHistory: TPanel;
    lblHistory: TLabel;
    memHistory: TMemo;
    TabSheet7: TTabSheet;
    Label41: TLabel;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image37: TImage;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Image36: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnbackClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplore: TfrmExplore;

implementation

{$R *.dfm}

procedure TfrmExplore.BitBtn2Click(Sender: TObject);
begin
  // WindowsMediaPlayer1.URL := 'file://C:\BigBuckBunny.mp4';
 // WindowsMediaPlayer1.Controls.play;
end;

procedure TfrmExplore.btnbackClick(Sender: TObject);
begin
  frmExplore.close;
end;

procedure TfrmExplore.FormActivate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;

  // GIFs
(Image32.Picture.Graphic as TGIFImage)
  .Animate := true; (Image33.Picture.Graphic as TGIFImage)
  .Animate := true; (Image34.Picture.Graphic as TGIFImage)
  .Animate := true; (Image35.Picture.Graphic as TGIFImage)
  .Animate := true; (Image37.Picture.Graphic as TGIFImage)
  .Animate := true;
end;

end.
