unit Splash_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, pngimage, MPlayer;

type
  Tfrmsplashscreen = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    pgbsplashscreen: TProgressBar;
    tmrsplashscreen: TTimer;
    Image1: TImage;
    lblsplashscreen: TLabel;
    noise: TMediaPlayer;
    procedure tmrsplashscreenTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsplashscreen: Tfrmsplashscreen;
  K: integer;

implementation

{$R *.dfm}

procedure Tfrmsplashscreen.FormActivate(Sender: TObject);
begin
  lblsplashscreen.Parent := pgbsplashscreen;
  lblsplashscreen.AutoSize := False;
  lblsplashscreen.Transparent := True;
  lblsplashscreen.Top := 0;
  lblsplashscreen.Left := 125;
  lblsplashscreen.Width := pgbsplashscreen.ClientWidth;
  lblsplashscreen.Height := pgbsplashscreen.ClientHeight;
  lblsplashscreen.Alignment := taLeftJustify;
  lblsplashscreen.Layout := tlCenter;

  noise.FileName := 'roar.mp3';//   adds music to the program
  noise.Open;
 noise.Play;

  // iStep:=1;
  K := 0;
end;

procedure Tfrmsplashscreen.tmrsplashscreenTimer(Sender: TObject);
begin
  pgbsplashscreen.StepIt;

  K := K + 1;
  lblsplashscreen.Caption := 'Loading ' + IntToStr(K) + '%';

  if (K = 100) then // pgbSplashScreen.Step=1 & pgbSplashScreen.Max=100
  begin
    tmrsplashscreen.Enabled := False;
    frmsplashscreen.Close;
    frmsplashscreen.Release;
  end;
end;

end.
