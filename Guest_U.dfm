object frmManageGuests: TfrmManageGuests
  Left = 0
  Top = 0
  Caption = 'Manage Guests'
  ClientHeight = 538
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rgpEDetails: TGroupBox
    Left = 0
    Top = 255
    Width = 449
    Height = 159
    Caption = 'Employee Details'
    TabOrder = 0
    object Label13: TLabel
      Left = 16
      Top = 24
      Width = 60
      Height = 13
      Caption = 'Employee ID'
    end
    object Label14: TLabel
      Left = 248
      Top = 24
      Width = 51
      Height = 13
      Caption = 'ID Number'
    end
    object Label15: TLabel
      Left = 248
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object Label16: TLabel
      Left = 16
      Top = 88
      Width = 64
      Height = 13
      Caption = 'First Name(s)'
    end
    object Label17: TLabel
      Left = 248
      Top = 88
      Width = 42
      Height = 13
      Caption = 'Surname'
    end
    object Label20: TLabel
      Left = 16
      Top = 120
      Width = 57
      Height = 13
      Caption = 'Cell Number'
    end
    object Label21: TLabel
      Left = 248
      Top = 120
      Width = 66
      Height = 13
      Caption = 'Email Address'
    end
    object Label22: TLabel
      Left = 16
      Top = 56
      Width = 48
      Height = 13
      Caption = 'Username'
    end
    object edtGuestID: TEdit
      Left = 86
      Top = 22
      Width = 121
      Height = 21
      AutoSize = False
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtusername: TEdit
      Left = 86
      Top = 53
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 1
      TextHint = 'Enter Username'
    end
    object edtname: TEdit
      Left = 86
      Top = 80
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 2
      TextHint = 'Enter First Name(s)'
    end
    object edtemail: TEdit
      Left = 318
      Top = 115
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 3
      TextHint = 'Enter Email Address'
    end
    object edtsurname: TEdit
      Left = 318
      Top = 84
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 4
      TextHint = 'Enter Surname'
    end
    object edtpassword: TEdit
      Left = 318
      Top = 53
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 5
      TextHint = 'Enter Password'
    end
    object edtcell: TMaskEdit
      Left = 86
      Top = 115
      Width = 121
      Height = 21
      Hint = 'Enter cellphone number'
      EditMask = '0000000000;1;_'
      MaxLength = 10
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '          '
    end
    object edtId: TMaskEdit
      Left = 318
      Top = 22
      Width = 121
      Height = 21
      Hint = 'Enter ID number'
      EditMask = '0000000000000;1;_'
      MaxLength = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = '             '
    end
    object DBGrid1: TDBGrid
      Left = 176
      Top = -184
      Width = 320
      Height = 120
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object rgpOption: TRadioGroup
    Left = 8
    Top = 417
    Width = 190
    Height = 71
    Hint = 'Select to Add, Update or Delete an employee'
    Caption = 'Select your option'
    Items.Strings = (
      'ADD an Employee'
      'UPDATE this Employee'#39's Details'
      'DELETE this Employee')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object rgpESearch: TGroupBox
    Left = 455
    Top = 255
    Width = 261
    Height = 233
    Caption = 'Search'
    TabOrder = 2
    object rgpEFilter: TRadioGroup
      Left = 32
      Top = 67
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
    end
    object edtsearch: TEdit
      Left = 16
      Top = 40
      Width = 145
      Height = 21
      AutoSize = False
      TabOrder = 1
      TextHint = 'Enter Search Value'
    end
    object btnEsearch: TBitBtn
      Left = 167
      Top = 106
      Width = 84
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
      TabOrder = 2
      OnClick = btnEsearchClick
    end
    object btnEclear: TButton
      Left = 167
      Top = 149
      Width = 84
      Height = 25
      Caption = 'Clear Search'
      TabOrder = 3
      OnClick = btnEclearClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 494
    Width = 786
    Height = 41
    BorderStyle = bsSingle
    TabOrder = 3
    object lblDateTime: TLabel
      Left = 24
      Top = 15
      Width = 69
      Height = 13
      Caption = 'Date and Time'
    end
    object lblUsername: TLabel
      Left = 324
      Top = 15
      Width = 33
      Height = 13
      Caption = 'Admin:'
    end
    object btnBack: TBitBtn
      Left = 552
      Top = 7
      Width = 75
      Height = 25
      Hint = 'Return to Admin Home'
      Caption = 'Back'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1B3A6883E19883D1A883E19883D1AD1B3
        A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC5A08E8C41178B40188B40188B4018D1B3A6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F45168F44178E45178F44
        168F4416FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF924814B8710AC68006B8710A924815FFFFFFFFFFFFFFFFFFD1B3A6
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1B3A6964D13C8850EC8850EC884
        0E974C13FFFFFFFFFFFFFFFFFF9B5111D1B3A6FFFFFFFFFFFFFFFFFFFFFFFFD1
        B3A69B5111BD7918CC8B17CC8B18CC8B189B5111FFFFFFFFFFFFFFFFFF9F570F
        A0560FD1B3A6FFFFFFFFFFFFD1B3A6A0570FC07F21D09122D19123D19122C07F
        21A0560FFFFFFFFFFFFFFFFFFFA55C0DC4852AA45B0DD1B3A6D1B3A6A55B0DC4
        852AD5992ED5992ED5992EC4842AA55C0DD1B3A6FFFFFFFFFFFFFFFFFFA9600B
        DAA13AC78B34AA610BA9610BC78B33D9A03BDAA03AD9A13BC88A33A9610BD1B3
        A6FFFFFFFFFFFFFFFFFFFFFFFFAE6509DEA846DFA847CB913DDEA847DFA846DE
        A847DEA846CB913DAE6509D1B3A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB36A07
        E3AF52E2AF52E2AF52E3AF52E2AF52E2AF53CF9646B26B07D1B3A6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB66F05E6B65DE7B65DE7B75DE6B65DE6B65DE6
        B65DB76F05D1B3A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA7304
        EBBC67EABC67EBBD67EABC67EABC67D4A156BB7304D1B3A6FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBE7602EDC16FEEC16FEEC16FEDC16FEEC16FED
        C16FD7A45CBE7602D1B3A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07A01
        F0C575F0C575F0C575F0C575F0C575F0C575F0C575D8A761C17901D1B3A6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC37C00C37C00C37C00C37C00C37C00C37C00C3
        7C00C37C00C37C00C37C00C37C00D1B3A6FFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object btnHelp: TBitBtn
      Left = 471
      Top = 7
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkHelp
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 137
    Top = 207
    Width = 440
    Height = 32
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbRefresh]
    TabOrder = 4
  end
  object btnProceed: TBitBtn
    Left = 374
    Top = 440
    Width = 75
    Height = 25
    Caption = 'btnProceed'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnProceedClick
  end
  object DBGrid2: TDBGrid
    Left = 24
    Top = 40
    Width = 673
    Height = 161
    DataSource = dmWildlifeSafari.dtsrGuests
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'GuestID'
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
  object btnDelete: TBitBtn
    Left = 239
    Top = 440
    Width = 75
    Height = 25
    Caption = 'delete'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btnDeleteClick
  end
end
