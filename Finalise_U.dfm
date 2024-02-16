object frmmanageRecords: TfrmmanageRecords
  Left = 0
  Top = 0
  Caption = 'Manage Transactions'
  ClientHeight = 523
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 296
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 700
    Height = 481
    ActivePage = TabSheet2
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Safari Tours'
      object GroupBox2: TGroupBox
        Left = 3
        Top = 245
        Width = 398
        Height = 153
        Caption = 'Activties Transactions'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object Label11: TLabel
          Left = 16
          Top = 32
          Width = 49
          Height = 13
          Caption = 'Safari ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 16
          Top = 59
          Width = 49
          Height = 13
          Caption = 'Guest ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 16
          Top = 88
          Width = 89
          Height = 13
          Caption = 'Travel Agent ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 16
          Top = 121
          Width = 73
          Height = 13
          Caption = 'No Of Tickets'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 200
          Top = 32
          Width = 72
          Height = 13
          Caption = 'Date Booked'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 200
          Top = 59
          Width = 28
          Height = 13
          Caption = 'Time'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 200
          Top = 88
          Width = 72
          Height = 13
          Caption = 'Sale Amount'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 200
          Top = 120
          Width = 68
          Height = 13
          Caption = 'Date of Sale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 355
          Top = 88
          Width = 5
          Height = 18
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object spnSafariId: TSpinEdit
          Left = 105
          Top = 32
          Width = 42
          Height = 22
          Ctl3D = True
          MaxValue = 6
          MinValue = 1
          ParentCtl3D = False
          TabOrder = 0
          Value = 1
        end
        object spnGstId: TSpinEdit
          Left = 105
          Top = 60
          Width = 42
          Height = 22
          MaxValue = 22
          MinValue = 1
          TabOrder = 1
          Value = 1
        end
        object spnTAgentid: TSpinEdit
          Left = 105
          Top = 88
          Width = 42
          Height = 22
          MaxValue = 7
          MinValue = 1
          TabOrder = 2
          Value = 1
        end
        object spntickets: TSpinEdit
          Left = 105
          Top = 116
          Width = 42
          Height = 22
          MaxValue = 8
          MinValue = 1
          TabOrder = 3
          Value = 1
        end
        object dtbked: TDateTimePicker
          Left = 288
          Top = 29
          Width = 81
          Height = 21
          Date = 43945.987585347230000000
          Format = 'dd/MM/yy'
          Time = 43945.987585347230000000
          TabOrder = 4
        end
        object dttimebked: TDateTimePicker
          Left = 288
          Top = 56
          Width = 81
          Height = 21
          Date = 43945.987649953710000000
          Format = 'HH:mm'
          Time = 43945.987649953710000000
          Kind = dtkTime
          TabOrder = 5
        end
        object dtdatesale: TDateTimePicker
          Left = 288
          Top = 112
          Width = 81
          Height = 21
          Date = 43945.987691423610000000
          Time = 43945.987691423610000000
          TabOrder = 6
        end
        object edtsaleAmount: TEdit
          Left = 288
          Top = 85
          Width = 65
          Height = 19
          NumbersOnly = True
          TabOrder = 7
        end
        object edtcent1: TEdit
          Left = 359
          Top = 85
          Width = 34
          Height = 19
          NumbersOnly = True
          TabOrder = 8
        end
        object Edit1: TEdit
          Left = 208
          Top = -16
          Width = 121
          Height = 19
          TabOrder = 9
          Text = 'Edit1'
        end
      end
      object rgpsearch: TRadioGroup
        Left = 407
        Top = 302
        Width = 122
        Height = 77
        Caption = 'Search By:'
        Items.Strings = (
          'Guest ID'
          'Travel Agent ID'
          'Activity ID')
        TabOrder = 1
      end
      object edtSearch: TEdit
        Left = 417
        Top = 258
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 2
        TextHint = 'Search...'
      end
      object BitBtn4: TBitBtn
        Left = 478
        Top = 396
        Width = 75
        Height = 25
        Caption = 'Search'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F1
          E7A65D00A65D00D7B98DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFAF3EAA65D00BE7807C78209A75F02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F0E4B56C00C989
          1ED49729B56C00E5CEA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFCFEFDFCFEFCF9FFFFFFFDF9F1C27C09DFAA4CEDC06BC27C
          09E5CB99FFFFFFFFFFFFFFFFFFFFFFFFF1E5D0D5B285BA833EB47B32B67E34CF
          AB7BCD8B18CD8B18F3C979CD8B18E7CD99FFFFFFFFFFFFFFFFFFFFFFFFEFE1CB
          AE6F19C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C78AFFFF
          FFFFFFFFFFFFFFFFFFFFF3E7D7B2741DEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2C8A1C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AD76FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9F5BF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8C08730FEFCF7FFFFFFFFFFFFFFFFFFFFFFFFCA9949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFBEED6FFFF
          FFFFFFFFFFFFFFFFFFFFD2A561EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC78F35FFFEFCFFFFFFFFFFFFFFFFFFFFFFFFE2C69BCA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDDB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF4E9D9CD963AF1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C17E0DF1E3CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E6D4
          D0973CD19D49F9F3E8FFFAEFFBF7F0DCB373C6841AF8EFDCFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9D8EAD2A7D8AA57CB8C20D4A048DE
          BB7BF2E5CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BitBtn4Click
      end
      object Add: TBitBtn
        Left = 20
        Top = 417
        Width = 121
        Height = 29
        Caption = 'Add'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9F5A009F5A009F5A009F5A009F5A009F5A00F5EEE2FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A00B26203B2
          6203B26203B262039F5A00F4ECDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9F5A00B96B09BB6B09B96B09B96B099F5A00F4EDE0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A00BD7011BE
          6F11BD7011BD70119F5A00F6F0E6FFFFFFFFFFFFFFFFFFFFFFFFF8EDDDF2E0C6
          F3E2C9F2E1C6F7E9D49F5A00C47718C47718C27617C477189F5A00EAD2AFF4E3
          CAF3E2C9F3E2C9F4E5CE9F5A009F5A009F5A009F5A009F5A009F5A00C87E1EC8
          7E1EC87E1EC87E1E9F5A009F5A009F5A009F5A009F5A009F5A009F5A00C98124
          C98124C98124C98124C98124C98124C98124C98023C98124C98124C98124C981
          24C98124C981249F5A009F5A00D48D2CD8902FD1892BD1892BD1892BD0892BCE
          872ACE872ACE882AD1892BD1892BD1892BD48D2CD48D2C9F5A009F5A00DE9B39
          DE9B39D89434D89334D89435D69133D28E31D28E31D48F32D89435D89434D893
          34DC9736DE9B399F5A009F5A00D99739D99739D99739D99739D99739D99739D9
          9739D99739D99739D99739D99739D99739D99739D997399F5A009F5A009F5A00
          9F5A009F5A009F5A009F5A00E2A243E2A243E1A042E2A2439F5A009F5A009F5A
          009F5A009F5A009F5A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A00E7A94DE7
          A94DE5A94BE7A94D9F5A00FCF9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9F5A00EBB054EDB355EBB054EBB0549F5A00F5EDE2FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A00F7C166FA
          C567F7C166F7C1669F5A00F4EBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9F5A00FFD480FFD480FFD480FFD4809F5A00F3EADCFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A009F5A009F
          5A009F5A009F5A009F5A00F8F3EBFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 4
        OnClick = AddClick
      end
      object Delete: TBitBtn
        Left = 167
        Top = 420
        Width = 108
        Height = 29
        Caption = 'Update'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDCC2C07900FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEDDCC2C07900C3800EC07900C07900C07900C07900C07900C07900C079
          00D4AC71FFFFFFFFFFFFFFFFFFFFFFFFEDDCC2BC7500CB8C21D4972CD4972CD4
          972CD4972CD4972CD4972CD4972CCB8C21BC7500BC7500EDDCC2FFFFFFEDDCC2
          B67000D49A38DFAA49DFAA49DFAA49DFA949E0A949DFAA49DFAA49DFA949E0A9
          49D49A38B67000B67000FFFFFFFFFFFFEDDCC2B06A00DBA74BE9BA63E9BA63E9
          BA63E9BA63E9BA63E9BA63E9BA63DBA74BB06900AF6900B06900FFFFFFFFFFFF
          FFFFFFEDDCC2A96300E1AF59A96300A96300A96400A96300A96300A86300A963
          00A86300A96400A96400FFFFFFEDDCC29F5A00FFFFFFEDDCC2A35E00FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDCC2A35E00A35E00EDDCC2EDDCC2A35E00
          A35E00EDDCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35E00EDDCC2FFFF
          FF9F5A00EDDCC2FFFFFFA96400A96400A86300A96300A86300A96300A96300A9
          6400A96300A96300C3800EA96300EDDCC2FFFFFFFFFFFFFFFFFFB06900AF6900
          B06900CB8D21D4972CD4972CD4972CD4972CD3972CD3972CD4972CCB8D21B06A
          00EDDCC2FFFFFFFFFFFFB67000B67000D49A38E0A949DFA949DFAA49DFAA49E0
          A949DFA949DFAA49DFAA49DFAA49D49A38B67000EDDCC2FFFFFFEDDCC2BC7500
          BC7500DCA74BE9B963E9BA63EABA63EABA63E9BA63E9BA63E9BA63DBA74BBC75
          00EDDCC2FFFFFFFFFFFFFFFFFFFFFFFFD4AC71C07900C07900C07900C07900C0
          7900C07900C07900E1AF59C07900EDDCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07900EDDCC2FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 5
        OnClick = DeleteClick
      end
      object Update: TBitBtn
        Left = 302
        Top = 420
        Width = 125
        Height = 29
        Caption = 'Delete'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D
          25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA5A60E4
          5A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60
          E45A60E45A60E41D25DA1D25DA767BE8767BE8767BE8767BE8767BE8767BE876
          7BE8767BE8767BE8767BE8767BE8767BE8767BE8767BE81D25DA1D25DA979BEE
          979BEE979BEE979BEE979BEE979BEE979BEE979BEE979BEE979BEE979BEE979B
          EE979BEE979BEE1D25DA1D25DAB8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8
          BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF31D25DA1D25DA1D25DA
          1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
          DA1D25DA1D25DA1D25DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 6
        OnClick = UpdateClick
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 26
        Width = 518
        Height = 127
        Ctl3D = False
        DataSource = dmWildlifeSafari.dtsrsafaritickets
        ParentCtl3D = False
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SafariTransactionsNo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SafariID'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GuestID'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'No Of Tickets'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total Sales Amount'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Date Booked'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TravelAgentID'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Date of Sale'
            Width = 80
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 159
        Width = 250
        Height = 48
        DataSource = dmWildlifeSafari.dtsrsafaritickets
        VisibleButtons = [nbFirst, nbPrior]
        TabOrder = 8
      end
      object DBNavigator2: TDBNavigator
        Left = 278
        Top = 159
        Width = 250
        Height = 48
        DataSource = dmWildlifeSafari.dtsrsafaritickets
        VisibleButtons = [nbNext, nbLast]
        TabOrder = 9
      end
      object rgp: TGroupBox
        Left = 180
        Top = 213
        Width = 193
        Height = 42
        Caption = 'Safari  Transaction ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        object edtsafTrans: TEdit
          Left = 53
          Top = 20
          Width = 60
          Height = 21
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Activities'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 3
        Top = 257
        Width = 392
        Height = 144
        Caption = 'Activties Transactions'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label3: TLabel
          Left = 16
          Top = 32
          Width = 60
          Height = 13
          Caption = 'Activity ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 59
          Width = 49
          Height = 13
          Caption = 'Guest ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 10
          Top = 88
          Width = 89
          Height = 13
          Caption = 'Travel Agent ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 16
          Top = 121
          Width = 73
          Height = 13
          Caption = 'No Of Tickets'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 200
          Top = 32
          Width = 72
          Height = 13
          Caption = 'Date Booked'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 200
          Top = 59
          Width = 28
          Height = 13
          Caption = 'Time'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 200
          Top = 88
          Width = 72
          Height = 13
          Caption = 'Sale Amount'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 200
          Top = 120
          Width = 68
          Height = 13
          Caption = 'Date of Sale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object spnActID: TSpinEdit
          Left = 105
          Top = 32
          Width = 42
          Height = 22
          MaxValue = 7
          MinValue = 1
          TabOrder = 0
          Value = 1
        end
        object spnGuestID: TSpinEdit
          Left = 105
          Top = 60
          Width = 42
          Height = 22
          MaxValue = 22
          MinValue = 1
          TabOrder = 1
          Value = 1
        end
        object spnAgentID: TSpinEdit
          Left = 105
          Top = 88
          Width = 42
          Height = 22
          MaxValue = 6
          MinValue = 1
          TabOrder = 2
          Value = 1
        end
        object spnNoofTickets: TSpinEdit
          Left = 105
          Top = 116
          Width = 42
          Height = 22
          MaxValue = 5
          MinValue = 1
          TabOrder = 3
          Value = 1
        end
        object dtpBooked: TDateTimePicker
          Left = 288
          Top = 29
          Width = 81
          Height = 21
          Date = 43945.987585347230000000
          Time = 43945.987585347230000000
          TabOrder = 4
        end
        object dtpTimebooked: TDateTimePicker
          Left = 288
          Top = 56
          Width = 81
          Height = 21
          Date = 43945.987649953710000000
          Format = 'hh:mm'
          Time = 43945.987649953710000000
          Kind = dtkTime
          TabOrder = 5
        end
        object dtsale: TDateTimePicker
          Left = 288
          Top = 112
          Width = 81
          Height = 21
          Date = 43945.987691423610000000
          Time = 43945.987691423610000000
          TabOrder = 6
        end
        object edtcent2: TEdit
          Left = 354
          Top = 85
          Width = 23
          Height = 19
          NumbersOnly = True
          TabOrder = 7
        end
        object edtsales: TEdit
          Left = 288
          Top = 85
          Width = 60
          Height = 19
          TabOrder = 8
        end
      end
      object BitBtn1: TBitBtn
        Left = 30
        Top = 407
        Width = 120
        Height = 34
        Caption = 'Update'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000F3E4CAC58005
          C58005C58005C58005C58005C58005C58005C58005C58005C58005C58005C580
          05C58005C58005F3E4CAC7830AE8B963F1C87CF1C87CF1C87CF1C87CF1C87CF1
          C87CF1C87CF1C87CF1C87CF1C87CF1C87CF1C87CE8B963C7830AC98710F1CB83
          F1CA82F2CB82F2CB83F1CA82F1CB82F2CA82F2CB82F1CB82F1CB82F1CB82F2CA
          82F2CA82F2CA82CA8711CC8C17F3CE8AF3CE8BF2CE8BF3CE8AF2CE8B3F92003F
          92003F92003F9200F2CE8AF2CE8AF2CE8BF3CE8BF3CE8ACD8C17D09120F4D294
          F3D294F4D294F3D294F4D2943F92003F92003F92003F9200F3D294F3D294F4D2
          94F4D294F4D294D09120D39629F5D79FF5D79FF4D79EF4D69FF4D79F3F92003F
          92003F92003F9200F5D79FF5D69FF5D79FF4D69FF5D69FD39729D69C33F6DCAB
          F6DBAB3F92003F92003F92003F92003F92003F92003F92003F92003F92003F92
          00F6DCAAF6DBABD69D33DBA33DF8E1B7F7E1B73F92003F92003F92003F92003F
          92003F92003F92003F92003F92003F9200F8E1B8F8E1B8DAA23DDEA847F9E6C3
          F9E6C43F92003F92003F92003F92003F92003F92003F92003F92003F92003F92
          00F9E6C4F8E6C4DEA847E2AF51FAEBD1FAECD03F92003F92003F92003F92003F
          92003F92003F92003F92003F92003F9200FAEBD0FAECD0E2AE51E6B45AFBF1DC
          FBF0DCFBF0DCFBF0DCFBF0DC3F92003F92003F92003F9200FBF0DCFBF0DCFBF1
          DCFBF1DCFCF0DCE6B45AE9BA63FDF5E7FCF5E7FCF5E7FDF5E7FCF5E73F92003F
          92003F92003F9200FCF5E7FDF5E7FCF5E7FCF5E7FDF5E7E9B963EBBE6AFEF9F1
          FEF9F1FDF9F1FDF9F0FEF9F13F92003F92003F92003F9200FDF9F1FEF9F0FEF9
          F0FEF9F1FEF9F0ECBE6AEEC270FEFDF9FFFCF9FFFCF9FEFDF9FEFDF9FEFCF9FE
          FCF9FEFDF9FFFCF9FFFCF8FFFDF9FEFCF9FFFDF9FEFCF8EEC271F0C575FCF2E1
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFCF2E1F0C575F3E4CAF0C575F0C575F0C575F0C575F0C575F0C576F0
          C575F0C575F0C575F0C575F0C575F0C575F0C575F0C575F3E4CA}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object rgpSort: TRadioGroup
        Left = 401
        Top = 266
        Width = 135
        Height = 97
        Caption = 'Sort Transactions By:'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Most Expensive'
          'Cheapest'
          'GuestID'
          'Travel Agent ID')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnClick = rgpSortClick
      end
      object BitBtn2: TBitBtn
        Left = 440
        Top = 371
        Width = 75
        Height = 25
        Caption = 'Clear'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 265
        Top = 407
        Width = 104
        Height = 34
        Caption = 'Delete'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000F3E4CAC58005
          C58005C58005C58005C58005C58005C58005C58005C58005C58005C58005C580
          05C58005C58005F3E4CAC7830AE8B963F1C87CF1C87CF1C87CF1C87CF1C87CF1
          C87CF1C87CF1C87CF1C87CF1C87CF1C87CF1C87CE8B963C7830AC98710F1CB83
          F1CA82F2CB82F2CB83F1CA82F1CB82F2CA82F2CB82F1CB82F1CB82F1CB82F2CA
          82F2CA82F2CA82CA8711CC8C17F3CE8AF3CE8BF2CE8BF3CE8AF2CE8BF3CE8BF2
          CE8AF3CE8AF2CE8AF2CE8AF2CE8AF2CE8BF3CE8BF3CE8ACD8C17D09120F4D294
          F3D294F4D294F3D294F4D294F4D294F4D294F3D294F3D394F3D294F3D294F4D2
          94F4D294F4D294D09120D39629F5D79FF5D79FF4D79EF4D69FF4D79FF5D69FF5
          D79FF4D79FF5D69FF5D79FF5D69FF5D79FF4D69FF5D69FD39729D69C33F6DCAB
          F6DBAB1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
          DAF6DCAAF6DBABD69D33DBA33DF8E1B7F7E1B71D25DA1D25DA1D25DA1D25DA1D
          25DA1D25DA1D25DA1D25DA1D25DA1D25DAF8E1B8F8E1B8DAA23DDEA847F9E6C3
          F9E6C41D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
          DAF9E6C4F8E6C4DEA847E2AF51FAEBD1FAECD01D25DA1D25DA1D25DA1D25DA1D
          25DA1D25DA1D25DA1D25DA1D25DA1D25DAFAEBD0FAECD0E2AE51E6B45AFBF1DC
          FBF0DCFBF0DCFBF0DCFBF0DCFCF0DCFBF0DCFCF0DCFBF0DCFBF0DCFBF0DCFBF1
          DCFBF1DCFCF0DCE6B45AE9BA63FDF5E7FCF5E7FCF5E7FDF5E7FCF5E7FDF5E7FD
          F4E7FCF5E7FCF5E8FCF5E7FDF5E7FCF5E7FCF5E7FDF5E7E9B963EBBE6AFEF9F1
          FEF9F1FDF9F1FDF9F0FEF9F1FEF9F1FEF9F0FDF9F1FDF9F0FDF9F1FEF9F0FEF9
          F0FEF9F1FEF9F0ECBE6AEEC270FEFDF9FFFCF9FFFCF9FEFDF9FEFDF9FEFCF9FE
          FCF9FEFDF9FFFCF9FFFCF8FFFDF9FEFCF9FFFDF9FEFCF8EEC271F0C575FCF2E1
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFCF2E1F0C575F3E4CAF0C575F0C575F0C575F0C575F0C575F0C576F0
          C575F0C575F0C575F0C575F0C575F0C575F0C575F0C575F3E4CA}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn3Click
      end
      object BitBtn5: TBitBtn
        Left = 156
        Top = 407
        Width = 103
        Height = 34
        Caption = 'Add'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFF2890C2
          2890C22890C22890C22890C22890C22890C22890C22890C22890C22890C22890
          C22890C22890C2FFFFFFFFFFFF2890C2A45F00A45F00A45F00A45F00A45F00A4
          5F00A45F00A45F00A45F00A45F00A45F00A45F002890C2FFFFFFFFFFFF2693C4
          A76200F7E0B5F7E0B5F7E0B5F7E0B5F7E0B5F7E0B5F7E0B5F7E0B5F7E0B5F7E0
          B5A761002693C5FFFFFFFFFFFF2396C8AB6500F8E3BCF8E3BCF8E3BCF8E3BCF8
          E3BCF8E3BDF8E3BCF7E4BCF7E3BCF8E3BCAA65002396C8FFFFFFFFFFFF209BCD
          AE6900F9E7C7F9E8C7F9E7C6F9E8C7F9E8C7F9E7C7F9E7C6F9E8C6F9E8C7F9E7
          C7AF69001F9ACDFFFFFFFFFFFF1C9FD2B36D00FAEDD3FAEDD3FAECD3FAEDD3FB
          EDD3FAEDD3FBEDD3FAECD3FAECD3FAEDD3B46D001C9FD2FFFFFFFFFFFF18A4D8
          B97200FCF3E0FCF2E0FCF2E0FCF3E0FCF3E0FCF2E0FCF3E0FBF2E0FCF2E0FCF2
          E0B8720018A4D7FFFFFFFFFFFF14A9DDBD7600FDF8EDFDF7EDFEF8ECFDF7ECFD
          F7ECFDF8EDFDF7ECFDF7ECFDF7EDFDF7ECBD760014AADDFFFFFFFFFFFF10AFE2
          C07A00FEFCF7FEFCF6FEFCF7FEFCF6FEFCF7FEFCF7FEFBF6FEFCF7FEFCF6FEFC
          F7C17A0010AFE3FFFFFFFFFFFF0CB4E8C37C00FFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEC37C000CB3E8FFFFFFFFFFFF08B9ED
          C37C00FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEC37C0008B8EDFFFFFFFFFFFF05BDF1A45F00A45F00A45F00A45F00A45F00A4
          5F00A45F00A45F00A45F00A45F00A45F00A4600005BDF1FFFFFFFFFFFF02C1F5
          FFFFFEFFFFFEFFFFFEFFFFFEAD6800AD6700AD6700AD6700FFFFFEFFFFFEFFFF
          FEFFFFFE02C0F5FFFFFFFFFFFF00C3F8FEF8ECFEF8ECFEF8ECFEF8ECB97300BA
          7300B97400BA7300FEF8ECFEF8ECFEF8ECFEF8EC00C3F8FFFFFFFFFFFF00C3F8
          C37C00C37C00C37C00C37C00F7E0B5F7E0B5F7E0B5F7E0B5C37C00C37C00C37C
          00C37C0000C3F8FFFFFFFFFFFFFFFFFFFEFEFDFFFDFCFFFFFEFBF1E0C37C00C3
          7C00C37C00C37C00FEFDFAFFFEFDFEFDFCFDFEFEFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn5Click
      end
      object GroupBox3: TGroupBox
        Left = 146
        Top = 214
        Width = 193
        Height = 42
        Caption = 'Activity  Transaction ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object edtActId: TEdit
          Left = 53
          Top = 20
          Width = 60
          Height = 21
          TabOrder = 0
        end
      end
      object DBNavigator3: TDBNavigator
        Left = 286
        Top = 160
        Width = 250
        Height = 48
        DataSource = dmWildlifeSafari.dtsrActivitytickets
        VisibleButtons = [nbNext, nbLast]
        TabOrder = 7
      end
      object DBNavigator4: TDBNavigator
        Left = 3
        Top = 160
        Width = 250
        Height = 48
        DataSource = dmWildlifeSafari.dtsrActivitytickets
        VisibleButtons = [nbFirst, nbPrior]
        TabOrder = 8
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 16
        Width = 581
        Height = 120
        DataSource = dmWildlifeSafari.dtsrActivitytickets
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ActivityTransactionNo'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ActivityID'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GuestID'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'No of Tickets'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sales Amount'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TravelAgentID'
            Width = 85
            Visible = True
          end>
      end
    end
  end
  object BitBtn6: TBitBtn
    Left = 8
    Top = 487
    Width = 98
    Height = 33
    Caption = 'Back Home'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      A25C00A25C00A25C00A25C00A25C002692C400C3F800C3F82692C4A25C00A25C
      00A25C00FFFFFFFFFFFFFFFFFFFFFFFFA25C00F8E1B7F8E1B7F8E1B7F8E1B713
      97D11BC8F71AC6F51897CEF8E1B7F8E1B7A25C00FFFFFFFFFFFFFFFFFFFFFFFF
      AA6500FDEDCAFFEECFFFF2CCFFF6D3149ED546D4F843D2F6189FD4FFF6D3FFF6
      D3AA6500FFFFFFFFFFFFFFFFFFFFFFFFAA6500FBECD0FCEED5FFF1D2FFF1D211
      A7DC6ADFFA64DCF814A7DBFFF1D2FFF5DAAA6500FFFFFFFFFFFFFFFFFFFFFFFF
      B56F00FDF3DFFDF5E5FFF8E3FFFCEB0EAEE38EEAFC87E7FA10AEE2FFFCEBFFFC
      EBB56F00FFFFFFFFFFFFFFFFFFC2E6F4B56F00FFFEF1FFFDF7FFFEF4FFFEF40C
      B6EABAF7FEB0F3FD0DB6EAFFFEF4FFFFFEB56F00C2E6F4FFFFFFBCE3F21490C6
      1490C6FFFFFFFFFFFFFFFFFFFFFFFF00B6EF00B6EF00B6EF00B8F0FFFFFFFFFF
      FF1490C61490C6AEDDF1139ED204B4EE08C1F61490C6FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF2A93C40BC5F908BDF31490C6139ED20AC0F3
      0DCFFF0FC7F81296CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2096C90FC1
      F30DCEFF0EC7F81490C6ACDDEF139ED229CCF72ED5FE2BCFF9119DD2FFFFFFFF
      FFFFFFFFFFFFFFFF169BCF29CAF52DD5FE1CCDFB0D9FD5B8E1F0FFFFFFC2E6F4
      13A3D742D4F84BDDFE45D6FA11A4D8FFFFFFFFFFFF12A1D54ED5F74ADCFE38D4
      FA10A6DA9CD6EDFFFFFFFFFFFFFFFFFF288FC114ABDE4AD7F968E4FF5FDEFB18
      ADDF0EA7DB68DDF967E4FF5FDEFB11ADE0A2DCF1FFFFFFFFFFFFFFFFFFFFFFFF
      288FC1C8FCFF11B0E463DEFA87ECFF7AE5FC84E7FA86EBFF7BE6FC11B2E5A1DF
      F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2198CBC8FCFF2198CB0CB6E97AE5FBA6
      F4FFA7F4FF96EDFD13B9EBA0E1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      11ADE1C8FCFF11ADE1C2E6F411B7E981E6FB8AEAFC0FBDF0A7E7F9FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF11ADE111ADE111ADE1FFFFFFC2E6F40F
      BFF00FBFF0C2E6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn6Click
  end
end
