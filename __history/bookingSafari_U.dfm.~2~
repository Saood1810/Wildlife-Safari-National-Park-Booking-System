object frmBook: TfrmBook
  Left = 0
  Top = 0
  Caption = 'Book'
  ClientHeight = 526
  ClientWidth = 564
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
  object Label1: TLabel
    Left = 184
    Top = 320
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label3: TLabel
    Left = 64
    Top = 296
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label14: TLabel
    Left = 116
    Top = 531
    Width = 35
    Height = 14
    Caption = 'Guest'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 208
    Top = 531
    Width = 42
    Height = 14
    Caption = 'lbldate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 302
    Top = 531
    Width = 41
    Height = 14
    Caption = 'lbltime'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = -2
    Top = 0
    Width = 577
    Height = 585
    ActivePage = tbSafaris
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Search'
      ImageIndex = 2
      object Label18: TLabel
        Left = 27
        Top = 64
        Width = 78
        Height = 16
        Caption = 'Safari Tours'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 19
        Top = 247
        Width = 78
        Height = 16
        Caption = 'Safari Tours'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 19
        Top = 103
        Width = 406
        Height = 138
        Ctl3D = False
        DataSource = dmWildlifeSafari.dtsrSafaris
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
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
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Type Of Safari'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Max No Of People Allowed'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cost Per Adult'
            Width = 90
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 19
        Top = 269
        Width = 406
        Height = 172
        Ctl3D = False
        DataSource = dmWildlifeSafari.dtsractivities
        ParentCtl3D = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ActivtyID'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name Of Activity'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Max No of people Allowed'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cost Per person'
            Width = 90
            Visible = True
          end>
      end
      object reddisplay: TRichEdit
        Left = 142
        Top = 3
        Width = 155
        Height = 60
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Working Times:'
          ''
          'Mondays - Sundays: '
          '09:00 - 17:00'
          '')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object RichEdit1: TRichEdit
        Left = 342
        Top = 21
        Width = 172
        Height = 42
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Children Under12 get a '
          '20% discount')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object rgpSort1: TRadioGroup
        Left = 431
        Top = 135
        Width = 115
        Height = 82
        Caption = 'Sort By:'
        Items.Strings = (
          'Price'
          'Max No Of People'
          'Type of Safari')
        TabOrder = 4
        OnClick = rgpSort1Click
      end
      object rgpsort2: TRadioGroup
        Left = 431
        Top = 293
        Width = 115
        Height = 92
        Caption = 'Sort By:'
        Ctl3D = False
        Items.Strings = (
          'Price'
          'Activity Name'
          'Max No Of People')
        ParentCtl3D = False
        TabOrder = 5
        OnClick = rgpsort2Click
      end
    end
    object tbActivities: TTabSheet
      Caption = 'Activities'
      ImageIndex = 1
      object Label17: TLabel
        Left = 206
        Top = 11
        Width = 133
        Height = 19
        Caption = 'Book an Activity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 401
        Top = 33
        Width = 45
        Height = 16
        Caption = 'Output'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object cmbPrices: TComboBox
        Left = 401
        Top = 81
        Width = 101
        Height = 21
        TabOrder = 4
      end
      object GroupBox1: TGroupBox
        Left = 18
        Top = 68
        Width = 276
        Height = 137
        Caption = 'Tickets'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label10: TLabel
          Left = 19
          Top = 70
          Width = 71
          Height = 16
          Caption = 'Date Booked'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 19
          Top = 112
          Width = 29
          Height = 16
          Caption = 'Time'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 19
          Top = 32
          Width = 97
          Height = 16
          Caption = 'Select an Activity'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DateTimePicker3: TDateTimePicker
          Left = 124
          Top = 70
          Width = 133
          Height = 21
          Date = 43926.635456666660000000
          Format = 'dd/MM/yy'
          Time = 43926.635456666660000000
          TabOrder = 0
        end
        object DateTimePicker4: TDateTimePicker
          Left = 124
          Top = 107
          Width = 135
          Height = 21
          Date = 43926.635416666660000000
          Format = 'HH:mm'
          Time = 43926.635416666660000000
          Kind = dtkTime
          TabOrder = 1
        end
        object cmbActivity: TComboBox
          Left = 122
          Top = 26
          Width = 137
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          TextHint = 'Select an Activity'
        end
      end
      object lstbxPrices: TListBox
        Left = 346
        Top = 63
        Width = 103
        Height = 127
        ItemHeight = 13
        TabOrder = 1
      end
      object BtnDisptick: TBitBtn
        Left = 37
        Top = 362
        Width = 217
        Height = 40
        Caption = 'Display Ticket'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFE8D5BB
          A15B00A15B00A15B00A15B00A15B00A15B00A15B00A15B00A15B00A15B00A15B
          00E8D5BBFFFFFFFFFFFFFFFFFFA15B00CF9E52F8D99AF8D99AF9D89AF8D99AF8
          D999F9D999F8D99AF9D999F8D89ACF9E52A15B00FFFFFFFFFFFFFFFFFFA35C00
          F9DB9FF8DB9FF9DBA0F8DBA0F9DBA0F8DBA0F8DBA0F9DB9FF8DBA0F9DA9FF8DB
          9FA35C00FFFFFFFFFFFFFFFFFFA45E00F9DEA6F9DDA7B36C00F9DDA7B36C00F9
          DDA7B36C00F9DDA7B36C00F9DEA6FADEA7A55F00FFFFFFFFFFFFFFFFFFA76100
          F9E1AEF9E1AEFAE1AFFAE1AFFAE1AFFAE1AFFAE1AFFAE1AFFAE1AFFAE1AFFAE1
          AEA76100FFFFFFFFFFFFFFFFFFA96300FBE4B8FAE4B7B36C00FAE4B7B36C00FA
          E4B7B36C00FAE4B7B36C00FAE4B7FBE4B8AA6300FFFFFFFFFFFFFFFFFFAD6600
          FBE8C0FBE7C1FBE8C0FBE8C0FBE8C0FBE8C0FBE8C0FBE8C0FBE8C0FBE8C0FBE7
          C1AC6600FFFFFFFFFFFFFFFFFFAF6900FCEBCAFBEBCAB36C00FBEBCAB36C00FB
          EBCAB36C00FBEBCAB36C00FBEBCAFCEBCAB06900FFFFFFFFFFFFFFFFFFB36C00
          FCEED4FCEED3FCEED3FCEFD4FCEED3FCEED4FCEFD3FCEFD3FCEFD4FCEED4FCEE
          D3B36C00FFFFFFFFFFFFFFFFFFB66E00FDF2DCFCF2DDFDF2DCFDF2DDFDF2DCFD
          F2DCFDF2DDFDF2DCFDF2DCFDF2DDFCF2DCB56F00FFFFFFFFFFFFFFFFFFB87200
          FEF5E5FEF6E63C970D3C970D3C970D3C970D3C970D3C970D3C970DFEF5E5FDF6
          E5B87100FFFFFFFFFFFFFFFFFFBB7400FEF8EEFEF8ED30AE4C30AE4C30AE4C30
          AE4C30AE4C30AE4C30AE4CFEF8EEFEF8EEBA7400FFFFFFFFFFFFFFFFFFBC7600
          FFFBF5FEFBF425C28425C28425C28425C28425C28425C28425C284FEFCF5FEFB
          F4BD7500FFFFFFFFFFFFFFFFFFBE7700FFFEFAFFFDFAFEFDFBFFFDFBFFFEFBFE
          FEFBFEFDFBFFFEFBFFFDFBFFFDFAFFFDFBBE7700FFFFFFFFFFFFFFFFFFBE7700
          E6D3BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6D3
          BABE7700FFFFFFFFFFFFFFFFFFE8D5BBBE7700BE7700BE7700BE7700BE7700BE
          7700BE7700BE7700BE7700BE7700BE7700E8D5BBFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 2
        OnClick = BtnDisptickClick
      end
      object redout: TRichEdit
        Left = 300
        Top = 55
        Width = 245
        Height = 345
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          '          ')
        ParentFont = False
        TabOrder = 3
      end
      object BtnBookactivities: TBitBtn
        Left = 312
        Top = 406
        Width = 217
        Height = 40
        Caption = 'Book'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        OnClick = BtnBookactivitiesClick
      end
      object grpAdults: TGroupBox
        Left = 18
        Top = 288
        Width = 270
        Height = 68
        Caption = 'Adults(12+Years)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object lblAdults: TLabel
          Left = 13
          Top = 29
          Width = 99
          Height = 16
          Caption = 'Number of Adults'
        end
        object Label22: TLabel
          Left = 17
          Top = 77
          Width = 63
          Height = 16
          Caption = 'Access To:'
        end
        object cmbAdults: TComboBox
          Left = 137
          Top = 73
          Width = 105
          Height = 24
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TextHint = 'Select An Area From the Park'
          Items.Strings = (
            '')
        end
        object spnAdults1: TSpinEdit
          Left = 134
          Top = 22
          Width = 113
          Height = 26
          MaxValue = 11
          MinValue = 0
          TabOrder = 1
          Value = 1
        end
      end
      object grpKids: TGroupBox
        Left = 18
        Top = 211
        Width = 270
        Height = 71
        Caption = 'Children(3-12 Years)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object lblKids: TLabel
          Left = 17
          Top = 33
          Width = 111
          Height = 16
          Caption = 'Number of Children'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 17
          Top = 72
          Width = 63
          Height = 16
          Caption = 'Access To:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cmbKids: TComboBox
          Left = 140
          Top = 69
          Width = 105
          Height = 24
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TextHint = 'Select An Area From the Park'
        end
        object spnChildren2: TSpinEdit
          Left = 134
          Top = 24
          Width = 113
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 11
          MinValue = 0
          ParentFont = False
          TabOrder = 1
          Value = 0
        end
      end
      object btnPrintact: TBitBtn
        Left = 312
        Top = 452
        Width = 217
        Height = 40
        Caption = 'Print'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFE8CC9B
          925500925400925500925500925500925500925500925500925500925500E8CC
          9BFFFFFFFFFFFFFFFFFFE8CC9B945700E9C689F4DBAFF4DBAFF4DBAFF4DBAFF4
          DBAFF4DBAFF4DBAFF4DBAFE9C689945600E8CC9BFFFFFFFFFFFF975900EDD4A8
          FAEDD7FAEDD7FAEDD7F9EDD7FAEDD7FAEDD7F9EDD7F9EDD7F9EDD7975900E9C6
          89975800FFFFFFFFFFFF9A5B00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF9A5B00F4DBAF9A5B00FFFFFFFFFFFF9D5E009E5E00
          9E5E009E5E009E5F009E5F009E5E009E5E009E5E009D5E009E5E00EAC88CF5DE
          B49E5F00FFFFFFFFFFFFFFFFFFFFFFFFA26200F6E0BBF6E0BCF5E1BCF6E0BBF6
          E0BBF5E0BBF6E1BBF6E1BBF6E1BBF6E0BBA26100FFFFFFFFFFFFFFFFFFFFFFFF
          A66400F6E5C4F7E4C3F7E4C4F7E4C4F7E4C4F7E4C4F7E4C3F7E4C4F6E5C4F7E5
          C3A66400FFFFFFFFFFFFFFFFFFFFFFFFAB6800F8E9CDF8E8CDF8E9CDF8E8CDF8
          E9CDF9E9CDF8E9CDF8E9CDF8E9CDF9E8CDAB6900FFFFFFFFFFFFFFFFFFFFFFFF
          AF6C00FAEDD7F9EDD7FAEDD7F9EDD7F9EDD7F9EDD7FAEDD7FAEDD7FAEDD7FAED
          D7AE6B00FFFFFFFFFFFFFFFFFFFFFFFFB36F00FAF1E1FBF1E1FBF1E1FBF1E1FB
          F2E1FBF1E1FBF1E1FBF1E1FBF2E1FBF2E1B36F00FFFFFFFFFFFFFFFFFFFFFFFF
          B77200FCF6EAFDF5EAFDF6EBFCF5EBFCF5EAFCF6EBFCF6EBFCF5EBFCF5EBFCF6
          EBB77300FFFFFFFFFFFFFFFFFFFFFFFFBB7600FDFAF3FEF9F3FEFAF3FEFAF3FE
          FAF2FEFAF3FDFAF3FEF9F3FEFAF3FDFAF3BB7600FFFFFFFFFFFFFFFFFFFFFFFF
          BF7800FFFCFAFEFDFAFEFCFAFEFDFAFFFCFAFEFDF9FFFCFAFEFDF9FEFDFAFEFD
          FABE7800BE7800BE7800FFFFFFFFFFFFC17A00F2E2C7FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E2C7C17A00FFFFFFFFFFFF
          E8CC9BC37C00F2E2C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF2E2C7C37C00E8CC9BFFFFFFFFFFFFFFFFFFE8CC9BC37C00C37C00C37C00C3
          7C00C37C00C37C00C37C00C37C00C37C00C37C00E8CC9BFFFFFF}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 8
        OnClick = btnPrintactClick
      end
      object btnClear: TBitBtn
        Left = 37
        Top = 408
        Width = 217
        Height = 40
        Caption = 'Clear'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 9
        OnClick = btnClearClick
      end
    end
    object tbSafaris: TTabSheet
      Caption = 'Safaris'
      object Label16: TLabel
        Left = 206
        Top = 10
        Width = 109
        Height = 19
        Caption = 'Book a Safari'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 406
        Top = 31
        Width = 45
        Height = 16
        Caption = 'Output'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 116
        Top = 540
        Width = 35
        Height = 14
        Caption = 'Guest'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbldate: TLabel
        Left = 208
        Top = 540
        Width = 42
        Height = 14
        Caption = 'lbldate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbltime: TLabel
        Left = 302
        Top = 540
        Width = 41
        Height = 14
        Caption = 'lbltime'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnProceed: TBitBtn
        Left = 52
        Top = 390
        Width = 214
        Height = 35
        Caption = 'Display Ticket'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF4D9ABA35D00F4D9ABFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9ABA66000BF7C0EB8
          6E00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF4D9ABAA6200C07F12CB8B18C07F12AA6200FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9ABAF6600C28117CE8F1FCE8F1FCE
          8F1EAF6600F4D9ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D8AB
          B36900C5851CD09426D09425D59019D19426C5851CB36900F4D9ABFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEEC98CB76D00C78821D3982ED3982DD7931EB86D00D7
          931ED3982DDA9012B46A00F4D9ABFFFFFFFFFFFFFFFFFFFFFFFFBC7100CB8615
          D79D36D79E36D99723BC7100F4D9ABBC7000D79E35D79D35DB9115BD7100F4D9
          ABFFFFFFFFFFFFFFFFFFF4D9ABC27500C17400DB9A29C27500F4D8ABFFFFFFC1
          7400DC9418DAA23DDAA23DDC9418C17500F4D9ABFFFFFFFFFFFFFFFFFFFFFFFF
          F4D9ABC77800C77900FFFFFFFFFFFFF4D9ABC77900DEA846DDA745DEA846DD96
          1BC67800C67800EDBF73FFFFFFFFFFFFFFFFFFFFFFFFF9EAD1FFFFFFFFFFFFFF
          FFFFCB7C00DE971EE0AC4DE0AC4DE0AD4DE0AD4DDF981ECB7C00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9ABCF8000E3B154E3B154E3B1
          55E3B155E3B154D08000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD38300E09B23E6B55AE5B55BE5B65BE6B55BD48300FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9ABD78600E19C25E7B8
          60E8B960E8B960D88600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF4D9ABDA8900E29D27E9BB64E9BB64DA8900FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9ABDD8A
          00DD8B00E19A20DD8A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C988DD8A00DD8A00}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = btnProceedClick
      end
      object Redoutput: TRichEdit
        Left = 315
        Top = 53
        Width = 238
        Height = 317
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          ''
          '')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object btncheckout2: TBitBtn
        Left = 331
        Top = 431
        Width = 214
        Height = 35
        Caption = 'Print Reciept'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFCC8F27CC8F27CC8F27CC8F27CC8F27CC8F27CC8F27CC8F27FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDF9FFFFFFFFFFFFCC8F27FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFCC8F27FFFFFFF6EFE5FEFBF8FFFFFFFFFFFFAD7127
          9B53009B5300CC8F27FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC8F279F5A
          009F5A00AC6F28FFFFFFC1904EB47C2EDDBD87DDBD87863B1A863B1A863B1A86
          3B1A863B1A863B1A863B1A863B1ADDBD87DEBD88B47C2EB885419F5A00EED8AE
          EED8AEEED8AEEED8AEEED8AEEED8AEEED8AEEED8AEEED8AEEED8AEEED8AEEED8
          AEEFD9AFEFD9AF9F5A009F5A00EAD1A6EAD1A5E9CFA1EAD1A2EAD1A2EAD1A2EA
          D1A2EAD1A2EAD1A2EAD1A2EAD1A2E9CFA1EAD1A6EAD1A69F5A009F5A00EDDDC0
          EDDDC0E9D7B7E9D7B7E9D7B7E9D7B7E9D7B8E9D7B8E9D7B8E9D7B8E9D7B8E9D7
          B8EDDDC2EDDDC09F5A009F5A00EBE1D0EFE8DBEBE1D0EBE1D0EBE1D0EBE1D0EB
          E1D0EBE1D0EBE1D0EBE1D0EBE1D0EBE1D0EFE9DCEBE1D09F5A009F5A00F5F6F5
          F5F6F5F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0ED
          E7F5F6F6F5F6F69F5A00C69B60BC8F54F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5
          F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6BC8F54BF9050FFFFFFBC8849
          9F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A
          009F5A00BA884AFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFE8B653FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE7B44FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEBBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFEFAFFFFFFEBBE64FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC677FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF7E6C3EFC779FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEEC677FFFFFFFFFFFFFFFFFFFFFFFFF7E6C3EFC87BF2D293FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC677EEC677EEC677EE
          C677EEC677EEC677F3D59AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 2
        OnClick = btncheckout2Click
      end
      object GroupBox2: TGroupBox
        Left = 20
        Top = 269
        Width = 270
        Height = 68
        Caption = 'Adults(12+Years)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label7: TLabel
          Left = 16
          Top = 37
          Width = 99
          Height = 16
          Caption = 'Number of Adults'
        end
        object Label8: TLabel
          Left = 17
          Top = 77
          Width = 63
          Height = 16
          Caption = 'Access To:'
        end
        object cmbadult: TComboBox
          Left = 146
          Top = 71
          Width = 105
          Height = 24
          Enabled = False
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = 'AquaKingdom'
          TextHint = 'Select An Area From the Park'
          Items.Strings = (
            'AquaKingdom'
            'Splash'#39'nWild'
            'Both1&2')
        end
        object spnAdults: TSpinEdit
          Left = 153
          Top = 35
          Width = 96
          Height = 26
          Ctl3D = True
          MaxValue = 10
          MinValue = 1
          ParentCtl3D = False
          TabOrder = 1
          Value = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 20
        Top = 192
        Width = 270
        Height = 71
        Caption = 'Children(3-12 Years)'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        object Label9: TLabel
          Left = 17
          Top = 32
          Width = 111
          Height = 16
          Caption = 'Number of Children'
        end
        object Label24: TLabel
          Left = 20
          Top = 72
          Width = 63
          Height = 16
          Caption = 'Access To:'
        end
        object cmbkid: TComboBox
          Left = 146
          Top = 69
          Width = 105
          Height = 24
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object spnChildren: TSpinEdit
          Left = 146
          Top = 29
          Width = 100
          Height = 26
          Ctl3D = True
          MaxValue = 11
          MinValue = 0
          ParentCtl3D = False
          TabOrder = 1
          Value = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 20
        Top = 35
        Width = 270
        Height = 142
        Caption = 'Please Select'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object Label4: TLabel
          Left = 17
          Top = 62
          Width = 71
          Height = 16
          Caption = 'Date Booked'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 19
          Top = 96
          Width = 29
          Height = 16
          Caption = 'Time'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 16
          Top = 23
          Width = 115
          Height = 16
          Caption = 'Select a Safari Tour'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cmbSafari: TComboBox
          Left = 137
          Top = 22
          Width = 112
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TextHint = 'Click To View Options'
          Items.Strings = (
            'Classic'
            'Family'
            'Specialist'
            'Private'
            'Photographic'
            'Wildlife')
        end
        object DateTimePicker1: TDateTimePicker
          Left = 137
          Top = 62
          Width = 112
          Height = 20
          Date = 43915.843680706020000000
          Format = 'dd/MM/yy'
          Time = 43915.843680706020000000
          TabOrder = 1
        end
        object DateTimePicker2: TDateTimePicker
          Left = 137
          Top = 96
          Width = 112
          Height = 21
          Date = 43915.843750000000000000
          Format = 'HH:mm'
          Time = 43915.843750000000000000
          Kind = dtkTime
          TabOrder = 2
        end
      end
      object btnbook: TBitBtn
        Left = 331
        Top = 384
        Width = 214
        Height = 35
        Caption = 'Book'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFE8D5BB
          A15B00A15B00A15B00A15B00A15B00A15B00A15B00A15B00A15B00A15B00A15B
          00E8D5BBFFFFFFFFFFFFFFFFFFA15B00CF9E52F8D99AF8D99AF9D89AF8D99AF8
          D999F9D999F8D99AF9D999F8D89ACF9E52A15B00FFFFFFFFFFFFFFFFFFA35C00
          F9DB9FF8DB9FF9DBA0F8DBA0F9DBA0F8DBA0F8DBA0F9DB9FF8DBA0F9DA9FF8DB
          9FA35C00FFFFFFFFFFFFFFFFFFA45E00F9DEA6F9DDA7B36C00F9DDA7B36C00F9
          DDA7B36C00F9DDA7B36C00F9DEA6FADEA7A55F00FFFFFFFFFFFFFFFFFFA76100
          F9E1AEF9E1AEFAE1AFFAE1AFFAE1AFFAE1AFFAE1AFFAE1AFFAE1AFFAE1AFFAE1
          AEA76100FFFFFFFFFFFFFFFFFFA96300FBE4B8FAE4B7B36C00FAE4B7B36C00FA
          E4B7B36C00FAE4B7B36C00FAE4B7FBE4B8AA6300FFFFFFFFFFFFFFFFFFAD6600
          FBE8C0FBE7C1FBE8C0FBE8C0FBE8C0FBE8C0FBE8C0FBE8C0FBE8C0FBE8C0FBE7
          C1AC6600FFFFFFFFFFFFFFFFFFAF6900FCEBCAFBEBCAB36C00FBEBCAB36C00FB
          EBCAB36C00FBEBCAB36C00FBEBCAFCEBCAB06900FFFFFFFFFFFFFFFFFFB36C00
          FCEED4FCEED3FCEED3FCEFD4FCEED3FCEED4FCEFD3FCEFD3FCEFD4FCEED4FCEE
          D3B36C00FFFFFFFFFFFFFFFFFFB66E00FDF2DCFCF2DDFDF2DCFDF2DDFDF2DCFD
          F2DCFDF2DDFDF2DCFDF2DCFDF2DDFCF2DCB56F00FFFFFFFFFFFFFFFFFFB87200
          FEF5E5FEF6E63C970D3C970D3C970D3C970D3C970D3C970D3C970DFEF5E5FDF6
          E5B87100FFFFFFFFFFFFFFFFFFBB7400FEF8EEFEF8ED30AE4C30AE4C30AE4C30
          AE4C30AE4C30AE4C30AE4CFEF8EEFEF8EEBA7400FFFFFFFFFFFFFFFFFFBC7600
          FFFBF5FEFBF425C28425C28425C28425C28425C28425C28425C284FEFCF5FEFB
          F4BD7500FFFFFFFFFFFFFFFFFFBE7700FFFEFAFFFDFAFEFDFBFFFDFBFFFEFBFE
          FEFBFEFDFBFFFEFBFFFDFBFFFDFAFFFDFBBE7700FFFFFFFFFFFFFFFFFFBE7700
          E6D3BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6D3
          BABE7700FFFFFFFFFFFFFFFFFFE8D5BBBE7700BE7700BE7700BE7700BE7700BE
          7700BE7700BE7700BE7700BE7700BE7700E8D5BBFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 6
        OnClick = btnbookClick
      end
      object GroupBox5: TGroupBox
        Left = 27
        Top = 351
        Width = 251
        Height = 33
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 7
        object chkVehicle: TCheckBox
          Left = 30
          Top = 3
          Width = 218
          Height = 17
          Caption = 'Hire Vehicle / Extra Vehicle at R400'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object BitBtn1: TBitBtn
        Left = 52
        Top = 430
        Width = 214
        Height = 35
        Caption = 'Clear'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 8
        OnClick = BitBtn1Click
      end
    end
  end
  object btnback: TBitBtn
    Left = 8
    Top = 498
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
    OnClick = btnbackClick
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 360
    Top = 552
  end
  object Timer2: TTimer
    OnTimer = Timer1Timer
    Left = 360
    Top = 552
  end
end
