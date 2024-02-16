unit dmWildlifeSafari_u;

interface

uses
  Dialogs, Forms, SysUtils, Classes, ADODB, DB;

type
  TdmWildlifeSafari = class(TDataModule)
    Conwildifesafari: TADOConnection;
    tblAccomodation: TADOTable;
    dtsrAccomodation: TDataSource;
    tbltravelAgent: TADOTable;
    dtsrtravelAgent: TDataSource;
    tblmanager: TADOTable;
    dsrManager: TDataSource;
    tblGuests: TADOTable;
    dtsrGuests: TDataSource;
    tblSafaris: TADOTable;
    dtsrSafaris: TDataSource;
    tblActivities: TADOTable;
    dtsractivities: TDataSource;
    tblsafariTickets: TADOTable;
    dtsrsafaritickets: TDataSource;
    tblactivityTickets: TADOTable;
    dtsrActivitytickets: TDataSource;
    qrySafariTickets: TADOQuery;
    qryActivityTickets: TADOQuery;
    dsrsafaritickets: TDataSource;
    dsrActTickets: TDataSource;
    qryAccomodationTrans: TADOQuery;
    dsrAccom: TDataSource;
    tblAccom: TADOTable;
    dtsraccom: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmWildlifeSafari: TdmWildlifeSafari;

implementation

{$R *.dfm}

procedure TdmWildlifeSafari.DataModuleCreate(Sender: TObject);
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'WildlifesafariDB3.mdb.mdb')
    then
  begin
    with dmWildlifeSafari do
    begin
      Conwildifesafari.ConnectionString :=
        'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
        'WildlifesafariDB3.mdb.mdb;Persist Security Info=False';
      Conwildifesafari.LoginPrompt := False;

      tblSafaris.Connection := Conwildifesafari;
      tblsafariTickets.Connection := Conwildifesafari;
      tblmanager.Connection := Conwildifesafari;
      tbltravelAgent.Connection := Conwildifesafari;
      tblAccomodation.Connection := Conwildifesafari;
      tblActivities.Connection := Conwildifesafari;
      tblGuests.Connection := Conwildifesafari;
      tblactivityTickets.Connection := Conwildifesafari;
      tblAccom.Connection := Conwildifesafari;

      tblSafaris.TableName := 'tblsafaris';
      tblsafariTickets.TableName := 'tblSafaritickets';
      tblmanager.TableName := 'tblmanager';
      tblAccomodation.TableName := 'tblAccomodation';
      tblActivities.TableName := 'TblActivities';
      tblGuests.TableName := 'tblGuests';
      tblactivityTickets.TableName := 'tblActivitiesTickets';
      tblAccom.TableName := 'tblAccomodationTransaction';
      tbltravelAgent.TableName := 'tblTravelAgent';

      dtsrSafaris.DataSet:= tblSafaris;
      dtsrGuests.DataSet:= tblGuests;
      dsrManager.DataSet := tblmanager;
      dtsrtravelAgent.DataSet := tbltravelAgent;
      dtsrAccomodation.DataSet := tblAccomodation;
      dtsrActivitytickets.DataSet := tblactivityTickets;
      dtsrsafaritickets.DataSet := tblsafariTickets;
      dtsractivities.DataSet := tblActivities;
      dtsraccom.DataSet := tblAccom;

      tblSafaris.Active := True;
      tblsafariTickets.Active := True;
      tblmanager.Active := True;
      tblAccomodation.Active := True;
      tblActivities.Active := True;
      tblGuests.Active := True;
      tblactivityTickets.Active := True;
      tblAccom.Active := True;
      tbltravelAgent.Active := True;

      dtsrSafaris.DataSet.Active := True;
      dtsrGuests.DataSet.Active := True;
      dsrManager.DataSet.Active := True;
      dtsrtravelAgent.DataSet.Active := True;
      dtsrAccomodation.DataSet.Active := True;
      dtsrActivitytickets.DataSet.Active := True;
      dtsrsafaritickets.DataSet.Active := True;
      dtsractivities.DataSet.Active := True;
      dtsraccom.DataSet.Active := True;

      qryActivityTickets.Connection := Conwildifesafari;
      qryActivityTickets.Active := False;

      qrySafariTickets.Connection := Conwildifesafari;

      qrySafariTickets.Active := False;

      qryAccomodationTrans.Connection := Conwildifesafari;
      qryAccomodationTrans.Active := False;

      dsrAccom.DataSet := qryAccomodationTrans;
      dsrAccom.DataSet.Active := False; // SQL text not set yet

      dsrsafaritickets.DataSet := qrySafariTickets;
      dsrsafaritickets.DataSet.Active := False; // SQL text not set yet

      dsrActTickets.DataSet := qryActivityTickets;
      dsrActTickets.DataSet.Active := False;
    end;

    // ShowMessage('Database successfully connected');
  end
  else
  begin
    // ShowMessage('Database NOT connected');
  end;

end;

end.
