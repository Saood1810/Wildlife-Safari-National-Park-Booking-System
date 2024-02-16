unit ManagerReports_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,dmwildlifesafari_U, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons, ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtyearly2: TEdit;
    edthts2: TEdit;
    edtgts2: TEdit;
    edtyti2: TEdit;
    edtlts2: TEdit;
    lstMonths: TListBox;
    BitBtn4: TBitBtn;
    edtname4: TEdit;
    edtname5: TEdit;
    edtname6: TEdit;
    TabSheet3: TTabSheet;
    gbxEntrance: TGroupBox;
    rgpEgroup: TRadioGroup;
    btnDispEtickets: TBitBtn;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
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
