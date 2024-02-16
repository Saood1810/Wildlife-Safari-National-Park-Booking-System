object dmWildlifeSafari: TdmWildlifeSafari
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 423
  Width = 563
  object Conwildifesafari: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Wildl' +
      'ifeSafariDB3.mdb.mdb;Mode=Share Deny None;Persist Security Info=' +
      'False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Je' +
      't OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:D' +
      'atabase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet O' +
      'LEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password=' +
      '"";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Data' +
      'base=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLED' +
      'B:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 144
  end
  object tblAccomodation: TADOTable
    Connection = Conwildifesafari
    CursorType = ctStatic
    TableName = 'TblAccomodation'
    Left = 88
    Top = 304
  end
  object dtsrAccomodation: TDataSource
    DataSet = tblAccomodation
    Left = 184
    Top = 304
  end
  object tbltravelAgent: TADOTable
    Connection = Conwildifesafari
    CursorType = ctStatic
    TableName = 'tblTravelAgent'
    Left = 88
    Top = 240
  end
  object dtsrtravelAgent: TDataSource
    DataSet = tbltravelAgent
    Left = 184
    Top = 232
  end
  object tblmanager: TADOTable
    Connection = Conwildifesafari
    CursorType = ctStatic
    TableName = 'tblManager'
    Left = 88
    Top = 176
  end
  object dsrManager: TDataSource
    DataSet = tblmanager
    Left = 184
    Top = 168
  end
  object tblGuests: TADOTable
    Connection = Conwildifesafari
    CursorType = ctStatic
    TableName = 'tblGuests'
    Left = 88
    Top = 96
  end
  object dtsrGuests: TDataSource
    DataSet = tblGuests
    Left = 184
    Top = 104
  end
  object tblSafaris: TADOTable
    Connection = Conwildifesafari
    CursorType = ctStatic
    TableName = 'tblSafaris'
    Left = 88
    Top = 40
  end
  object dtsrSafaris: TDataSource
    DataSet = tblSafaris
    Left = 184
    Top = 48
  end
  object tblActivities: TADOTable
    Connection = Conwildifesafari
    CursorType = ctStatic
    TableName = 'tblActivities'
    Left = 344
    Top = 344
  end
  object dtsractivities: TDataSource
    DataSet = tblActivities
    Left = 480
    Top = 360
  end
  object tblsafariTickets: TADOTable
    Connection = Conwildifesafari
    CursorType = ctStatic
    TableName = 'tblSafariTickets'
    Left = 344
    Top = 56
  end
  object dtsrsafaritickets: TDataSource
    DataSet = tblsafariTickets
    Left = 480
    Top = 48
  end
  object tblactivityTickets: TADOTable
    Connection = Conwildifesafari
    CursorType = ctStatic
    TableName = 'tblActivitiesTickets'
    Left = 88
    Top = 376
  end
  object dtsrActivitytickets: TDataSource
    DataSet = tblactivityTickets
    Left = 184
    Top = 368
  end
  object qrySafariTickets: TADOQuery
    Connection = Conwildifesafari
    Parameters = <>
    Left = 344
    Top = 176
  end
  object qryActivityTickets: TADOQuery
    Connection = Conwildifesafari
    Parameters = <>
    Left = 344
    Top = 112
  end
  object dsrsafaritickets: TDataSource
    DataSet = qrySafariTickets
    Left = 480
    Top = 176
  end
  object dsrActTickets: TDataSource
    DataSet = qryActivityTickets
    Left = 480
    Top = 112
  end
  object qryAccomodationTrans: TADOQuery
    Connection = Conwildifesafari
    Parameters = <>
    Left = 344
    Top = 232
  end
  object dsrAccom: TDataSource
    DataSet = qryAccomodationTrans
    Left = 480
    Top = 232
  end
  object tblAccom: TADOTable
    Connection = Conwildifesafari
    CursorType = ctStatic
    TableName = 'tblAccomodationTransaction'
    Left = 344
    Top = 288
  end
  object dtsraccom: TDataSource
    DataSet = tblAccom
    Left = 480
    Top = 296
  end
end
