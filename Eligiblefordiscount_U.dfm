object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 468
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 8
    Width = 343
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'LAN FANatics - Player Management'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 95
    Width = 80
    Height = 16
    Caption = 'Player Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 18
    Top = 61
    Width = 83
    Height = 16
    Caption = 'Player E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 18
    Top = 131
    Width = 83
    Height = 16
    Caption = 'Date of Birth'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 383
    Top = 14
    Width = 35
    Height = 16
    Caption = 'Date '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 18
    Top = 258
    Width = 85
    Height = 16
    Caption = 'Minimum Age'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 393
    Top = 55
    Width = 46
    Height = 16
    Caption = 'Display'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 18
    Top = 344
    Width = 103
    Height = 16
    Caption = 'Age Test Result'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnApprove: TButton
    Left = 323
    Top = 298
    Width = 217
    Height = 62
    Caption = '3.2.3  Approve'
    TabOrder = 0
  end
  object btnSubmitDetails: TButton
    Left = 81
    Top = 183
    Width = 215
    Height = 35
    Caption = '3.2.1  Submit Details'
    TabOrder = 1
  end
  object edtAge: TEdit
    Left = 167
    Top = 257
    Width = 33
    Height = 24
    TabOrder = 2
  end
  object edtAgeResult: TEdit
    Left = 143
    Top = 336
    Width = 90
    Height = 24
    TabOrder = 3
  end
  object edtDateOfBirth: TEdit
    Left = 127
    Top = 122
    Width = 169
    Height = 24
    TabOrder = 4
    Text = '10/10/96'
  end
  object edtEmail: TEdit
    Left = 127
    Top = 62
    Width = 169
    Height = 24
    TabOrder = 5
    Text = 'msaood1810@gmail.com'
  end
  object edtName: TEdit
    Left = 128
    Top = 92
    Width = 169
    Height = 24
    TabOrder = 6
    Text = 'Saood'
  end
  object edtToday: TEdit
    Left = 379
    Top = 12
    Width = 105
    Height = 24
    TabOrder = 7
    Text = 'edtToday'
  end
  object redDisplay: TRichEdit
    Left = 313
    Top = 77
    Width = 217
    Height = 141
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 8
  end
end
