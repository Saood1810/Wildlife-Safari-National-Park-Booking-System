unit selectUser_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, Login_u, ComCtrls, pngimage;

type
  TfrmLoginas = class(TForm)
    btnGuests: TBitBtn;
    Image2: TImage;
    imgAdmin: TImage;
    Image1: TImage;
    btntravelAgents: TBitBtn;
    btnManager: TBitBtn;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure btnGuestsClick(Sender: TObject);
    procedure btntravelAgentsClick(Sender: TObject);
    procedure btnManagerClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginas: TfrmLoginas;

implementation

{$R *.dfm}

procedure TfrmLoginas.BitBtn1Click(Sender: TObject);
begin
frmloginas.Close;
end;

procedure TfrmLoginas.btnGuestsClick(Sender: TObject);
begin

  frmlogin.cmbuser.ItemIndex := 0;
  Iuser := 0;     //guests
  frmlogin.Show;
  frmLoginas.Close;
  frmlogin.cmbusername1.visible := true;
  frmlogin.cmbusername2.visible := false;
  frmlogin.cmbusername3.visible := false;
  // frmManageguests.show;
end;

procedure TfrmLoginas.btnManagerClick(Sender: TObject);
begin
 frmLoginas.Close;
  // Iuser := 2;    manager
  frmlogin.cmbuser.ItemIndex := 2;
  frmlogin.Show;
  frmloginas.Close;
  frmlogin.cmbusername3.visible := true;
  frmlogin.cmbusername2.visible := false;
  frmlogin.cmbusername1.visible := false;
end;

procedure TfrmLoginas.btntravelAgentsClick(Sender: TObject);
begin
 frmLoginas.Close;
  // Iuser := 1;
  frmlogin.Show;     //Traevel Agent
  frmlogin.cmbuser.ItemIndex := 1;
  frmlogin.cmbusername2.visible := true;
  frmlogin.cmbusername1.visible := false;
  frmlogin.cmbusername3.visible := false;
  // frmbook.Show;

end;

end.
