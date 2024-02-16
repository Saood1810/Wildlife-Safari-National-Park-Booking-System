object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 612
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 650
    Height = 600
    ActivePage = TabSheet1
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Accomodation'
      ExplicitHeight = 550
      object Label1: TLabel
        Left = 24
        Top = 136
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      object Label2: TLabel
        Left = 24
        Top = 176
        Width = 31
        Height = 13
        Caption = 'Label2'
      end
      object Label3: TLabel
        Left = 24
        Top = 216
        Width = 31
        Height = 13
        Caption = 'Label3'
      end
      object DBGrid1: TDBGrid
        Left = 296
        Top = 27
        Width = 351
        Height = 486
        DataSource = dmWildlifeSafari.dtsrAccomodation
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Room Number'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'No Of Bedrooms'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Type Of Lodge'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Price Per Night'
            Width = 80
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitWidth = 549
      ExplicitHeight = 482
    end
  end
end
