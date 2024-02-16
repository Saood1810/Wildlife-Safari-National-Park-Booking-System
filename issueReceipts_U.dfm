object frmGenerate: TfrmGenerate
  Left = 0
  Top = 0
  Caption = 'frmGenerate'
  ClientHeight = 450
  ClientWidth = 491
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
  object Receipts: TPageControl
    Left = 2
    Top = 8
    Width = 481
    Height = 434
    ActivePage = TabSheet2
    Style = tsFlatButtons
    TabOrder = 0
    object Payments: TTabSheet
      Caption = 'Payments'
      object redOut: TRichEdit
        Left = 0
        Top = 3
        Width = 302
        Height = 366
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
end
