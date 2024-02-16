object frmaccomodation: Tfrmaccomodation
  Left = 0
  Top = 0
  Caption = 'frmaccomodation'
  ClientHeight = 534
  ClientWidth = 595
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
    Left = 152
    Top = 520
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 5
    Width = 668
    Height = 500
    ActivePage = TabSheet2
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Label2: TLabel
        Left = 262
        Top = 3
        Width = 98
        Height = 13
        Caption = 'Avalaible Options'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lstprices: TListBox
        Left = 239
        Top = 224
        Width = 153
        Height = 193
        ItemHeight = 13
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 62
        Top = 312
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 342
        Top = 441
        Width = 75
        Height = 25
        Caption = 'Check Out'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 42
        Width = 230
        Height = 407
        Caption = 'Accomodation Details'
        TabOrder = 2
        object Label4: TLabel
          Left = 20
          Top = 23
          Width = 100
          Height = 13
          Caption = 'Filter Table by lodge '
        end
        object Label5: TLabel
          Left = 20
          Top = 224
          Width = 66
          Height = 13
          Caption = 'Check in Date'
        end
        object Label6: TLabel
          Left = 16
          Top = 286
          Width = 75
          Height = 13
          Caption = 'Check Out date'
        end
        object Label7: TLabel
          Left = 20
          Top = 185
          Width = 67
          Height = 13
          Caption = 'Room Number'
        end
        object DateTimePicker1: TDateTimePicker
          Left = 16
          Top = 243
          Width = 186
          Height = 21
          Date = 43939.722205428240000000
          Format = 'dd/MM/yy'
          Time = 43939.722205428240000000
          TabOrder = 0
        end
        object DateTimePicker2: TDateTimePicker
          Left = 13
          Top = 305
          Width = 186
          Height = 21
          Date = 43939.722311446760000000
          Format = 'dd/MM/yy'
          Time = 43939.722311446760000000
          TabOrder = 1
        end
        object BitBtn3: TBitBtn
          Left = 45
          Top = 363
          Width = 75
          Height = 25
          Caption = 'Search'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = BitBtn3Click
        end
        object dbedtroomnumber: TDBEdit
          Left = 110
          Top = 182
          Width = 34
          Height = 21
          DataField = 'Room Number'
          DataSource = dmWildlifeSafari.dtsrAccomodation
          TabOrder = 3
        end
        object rgpLodges: TRadioGroup
          Left = 16
          Top = 55
          Width = 185
          Height = 105
          Caption = 'rgpLodges'
          Items.Strings = (
            'Luxury and Deluxe Tented Lodge'#9
            'Classic'#9
            'Safari Hotel'#9
            'Hutted Bush Lodge'#9
            'Tented Lodge'#9
            'Country Lodge'#9)
          TabOrder = 4
          OnClick = rgpLodgesClick
        end
      end
      object redoutput: TRichEdit
        Left = 423
        Top = 208
        Width = 185
        Height = 227
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBGrid1: TDBGrid
        Left = 239
        Top = 22
        Width = 352
        Height = 180
        DataSource = dmWildlifeSafari.dtsrAccomodation
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'No Of Bedrooms'
            Width = 80
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
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Availibilty'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Price Per Night'
            Width = 80
            Visible = True
          end>
      end
      object cmbsort: TComboBox
        Left = 392
        Top = -5
        Width = 145
        Height = 21
        TabOrder = 6
        Text = 'cmbsort'
      end
    end
  end
end
