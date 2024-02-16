unit travelagent_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, DBCtrls, Buttons;

type
  TForm6 = class(TForm)
    rgpEDetails: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edtEmployeeID: TEdit;
    edtEusername: TEdit;
    edtEname: TEdit;
    edtEemail: TEdit;
    edtEsurname: TEdit;
    edtEpassword: TEdit;
    edtEcell: TMaskEdit;
    edtEId: TMaskEdit;
    rgpESearch: TGroupBox;
    rgpEFilter: TRadioGroup;
    edtEsearch: TEdit;
    btnEsearch: TBitBtn;
    btnEclear: TButton;
    rgpEOption: TRadioGroup;
    dbnEmployee: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

end.
