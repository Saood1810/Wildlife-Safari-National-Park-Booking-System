object frmGuestsManage: TfrmGuestsManage
  Left = 0
  Top = 0
  Caption = 'Manage'
  ClientHeight = 431
  ClientWidth = 632
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
  object Label9: TLabel
    Left = 128
    Top = 403
    Width = 31
    Height = 13
    Caption = 'Label9'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 165
    Width = 401
    Height = 58
    Caption = 'Guest Details'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Guest ID'
    end
    object Label2: TLabel
      Left = 222
      Top = 24
      Width = 58
      Height = 13
      Caption = 'Username'
    end
    object dbedtGuestID: TDBEdit
      Left = 96
      Top = 24
      Width = 96
      Height = 19
      DataField = 'GuestID'
      DataSource = dmWildlifeSafari.dtsrGuests
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 297
      Top = 24
      Width = 89
      Height = 19
      DataField = 'Username'
      DataSource = dmWildlifeSafari.dtsrGuests
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 229
    Width = 449
    Height = 163
    Caption = 'Guest Details'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Label3: TLabel
      Left = 27
      Top = 32
      Width = 60
      Height = 13
      Caption = 'First Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 27
      Top = 64
      Width = 51
      Height = 13
      Caption = 'Surname'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 27
      Top = 96
      Width = 54
      Height = 13
      Caption = 'Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 231
      Top = 40
      Width = 60
      Height = 13
      Caption = 'ID Number'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 231
      Top = 67
      Width = 58
      Height = 13
      Caption = 'Cell Phone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 231
      Top = 96
      Width = 72
      Height = 13
      Caption = 'Email Adress'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtname: TEdit
      Left = 104
      Top = 32
      Width = 121
      Height = 19
      TabOrder = 0
    end
    object edtSurname: TEdit
      Left = 104
      Top = 59
      Width = 121
      Height = 19
      TabOrder = 1
    end
    object edtpassword: TEdit
      Left = 104
      Top = 96
      Width = 121
      Height = 19
      TabOrder = 2
    end
    object edtID: TEdit
      Left = 309
      Top = 34
      Width = 121
      Height = 19
      MaxLength = 13
      NumbersOnly = True
      TabOrder = 3
    end
    object edtCell: TEdit
      Left = 309
      Top = 69
      Width = 121
      Height = 19
      MaxLength = 10
      NumbersOnly = True
      TabOrder = 4
    end
    object edtEmail: TEdit
      Left = 309
      Top = 94
      Width = 121
      Height = 19
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 43
      Top = 134
      Width = 86
      Height = 25
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
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 173
      Top = 134
      Width = 75
      Height = 26
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
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A009F
        5A009F5A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF9F5A00F3CC87DDAD5C9F5A00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35D00F3
        D08EF3CF8EA35D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA76100F5D396F5D396A76000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD6600F5
        D7A0F5D7A0AD6600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFB36B00F6DBABF6DCAAB36B00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB97000F8
        E0B5C9850FB97100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF6E5C7C07600F8E5C0D09021C07600F6E5C7FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E5C7C77B00F7DFB4F9
        E9CADAA13BDAA13BC67C00F6E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF6E5C7CC8000F7E2BCFBEDD3FBEDD4E5B255E4B155F7E2BCCE8200F6E5
        C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E5C7D18400F8E6C3FCF0DCFCF1DCFC
        F1DCEBBD67EBBD67FCF0DDF8E6C3D18400F6E5C7FFFFFFFFFFFFFFFFFFF6E5C7
        D48700F9E8C9FDF4E4FCF3E4FDF3E4FCF4E4EBBD67EBBD67FCF3E3FCF4E4F8E8
        C9D48600F6E5C7FFFFFFF6E5C7D48700F9E9CCFDF6E9FDF6E9FDF6E9FDF6E9FD
        F6E9FDF6E9FDF6E9FDF6E9FDF6E9FDF6E9F9E9CCD48700F6E5C7D48700D48700
        D48700D48700D48700D48700D48700D48700D48600D48600D48600D48700D487
        00D48700D48700D48700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 297
      Top = 134
      Width = 75
      Height = 25
      Caption = 'Delete'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFF44548F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF44548FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF44548F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF44548FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF44548F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4148E1313CDE1D25DA1D25DA323B
        DFA8ABF2FFFFFFFFFFFFFFFFFF44548FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19
        22DC3B47E05E6DE78BA0EF7587EB4654E21D25DA2C33DDFFFFFFFFFFFF1D25DA
        696EEAFFFFFFFFFFFFFFFFFF6A6FEB1A23DA1D24D92D37DD8094ED7183EA5564
        E4303BDD1D25DAFFFFFFFFFFFF1D25DA323CDE212ADB1D25DA1D25DA262EDC35
        40DF1D25DA323DDF8094ED7183EA5362E42F39DD1D25DAFFFFFFFFFFFF1D25DA
        5D6DE66272E76A7DE97083EB6879E95E6EE81D25DA323CDF8094ED7184EA5362
        E42F39DD1D25DAFFFFFFFFFFFF1D25DA5B6AE66E80E9889CEE8EA4F17688EC5C
        6BE71D25DA323CDF8296ED7284EA5361E42F39DD1D25DAFFFFFFFFFFFF1D25DA
        5A69E66B7DE98296ED899DF07284EC5C6AE71D25DA323CDE7C8FED7184EB5766
        E5303ADD1D25DAFFFFFFFFFFFF1D25DA5A69E66B7DE98296ED899DF07284EC5B
        69E71D25DA1F28DA1D25DA1D25DA3542DF2D38DE1D25DAFFFFFFFFFFFF1D25DA
        5B6BE66B7CE98296ED899DF07284EC5D6BE71D25DA424AE1FFFFFFFFFFFF9093
        F01F27DB1D25DAFFFFFFFFFFFF1D25DA5867E57284EA899DEE90A5F1788BED59
        69E71D25DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8CAF8FFFFFFFFFFFF6E74EA
        232EDC3D4AE06274E8697AE9414FE21D25DA676DE9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADCFA6C71E83137DD3037DE9095F0DD
        DEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn3Click
    end
    object cmbGuestID: TComboBox
      Left = 173
      Top = 5
      Width = 97
      Height = 21
      TabOrder = 9
      TextHint = 'Select GuestID'
    end
  end
  object BitBtn4: TBitBtn
    Left = 8
    Top = 398
    Width = 75
    Height = 25
    Caption = 'Back'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000BF7700BE7700
      BE7700BF7800BF7800BF7800BF7800BE7800BE7700BE7800BE7700BF7700E5C8
      97FFFFFFFFFFFFFFFFFFC07900C8850EC8850FC8850FC8850EC8850FC8850FC8
      850FC8850FC8850EC07900E5C897FFFFFFFFFFFFFFFFFFFFFFFFBE7800CA8915
      CA8815CA8915CB8915CB8915CA8815CA8815CA8915BF7800E5C897FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBC7600CD8E1CCE8D1CCD8E1CCD8D1CCE8E1CCD8E1CCD
      8E1DBD7600E5C897FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB7400D09325
      D19325D09325D09325D19225D09325BA7400BA7400FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB87200D4992ED4992ED3982ED4992DD4992ED4992DD4
      982DB87200E5C897FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB66F00D79F37
      D79E37D79F37D79E37D79F37D89F37D89F37D79F37B56F00E5C897FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB26C00DBA440DCA540DBA440B26C00DBA540DCA441DB
      A540DBA440DBA541B26C00E5C897FFFFFFFFFFFFFFFFFFFFFFFFAF6A00DFAA4A
      DFAA49AF6A00B06900AF6A00DFAA4ADEAA4ADFAA49DFAA4ADFAA49B06900E5C8
      97FFFFFFFFFFFFFFFFFFAC6700E2B051AD6600E5C897FFFFFFE5C897AD6700E2
      AF51E1AF52E2AF52E1AF52E2B052AD6600E5C897FFFFFFFFFFFFA96400A96400
      E5C897FFFFFFFFFFFFFFFFFFE5C897AA6400E5B459E5B459E4B459E5B459E5B4
      59AA6400E5C897FFFFFFA76100E5C897FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5
      C897A76100E8B860E7B860E7B860E7B860E7B95FA76100E5C897E5C897FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5C897A55F00E9BB64E9BB64E9BB
      64A45F00E5C897FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE5C897A25D00E9BB64A35D00E5C897FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5C897A15B00E5C8
      97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE5C897FFFFFFFFFFFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn4Click
  end
  object rgpESearch: TGroupBox
    Left = 466
    Top = 165
    Width = 158
    Height = 258
    Caption = 'Search'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object rgpEFilter: TRadioGroup
      Left = 16
      Top = 61
      Width = 121
      Height = 154
      Caption = 'Filter by'
      Ctl3D = False
      Items.Strings = (
        'Guest ID'
        'ID Number'
        'Username'
        'First Name(s)'
        'Surname')
      ParentCtl3D = False
      TabOrder = 0
      OnClick = rgpEFilterClick
    end
    object edtsearch: TEdit
      Left = 16
      Top = 27
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 1
      TextHint = 'Enter Search Value'
    end
    object btnEclear: TButton
      Left = 39
      Top = 221
      Width = 84
      Height = 25
      Caption = 'Clear Search'
      TabOrder = 2
    end
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 16
    Width = 606
    Height = 129
    DataSource = dmWildlifeSafari.dtsrGuests
    DrawingStyle = gdsClassic
    TabOrder = 4
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
end
