object frmManage: TfrmManage
  Left = 0
  Top = 0
  Caption = 'Manage'
  ClientHeight = 548
  ClientWidth = 644
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
  object Label40: TLabel
    Left = 344
    Top = 240
    Width = 37
    Height = 13
    Caption = 'Label40'
  end
  object Label41: TLabel
    Left = 231
    Top = 96
    Width = 60
    Height = 13
    Caption = 'Email Adress'
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 730
    Height = 548
    ActivePage = TabSheet5
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Travel Agents'
      object Label34: TLabel
        Left = 19
        Top = 199
        Width = 621
        Height = 19
        Caption = 
          'In Order To Delete, You will Have To Click On a Travel Agent On ' +
          'The Grid Above'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 10
        Width = 600
        Height = 141
        DataSource = dmWildlifeSafari.dtsrtravelAgent
        DrawingStyle = gdsClassic
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TravelAgentID'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'First Name'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Username'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Password'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID number'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email Adress'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cell phone'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProfilePic'
            Width = 80
            Visible = True
          end>
      end
      object grpAgent2: TGroupBox
        Left = 3
        Top = 240
        Width = 433
        Height = 206
        Caption = 'Travel Agent Details'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label10: TLabel
          Left = 27
          Top = 32
          Width = 51
          Height = 13
          Caption = 'First Name'
        end
        object Label19: TLabel
          Left = 27
          Top = 64
          Width = 42
          Height = 13
          Caption = 'Surname'
        end
        object Label22: TLabel
          Left = 27
          Top = 96
          Width = 46
          Height = 13
          Caption = 'Password'
        end
        object Label26: TLabel
          Left = 27
          Top = 128
          Width = 51
          Height = 13
          Caption = 'ID Number'
        end
        object Label27: TLabel
          Left = 231
          Top = 59
          Width = 50
          Height = 13
          Caption = 'Cell Phone'
        end
        object Label28: TLabel
          Left = 231
          Top = 96
          Width = 60
          Height = 13
          Caption = 'Email Adress'
        end
        object Label21: TLabel
          Left = 216
          Top = -24
          Width = 37
          Height = 13
          Caption = 'Label21'
        end
        object Label12: TLabel
          Left = 72
          Top = -40
          Width = 37
          Height = 13
          Caption = 'Label12'
        end
        object Label1: TLabel
          Left = 231
          Top = 32
          Width = 43
          Height = 13
          Caption = 'Agent ID'
        end
        object Label2: TLabel
          Left = 231
          Top = 128
          Width = 48
          Height = 13
          Caption = 'Username'
        end
        object edtagentUsername: TEdit
          Left = 296
          Top = 129
          Width = 121
          Height = 19
          TabOrder = 0
        end
        object edtagentSurname: TEdit
          Left = 104
          Top = 59
          Width = 121
          Height = 19
          TabOrder = 1
        end
        object edtagentpassword: TEdit
          Left = 104
          Top = 96
          Width = 121
          Height = 19
          TabOrder = 2
        end
        object edtagentID: TEdit
          Left = 104
          Top = 128
          Width = 121
          Height = 19
          MaxLength = 13
          NumbersOnly = True
          TabOrder = 3
        end
        object edtagentCell: TEdit
          Left = 296
          Top = 59
          Width = 121
          Height = 19
          MaxLength = 10
          NumbersOnly = True
          TabOrder = 4
        end
        object edtagentEmail: TEdit
          Left = 296
          Top = 94
          Width = 121
          Height = 19
          TabOrder = 5
        end
        object btnAddAgent: TBitBtn
          Left = 149
          Top = 166
          Width = 75
          Height = 25
          Caption = 'Add'
          DoubleBuffered = True
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
          TabOrder = 6
          OnClick = btnAddAgentClick
        end
        object btnUpdateAgent: TBitBtn
          Left = 251
          Top = 168
          Width = 75
          Height = 25
          Caption = 'Update'
          DoubleBuffered = True
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
          TabOrder = 7
          OnClick = btnUpdateAgentClick
        end
        object edtaname: TEdit
          Left = 104
          Top = 32
          Width = 121
          Height = 19
          TabOrder = 8
        end
        object edtAgentsId: TEdit
          Left = 296
          Top = 34
          Width = 121
          Height = 19
          TabOrder = 9
          TextHint = 'Agent ID'
        end
      end
      object rgpASearch: TGroupBox
        Left = 442
        Top = 238
        Width = 182
        Height = 252
        Caption = 'Search'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object rgpAFilter: TRadioGroup
          Left = 16
          Top = 54
          Width = 145
          Height = 154
          Caption = 'Filter by'
          Items.Strings = (
            'Guest ID'
            'ID Number'
            'Username'
            'First Name(s)'
            'Surname')
          TabOrder = 0
          OnClick = rgpAFilterClick
        end
        object edtSearch2: TEdit
          Left = 16
          Top = 27
          Width = 145
          Height = 21
          AutoSize = False
          TabOrder = 1
          TextHint = 'Enter Search Value'
        end
        object btnclear: TButton
          Left = 31
          Top = 224
          Width = 84
          Height = 25
          Caption = 'Clear Search'
          TabOrder = 2
          OnClick = btnclearClick
        end
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 157
        Width = 224
        Height = 36
        DataSource = dmWildlifeSafari.dtsrtravelAgent
        VisibleButtons = [nbFirst, nbPrior]
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBNavigator2: TDBNavigator
        Left = 359
        Top = 157
        Width = 244
        Height = 36
        DataSource = dmWildlifeSafari.dtsrtravelAgent
        VisibleButtons = [nbNext, nbLast]
        TabOrder = 4
      end
      object BitBtn13: TBitBtn
        Left = 233
        Top = 157
        Width = 96
        Height = 36
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          CECEE826269A9B9BD0FCFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8D72727
          9ACECEE8FFFFFFFFFFFFFFFFFFCECEE826269D1F25CB26279D7171BEFEFEFFFF
          FFFFFFFFFFFFFFFF9696CF26279E1F25CB26269DCECEE8FFFFFFCECEE82527A1
          252BCC252CDB252BCC2527A16A6BBCFEFEFFFFFFFF9090CE2627A0252BCC252C
          DB252BCD2627A1CECEE82527A42D32CD2E36DD2F35DD2F35DD2C33CD2527A488
          89CCA1A2D82527A42C33CD2E36DD2E36DC2E36DD2D33CD2527A4CDCEEC2427A8
          363BCF3A41DF3B41DF3A41DE363BCF2426A92526A9363BCE3A41DE3A41DE3A41
          DF363BCF2527A9ABACDDFFFFFFC3C3E92327AD4045D1474DE1484EE1474DE140
          44D14045D1484EE1484EE1474EE14045D12426ADA1A1DBFFFFFFFFFFFFFFFFFF
          BEBEE82327B14B50D3565CE3565BE3575CE3565BE3565BE3565BE34246CC2226
          B29D9FDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C6EC2226B7555ADD656AE665
          6AE5656AE5656AE5555ADD2226B6A0A2DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFABACE62126BB6065DF7478E77478E87478E87478E86165DF2126BB8385
          D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA1E42025C06B70E08286EA8386EA82
          86EB8286EA8286EA8286EA6B70E02126C07B7DD8FEFFFFFFFFFFFFFFFFA3A5E7
          2026C4757AE38F93EC9093EC9093EC767AE2757AE29093ED8F93EC9093ED767A
          E32025C5797CDBFEFEFFC1C3F11F26C87F83E49B9EEE9C9EEE9B9EEE7F83E31F
          26C91F25C97F82E39C9FEF9C9EEF9C9EEE7F83E31F25C8989BE61F26CD878AE5
          A6A7F0A6A8F0A5A8F0878AE51F26CDA0A3E9BABCF01E25CD868AE4A5A8F0A6A7
          EFA6A8F0878AE41E25CCCCCDF11E25CF8C8FE6ADAFF18C8FE61E25CF8184E4FF
          FFFFFFFFFFA8AAED1E25D08C8FE6ADAFF18C8FE61E25CCCECEE8FFFFFFCCCDF1
          1D25D3878AE51E25D3898EE8FFFFFFFFFFFFFFFFFFFFFFFFAEB1F11D25D3878A
          E41E25D2CECEE8FFFFFFFFFFFFFFFFFFCCCDF11D25D5B7BAF3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC2C4F51D25D5CECEE8FFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 5
        OnClick = BitBtn13Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Guests'
      ImageIndex = 1
      object Label33: TLabel
        Left = 3
        Top = 207
        Width = 571
        Height = 19
        Caption = 
          'In Order To Delete, You will Have To Click On A Guest On The Gri' +
          'd Above'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 25
        Width = 606
        Height = 129
        DataSource = dmWildlifeSafari.dtsrGuests
        DrawingStyle = gdsClassic
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'GuestID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'First Name'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Username'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Password'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID Number'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cell Phone'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email Adress'
            Width = 80
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 29
        Top = 272
        Width = 433
        Height = 202
        Caption = 'Guest Details'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label3: TLabel
          Left = 23
          Top = 40
          Width = 51
          Height = 13
          Caption = 'First Name'
        end
        object Label4: TLabel
          Left = 23
          Top = 80
          Width = 42
          Height = 13
          Caption = 'Surname'
        end
        object Label5: TLabel
          Left = 23
          Top = 120
          Width = 46
          Height = 13
          Caption = 'Password'
        end
        object Label6: TLabel
          Left = 231
          Top = 43
          Width = 51
          Height = 13
          Caption = 'ID Number'
        end
        object Label7: TLabel
          Left = 231
          Top = 84
          Width = 50
          Height = 13
          Caption = 'Cell Phone'
        end
        object Label8: TLabel
          Left = 231
          Top = 120
          Width = 60
          Height = 13
          Caption = 'Email Adress'
        end
        object Label46: TLabel
          Left = 136
          Top = 152
          Width = 48
          Height = 13
          Caption = 'Username'
        end
        object edtGUsername: TEdit
          Left = 190
          Top = 149
          Width = 121
          Height = 19
          TabOrder = 0
        end
        object edtSurname: TEdit
          Left = 91
          Top = 83
          Width = 121
          Height = 19
          TabOrder = 1
        end
        object edtpassword: TEdit
          Left = 91
          Top = 116
          Width = 121
          Height = 19
          TabOrder = 2
        end
        object edtID: TEdit
          Left = 297
          Top = 40
          Width = 121
          Height = 19
          MaxLength = 13
          TabOrder = 3
        end
        object edtCell: TEdit
          Left = 297
          Top = 83
          Width = 121
          Height = 19
          MaxLength = 10
          TabOrder = 4
        end
        object edtEmail: TEdit
          Left = 297
          Top = 124
          Width = 121
          Height = 19
          TabOrder = 5
        end
        object btnUpdateGuest: TBitBtn
          Left = 191
          Top = 174
          Width = 75
          Height = 25
          Caption = 'Update'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF288FC1288FC1288FC1288FC1288FC1288FC1288FC128
            8FC1288FC1288FC1288FC1288FC1288FC1288FC1288FC1288FC12592C519B9EA
            1AD0FC1AD0FC1AD0FC1ACFFC1BCFFD1ACFFC1BCFFC1AD0FC1AD0FC1AD0FC1AD0
            FC1AD0FC20C2EF2592C42296CA2296CA2296CA2296CA2296CA2296CA2296CA22
            96CA24C8F427D2FC27D2FD27D3FC27D3FC27D3FC27D3FC2297C91E9CCF36D7FC
            36D6FC37D6FD36D7FC37D7FC36D6FD2BC3EE1E9CCF2BC3EE36D7FD36D7FC36D6
            FD37D7FD36D7FD1E9DCF19A2D547DBFC47DBFD47DBFD47DBFD47DBFD48DBFD48
            DBFD3DCFF519A3D619A3D619A3D619A3D619A3D619A3D619A3D614A9DC5AE0FE
            59E0FD5ADFFE5AE0FE5AE0FD59E0FE59DFFD5AE0FD59E0FD59E0FD5ADFFD5AE0
            FD5ADFFD59E0FD14A9DD0FB0E46CE5FD6DE4FE6CE4FD6DE5FD6CE4FD6CE5FD6D
            E5FD6CE5FE6DE5FE6DE4FD6CE4FD6CE4FD6DE4FD6CE5FD0FAFE30AB5EA80EAFE
            7FE9FD7FEAFD80E9FE80EAFE7FE9FE7FEAFE80E9FE7FE9FE7FE9FE7FE9FE80EA
            FE7FE9FE80E9FD0AB5EA06BBF092EEFF92EEFE92EEFE92EEFE91EEFE92EEFE92
            EEFE92EEFE92EEFE92EEFE92EEFE92EEFE92EFFE91EEFE06BBF002BFF5A3F3FF
            A3F2FEA3F3FEA3F2FFA3F2FEA3F3FFA3F3FFA3F2FEA3F2FFA3F3FEA3F3FFA3F2
            FEA3F2FEA2F3FE02C0F400C3F8B2F6FEB2F6FFB2F7FFB2F6FEB2F6FFB2F7FEB2
            F6FEB2F6FEB2F6FFB2F6FFB2F6FFB2F6FEB2F6FFB2F6FE00C3F800C3F888EAFD
            BFFAFFBEFAFFBFF9FFBEFAFFBFF9FFBEFAFFBFFAFFBEFAFFBFFAFFBFFAFFBEFA
            FEBEF9FE89EAFD00C3F800C3F800C3F800C3F89AEFFDC8FCFFC8FCFF9AEFFD00
            C3F800C3F800C3F800C3F800C3F800C3F800C3F800C3F800C3F8FFFFFFFFFFFF
            9EE9FD00C3F800C3F800C3F800C3F89EE9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 6
          OnClick = btnUpdateGuestClick
        end
        object GuestName: TEdit
          Left = 91
          Top = 43
          Width = 121
          Height = 19
          TabOrder = 7
        end
        object edtGuestID: TEdit
          Left = 160
          Top = 18
          Width = 121
          Height = 19
          TabOrder = 8
          TextHint = 'Guest ID'
        end
      end
      object rgpESearch: TGroupBox
        Left = 463
        Top = 232
        Width = 177
        Height = 252
        Caption = 'Search'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object rgpGFilter: TRadioGroup
          Left = 16
          Top = 54
          Width = 145
          Height = 154
          Caption = 'Filter by'
          Items.Strings = (
            'Guest ID'
            'ID Number'
            'Username'
            'First Name(s)'
            'Surname')
          TabOrder = 0
          OnClick = rgpGFilterClick
        end
        object edtsearch: TEdit
          Left = 16
          Top = 27
          Width = 145
          Height = 21
          AutoSize = False
          TabOrder = 1
          TextHint = 'Enter Search Value'
        end
        object btnEclear: TButton
          Left = 23
          Top = 214
          Width = 84
          Height = 25
          Caption = 'Clear Search'
          TabOrder = 2
        end
      end
      object BitBtn3: TBitBtn
        Left = 247
        Top = 160
        Width = 133
        Height = 41
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          CECEE826269A9B9BD0FCFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8D72727
          9ACECEE8FFFFFFFFFFFFFFFFFFCECEE826269D1F25CB26279D7171BEFEFEFFFF
          FFFFFFFFFFFFFFFF9696CF26279E1F25CB26269DCECEE8FFFFFFCECEE82527A1
          252BCC252CDB252BCC2527A16A6BBCFEFEFFFFFFFF9090CE2627A0252BCC252C
          DB252BCD2627A1CECEE82527A42D32CD2E36DD2F35DD2F35DD2C33CD2527A488
          89CCA1A2D82527A42C33CD2E36DD2E36DC2E36DD2D33CD2527A4CDCEEC2427A8
          363BCF3A41DF3B41DF3A41DE363BCF2426A92526A9363BCE3A41DE3A41DE3A41
          DF363BCF2527A9ABACDDFFFFFFC3C3E92327AD4045D1474DE1484EE1474DE140
          44D14045D1484EE1484EE1474EE14045D12426ADA1A1DBFFFFFFFFFFFFFFFFFF
          BEBEE82327B14B50D3565CE3565BE3575CE3565BE3565BE3565BE34246CC2226
          B29D9FDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C6EC2226B7555ADD656AE665
          6AE5656AE5656AE5555ADD2226B6A0A2DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFABACE62126BB6065DF7478E77478E87478E87478E86165DF2126BB8385
          D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA1E42025C06B70E08286EA8386EA82
          86EB8286EA8286EA8286EA6B70E02126C07B7DD8FEFFFFFFFFFFFFFFFFA3A5E7
          2026C4757AE38F93EC9093EC9093EC767AE2757AE29093ED8F93EC9093ED767A
          E32025C5797CDBFEFEFFC1C3F11F26C87F83E49B9EEE9C9EEE9B9EEE7F83E31F
          26C91F25C97F82E39C9FEF9C9EEF9C9EEE7F83E31F25C8989BE61F26CD878AE5
          A6A7F0A6A8F0A5A8F0878AE51F26CDA0A3E9BABCF01E25CD868AE4A5A8F0A6A7
          EFA6A8F0878AE41E25CCCCCDF11E25CF8C8FE6ADAFF18C8FE61E25CF8184E4FF
          FFFFFFFFFFA8AAED1E25D08C8FE6ADAFF18C8FE61E25CCCECEE8FFFFFFCCCDF1
          1D25D3878AE51E25D3898EE8FFFFFFFFFFFFFFFFFFFFFFFFAEB1F11D25D3878A
          E41E25D2CECEE8FFFFFFFFFFFFFFFFFFCCCDF11D25D5B7BAF3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC2C4F51D25D5CECEE8FFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BitBtn3Click
      end
      object DBNavigator3: TDBNavigator
        Left = 393
        Top = 160
        Width = 216
        Height = 41
        DataSource = dmWildlifeSafari.dtsrGuests
        VisibleButtons = [nbNext, nbLast]
        TabOrder = 4
      end
      object DBNavigator4: TDBNavigator
        Left = 1
        Top = 160
        Width = 240
        Height = 41
        DataSource = dmWildlifeSafari.dtsrGuests
        VisibleButtons = [nbFirst, nbPrior]
        TabOrder = 5
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Accomodation'
      ImageIndex = 2
      object Label9: TLabel
        Left = 3
        Top = 88
        Width = 67
        Height = 13
        Caption = 'Room Number'
      end
      object Label44: TLabel
        Left = 26
        Top = 20
        Width = 163
        Height = 23
        Caption = 'Update Activities'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 123
        Width = 201
        Height = 305
        Caption = 'Accomodation Details'
        TabOrder = 0
        object Label11: TLabel
          Left = 16
          Top = 32
          Width = 78
          Height = 13
          Caption = 'No Of Bedrooms'
        end
        object Label45: TLabel
          Left = 24
          Top = 215
          Width = 85
          Height = 13
          Caption = 'Price Per Night(R)'
        end
        object Label29: TLabel
          Left = 85
          Top = 234
          Width = 3
          Height = 13
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rgpLodge: TRadioGroup
          Left = 16
          Top = 57
          Width = 140
          Height = 113
          Caption = 'Type Of Lodge'
          Items.Strings = (
            'Classic'
            'Safari Hotel'
            'Hutted Bush Lodge'
            'Tented Lodge'
            'Luxury and Deluxe')
          TabOrder = 0
        end
        object spnnoofRooms: TSpinEdit
          Left = 100
          Top = 29
          Width = 41
          Height = 22
          MaxValue = 11
          MinValue = 1
          TabOrder = 1
          Value = 1
        end
        object btnaddaccom: TBitBtn
          Left = 23
          Top = 261
          Width = 67
          Height = 25
          Caption = 'Add'
          DoubleBuffered = True
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
          TabOrder = 2
          OnClick = btnaddaccomClick
        end
        object btnUpdateaccom: TBitBtn
          Left = 96
          Top = 261
          Width = 75
          Height = 25
          Caption = 'Update'
          DoubleBuffered = True
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
          TabOrder = 3
          OnClick = btnUpdateaccomClick
        end
        object chkbAvailable: TCheckBox
          Left = 23
          Top = 192
          Width = 97
          Height = 17
          Caption = 'Available?'
          TabOrder = 4
        end
        object edtPriceaccomodation: TEdit
          Left = 36
          Top = 234
          Width = 43
          Height = 21
          TabOrder = 5
          Text = '1999'
          TextHint = 'Amount'
        end
        object edtCents: TEdit
          Left = 96
          Top = 234
          Width = 24
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = '00'
        end
      end
      object DBNavigator9: TDBNavigator
        Left = 192
        Top = 434
        Width = 198
        Height = 48
        DataSource = dmWildlifeSafari.dtsrAccomodation
        VisibleButtons = [nbFirst, nbPrior]
        TabOrder = 1
      end
      object DBNavigator10: TDBNavigator
        Left = 396
        Top = 434
        Width = 196
        Height = 48
        DataSource = dmWildlifeSafari.dtsrAccomodation
        VisibleButtons = [nbNext, nbLast]
        TabOrder = 2
      end
      object cmbRoomNumber: TComboBox
        Left = 76
        Top = 85
        Width = 91
        Height = 21
        TabOrder = 3
        TextHint = 'Please select'
      end
      object DBGrid3: TDBGrid
        Left = 226
        Top = 38
        Width = 399
        Height = 390
        DataSource = dmWildlifeSafari.dtsrAccomodation
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'RoomNumber'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'No Of Bedrooms'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Type Of Lodge'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Star Ratings'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vacant'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Price Per Night'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Safari Tours'
      ImageIndex = 3
      object Label42: TLabel
        Left = 47
        Top = 16
        Width = 192
        Height = 23
        Caption = 'Update Safari Prices'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid4: TDBGrid
        Left = 3
        Top = 45
        Width = 462
        Height = 166
        DataSource = dmWildlifeSafari.dtsrSafaris
        DrawingStyle = gdsClassic
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SafariID'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Type Of Safari'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Max No Of People Allowed'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tour Guided'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vehicle Provided'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cost Per Adult'
            Width = 80
            Visible = True
          end>
      end
      object BitBtn6: TBitBtn
        Left = 339
        Top = 431
        Width = 112
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
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 163
        Top = 430
        Width = 118
        Height = 35
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
          FFFFFFFFFFFFD9B886BB8333AA680CA25D01A25D01AA680CBB8333D9B886FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECDCC3BC8434A15C01A96300B06A00C3
          7C00C37C00B37111B06A00A15C01BB8434ECDCC3FFFFFFFFFFFFFFFFFFEDDCC3
          B47821A15C00BD7704C57F06C58006BC7704BC7704C57F06C58006BC7704AA64
          00B57821EDDCC3FFFFFFFFFFFFBD8534A35E00BE7A0AC8850EB87A20A45E00A3
          5E00A35E00A35E00B37217C9850EC9850EA35E00BD8534FFFFFFD9B886A86301
          C17F12CC8B18A66100B06E10CB9E5CEDDDC5EDDDC5CB9E5CB06E10AE6800CC8B
          18CC8B17A86301D9B886BE8633B5720DD09222BD7E20B26F10E2C9A3FFFFFFFF
          FFFFFFFFFFFFFFFFE3C9A3B27010C48419D19123AA6300BE8633B2710CC78922
          D5992EAD6700CCA05CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCA05CAD67
          00AD6700AC6700B2700CB16B01D9A03ADAA13BB16B00EEDEC5FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB56F01DEA847
          DEA847B46E00EEDEC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB9750CD1993CE3B052B87200CEA25CFFFFFFFFFFFFFF
          FFFFFFFFFFB97200B97100B97200B97200B97200B97100B97200C38C33BD8024
          E7B65DC98A20BC7A10E4CAA3FFFFFFFFFFFFFFFFFFE2C188BB7400D59E44E7B6
          5DE7B75EE7B75DBA7300DBBA86BD7701D8A34BEABD67CC8C20BE7B10D0A25CEE
          DEC5EEDEC5CFA25CBE7B10BC7500D8A34AEABC67EABC67BC7500FFFFFFC58E34
          C07900D9A651EDC16FCE8E20C07A00C07900C17A00C07900CD8E20DAA751EDC2
          6FD9A651EEC26FBD7700FFFFFFEDDDC3C38521C27B00DBA955F0C575F0C575DB
          A955DBA955F0C575F0C575DBA955CE8F20BF7800DBA955BF7800FFFFFFFFFFFF
          EDDDC3C68E34C17B01CE8F20D79E37F0C575F0C575D79E37CE8F20C17B01C68E
          34E1C28EC07900C07900FFFFFFFFFFFFFFFFFFFFFFFFDBBA86C68E33C07C0CC1
          7A01C17A01C07C0CC68E33DBBA86FFFFFFFFFFFFE2C188C07900}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 2
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 240
        Width = 621
        Height = 170
        Caption = 'Update Prices'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        object Label13: TLabel
          Left = 16
          Top = 32
          Width = 38
          Height = 13
          Caption = 'Classic'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 16
          Top = 78
          Width = 37
          Height = 13
          Caption = 'Family'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 16
          Top = 120
          Width = 54
          Height = 13
          Caption = 'Specialist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 336
          Top = 34
          Width = 41
          Height = 13
          Caption = 'Private'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 324
          Top = 73
          Width = 75
          Height = 13
          Caption = 'Photographic'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 336
          Top = 117
          Width = 41
          Height = 13
          Caption = 'Wildlife'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 149
          Top = 70
          Width = 3
          Height = 13
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 149
          Top = 26
          Width = 3
          Height = 13
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 149
          Top = 119
          Width = 3
          Height = 13
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 479
          Top = 26
          Width = 3
          Height = 13
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 479
          Top = 73
          Width = 3
          Height = 13
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 479
          Top = 119
          Width = 3
          Height = 13
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt1: TEdit
          Left = 75
          Top = 29
          Width = 68
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edt2: TEdit
          Left = 75
          Top = 73
          Width = 68
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edt4: TEdit
          Left = 405
          Top = 24
          Width = 68
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edt5: TEdit
          Left = 405
          Top = 73
          Width = 68
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object edt6: TEdit
          Left = 405
          Top = 114
          Width = 68
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edtCent3: TEdit
          Left = 160
          Top = 117
          Width = 33
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object edt3: TEdit
          Left = 75
          Top = 117
          Width = 68
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object edtCent2: TEdit
          Left = 160
          Top = 73
          Width = 33
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object edtCent1: TEdit
          Left = 160
          Top = 29
          Width = 33
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object edtCent4: TEdit
          Left = 488
          Top = 24
          Width = 33
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object edtCent5: TEdit
          Left = 488
          Top = 73
          Width = 33
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object edtCent6: TEdit
          Left = 488
          Top = 114
          Width = 33
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object BitBtn16: TBitBtn
          Left = 223
          Top = 29
          Width = 75
          Height = 25
          Caption = '<--Update'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 12
          OnClick = BitBtn16Click
        end
        object BitBtn17: TBitBtn
          Left = 223
          Top = 70
          Width = 75
          Height = 25
          Caption = '<--Update'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 13
          OnClick = BitBtn17Click
        end
        object BitBtn18: TBitBtn
          Left = 223
          Top = 112
          Width = 75
          Height = 25
          Caption = '<--Update'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 14
          OnClick = BitBtn18Click
        end
        object BitBtn19: TBitBtn
          Left = 527
          Top = 21
          Width = 75
          Height = 25
          Caption = '<--Update'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 15
          OnClick = BitBtn19Click
        end
        object BitBtn20: TBitBtn
          Left = 527
          Top = 66
          Width = 75
          Height = 25
          Caption = '<--Update'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 16
          OnClick = BitBtn20Click
        end
        object BitBtn21: TBitBtn
          Left = 527
          Top = 112
          Width = 75
          Height = 25
          Caption = '<--Update'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 17
          OnClick = BitBtn21Click
        end
      end
      object DBNavigator7: TDBNavigator
        Left = 479
        Top = 46
        Width = 142
        Height = 83
        DataSource = dmWildlifeSafari.dtsrSafaris
        VisibleButtons = [nbFirst, nbPrior]
        TabOrder = 4
      end
      object DBNavigator8: TDBNavigator
        Left = 479
        Top = 135
        Width = 142
        Height = 83
        DataSource = dmWildlifeSafari.dtsrSafaris
        VisibleButtons = [nbNext, nbLast]
        TabOrder = 5
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Activities'
      ImageIndex = 4
      object Label43: TLabel
        Left = 224
        Top = 3
        Width = 163
        Height = 23
        Caption = 'Update Activities'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox6: TGroupBox
        Left = 51
        Top = 291
        Width = 502
        Height = 145
        Caption = 'Activity Details'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object Label20: TLabel
          Left = 41
          Top = 70
          Width = 96
          Height = 13
          Caption = 'Max No of People'
        end
        object Label23: TLabel
          Left = 173
          Top = 57
          Width = 80
          Height = 13
          Caption = 'Cost Per Adult'
        end
        object Label24: TLabel
          Left = 329
          Top = 79
          Width = 71
          Height = 13
          Caption = 'Closing Time'
        end
        object Label25: TLabel
          Left = 325
          Top = 26
          Width = 77
          Height = 13
          Caption = 'Opening Time'
        end
        object Label31: TLabel
          Left = 41
          Top = 28
          Width = 93
          Height = 13
          Caption = 'Name of Activity'
          Transparent = True
        end
        object DateTimePicker3: TDateTimePicker
          Left = 315
          Top = 98
          Width = 97
          Height = 21
          Date = 43935.661365543980000000
          Format = 'HH:mm'
          Time = 43935.661365543980000000
          Kind = dtkTime
          TabOrder = 0
        end
        object DateTimePicker4: TDateTimePicker
          Left = 315
          Top = 45
          Width = 97
          Height = 21
          Date = 43935.661520034720000000
          Format = 'HH:mm'
          Time = 43935.661520034720000000
          Kind = dtkTime
          TabOrder = 1
        end
        object spnppl: TSpinEdit
          Left = 54
          Top = 89
          Width = 73
          Height = 22
          MaxValue = 10
          MinValue = 1
          TabOrder = 2
          Value = 1
        end
        object edtcost: TEdit
          Left = 173
          Top = 76
          Width = 73
          Height = 19
          NumbersOnly = True
          TabOrder = 3
        end
        object cmbActivities: TComboBox
          Left = 41
          Top = 43
          Width = 96
          Height = 21
          TabOrder = 4
        end
        object edtcent: TEdit
          Left = 259
          Top = 76
          Width = 30
          Height = 19
          NumbersOnly = True
          TabOrder = 5
        end
      end
      object DBGrid5: TDBGrid
        Left = 83
        Top = 40
        Width = 486
        Height = 140
        DataSource = dmWildlifeSafari.dtsractivities
        DrawingStyle = gdsClassic
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ActivityID'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name Of Activity'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Max No of people Allowed'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cost Per person'
            Width = 115
            Visible = True
          end>
      end
      object btnUpdateAct: TBitBtn
        Left = 170
        Top = 450
        Width = 109
        Height = 40
        Caption = 'Update'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000A25D00A35D00
          A35D00A25D00A25D00A35D00A25D00A25D00A25D00A25D00A25D00A25D00A25D
          00A25E00A25D00A25D00A45F00F7E0B5F7E0B5F7E0B5F7E0B5F7E0B5F7E0B5F7
          E0B5F7E0B5F7E0B5F7E0B5F7E0B5F7E0B5F7E0B5F7E0B5A45F00A66000F8E1B9
          F8E2B9F7E1B9F7E2B9F8E2B9F8E2B8F7E2B9F8E2B8F8E1B8F8E2B9F8E2B8F8E1
          B9F7E2B9F8E1B9A66100A86200F8E4BEF8E4BEC37C00C37C00C37C00C37C00C3
          7C00C37C00C37C00C37C00C37C00C37C00F7E3BEF8E3BEA86300AA6500F9E6C4
          F9E6C4C9850EC9850EFFFFFFFFFFFFC9850EC8850EFFFFFFFFFFFFC8850EC984
          0EF9E6C4F8E6C4AA6400AD6700F9E9CBFAE9CBD19222D19223FFFFFFFFFFFFD1
          9223D19223FFFFFFFFFFFFD09222D09223F9E9CBF9E9CBAD6700B06A00FAECD2
          FAEDD2D9A13AD9A03BDAA13AD9A03BDAA13BDAA13ADAA03BD9A13BDAA03BDAA0
          3AFBECD3FAECD2B06A00B26C00FBEFDAFBEFDAE3AF52E2AF53E3AF53E3AF52E3
          AF53E3AF53E2AF52E3B052E3AF53E3B053FBEFDAFBF0DAB26C00B46F00FCF2E2
          FCF3E2EBBC67EABC67FFFFFFFFFFFFEBBC67EBBD66FFFFFFFFFFFFEBBC67EABC
          67FCF2E2FCF3E1B56E00B77000FDF6E9FCF6E9F0C575F0C575FFFFFFFFFFFFF0
          C575F0C575FFFFFFFFFFFFF0C575F0C575FCF5E9FDF6E9B77100BA7400FDF9F0
          FEF8F0F0C575F0C575F0C575F0C575F0C575F0C575F0C575F0C575F0C575F0C5
          75FDF8F0FDF8F0BA7300BC7500FEFBF6FEFBF63F92003F92003F92003F92003F
          92003F92003F92003F92003F92003F9200FEFBF6FEFBF6BD7500BE7800FEFDFB
          FFFEFB3F92003F92003F92003F92003F92003F92003F92003F92003F92003F92
          00FFFDFBFEFDFBBE7700C07900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07A00C17B00FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFC27B00C37C00C37C00C37C00C37C00C37C00C37C00C37C00C3
          7C00C37C00C37C00C37C00C37C00C37C00C37C00C37C00C37C00}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 2
        OnClick = btnUpdateActClick
      end
      object btndeleteAct: TBitBtn
        Left = 310
        Top = 449
        Width = 115
        Height = 41
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
        TabOrder = 3
      end
      object DBNavigator5: TDBNavigator
        Left = 3
        Top = 205
        Width = 276
        Height = 52
        DataSource = dmWildlifeSafari.dtsractivities
        VisibleButtons = [nbFirst, nbPrior]
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBNavigator6: TDBNavigator
        Left = 318
        Top = 205
        Width = 276
        Height = 54
        DataSource = dmWildlifeSafari.dtsrActivitytickets
        VisibleButtons = [nbNext, nbLast]
        TabOrder = 5
      end
    end
  end
  object BitBtn14: TBitBtn
    Left = 8
    Top = 515
    Width = 75
    Height = 25
    Caption = 'Back'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E7D4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0C295AF
      6900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFDEC096AB6500AF6900FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C7A3A76100BA7400AF
      6900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFDBBE96A45F00BD7807C68209AF6900FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEC4A3A15C00C17F11CC8B17CC8A17AF
      6900B36D00B77100BB7500BE7700C17A00C37C00BE7700C37C00FFFFFFD8BB96
      9F5A00C6861ED29527D29528D29528D29427D29428D29527D29428D29527D294
      28D29528D29427C37C00D7B9939F5A00CB8F2CD9A03AD99F39D99F39D9A039D9
      9F3AD99F3AD99F3AD99F39D99F39D9A039D99F39D9A039C37C00CFAC7B9F5A00
      CB8F2CE0AB4BE0AB4BE0AB4CE0AB4CE0AB4CE0AB4CE0AB4CE0AB4CE0AB4CE0AB
      4BE0AB4CE0AB4CC37C00FFFFFFCCA6739F5A00DEA848E7B65DE7B65DE7B65DE7
      B65EE7B65EE7B65DE7B65EE6B65DE7B65EE7B65EE7B65DC37C00FFFFFFFFFFFE
      D1AD7AA15C00E3B054EDC06EEDC06EAF6900B36D00B77100BB7500BE7800C17A
      00C37C00C37C00C37C00FFFFFFFFFFFFFFFFFFD2AF7BA45F00E7B75EF3C97CAF
      6900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFED3B079A76100EABB65AE6A00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6B27BAB6500AF
      6900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFECFA45FAF6900FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF0
      E2C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn14Click
  end
end
