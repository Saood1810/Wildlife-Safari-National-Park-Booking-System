object frmHistory: TfrmHistory
  Left = 0
  Top = 0
  Caption = 'Order History'
  ClientHeight = 469
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 134
    Top = 19
    Width = 88
    Height = 16
    Caption = 'Order History'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object redoutput: TMemo
    Left = 85
    Top = 49
    Width = 236
    Height = 368
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Lines.Strings = (
      '')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 436
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
  end
end