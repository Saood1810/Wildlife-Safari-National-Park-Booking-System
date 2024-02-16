unit ManagerStats_U;

interface

uses
  Windows, math, Messages, SysUtils, Variants, Classes, dmwildlifesafari_U,
  Graphics,
  Controls, db, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, dateUtils, StdCtrls, Buttons,
  ComCtrls,
  TeEngine, Series, TeeDBEdit, TeeDBCrossTab, TeeProcs, Chart, pngimage;

type
  TfrmReports = class(TForm)
    tb: TPageControl;
    tbStats: TTabSheet;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtmonthlyTS: TEdit;
    edtgts2: TEdit;
    edtmonthlyTI: TEdit;
    edtmostsales: TEdit;
    lstMonths: TListBox;
    edtname4: TEdit;
    edtname6: TEdit;
    TabSheet3: TTabSheet;
    gbxEntrance: TGroupBox;
    rgpEgroup: TRadioGroup;
    btnDispEtickets: TBitBtn;
    GroupBox1: TGroupBox;
    btnDispRtickets: TBitBtn;
    Label4: TLabel;
    Label6: TLabel;
    DBCrossTabSource1: TDBCrossTabSource;
    DBGrid1: TDBGrid;
    rgpAgroup: TRadioGroup;
    DBGrid2: TDBGrid;
    GroupBox5: TGroupBox;
    lblyearly: TLabel;
    lblgts: TLabel;
    lblyearlyt: TLabel;
    imgLogo: TImage;
    edtyearly: TEdit;
    edttransactions: TEdit;
    edtsales: TEdit;
    edtname1: TEdit;
    edtname2: TEdit;
    edtname3: TEdit;
    TabSheet2: TTabSheet;
    GroupBox6: TGroupBox;
    Label10: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    edtAcIncome: TEdit;
    edtNoofAccomTrans: TEdit;
    edtmonth: TEdit;
    edtMostAccom: TEdit;
    Label5: TLabel;
    Memo1: TMemo;
    Chart1: TChart;
    BitBtn9: TBitBtn;
    Cht1: TDBCrossTabSource;
    Series1: TBarSeries;
    Cht2: TDBCrossTabSource;
    Series2: TBarSeries;
    BitBtn1: TBitBtn;
    TabSheet1: TTabSheet;
    BitBtn2: TBitBtn;
    DBGrid3: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    lblQuote: TLabel;
    Label13: TLabel;
    BitBtn8: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn10: TBitBtn;
    DBGrid4: TDBGrid;
    Memo2: TMemo;
    DBNavigator1: TDBNavigator;
    DBNavigator4: TDBNavigator;
    edtAmount: TEdit;
    DBNavigator2: TDBNavigator;
    edtSaleAmount: TEdit;
    edttick: TEdit;
    DBNavigator3: TDBNavigator;
    Chart2: TChart;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Cht3: TDBCrossTabSource;
    Cht4: TDBCrossTabSource;
    BitBtn3: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Label1: TLabel;
    BitBtn11: TBitBtn;
    Memo3: TMemo;
    Memo4: TMemo;
    procedure rgpEgroupClick(Sender: TObject);
    procedure tbStatsShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure rgpAgroupClick(Sender: TObject);
    procedure lstMonthsClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);

    // User d3efined
    Procedure PopulateYearlyStats();
    Procedure CountNoofTransactions();
    Procedure PopulateAccomStats();
    procedure btnDispEticketsClick(Sender: TObject);
    procedure btnDispRticketsClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReports: TfrmReports;

implementation

{$R *.dfm}

procedure TfrmReports.BitBtn10Click(Sender: TObject);
begin

  Cht3.Active := False;
  Series3.Active := False;
  dmwildlifeSafari.qryActivityTickets.sql.Clear;
  dmwildlifeSafari.qryActivityTickets.sql.Add(
    'SELECT Month([Date of Sale]) AS SaleMonth ,Sum([Sales Amount]) AS TotalMonthlySales From tblActivitiestickets Group BY Month([Date of Sale])');
  dmwildlifeSafari.qryActivityTickets.Active := true;
  DBGrid4.DataSource := dmwildlifeSafari.dsracttickets;
  TFloatField(dmwildlifeSafari.qryActivityTickets.FieldByName
      ('TotalMonthlySales')).currency := true;
  DBGrid4.Columns[0].Width := 100;
  DBGrid4.Columns[1].Width := 100;
  Cht4.Active := true;
  Series4.Active := true;
end;

procedure TfrmReports.BitBtn11Click(Sender: TObject);
begin
  // string Manipulation  showing prices of each activity
  dmwildlifeSafari.qryActivityTickets.sql.Clear;
  dmwildlifeSafari.qryActivityTickets.sql.Add(
    'SELECT LEFT([Name Of Activity],4) AS ACT,[Cost Per person] FROM [tblActivities]');
  DBGrid4.DataSource := dmwildlifeSafari.dsracttickets;
  dmwildlifeSafari.qryActivityTickets.Open;
  TFloatField(dmwildlifeSafari.qryActivityTickets.FieldByName('Cost Per person')
    ).currency := true;
  DBGrid4.Columns[0].Width := 100;
  DBGrid4.Columns[1].Width := 100;
end;

procedure TfrmReports.BitBtn12Click(Sender: TObject);
begin
  dmwildlifeSafari.qryActivityTickets.Prior;
end;

procedure TfrmReports.BitBtn13Click(Sender: TObject);
begin
  dmwildlifeSafari.qryActivityTickets.Last;
end;

procedure TfrmReports.BitBtn14Click(Sender: TObject);
begin
  dmwildlifeSafari.qryActivityTickets.Next;
end;

procedure TfrmReports.BitBtn15Click(Sender: TObject);
begin
  frmReports.close;
end;

procedure TfrmReports.BitBtn1Click(Sender: TObject);
begin
  Cht1.Active := False;

  Series1.Active := False;
  dmwildlifeSafari.qryAccomodationTrans.sql.Clear;
  dmwildlifeSafari.qryAccomodationTrans.sql.Add(
    'SELECT TravelagentID,SUM([Sales Amount]) AS TotalSales1 FROM tblAccomodationTransaction Group BY TravelAgentID');
  dmwildlifeSafari.qryAccomodationTrans.Active := true;
  Cht2.Active := true;
  Series2.Active := true;
  DBGrid3.Columns[0].Width := 100;
  DBGrid3.Columns[1].Width := 100;
  TFloatField(dmwildlifeSafari.qryAccomodationTrans.FieldByName('TotalSales1'))
    .currency := true;
end;

procedure TfrmReports.BitBtn2Click(Sender: TObject);
begin
  dmwildlifeSafari.qryAccomodationTrans.Prior;
end;

procedure TfrmReports.BitBtn3Click(Sender: TObject);
begin
  dmwildlifeSafari.qryActivityTickets.First;
end;

procedure TfrmReports.BitBtn4Click(Sender: TObject);
var
  iSafariTickets, iactivityTickets: integer;
  rActivitySales: real;
begin
  Cht4.Active := False;
  Series4.Active := False;
  // dmwildlifeSafari.qryActivityTickets.Active := False;
  dmwildlifeSafari.qryActivityTickets.sql.Clear;
  dmwildlifeSafari.qryActivityTickets.sql.Add(
    'SELECT [ActivityID] AS [act] ,Sum([Sales Amount]) AS TotalActSales From tblactivitiestickets Group BY ActivityID');
  dmwildlifeSafari.qryActivityTickets.Active := true;
  DBGrid4.DataSource := dmwildlifeSafari.dsracttickets;
  TFloatField(dmwildlifeSafari.qryActivityTickets.FieldByName('TotalActSales'))
    .currency := true;
  DBGrid4.Columns[0].Width := 100;
  DBGrid4.Columns[1].Width := 100;
  Cht3.Active := true;
  Series3.Active := true;
end;

procedure TfrmReports.BitBtn6Click(Sender: TObject);
begin
  dmwildlifeSafari.qryAccomodationTrans.Next;
end;

procedure TfrmReports.BitBtn7Click(Sender: TObject);
begin
  dmwildlifeSafari.qryAccomodationTrans.Last;
end;

procedure TfrmReports.BitBtn8Click(Sender: TObject);
begin
  dmwildlifeSafari.qryAccomodationTrans.First;
end;

procedure TfrmReports.BitBtn9Click(Sender: TObject);
begin
  // Dynamic Component-graph plots  Sales Generatsed Each month
  Cht2.Active := False;
  Series2.Active := False;
  dmwildlifeSafari.qryAccomodationTrans.sql.Clear;
  dmwildlifeSafari.qryAccomodationTrans.sql.Add(
    'SELECT Month([Date of Sale]) AS [SaleMonth],Sum([Sales Amount]) AS TotalSales From tblAccomodationTransaction  Group BY Month([Date of Sale])');
  dmwildlifeSafari.qryAccomodationTrans.Active := true;
  Cht1.Active := true;
  DBGrid3.Columns[0].Width := 100;
  DBGrid3.Columns[1].Width := 100;
  Series1.Active := true;
  TFloatField(dmwildlifeSafari.qryAccomodationTrans.FieldByName('TotalSales'))
    .currency := true;
end;

procedure TfrmReports.btnDispEticketsClick(Sender: TObject);
var
  sSql: string;
begin
  dmwildlifeSafari.qrysafaritickets.Active := False;
  dmwildlifeSafari.qrysafaritickets.sql.Clear;

  sSql := ('SELECT * from  tblsafariTickets');
  dmwildlifeSafari.qrysafaritickets.sql.Add(sSql);
  dmwildlifeSafari.qrysafaritickets.Active := true;
  DBGrid1.DataSource := dmwildlifeSafari.dsrsafaritickets;
end;

procedure TfrmReports.btnDispRticketsClick(Sender: TObject);
var
  sSql: string;
begin
  dmwildlifeSafari.qryActivityTickets.Active := False;
  dmwildlifeSafari.qryActivityTickets.sql.Clear;
  // display all fields
  sSql := ('SELECT * from tblactivitiesTickets');
  dmwildlifeSafari.qryActivityTickets.sql.Add(sSql);
  dmwildlifeSafari.qryActivityTickets.Active := true;
  DBGrid2.DataSource := dmwildlifeSafari.dsracttickets;
end;

procedure TfrmReports.CountNoofTransactions;
var
  iSafTrans, iAccomTrans, iActTrans, iTotalTrans: integer;
begin

  // Counting No Of Transactions for the whole Year
  dmwildlifeSafari.qrysafaritickets.Active := False;
  dmwildlifeSafari.qrysafaritickets.sql.Clear;
  dmwildlifeSafari.qrysafaritickets.sql.Add((
      'SELECT COUNT([SafariTransactionsNo]) AS iSafTrans FROM tblsafariTickets '
      ));
  dmwildlifeSafari.qrysafaritickets.Active := true;
  iSafTrans := StrToInt(dmwildlifeSafari.qrysafaritickets.FieldByName
      (('iSafTrans')).AsString);

  dmwildlifeSafari.qryActivityTickets.Active := False;
  dmwildlifeSafari.qryActivityTickets.sql.Clear;
  dmwildlifeSafari.qryActivityTickets.sql.Add((
      'SELECT COUNT([ActivityTransactionNo]) AS iActTrans FROM tblActivitiesTickets '));
  dmwildlifeSafari.qryActivityTickets.Active := true;
  iActTrans := StrToInt(dmwildlifeSafari.qryActivityTickets.FieldByName
      (('iActTrans')).AsString);

  dmwildlifeSafari.qryAccomodationTrans.Active := False;
  dmwildlifeSafari.qryAccomodationTrans.sql.Clear;
  dmwildlifeSafari.qryAccomodationTrans.sql.Add((
      'SELECT COUNT([TransactionID]) AS iAccomTrans FROM tblaccomodationtransaction '));
  dmwildlifeSafari.qryAccomodationTrans.Active := true;
  iAccomTrans := StrToInt(dmwildlifeSafari.qryAccomodationTrans.FieldByName
      (('iAccomTrans')).AsString);

  iTotalTrans := iSafTrans + iAccomTrans + iActTrans;
  edttransactions.text := IntToStr(iTotalTrans);
  edtNoofAccomTrans.text := IntToStr(iAccomTrans);
end;

procedure TfrmReports.FormActivate(Sender: TObject);
var
  rAccomodation, rSafari, rActivities, rTotalsales: real;
var
  sSql1, sSql2, ssql3: string;
begin
  CurrencyString := 'R';
  dmwildlifeSafari.qryAccomodationTrans.sql.Clear;
  dmwildlifeSafari.qryAccomodationTrans.sql.Add(
    'SELECT * from tblAccomodationTransaction ');
  dmwildlifeSafari.qryAccomodationTrans.Active := true;
  PopulateYearlyStats; // All the Yearly stats
  CountNoofTransactions; // No of Transactuons for the whole yera
  PopulateAccomStats; // Income and other Info from Accomodation Sector
end;

procedure TfrmReports.lstMonthsClick(Sender: TObject);
var
  imonthlysafaritickets, imonthacttickets, imonth, iMonthlyltickets1, iTickets,
    iMonthlytickets2, iMonthlytickets, AgentHighest, IAgent, iAgent2: integer;
  sname1, ssurname1, sName, sSurname: string;
  rSalesamount, rAmount: real;
begin
  imonth := lstMonths.ItemIndex + 1; // lstbox starts at 0
  case imonth of
    1:
      begin
        // No Of Tickets Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) =1  '));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);

        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =1  ');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=1 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        rAmount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('Transactions')).AsString);
        edtSaleAmount.text := FloattoStrF(rAmount, ffcurrency, 6, 2);

        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=1 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        iTickets := StrToInt(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('Tickets')).AsString);
        edttick.text := IntToStr(iTickets);

        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;
    2:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS [iMonthlytickets2] FROM tblsafariTickets WHERE month([Date of Sale]) =2'));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =2  ');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=2 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        iTickets := StrToInt(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('Tickets')).AsString);
        edttick.text := IntToStr(iTickets);
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=2 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;
    3:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) =3'));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =3');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=3 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=3 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;
      end;
    4:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) =4  '));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =4  ');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=4 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=4 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;
    5:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) =5  '));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =5  ');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=5 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=5 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;
    6:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) =6  '));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =6 ');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=6 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=6 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;
    7:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) =7  '));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =7  ');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=7 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=7 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin // Look for a match
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;
    8:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) =8  '));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =8  ');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=8 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=8 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;
    9:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) =9  '));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =9  ');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=9 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=9 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;
    10:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) =10  '));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =10  ');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=10 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=10 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;
    11:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) =11  '));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) =11  ');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS Transactions From tblsafariTickets WHERE month([Date of Sale])=11 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=11 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;
    12:
      begin
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add((
            'SELECT SUM([No Of Tickets]) AS iMonthlytickets2 FROM tblsafariTickets WHERE month([Date of Sale]) = 12  '));

        dmwildlifeSafari.qrysafaritickets.Active := true;
        imonthlysafaritickets := StrToInt
          (dmwildlifeSafari.qrysafaritickets.FieldByName(('iMonthlytickets2'))
            .AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        // sales Amount Per Month
        dmwildlifeSafari.qrysafaritickets.Active := False;
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT SUM([Total sales Amount]) AS rSalesamount FROM tblsafariTickets WHERE month([Date of Sale]) = 12');

        dmwildlifeSafari.qrysafaritickets.Active := true;
        rSalesamount := StrToFloat(dmwildlifeSafari.qrysafaritickets.FieldByName
            (('rSalesamount')).AsString);
        // This is the Total No of ticket
        iMonthlytickets := imonthlysafaritickets;
        edtmonthlyTS.text := IntToStr(iMonthlytickets);
        edtmonthlyTI.text := FloattoStrF(rSalesamount, ffcurrency, 7, 2);

        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([Total Sales Amount]) AS [Transactions] From tblsafariTickets WHERE month([Date of Sale])= 12 Group BY TravelAgentID ORDER BY SUM([Total Sales Amount]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        IAgent := dmwildlifeSafari.qrysafaritickets.FieldByName('TravelAgentID')
          .AsInteger;
        edtgts2.text := 'Agent ID: ' + IntToStr(IAgent);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(IAgent) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sName := dmwildlifeSafari.tbltravelAgent['First Name'];
            sSurname := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname4.text := sName + ' ' + sSurname;

        // agent with Most No Of Tickets
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'Select TravelAgentID,Sum([No Of Tickets]) AS Tickets From tblsafariTickets WHERE month([Date of Sale])=12 Group BY TravelAgentID ORDER BY SUM([No Of Tickets]) DESC');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        iAgent2 := dmwildlifeSafari.qrysafaritickets.FieldByName
          ('TravelAgentID').AsInteger;
        edtmostsales.text := 'Agent ID: ' + IntToStr(iAgent2);
        dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
        dmwildlifeSafari.tbltravelAgent.Open;
        dmwildlifeSafari.tbltravelAgent.First;
        sName := '';
        while not dmwildlifeSafari.tbltravelAgent.Eof do
        begin
          if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent
            ['TravelAgentID'] then
          begin
            sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
            ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

          end;
          dmwildlifeSafari.tbltravelAgent.Next;
        end;
        edtname6.text := sname1 + ' ' + ssurname1;

      end;

  end;
end;

procedure TfrmReports.PopulateAccomStats;
var
  rAccomSales, rAccom: real;
  iAgent2, imonth: integer;
  sName, sname1, ssurname1, sMonth: string;
begin
  // Total sales
  dmwildlifeSafari.qryAccomodationTrans.Active := False;
  dmwildlifeSafari.qryAccomodationTrans.sql.Clear;
  dmwildlifeSafari.qryAccomodationTrans.sql.Add(
    'SELECT SUM([Sales Amount]) AS rAccomSales FROM tblAccomodationTransaction '
    );

  dmwildlifeSafari.qryAccomodationTrans.Active := true;
  rAccomSales := StrToFloat(dmwildlifeSafari.qryAccomodationTrans.FieldByName
      (('rAccomSales')).AsString);
  edtAcIncome.text := FloattoStrF(rAccomSales, ffcurrency, 8, 2);

  // Agent with most Accomodation Sales

  dmwildlifeSafari.qryAccomodationTrans.sql.Clear;
  dmwildlifeSafari.qryAccomodationTrans.sql.Add( // complex Sql statement
    'Select TravelAgentID,Sum([Sales Amount]) AS rAccom From tblAccomodationTransaction Group BY TravelAgentID ORDER BY SUM([Sales Amount]) DESC');
  dmwildlifeSafari.qryAccomodationTrans.Active := true;
  iAgent2 := dmwildlifeSafari.qryAccomodationTrans.FieldByName('TravelAgentID')
    .AsInteger;
  rAccom := StrToFloat(dmwildlifeSafari.qryAccomodationTrans.FieldByName
      (('rAccom')).AsString);
  edtAmount.text := FloattoStrF(rAccom, ffcurrency, 8, 2);

  dmwildlifeSafari.tbltravelAgent.Filtered := False; ;
  dmwildlifeSafari.tbltravelAgent.Open;
  dmwildlifeSafari.tbltravelAgent.First;
  sName := '';
  while not dmwildlifeSafari.tbltravelAgent.Eof do
  begin // Look for a match
    if IntToStr(iAgent2) = dmwildlifeSafari.tbltravelAgent['TravelAgentID'] then
    begin
      sname1 := dmwildlifeSafari.tbltravelAgent['First Name'];
      ssurname1 := dmwildlifeSafari.tbltravelAgent['Surname'];

    end;
    dmwildlifeSafari.tbltravelAgent.Next;
  end;
  edtMostAccom.text := sname1 + ' ' + ssurname1;

  // Most Popular month
  dmwildlifeSafari.qryAccomodationTrans.Active := False;
  dmwildlifeSafari.qryAccomodationTrans.sql.Clear;
  dmwildlifeSafari.qryAccomodationTrans.sql.Add(
    'SELECT month([date of sale]) AS Imonth, SUM([Sales Amount]) AS rAccomSales FROM tblAccomodationTransaction GROUP BY Month([Date of Sale]) ');

  dmwildlifeSafari.qryAccomodationTrans.Active := true;
  imonth := StrToInt(dmwildlifeSafari.qryAccomodationTrans.FieldByName
      (('iMonth')).AsString);

  case imonth of
    1:
      sMonth := 'January';
    2:
      sMonth := 'February';
    3:
      sMonth := 'March';
    4:
      sMonth := 'April';
    5:
      sMonth := 'May';
    6:
      sMonth := 'June';
    7:
      sMonth := 'July';
    8:
      sMonth := 'August';
    9:
      sMonth := 'September';
    10:
      sMonth := 'October';
    11:
      sMonth := 'Novemeber';
    12:
      sMonth := 'December';

  end;
  edtmonth.text := sMonth;

end;

procedure TfrmReports.PopulateYearlyStats;

Var
  iYearlyTickets, isaftickets, iActTickets, iActTrans, iSafTrans,
    iAccomTrans: integer;
  sSql1, sSql2, ssql3, sSql4, sSql5: string;
  rAct, rSaf, rAccom, Rsales, iTotaltransactions: real;
begin
  with dmwildlifeSafari do
  begin
    // counting No Of Trasnactions
    // iSafTrans := tblsafaritickets.RecordCount;
    // iactTrans := tblactivitytickets.RecordCount;
    // iaccomTrans := TblAccomodationTransaction.RecordCount;
    // iTotaltransactions := iaccomTrans + iactTrans + iSafTrans;
    // edttransactions.Text := IntToStr(iTotaltransactions);

    // Counting No of tickets

    with qrysafaritickets do
    begin
      qrysafaritickets.Active := False;
      qrysafaritickets.sql.Clear;
      sSql1 := (
        'SELECT SUM([No Of Tickets]) AS isaftickets FROM tblsafariTickets  ');

      // add the SQL
      dmwildlifeSafari.qrysafaritickets.sql.Add(sSql1);
      qrysafaritickets.Active := true;
      isaftickets := StrToInt(qrysafaritickets.FieldByName(('isaftickets'))
          .AsString);

    end; // end of qry saf

    with qryActivityTickets do
    begin

      // Counting  Tickets sales
      qryActivityTickets.Active := False;
      qryActivityTickets.sql.Clear;
      sSql2 := (
        'SELECT SUM([No Of Tickets]) AS iActTickets FROM tblActivitiesTickets  '
        );

      // add the SQL
      dmwildlifeSafari.qryActivityTickets.sql.Add(sSql2);
      qryActivityTickets.Active := true;
      iActTickets := StrToInt(qryActivityTickets.FieldByName(('iActTickets'))
          .AsString);

      // Calculating Sales Amoun
    end; // end of qry safarti tickets
    // sales Amount For Act tickets
    qryActivityTickets.Active := False;
    qryActivityTickets.sql.Clear;
    ssql3 :=
      ('SELECT SUM([sales Amount]) AS [rAct] FROM tblActivitiesTickets  ');
    dmwildlifeSafari.qryActivityTickets.sql.Add(ssql3);
    qryActivityTickets.Active := true;

    rAct := StrToFloat(qryActivityTickets.FieldByName(('rAct')).AsString);

    // Accomodation
    qryAccomodationTrans.Active := False;
    qryAccomodationTrans.sql.Clear;
    sSql4 := (
      'SELECT SUM([Sales Amount]) AS [rAccom] FROM tblAccomodationTransaction  '
      );
    dmwildlifeSafari.qryAccomodationTrans.sql.Add(sSql4);
    qryAccomodationTrans.Active := true;

    rAccom := StrToFloat(qryAccomodationTrans.FieldByName(('rAccom')).AsString);

    // Safaris
    qryAccomodationTrans.Active := False;
    qryAccomodationTrans.sql.Clear;
    sSql5 := (
      'SELECT SUM([Total Sales Amount]) AS [RSaf] FROM tblsafaritickets  ');
    dmwildlifeSafari.qryAccomodationTrans.sql.Add(sSql5);
    qryAccomodationTrans.Active := true;

    rSaf := StrToFloat(qryAccomodationTrans.FieldByName(('RSaf')).AsString);

  end; // end of dm wild

  Rsales := rAct + rSaf + rAccom;
  edtsales.text := FloattoStrF(Rsales, ffcurrency, 10, 2);
  iYearlyTickets := iActTickets + isaftickets;
  edtyearly.text := IntToStr(iYearlyTickets);

end;


// end of the case statement

procedure TfrmReports.rgpAgroupClick(Sender: TObject);
var
  iGroup: integer;
  sSql: string;
begin
  if rgpAgroup.ItemIndex = -1 then
  begin
    ShowMessage('Please select a category to group by');
    Exit;
  end;
  dmwildlifeSafari.qryActivityTickets.sql.Clear;
  dmwildlifeSafari.qryActivityTickets.Active := False;
  iGroup := rgpAgroup.ItemIndex + 1;

  // with dmwildlifesafari.qrysafaritickets do
  // begin
  dmwildlifeSafari.qryActivityTickets.Active := False;
   sSql:='';
  case iGroup of
    1:
      // // Categorises Sales by each Agent
      begin
        dmwildlifeSafari.qryActivityTickets.Active := False;
        dmwildlifeSafari.qryActivityTickets.sql.Clear;
        sSql := (
          'SELECT TravelAgentID, Max([Sales Amount]) AS [Total Sales] FROM tblactivitiesTickets GROUP BY TravelAgentID  ');
        dmwildlifeSafari.qryActivityTickets.sql.Add(sSql);
        dmwildlifeSafari.qryActivityTickets.Active := true;
        DBGrid2.DataSource := dmwildlifeSafari.dsracttickets;
        DBGrid2.Columns[0].Width := 110;
        DBGrid2.Columns[1].Width := 110;
        TFloatField(dmwildlifeSafari.qryActivityTickets.FieldByName
            ('Total Sales')).currency := true;
      end;
    2:
      // Categorises Total Tickets by each Agent
      begin
        dmwildlifeSafari.qryActivityTickets.Active := False;
        dmwildlifeSafari.qryActivityTickets.sql.Clear;
        sSql := (
          'SELECT TravelAgentID, AVG([Sales Amount]) AS [Avg Sales] FROM tblactivitiesTickets GROUP BY TravelAgentID  ');
        dmwildlifeSafari.qryActivityTickets.sql.Add(sSql);
        dmwildlifeSafari.qryActivityTickets.Active := true;
        DBGrid2.DataSource := dmwildlifeSafari.dsracttickets;
        DBGrid2.Columns[0].Width := 115;
        DBGrid2.Columns[1].Width := 115;
        TFloatField(dmwildlifeSafari.qryActivityTickets.FieldByName('Avg Sales')
          ).currency := true;
      end;
    3: // Categorises Sales by each Month
      begin
        sSql := ( // having Statement
          'SELECT Month([Date of Sale]) AS [Month], SUM([Sales Amount]) AS [Sales Each Month] FROM tblactivitiesTickets GROUP BY month([Date of Sale]) having SUM([Sales Amount]) < 1000  ');
        dmwildlifeSafari.qryActivityTickets.sql.Add(sSql);
        dmwildlifeSafari.qryActivityTickets.Active := true;
        DBGrid2.DataSource := dmwildlifeSafari.dsracttickets;
        DBGrid2.Columns[0].Width := 115;
        DBGrid2.Columns[1].Width := 115;
        TFloatField(dmwildlifeSafari.qryActivityTickets.FieldByName
            ('Sales Each Month')).currency := true;

      end;
    4: // Categorises No of Tickets by each month
      begin
        sSql := (
          'SELECT Month([Date of Sale]) AS [Month], AVG([No Of Tickets]) AS [ Tickets Each Month] FROM tblactivitiesTickets GROUP BY month([Date of Sale])  ');
        dmwildlifeSafari.qryActivityTickets.sql.Add(sSql);
        dmwildlifeSafari.qryActivityTickets.Active := true;
        DBGrid2.DataSource := dmwildlifeSafari.dsracttickets;
        DBGrid2.Columns[0].Width := 115;
        DBGrid2.Columns[1].Width := 115;
      end;

  end;

end;

procedure TfrmReports.rgpEgroupClick(Sender: TObject);
var
  iGroup: integer;
  sSql, sMonth: string;
  imonth: integer;
begin
  // DBGrid1.Columns[0].Width := 25;
  // DBGrid1.Columns[1].Width := 100;
  if rgpEgroup.ItemIndex = -1 then
  begin
    ShowMessage('Please select a category to group by');
    Exit;
  end;

  iGroup := rgpEgroup.ItemIndex;

  // with dmwildlifesafari.qrysafaritickets do
  // begin
  dmwildlifeSafari.qrysafaritickets.Active := False;
  dmwildlifeSafari.qrysafaritickets.sql.Clear;
  case iGroup of
    0:
      // // Sum of sales by Each Safari type
      begin // Linking 2 tables
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'SELECT [Type Of Safari] ,SUM([Total Sales Amount]) AS [Sale Amount]'
          );
        dmwildlifeSafari.qrysafaritickets.sql.Add(
          'FROM [tblSafaris],[tblSafaritickets] WHERE [tblsafaris].[SafariID] = [tblsafaritickets].[SafariID] GROUP BY [Type Of Safari] ');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        TFloatField(dmwildlifeSafari.qrysafaritickets.FieldByName('Sale Amount')
          ).currency := true;
        DBGrid1.DataSource := dmwildlifeSafari.dsrsafaritickets;
        DBGrid1.Columns[0].Width := 125;
        DBGrid1.Columns[1].Width := 125;
      end;
    1:
      // Categorises Total Tickets by each Agent
      begin
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        sSql := (
          'SELECT TravelAgentID, SUM([No Of Tickets]) AS [Total Tickets] FROM tblsafariTickets GROUP BY TravelAgentID  ');
        dmwildlifeSafari.qrysafaritickets.sql.Add(sSql);
        dmwildlifeSafari.qrysafaritickets.Active := true;
        DBGrid1.DataSource := dmwildlifeSafari.dsrsafaritickets;
        DBGrid1.Columns[0].Width := 130;
        DBGrid1.Columns[1].Width := 130;
      end;
    2: // Categorises Sales by each Month
      begin
        dmwildlifeSafari.qrysafaritickets.sql.Clear;
        sMonth := (InputBox('', 'Please Specify a month or Type ALL', 'ALL'));
        // imonth := StrToInt(smonth);
        if (sMonth = 'ALL') then // dynamic Query
        begin
          dmwildlifeSafari.qrysafaritickets.sql.Add(
            'SELECT Month([Date of Sale]) AS [Month], SUM([Total Sales Amount]) AS [Sales Each Month] FROM tblsafariTickets GROUP BY month([Date of Sale]) ');

          dmwildlifeSafari.qrysafaritickets.Active := true;

          DBGrid1.DataSource := dmwildlifeSafari.dsrsafaritickets;
          DBGrid1.Columns[0].Width := 115;
          DBGrid1.Columns[1].Width := 115;
          TFloatField(dmwildlifeSafari.qrysafaritickets.FieldByName
              ('Sales Each Month')).currency := true;
        end
        else
          dmwildlifeSafari.qrysafaritickets.sql.Add(
            'SELECT Month([Date of Sale]) AS [Month], SUM([Total Sales Amount]) AS [Sales Each Month] FROM tblsafariTickets Where month([Date of Sale]) =  "' + sMonth + '" GROUP BY Month([Date of Sale]) ');
        dmwildlifeSafari.qrysafaritickets.Active := true;
        DBGrid1.DataSource := dmwildlifeSafari.dsrsafaritickets;
        DBGrid1.Columns[0].Width := 115;
        DBGrid1.Columns[1].Width := 115;
        TFloatField(dmwildlifeSafari.qrysafaritickets.FieldByName
            ('Sales Each Month')).currency := true;
      end;
    3: // Categorises No of Tickets by each month
      begin
        sSql := (
          'SELECT Month([Date of Sale]) AS [Month], SUM([No Of Tickets]) AS [Tickets Each Month] FROM tblsafariTickets GROUP BY month([Date of Sale])  ');
        dmwildlifeSafari.qrysafaritickets.sql.Add(sSql);
        dmwildlifeSafari.qrysafaritickets.Active := true;
        DBGrid1.DataSource := dmwildlifeSafari.dsrsafaritickets;
        DBGrid1.Columns[0].Width := 115;
        DBGrid1.Columns[1].Width := 115;
      end;
    { dmwildlifeSafari.qrysafaritickets.TFloatField(FieldByName('Total Sales'))
      .Currency := true; }
  end;
end;

procedure TfrmReports.tbStatsShow(Sender: TObject);
var
  iTicketsafari, iTicketactivities, itransactions, iAccomTrans, isafaritrans,
    iActTrans, iSafariTickets, iActTickets, iTotalTickets: integer;
begin

end;

end.
