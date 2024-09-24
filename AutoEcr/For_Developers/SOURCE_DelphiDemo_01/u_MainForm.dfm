object fm_MainForm: Tfm_MainForm
  Left = 0
  Top = 0
  Caption = 'Device dependent driver demo'
  ClientHeight = 590
  ClientWidth = 964
  Color = clBtnFace
  Constraints.MinHeight = 628
  Constraints.MinWidth = 980
  DoubleBuffered = True
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  PixelsPerInch = 96
  TextHeight = 15
  object pnl_StatusBytes: TPanel
    Left = 600
    Top = 0
    Width = 364
    Height = 515
    Align = alRight
    BevelOuter = bvNone
    Caption = 'pnl_StatusBytes'
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 364
      Height = 515
      Align = alClient
      TabOrder = 0
      object grbx_SB_0: TGroupBox
        Left = 4
        Top = 3
        Width = 333
        Height = 134
        Enabled = False
        TabOrder = 0
        object chbx_S0_7: TCheckBox
          Left = 8
          Top = 5
          Width = 318
          Height = 17
          Caption = 'chbx_S0_7'
          Ctl3D = True
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object chbx_S0_6: TCheckBox
          Left = 8
          Top = 20
          Width = 318
          Height = 17
          Caption = 'chbx_S0_6'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object chbx_S0_5: TCheckBox
          Left = 8
          Top = 35
          Width = 318
          Height = 17
          Caption = 'chbx_S0_5'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object chbx_S0_4: TCheckBox
          Left = 8
          Top = 50
          Width = 318
          Height = 17
          Caption = 'chbx_S0_4'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object chbx_S0_3: TCheckBox
          Left = 8
          Top = 65
          Width = 318
          Height = 17
          Caption = 'chbx_S0_3'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object chbx_S0_2: TCheckBox
          Left = 8
          Top = 80
          Width = 318
          Height = 17
          Caption = 'chbx_S0_2'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object chbx_S0_1: TCheckBox
          Left = 8
          Top = 95
          Width = 318
          Height = 17
          Caption = 'chbx_S0_1'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object chbx_S0_0: TCheckBox
          Left = 8
          Top = 111
          Width = 318
          Height = 17
          Caption = 'chbx_S0_0'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object grbx_SB_1: TGroupBox
        Left = 4
        Top = 143
        Width = 333
        Height = 134
        Enabled = False
        TabOrder = 1
        object chbx_S1_7: TCheckBox
          Left = 8
          Top = 6
          Width = 318
          Height = 17
          Caption = 'chbx_S1_7'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object chbx_S1_6: TCheckBox
          Left = 8
          Top = 21
          Width = 318
          Height = 17
          Caption = 'chbx_S1_6'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object chbx_S1_5: TCheckBox
          Left = 8
          Top = 36
          Width = 318
          Height = 17
          Caption = 'chbx_S1_5'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object chbx_S1_4: TCheckBox
          Left = 8
          Top = 51
          Width = 318
          Height = 17
          Caption = 'chbx_S1_4'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object chbx_S1_3: TCheckBox
          Left = 8
          Top = 66
          Width = 318
          Height = 17
          Caption = 'chbx_S1_3'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object chbx_S1_2: TCheckBox
          Left = 8
          Top = 81
          Width = 318
          Height = 17
          Caption = 'chbx_S1_2'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object chbx_S1_1: TCheckBox
          Left = 8
          Top = 96
          Width = 318
          Height = 17
          Caption = 'chbx_S1_1'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object chbx_S1_0: TCheckBox
          Left = 8
          Top = 111
          Width = 318
          Height = 17
          Caption = 'chbx_S1_0'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object grbx_SB_2: TGroupBox
        Left = 4
        Top = 283
        Width = 333
        Height = 134
        Enabled = False
        TabOrder = 2
        object chbx_S2_7: TCheckBox
          Left = 7
          Top = 6
          Width = 318
          Height = 17
          Caption = 'chbx_S2_7'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object chbx_S2_6: TCheckBox
          Left = 7
          Top = 21
          Width = 318
          Height = 17
          Caption = 'chbx_S2_6'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object chbx_S2_5: TCheckBox
          Left = 7
          Top = 36
          Width = 318
          Height = 17
          Caption = 'chbx_S2_5'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object chbx_S2_4: TCheckBox
          Left = 7
          Top = 51
          Width = 318
          Height = 17
          Caption = 'chbx_S2_4'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object chbx_S2_3: TCheckBox
          Left = 7
          Top = 66
          Width = 318
          Height = 17
          Caption = 'chbx_S2_3'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object chbx_S2_2: TCheckBox
          Left = 7
          Top = 81
          Width = 318
          Height = 17
          Caption = 'chbx_S2_2'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object chbx_S2_1: TCheckBox
          Left = 7
          Top = 96
          Width = 318
          Height = 17
          Caption = 'chbx_S2_1'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object chbx_S2_0: TCheckBox
          Left = 7
          Top = 111
          Width = 318
          Height = 17
          Caption = 'chbx_S2_0'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object grbx_SB_3: TGroupBox
        Left = 3
        Top = 423
        Width = 333
        Height = 134
        Enabled = False
        TabOrder = 3
        object chbx_S3_7: TCheckBox
          Left = 6
          Top = 6
          Width = 318
          Height = 17
          Caption = 'chbx_S3_7'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object chbx_S3_6: TCheckBox
          Left = 6
          Top = 21
          Width = 318
          Height = 17
          Caption = 'chbx_S3_6'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object chbx_S3_5: TCheckBox
          Left = 6
          Top = 36
          Width = 318
          Height = 17
          Caption = 'chbx_S3_5'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object chbx_S3_4: TCheckBox
          Left = 6
          Top = 51
          Width = 318
          Height = 17
          Caption = 'chbx_S3_4'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object chbx_S3_3: TCheckBox
          Left = 6
          Top = 66
          Width = 318
          Height = 17
          Caption = 'chbx_S3_3'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object chbx_S3_2: TCheckBox
          Left = 6
          Top = 81
          Width = 318
          Height = 17
          Caption = 'chbx_S3_2'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object chbx_S3_1: TCheckBox
          Left = 6
          Top = 96
          Width = 318
          Height = 17
          Caption = 'chbx_S3_1'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object chbx_S3_0: TCheckBox
          Left = 6
          Top = 111
          Width = 318
          Height = 17
          Caption = 'chbx_S3_0'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object grbx_SB_4: TGroupBox
        Left = 3
        Top = 563
        Width = 333
        Height = 134
        Enabled = False
        TabOrder = 4
        object chbx_S4_7: TCheckBox
          Left = 6
          Top = 6
          Width = 318
          Height = 17
          Caption = 'chbx_S4_7'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object chbx_S4_6: TCheckBox
          Left = 6
          Top = 21
          Width = 318
          Height = 17
          Caption = 'chbx_S4_6'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object chbx_S4_5: TCheckBox
          Left = 6
          Top = 36
          Width = 318
          Height = 17
          Caption = 'chbx_S4_5'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object chbx_S4_4: TCheckBox
          Left = 6
          Top = 51
          Width = 318
          Height = 17
          Caption = 'chbx_S4_4'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object chbx_S4_3: TCheckBox
          Left = 6
          Top = 66
          Width = 318
          Height = 17
          Caption = 'chbx_S4_3'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object chbx_S4_2: TCheckBox
          Left = 6
          Top = 81
          Width = 318
          Height = 17
          Caption = 'chbx_S4_2'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object chbx_S4_1: TCheckBox
          Left = 6
          Top = 96
          Width = 318
          Height = 17
          Caption = 'chbx_S4_1'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object chbx_S4_0: TCheckBox
          Left = 6
          Top = 111
          Width = 318
          Height = 17
          Caption = 'chbx_S4_0'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object grbx_SB_5: TGroupBox
        Left = 3
        Top = 703
        Width = 333
        Height = 134
        Enabled = False
        TabOrder = 5
        object chbx_S5_7: TCheckBox
          Left = 6
          Top = 6
          Width = 318
          Height = 17
          Caption = 'chbx_S5_7'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object chbx_S5_6: TCheckBox
          Left = 6
          Top = 21
          Width = 318
          Height = 17
          Caption = 'chbx_S5_6'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object chbx_S5_5: TCheckBox
          Left = 6
          Top = 36
          Width = 318
          Height = 17
          Caption = 'chbx_S5_5'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object chbx_S5_4: TCheckBox
          Left = 6
          Top = 51
          Width = 318
          Height = 17
          Caption = 'chbx_S5_4'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object chbx_S5_3: TCheckBox
          Left = 6
          Top = 66
          Width = 318
          Height = 17
          Caption = 'chbx_S5_3'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object chbx_S5_2: TCheckBox
          Left = 6
          Top = 81
          Width = 318
          Height = 17
          Caption = 'chbx_S5_2'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object chbx_S5_1: TCheckBox
          Left = 6
          Top = 96
          Width = 318
          Height = 17
          Caption = 'chbx_S5_1'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object chbx_S5_0: TCheckBox
          Left = 6
          Top = 111
          Width = 318
          Height = 17
          Caption = 'chbx_S5_0'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object grbx_SB_6: TGroupBox
        Left = 4
        Top = 843
        Width = 333
        Height = 134
        Enabled = False
        TabOrder = 6
        object chbx_S6_0: TCheckBox
          Left = 6
          Top = 6
          Width = 318
          Height = 17
          Caption = 'chbx_S5_7'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object chbx_S6_1: TCheckBox
          Left = 6
          Top = 21
          Width = 318
          Height = 17
          Caption = 'chbx_S5_6'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object chbx_S6_2: TCheckBox
          Left = 6
          Top = 36
          Width = 318
          Height = 17
          Caption = 'chbx_S5_5'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object chbx_S6_3: TCheckBox
          Left = 6
          Top = 51
          Width = 318
          Height = 17
          Caption = 'chbx_S5_4'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object chbx_S6_4: TCheckBox
          Left = 6
          Top = 66
          Width = 318
          Height = 17
          Caption = 'chbx_S5_3'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object chbx_S6_5: TCheckBox
          Left = 6
          Top = 81
          Width = 318
          Height = 17
          Caption = 'chbx_S5_2'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object chbx_S6_6: TCheckBox
          Left = 6
          Top = 96
          Width = 318
          Height = 17
          Caption = 'chbx_S5_1'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object chbx_S6_7: TCheckBox
          Left = 6
          Top = 111
          Width = 318
          Height = 17
          Caption = 'chbx_S5_0'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object grbx_SB_7: TGroupBox
        Left = 3
        Top = 983
        Width = 333
        Height = 134
        Enabled = False
        TabOrder = 7
        object chbx_S7_7: TCheckBox
          Left = 6
          Top = 6
          Width = 318
          Height = 17
          Caption = 'chbx_S5_7'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object chbx_S7_0: TCheckBox
          Left = 6
          Top = 21
          Width = 318
          Height = 17
          Caption = 'chbx_S5_6'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object chbx_S7_1: TCheckBox
          Left = 6
          Top = 36
          Width = 318
          Height = 17
          Caption = 'chbx_S5_5'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object chbx_S7_2: TCheckBox
          Left = 6
          Top = 51
          Width = 318
          Height = 17
          Caption = 'chbx_S5_4'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object chbx_S7_3: TCheckBox
          Left = 6
          Top = 66
          Width = 318
          Height = 17
          Caption = 'chbx_S5_3'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object chbx_S7_4: TCheckBox
          Left = 6
          Top = 81
          Width = 318
          Height = 17
          Caption = 'chbx_S5_2'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object chbx_S7_5: TCheckBox
          Left = 6
          Top = 96
          Width = 318
          Height = 17
          Caption = 'chbx_S5_1'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object chbx_S7_6: TCheckBox
          Left = 6
          Top = 111
          Width = 318
          Height = 17
          Caption = 'chbx_S5_0'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
    end
  end
  object pnl_Pages: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 515
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pc_Main: TPageControl
      Left = 0
      Top = 0
      Width = 600
      Height = 515
      ActivePage = ts_Behavior
      Align = alClient
      TabOrder = 0
      object ts_Initialisation: TTabSheet
        Caption = 'Initialisation and connection'
        object pnl_ConnectionProperties: TPanel
          Left = 0
          Top = 0
          Width = 592
          Height = 485
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object lb_Language_1: TLabel
            Left = 349
            Top = 97
            Width = 88
            Height = 15
            Caption = 'Driver language:'
          end
          object lb_Firmware_CodePage_01: TLabel
            Left = 349
            Top = 307
            Width = 60
            Height = 15
            Caption = 'Code page:'
          end
          object lb_Firmware_CodePage_02: TLabel
            Left = 465
            Top = 307
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_Firmware_CheckSum_01: TLabel
            Left = 349
            Top = 286
            Width = 107
            Height = 15
            Caption = 'Firmware checksum:'
          end
          object lb_Firmware_CheckSum_02: TLabel
            Left = 465
            Top = 286
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_Firmware_Date_01: TLabel
            Left = 349
            Top = 265
            Width = 77
            Height = 15
            Caption = 'Firmware date:'
          end
          object lb_Firmware_Date_02: TLabel
            Left = 465
            Top = 265
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_Firmware_Revision_01: TLabel
            Left = 349
            Top = 244
            Width = 97
            Height = 15
            Caption = 'Firmware revision:'
          end
          object lb_Firmware_Revision_02: TLabel
            Left = 465
            Top = 244
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_Device_Type_01: TLabel
            Left = 349
            Top = 160
            Width = 67
            Height = 15
            Caption = 'Device type:'
          end
          object lb_Device_Type_02: TLabel
            Left = 465
            Top = 158
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_Language_2: TLabel
            Left = 465
            Top = 97
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_DeviceConnected_1: TLabel
            Left = 349
            Top = 118
            Width = 99
            Height = 15
            Caption = 'Device connected:'
          end
          object lb_DeviceConnected_2: TLabel
            Left = 465
            Top = 118
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_LANConnected_1: TLabel
            Left = 349
            Top = 139
            Width = 88
            Height = 15
            Caption = 'LAN connected:'
          end
          object lb_LANConnected_2: TLabel
            Left = 465
            Top = 139
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_ModelName_1: TLabel
            Left = 349
            Top = 181
            Width = 69
            Height = 15
            Caption = 'Model name:'
          end
          object lb_ModelName_2: TLabel
            Left = 465
            Top = 181
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_SerialNumber_1: TLabel
            Left = 349
            Top = 202
            Width = 75
            Height = 15
            Caption = 'Serial number:'
          end
          object lb_SerialNumber_2: TLabel
            Left = 465
            Top = 202
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_Distributor_01: TLabel
            Left = 349
            Top = 328
            Width = 61
            Height = 15
            Caption = 'Distributor:'
          end
          object lb_Distributor_02: TLabel
            Left = 465
            Top = 328
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_FM_Number_01: TLabel
            Left = 349
            Top = 223
            Width = 65
            Height = 15
            Caption = 'FM number:'
          end
          object lb_FM_Number_02: TLabel
            Left = 465
            Top = 223
            Width = 15
            Height = 15
            Caption = '.....'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn_StartCOMServer: TButton
            Left = 183
            Top = 82
            Width = 148
            Height = 25
            Caption = 'Start - COM Server'
            TabOrder = 0
            OnClick = btn_StartCOMServerClick
          end
          object btn_OpenConnection: TButton
            Left = 29
            Top = 304
            Width = 148
            Height = 25
            Caption = 'Open connection'
            TabOrder = 1
            OnClick = btn_OpenConnectionClick
          end
          object btn_StopConnection: TButton
            Left = 183
            Top = 304
            Width = 148
            Height = 25
            Caption = 'Stop connection'
            TabOrder = 2
            OnClick = btn_StopConnectionClick
          end
          object btn_StopCOMServer: TButton
            Left = 183
            Top = 335
            Width = 148
            Height = 25
            Caption = 'Stop - COM Server'
            TabOrder = 3
            OnClick = btn_StopCOMServerClick
          end
          object btn_SearchAndDestroy: TButton
            Left = 29
            Top = 82
            Width = 148
            Height = 25
            Caption = 'Search and destroy'
            TabOrder = 4
            OnClick = btn_SearchAndDestroyClick
          end
          object grbx_Device_TransportProtocol: TGroupBox
            Left = 29
            Top = 113
            Width = 302
            Height = 185
            Caption = ' Device - transport protocol '
            TabOrder = 5
            object lb_COMPort: TLabel
              Left = 26
              Top = 59
              Width = 57
              Height = 15
              Alignment = taRightJustify
              Caption = 'COM Port:'
            end
            object lb_BaudRate: TLabel
              Left = 26
              Top = 90
              Width = 54
              Height = 15
              Alignment = taRightJustify
              Caption = 'Baud rate:'
            end
            object lb_LANPort: TLabel
              Left = 26
              Top = 148
              Width = 25
              Height = 15
              Alignment = taRightJustify
              Caption = 'Port:'
            end
            object lb_IPAddress: TLabel
              Left = 26
              Top = 119
              Width = 110
              Height = 15
              Alignment = taRightJustify
              Caption = 'IP Address (Device):'
            end
            object tsw_TransportType: TToggleSwitch
              Left = 154
              Top = 30
              Width = 93
              Height = 20
              FrameColor = 12615680
              StateCaptions.CaptionOn = 'LAN'
              StateCaptions.CaptionOff = 'RS-232'
              TabOrder = 0
              ThumbColor = 16744448
              OnClick = tsw_TransportTypeClick
            end
            object ed_COMPort: TEdit
              Left = 154
              Top = 56
              Width = 127
              Height = 23
              Alignment = taRightJustify
              NumbersOnly = True
              TabOrder = 1
              Text = '1'
            end
            object ed_BaudRate: TEdit
              Left = 154
              Top = 87
              Width = 127
              Height = 23
              Alignment = taRightJustify
              NumbersOnly = True
              TabOrder = 2
              Text = '115200'
            end
            object ed_LANPort: TEdit
              Left = 154
              Top = 145
              Width = 127
              Height = 23
              Alignment = taRightJustify
              NumbersOnly = True
              TabOrder = 3
              Text = '3999'
            end
            object ed_IPAddress: TEdit
              Left = 154
              Top = 116
              Width = 127
              Height = 23
              Alignment = taRightJustify
              TabOrder = 4
              Text = '192.168.9.24'
            end
          end
        end
      end
      object ts_Behavior: TTabSheet
        Caption = 'Behavior'
        ImageIndex = 2
        object pc_Behavior: TPageControl
          Left = 0
          Top = 0
          Width = 592
          Height = 485
          ActivePage = ts_RAOMode
          Align = alClient
          TabOrder = 0
          object ts_RAOMode: TTabSheet
            Caption = 'RAO Mode'
            ImageIndex = 1
            object chbx_RegisterActiveObject: TCheckBox
              Left = 28
              Top = 93
              Width = 293
              Height = 17
              Caption = 'Register ActiveX Object on start'
              TabOrder = 1
            end
            object chbx_Active_OnAfterOpenConnection: TCheckBox
              Left = 28
              Top = 116
              Width = 293
              Height = 17
              Caption = 'Active event: OnAfterOpenConnection'
              TabOrder = 2
            end
            object chbx_Active_OnAfterCloseConnection: TCheckBox
              Left = 28
              Top = 139
              Width = 293
              Height = 17
              Caption = 'Active event: OnAfterCloseConnection'
              TabOrder = 3
            end
            object btn_Set_RAO_Mode: TButton
              Left = 28
              Top = 28
              Width = 128
              Height = 25
              Caption = 'Save settings'
              TabOrder = 0
              OnClick = btn_Set_RAO_ModeClick
            end
            object chbx_Active_OnAfterSettingsChange: TCheckBox
              Left = 28
              Top = 162
              Width = 293
              Height = 17
              Caption = 'Active event: OnAfterSettingsChange'
              TabOrder = 4
            end
            object chbx_Save_Settings_AfterOpenConnection: TCheckBox
              Left = 28
              Top = 187
              Width = 293
              Height = 17
              Caption = 'Save settings after connection to the device'
              TabOrder = 5
            end
            object chbx_CheckDeviceStatusOnCheckConnection: TCheckBox
              Left = 28
              Top = 210
              Width = 293
              Height = 17
              Caption = 'Check device status on get connected'
              TabOrder = 6
            end
          end
          object ts_EventsCommands: TTabSheet
            Caption = 'Events - commands'
            object chbx_Active_OnBeforeScriptExecute: TCheckBox
              Left = 28
              Top = 93
              Width = 257
              Height = 17
              Caption = 'Active event: OnBeforeScriptExecute'
              TabOrder = 1
            end
            object chbx_Active_OnScriptRowExecute: TCheckBox
              Left = 28
              Top = 116
              Width = 257
              Height = 17
              Caption = 'Active event: OnScriptRowExecute'
              TabOrder = 2
            end
            object chbx_Active_OnAfterScriptExecute: TCheckBox
              Left = 28
              Top = 139
              Width = 257
              Height = 17
              Caption = 'Active event: OnAfterScriptExecute'
              TabOrder = 3
            end
            object chbx_Active_OnSendCommand: TCheckBox
              Left = 28
              Top = 162
              Width = 257
              Height = 17
              Caption = 'Active event: OnSendCommand'
              TabOrder = 4
            end
            object chbx_Active_OnWait: TCheckBox
              Left = 28
              Top = 185
              Width = 257
              Height = 17
              Caption = 'Active event: OnWait'
              TabOrder = 5
            end
            object chbx_Active_OnReceiveAnswer: TCheckBox
              Left = 28
              Top = 208
              Width = 257
              Height = 17
              Caption = 'Active event: OnReceiveAnswer'
              TabOrder = 6
            end
            object chbx_Active_OnStatusChange: TCheckBox
              Left = 28
              Top = 231
              Width = 257
              Height = 17
              Caption = 'Active event: OnStatusChange'
              TabOrder = 7
            end
            object chbx_Active_OnError: TCheckBox
              Left = 28
              Top = 254
              Width = 257
              Height = 17
              Caption = 'Active event: OnError'
              TabOrder = 8
            end
            object btn_SaveEvents_Commands: TButton
              Left = 28
              Top = 28
              Width = 128
              Height = 25
              Caption = 'Save settings'
              TabOrder = 0
              OnClick = btn_SaveEvents_CommandsClick
            end
          end
          object ts_Events_PorgressBars: TTabSheet
            Caption = ' Events - progress bars'
            ImageIndex = 2
            object btn_SaveEvents_ProgressBars: TButton
              Left = 28
              Top = 28
              Width = 128
              Height = 25
              Caption = 'Save settings'
              TabOrder = 0
              OnClick = btn_SaveEvents_ProgressBarsClick
            end
            object chbx_Active_OnFirstProgress_Init: TCheckBox
              Left = 28
              Top = 93
              Width = 250
              Height = 17
              Caption = 'Active event: OnFirstProgress_Init'
              TabOrder = 1
            end
            object chbx_Active_OnFirstProgress_Loop: TCheckBox
              Left = 28
              Top = 116
              Width = 250
              Height = 17
              Caption = 'Active event: OnFirstProgress_Loop'
              TabOrder = 2
            end
            object chbx_Active_OnFirstProgress_Complete: TCheckBox
              Left = 28
              Top = 139
              Width = 250
              Height = 17
              Caption = 'Active event: OnFirstProgress_Complete'
              TabOrder = 3
            end
            object chbx_Active_OnSecondProgress_Init: TCheckBox
              Left = 28
              Top = 162
              Width = 260
              Height = 17
              Caption = 'Active event: OnSecondProgress_Init'
              TabOrder = 4
            end
            object chbx_Active_OnSecondProgress_Loop: TCheckBox
              Left = 28
              Top = 185
              Width = 260
              Height = 17
              Caption = 'Active event: OnSecondProgress_Loop'
              TabOrder = 5
            end
            object chbx_Active_OnSecondProgress_Complete: TCheckBox
              Left = 28
              Top = 208
              Width = 260
              Height = 17
              Caption = 'Active event: OnSecondProgress_Complete'
              TabOrder = 6
            end
          end
          object TabSheet1: TTabSheet
            Caption = ' Other'
            ImageIndex = 4
            object lb_DriverLanguage: TLabel
              Left = 28
              Top = 276
              Width = 88
              Height = 15
              Caption = 'Driver language:'
            end
            object cbx_DriverLanguage: TComboBox
              Left = 122
              Top = 273
              Width = 128
              Height = 23
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 3
              Text = 'English'
              Items.Strings = (
                'English'
                'Romanian')
            end
            object grbx_TrackingMode: TGroupBox
              Left = 28
              Top = 139
              Width = 517
              Height = 128
              Caption = ' Tracking mode '
              TabOrder = 2
              object lb_TrackingModePath: TLabel
                Left = 23
                Top = 38
                Width = 27
                Height = 15
                Caption = 'Path:'
              end
              object lb_TrackingModeFileName: TLabel
                Left = 23
                Top = 67
                Width = 53
                Height = 15
                Caption = 'File name:'
              end
              object Label1: TLabel
                Left = 23
                Top = 93
                Width = 52
                Height = 15
                Caption = 'Row limit:'
              end
              object ed_TrackingModePath: TEdit
                Left = 81
                Top = 35
                Width = 416
                Height = 23
                TabOrder = 0
              end
              object ed_TrackingModeFileName: TEdit
                Left = 81
                Top = 64
                Width = 416
                Height = 23
                TabOrder = 1
              end
              object ed_TrackingModeRowLimit: TEdit
                Left = 81
                Top = 93
                Width = 37
                Height = 23
                TabOrder = 2
                Text = '500'
              end
            end
            object btn_SaveOtherSettings: TButton
              Left = 28
              Top = 28
              Width = 128
              Height = 25
              Caption = 'Save settings'
              TabOrder = 0
              OnClick = btn_SaveOtherSettingsClick
            end
            object chbx_TrackingMode: TCheckBox
              Left = 28
              Top = 116
              Width = 192
              Height = 17
              Caption = 'Tracking mode is active'
              TabOrder = 1
            end
          end
        end
      end
      object ts_SystemInfo: TTabSheet
        Caption = 'COMServer - system info'
        ImageIndex = 2
        DesignSize = (
          592
          485)
        object btn_GetSystemInfo: TBitBtn
          Left = 8
          Top = 20
          Width = 128
          Height = 25
          Caption = 'Get system info'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btn_GetSystemInfoClick
        end
        object mem_SystemInfo: TMemo
          Left = 8
          Top = 51
          Width = 571
          Height = 422
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
        end
      end
      object ts_CustomCommand: TTabSheet
        Caption = 'Custom command'
        ImageIndex = 1
        DesignSize = (
          592
          485)
        object lb_Custom_Cmd: TLabel
          Left = 25
          Top = 24
          Width = 56
          Height = 15
          Alignment = taRightJustify
          Caption = 'Command:'
        end
        object lb_Custom_Input: TLabel
          Left = 17
          Top = 54
          Width = 64
          Height = 15
          Alignment = taRightJustify
          Caption = 'Input value:'
        end
        object lb_Custom_Output: TLabel
          Left = 8
          Top = 85
          Width = 73
          Height = 15
          Alignment = taRightJustify
          Caption = 'Output value:'
        end
        object lb_AnswerList: TLabel
          Left = 17
          Top = 111
          Width = 64
          Height = 15
          Alignment = taRightJustify
          Caption = 'Answer list:'
        end
        object ed_Custom_Cmd: TEdit
          Left = 87
          Top = 22
          Width = 49
          Height = 23
          NumbersOnly = True
          TabOrder = 0
          Text = '90'
        end
        object ed_Custom_Input: TEdit
          Left = 87
          Top = 51
          Width = 480
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          Text = '1\t'
        end
        object ed_Custom_Output: TEdit
          Left = 87
          Top = 82
          Width = 480
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
        end
        object btn_ExecuteCustomCommand: TButton
          Left = 142
          Top = 20
          Width = 128
          Height = 25
          Caption = 'Execute command'
          TabOrder = 3
          OnClick = btn_ExecuteCustomCommandClick
        end
        object mem_AnswerList: TMemo
          Left = 87
          Top = 111
          Width = 480
          Height = 350
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 4
        end
        object btn_Last_AnswerList: TButton
          Left = 276
          Top = 20
          Width = 128
          Height = 25
          Caption = 'Get last answer list'
          TabOrder = 5
          OnClick = btn_Last_AnswerListClick
        end
      end
      object ts_CustomScript: TTabSheet
        Caption = 'Custom script'
        ImageIndex = 5
        object pc_ScriptContainer: TPageControl
          Left = 0
          Top = 0
          Width = 592
          Height = 417
          ActivePage = ts_SimpleScript
          Align = alClient
          TabOrder = 0
          object ts_SimpleScript: TTabSheet
            Caption = 'Simple script'
            object se_Script: TSynEdit
              Left = 0
              Top = 0
              Width = 584
              Height = 387
              Align = alClient
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Pitch = fpFixed
              Font.Style = []
              TabOrder = 0
              Gutter.Font.Charset = DEFAULT_CHARSET
              Gutter.Font.Color = clBlack
              Gutter.Font.Height = -11
              Gutter.Font.Name = 'Courier New'
              Gutter.Font.Style = []
              Gutter.ShowLineNumbers = True
              Gutter.ZeroStart = True
              Gutter.Gradient = True
              Gutter.GradientStartColor = 12961221
              Gutter.GradientEndColor = 15987699
              Lines.Strings = (
                '48,1\t0001\t1\t\t\t'
                '49,Oranges\t2\t0.01\t2.543\t2\t22.25\t0\tkg\t'
                '53,\t\t'
                '56')
              Options = [eoDragDropEditing, eoDropFiles, eoEnhanceEndKey, eoGroupUndo, eoScrollByOneLess, eoScrollPastEol, eoShowScrollHint, eoSmartTabs, eoTabIndent]
              RightEdge = 128
              TabWidth = 5
              WantTabs = True
              FontSmoothing = fsmNone
            end
          end
          object ts_HumanLog: TTabSheet
            Caption = 'Human oriented log'
            ImageIndex = 1
            object reHumanLog: TRichEdit
              Left = 0
              Top = 0
              Width = 584
              Height = 387
              Align = alClient
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 0
              Zoom = 100
            end
          end
          object ts_HEXLog: TTabSheet
            Caption = 'HEX log'
            ImageIndex = 2
            object reHEXLog: TRichEdit
              Left = 0
              Top = 0
              Width = 584
              Height = 387
              Align = alClient
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 0
              Zoom = 100
            end
          end
        end
        object pnl_Btns: TPanel
          Left = 0
          Top = 417
          Width = 592
          Height = 68
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object btn_ExecuteScrypt: TBitBtn
            Left = 140
            Top = 6
            Width = 128
            Height = 25
            Caption = '  Execute script'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333FF3FF3333333333CC30003333333333773777333333333C33
              3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
              33003377333337F33377333333333C333300333F333337F33377339333333C33
              3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
              330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
              330077F377F337F33377993399333C33330077FF773337F33377399993333C33
              33333777733337F333FF333333333C33300033333333373FF7773333333333CC
              3000333333333377377733333333333333333333333333333333}
            NumGlyphs = 2
            TabOrder = 0
            OnClick = btn_ExecuteScryptClick
          end
          object btn_ExecuteSelected: TBitBtn
            Left = 274
            Top = 6
            Width = 128
            Height = 25
            Caption = 'Execute selected'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333333333333333333333333333333333333333333FF333333333333
              3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
              E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
              E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
              E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
              000033333373FF77777733333330003333333333333777333333333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
            TabOrder = 1
            OnClick = btn_ExecuteSelectedClick
          end
          object btn_LoadScriptFromFile: TBitBtn
            Left = 6
            Top = 6
            Width = 128
            Height = 25
            Caption = '  Load script from ...'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000C9AEFFC9AEFF
              C9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AE
              FFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9
              AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFF
              C9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AE
              FFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFF9393932C21212D3D3D29373729363629
              37372937372B3939293737AAAAAAC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFF
              7A7676001D1D004D4D007777006F6F007070007070007070007676043C3CADA7
              A7C9AEFFC9AEFFC9AEFFC9AEFFC9AEFF79717151A8A8148F8F014949038C8C02
              82820283830383830283830181810A3E3EB0A9A9C9AEFFC9AEFFC9AEFFC9AEFF
              766F6F449E9E90FFFF087272004949008080007777007878017B7B007D7D007A
              7A073636A49F9FC9AEFFC9AEFFC9AEFF777070519B9B88FDFD7FF6F60B757510
              2E2E062D2D122B2B001F1F1424241C33331A2A2A272525C9AEFFC9AEFFC9AEFF
              7972723E9D9D89FAFA87FFFF87FFFF8CFFFF7CFFFF9CFFFF2D7373A59393C9AE
              FFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFF6E67674BA0A09AFFFF4CDADA3579792D
              7E7E4179792C7D7D382F2FA0A4A4C9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFF
              D2CDCD2867674555552D68689D94949C92929D9595A499999A9B9BDFDFDF7373
              73515151000000C9AEFFC9AEFFC9AEFFC9AEFFE8DBDBC5C3C3E7DBDBC9AEFFC9
              AEFFC9AEFFC9AEFFC9AEFFC9AEFF9D9D9D0000006C6C6CC9AEFFC9AEFFC9AEFF
              C9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFD6D6D6656565A4A4A49C9C9C8686
              86AEAEAE999999C9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9
              AEFFC9AEFFD6D6D66868686C6C6CEEEEEEC9AEFFC9AEFFC9AEFFC9AEFFC9AEFF
              C9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AE
              FFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9
              AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFF}
            TabOrder = 2
            OnClick = btn_LoadScriptFromFileClick
          end
          object btn_DelScriptIput: TBitBtn
            Left = 408
            Top = 6
            Width = 128
            Height = 25
            Caption = 'Delete script'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000F800F8F800F8
              F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F8
              00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800
              F8000078F8F8F8F800F8F800F8F800F8F800F8000078F8F8F8F800F8F800F8F8
              00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              000078000078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F80000
              78F8F8F8F800F8F800F8F800F8F800F8000078000078000078F8F8F8F800F8F8
              00F8F800F8F800F8F800F8000078F8F8F8F800F8F800F8F800F8F800F8F800F8
              F800F8000078000078000078F8F8F8F800F8F800F8F800F8000078000078F8F8
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8000078000078000078F8
              F8F8F800F8000078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8
              F800F8F800F8F800F8000078000078000078000078000078F8F8F8F800F8F800
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F800007800
              0078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              F800F8F800F8F800F8000078000078000078000078000078F8F8F8F800F8F800
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8000078000078000078F8
              F8F8F800F8000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              000078000078000078000078F8F8F8F800F8F800F8F800F8000078000078F8F8
              F8F800F8F800F8F800F8F800F8000078000078000078000078F8F8F8F800F8F8
              00F8F800F8F800F8F800F8000078000078F8F8F8F800F8F800F8F800F8000078
              000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F80000
              78000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F8
              00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8}
            TabOrder = 3
            OnClick = btn_DelScriptIputClick
          end
          object btn_DeleteOutput: TBitBtn
            Left = 408
            Top = 37
            Width = 128
            Height = 25
            Caption = 'Delete output'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000F800F8F800F8
              F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F8
              00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800
              F8000078F8F8F8F800F8F800F8F800F8F800F8000078F8F8F8F800F8F800F8F8
              00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              000078000078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F80000
              78F8F8F8F800F8F800F8F800F8F800F8000078000078000078F8F8F8F800F8F8
              00F8F800F8F800F8F800F8000078F8F8F8F800F8F800F8F800F8F800F8F800F8
              F800F8000078000078000078F8F8F8F800F8F800F8F800F8000078000078F8F8
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8000078000078000078F8
              F8F8F800F8000078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8
              F800F8F800F8F800F8000078000078000078000078000078F8F8F8F800F8F800
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F800007800
              0078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              F800F8F800F8F800F8000078000078000078000078000078F8F8F8F800F8F800
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8000078000078000078F8
              F8F8F800F8000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              000078000078000078000078F8F8F8F800F8F800F8F800F8000078000078F8F8
              F8F800F8F800F8F800F8F800F8000078000078000078000078F8F8F8F800F8F8
              00F8F800F8F800F8F800F8000078000078F8F8F8F800F8F800F8F800F8000078
              000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F80000
              78000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F8
              00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8}
            TabOrder = 4
            OnClick = btn_DeleteOutputClick
          end
          object cbx_GoToPage: TComboBox
            Left = 6
            Top = 38
            Width = 262
            Height = 23
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 5
            Text = 'Before execute - go to "Human log"'
            Items.Strings = (
              'Before execute - go to "Human log"'
              'Before execute - go to "Hex log"'
              'Before execute - go to "Simple script"')
          end
          object btn_Cancel: TBitBtn
            Left = 274
            Top = 37
            Width = 128
            Height = 25
            Caption = 'Cancel'
            Enabled = False
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000F800F8F800F8
              F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F8
              00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800
              F8000078F8F8F8F800F8F800F8F800F8F800F8000078F8F8F8F800F8F800F8F8
              00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              000078000078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F80000
              78F8F8F8F800F8F800F8F800F8F800F8000078000078000078F8F8F8F800F8F8
              00F8F800F8F800F8F800F8000078F8F8F8F800F8F800F8F800F8F800F8F800F8
              F800F8000078000078000078F8F8F8F800F8F800F8F800F8000078000078F8F8
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8000078000078000078F8
              F8F8F800F8000078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8
              F800F8F800F8F800F8000078000078000078000078000078F8F8F8F800F8F800
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F800007800
              0078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              F800F8F800F8F800F8000078000078000078000078000078F8F8F8F800F8F800
              F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8000078000078000078F8
              F8F8F800F8000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
              000078000078000078000078F8F8F8F800F8F800F8F800F8000078000078F8F8
              F8F800F8F800F8F800F8F800F8000078000078000078000078F8F8F8F800F8F8
              00F8F800F8F800F8F800F8000078000078F8F8F8F800F8F800F8F800F8000078
              000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F80000
              78000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F8
              00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8}
            TabOrder = 6
            OnClick = btn_CancelClick
          end
        end
      end
      object ts_ANAF_Download: TTabSheet
        Caption = 'Download and Upload'
        ImageIndex = 3
        object lb_RangeType: TLabel
          Left = 20
          Top = 21
          Width = 64
          Height = 15
          Alignment = taRightJustify
          Caption = 'Range type:'
        end
        object lb_EndZReport: TLabel
          Left = 73
          Top = 160
          Width = 11
          Height = 15
          Alignment = taRightJustify
          Caption = 'to'
        end
        object lb_StartZReport: TLabel
          Left = 54
          Top = 131
          Width = 30
          Height = 15
          Alignment = taRightJustify
          Caption = 'From:'
        end
        object lb_End: TLabel
          Left = 73
          Top = 80
          Width = 11
          Height = 15
          Alignment = taRightJustify
          Caption = 'to'
        end
        object lb_Start: TLabel
          Left = 54
          Top = 50
          Width = 30
          Height = 15
          Alignment = taRightJustify
          Caption = 'From:'
        end
        object cbx_RangeType: TComboBox
          Left = 90
          Top = 18
          Width = 128
          Height = 23
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 0
          Text = 'Z reports'
          OnClick = cbx_RangeTypeClick
          Items.Strings = (
            'Date and time'
            'Z reports')
        end
        object chbx_OpenFolderAfterDownload: TCheckBox
          Left = 90
          Top = 186
          Width = 175
          Height = 17
          Caption = 'Open folder after download'
          Checked = True
          State = cbChecked
          TabOrder = 8
        end
        object chbx_DST: TCheckBox
          Left = 90
          Top = 105
          Width = 154
          Height = 17
          Caption = 'Daylight Saving Time'
          TabOrder = 5
        end
        object dtp_EndTime: TDateTimePicker
          Left = 230
          Top = 76
          Width = 128
          Height = 23
          Date = 43074.999988425930000000
          Time = 43074.999988425930000000
          Enabled = False
          Kind = dtkTime
          TabOrder = 4
        end
        object dtp_StartTime: TDateTimePicker
          Left = 224
          Top = 47
          Width = 128
          Height = 23
          Date = 43074.000000000000000000
          Time = 43074.000000000000000000
          Enabled = False
          Kind = dtkTime
          TabOrder = 2
        end
        object ed_EndZReport: TEdit
          Left = 90
          Top = 157
          Width = 128
          Height = 23
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          TabOrder = 7
          Text = '2'
        end
        object ed_StartZReport: TEdit
          Left = 90
          Top = 128
          Width = 128
          Height = 23
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          TabOrder = 6
          Text = '1'
        end
        object dtp_EndDate: TDateTimePicker
          Left = 90
          Top = 76
          Width = 128
          Height = 23
          Date = 43128.621075416670000000
          Time = 43128.621075416670000000
          Enabled = False
          TabOrder = 3
        end
        object dtp_StartDate: TDateTimePicker
          Left = 90
          Top = 47
          Width = 128
          Height = 23
          Date = 43128.621075416670000000
          Time = 43128.621075416670000000
          Enabled = False
          TabOrder = 1
        end
        object btn_Download: TBitBtn
          Left = 90
          Top = 209
          Width = 128
          Height = 25
          Caption = 'Get ANAF files'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000F800F8F800F8
            F800F8F800F8F800F8F800F8F800F8F800F8F800F8806020F800F8F800F8F800
            F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F8
            00F8806000C0A020806020F800F8F800F8F800F8F800F8F800F8A0A0A0808080
            404020404020404040404040C0C0C0806000C0A020C0A080C0A0208060208080
            80808080404040A0A0A0A0A0A080E0E080E0E080E0E040E0E040C0E0806000C0
            A080C0A080C0A080C0A080C0A02080602040E0E040C0E0404040A0A0A080E0E0
            80E0E080E0E080E0E0806000C0A080F8F8F8F8F8F8C0A080C0A080C0A080C0A0
            2080602040E0E0404040A0A0A080E0E080E0E080E0E0C0C08080602080602080
            6020F8F8F8F8F8F8C0A080806020806020806020C0C080808080A0A0A080E0E0
            80E0E080E0E080E0E080E0E080E0E0808040F8F8F8F8F8F8F0C8A0808040C0C0
            C080E0E040E0E0404040A0A0A0F800F880E0E080E0E080E0E080E0E080E0E0C0
            8040F8F8F8F8F8F8C0A080F0C8A080E0E040E0E0F800F8404040A0A0A080E0E0
            80E0E080E0E080E0E080E0E0C0A040C0A080F0C8A0F8F8F8C0804080E0E080E0
            E080E0E040E0E0406060A0A0A0F800F880E0E0F800F880E0E080E0E0C0A040F0
            C8A0F0C8A0C0C080F0C8A080E0E080E0E080E0E080E0E0806060C0C0C080E0E0
            F800F880E0E080E0E0C08040C0A080F0C8A0C0C08080E0E080E0E080E0E080E0
            E080E0E080E0E0808080C0C0C0F800F880E0E0F800F8C0C060C0C060C0C060C0
            C060F0C8A0C0C0C0C0C0C0F800F840C0E040C0E040C0E0808080C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0F800F8F800F840E0E040E0E040E0E040E0E040E0E040E0
            E040E0E040C0E0C0C0C0F800F8F800F800F8F800F8F800F8F800F8F840C0E0F0
            F8F8808080808080808080808080808080808080808080F800F8F800F8A0A0A0
            40E0E080E0E080E0E080E0E000F8F8C0C0C0F800F8F800F8F800F8F800F8F800
            F8F800F8F800F8F800F8F800F8F800F8A0A0A0808080808080808080A0A0A0F8
            00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8}
          TabOrder = 9
          OnClick = btn_DownloadClick
        end
        object btn_CancelDownload: TBitBtn
          Left = 90
          Top = 271
          Width = 128
          Height = 25
          Caption = 'Cancel'
          Enabled = False
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000F800F8F800F8
            F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800
            F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F8
            00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
            F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800
            F8000078F8F8F8F800F8F800F8F800F8F800F8000078F8F8F8F800F8F800F8F8
            00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
            000078000078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F80000
            78F8F8F8F800F8F800F8F800F8F800F8000078000078000078F8F8F8F800F8F8
            00F8F800F8F800F8F800F8000078F8F8F8F800F8F800F8F800F8F800F8F800F8
            F800F8000078000078000078F8F8F8F800F8F800F8F800F8000078000078F8F8
            F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8000078000078000078F8
            F8F8F800F8000078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8
            F800F8F800F8F800F8000078000078000078000078000078F8F8F8F800F8F800
            F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F800007800
            0078000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
            F800F8F800F8F800F8000078000078000078000078000078F8F8F8F800F8F800
            F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8000078000078000078F8
            F8F8F800F8000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8
            000078000078000078000078F8F8F8F800F8F800F8F800F8000078000078F8F8
            F8F800F8F800F8F800F8F800F8000078000078000078000078F8F8F8F800F8F8
            00F8F800F8F800F8F800F8000078000078F8F8F8F800F8F800F8F800F8000078
            000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F80000
            78000078F8F8F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F8
            00F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8F800F8}
          TabOrder = 10
          OnClick = btn_CancelDownloadClick
        end
        object btn_UploadLogo: TBitBtn
          Left = 90
          Top = 240
          Width = 128
          Height = 25
          Caption = 'Upload LOGO'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000A449A3A449A3
            A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449
            A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A4
            49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3
            A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449
            A3A449A3A449A3A449A3A449A3A449A38E1D1DA40000A10000A10000A10000A1
            0000A10000A000009F0000A10000AB00009B0000390000A449A3A449A3A449A3
            D52225FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0003FF0702AA34
            023F7502104005A449A3A449A3A449A3C84238FB2E11F62E1DF82D16F82D15F7
            2C16F72F1CD0170F8A2500296B00008200008900003B02A449A3A449A3A449A3
            CACABCFEFB87F9F57DFAF77FFAF77EF9F67CFCF983ACD47B44A417007E010073
            00018501033C02A449A3A449A3A449A3CACABFFEFE88F8F97CFFFD77FEFC74FB
            FB7DFAFA7CFFFF80FBFB72B8D771459B33028600003905A449A3A449A3A449A3
            CACABDFEFD8BF8F365DADEABECF4A4FCFB75FAFA7EF9F97BFBFB7EFFFF7FFFFF
            8B92D02E083A00A449A3A449A3A449A3C9CABFFEFE81D1DDA673EDFFB7DFD4FB
            F976F9FA7FFBFB7BFAFA7DF8F97DF8F77AFFFF87686E2FA449A3A449A3A449A3
            C9C9BFFDFD80D3E9BDA7DDDEEFEA78F9FA7AF9F97FFAFA7BFAFA7EFAFA7FF6F7
            79FCFC8A787547A449A3A449A3A449A3CECEC2FFFF89FFFF74FFF97EFFFF78FF
            FF7DFFFF7AFFFF7DFFFF7AFFFF7AFDFD7AFFFF8575753DA449A3A449A3A449A3
            B8B8BCE4E3CFDFDFBCE1E2C1E1E0C6E1E0C1E1E0BFE1E0C3E1E0BFE1E0C0DFDE
            C0E4E3C66F6E53A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A4
            49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3
            A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449
            A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A4
            49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3}
          TabOrder = 11
          OnClick = btn_UploadLogoClick
        end
      end
      object ts_GetCommandsList: TTabSheet
        Caption = 'Commands'
        ImageIndex = 4
        object pnl_CommandInfo: TPanel
          Left = 0
          Top = 0
          Width = 592
          Height = 107
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object btn_ComandsList: TBitBtn
            Left = 6
            Top = 10
            Width = 128
            Height = 25
            Caption = 'Get commands list'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btn_ComandsListClick
          end
          object cbx_CommandsList: TComboBox
            Left = 140
            Top = 42
            Width = 272
            Height = 23
            Style = csDropDownList
            TabOrder = 1
          end
          object btn_GetComandInfo: TBitBtn
            Left = 418
            Top = 40
            Width = 128
            Height = 25
            Caption = 'Get command info'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = btn_GetComandInfoClick
          end
          object btn_5Ah_1: TBitBtn
            Left = 6
            Top = 41
            Width = 128
            Height = 25
            Caption = '(5Ah / 90) - custom'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = btn_5Ah_1Click
          end
          object btn_GenerateCode: TBitBtn
            Left = 418
            Top = 71
            Width = 128
            Height = 25
            Caption = 'Generate source code'
            TabOrder = 4
            OnClick = btn_GenerateCodeClick
          end
          object btn_GeneratedCode: TBitBtn
            Left = 6
            Top = 72
            Width = 128
            Height = 25
            Caption = '(5Ah / 90) - generated'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = btn_GeneratedCodeClick
          end
          object chbx_SortedCommandsList: TCheckBox
            Left = 140
            Top = 14
            Width = 57
            Height = 17
            Caption = 'Sorted'
            TabOrder = 6
            OnClick = chbx_SortedCommandsListClick
          end
          object cbx_CodeType: TComboBox
            Left = 140
            Top = 73
            Width = 272
            Height = 23
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 7
            Text = 'Pascal'
            Items.Strings = (
              'Pascal'
              'C#')
          end
          object cbx_CommandList_NameIndex: TComboBox
            Left = 203
            Top = 11
            Width = 209
            Height = 23
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 8
            Text = 'Human name (0)'
            OnChange = cbx_CommandList_NameIndexChange
            Items.Strings = (
              'Human name (0)'
              'Human name (1)'
              'Human name (2)')
          end
        end
        object se_CmdInfo: TSynEdit
          Left = 0
          Top = 107
          Width = 592
          Height = 378
          Align = alClient
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Pitch = fpFixed
          Font.Style = []
          TabOrder = 1
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clBlack
          Gutter.Font.Height = -11
          Gutter.Font.Name = 'Courier New'
          Gutter.Font.Style = []
          Gutter.ShowLineNumbers = True
          Gutter.ZeroStart = True
          Gutter.Gradient = True
          Gutter.GradientStartColor = 12961221
          Gutter.GradientEndColor = 15987699
          Options = [eoDragDropEditing, eoDropFiles, eoEnhanceEndKey, eoGroupUndo, eoScrollByOneLess, eoScrollPastEol, eoShowScrollHint, eoSmartTabs, eoTabIndent]
          RightEdge = 128
          TabWidth = 5
          WantTabs = True
          FontSmoothing = fsmNone
        end
      end
    end
  end
  object pnl_Btm: TPanel
    Left = 0
    Top = 515
    Width = 964
    Height = 75
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object mem_Log: TMemo
      Left = 0
      Top = 0
      Width = 599
      Height = 75
      Align = alClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object pnl_Progress: TPanel
      Left = 599
      Top = 0
      Width = 365
      Height = 75
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      Visible = False
      DesignSize = (
        365
        75)
      object gau_Second: TGauge
        Left = 8
        Top = 14
        Width = 348
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        ForeColor = 9961367
        Progress = 0
        ShowText = False
      end
      object gau_First: TGauge
        Left = 8
        Top = 43
        Width = 348
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        ForeColor = 16763025
        Progress = 0
        ShowText = False
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Text files|*.txt'
    Left = 512
    Top = 112
  end
  object ApplicationEvents1: TApplicationEvents
    OnSettingChange = ApplicationEvents1SettingChange
    Left = 224
    Top = 440
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = '*.bmp'
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 400
    Top = 112
  end
  object SynCompletionProposal1: TSynCompletionProposal
    ItemList.Strings = (
      'var:'
      'var:byte:'
      'var:word:'
      'var:integer:'
      'var:real:'
      'var:string:'
      'var:datetime:'
      'var:boolean:'
      'set:'
      'set:var:'
      'set:var:fromvar:'
      'set:datetime:now'
      'set:date_time:now'
      'set:datetime:'
      'set:date_time:'
      'set:datetime:from:'
      'set:date_time:from:'
      'set:date_separator:'
      'set:time_separator:'
      'set:decimal_separator:'
      'set:short_date_format:'
      'set:short_time_format:'
      'set:long_time_format:'
      'set:long_date_format:'
      'show:'
      'show:var:'
      'inc:var:'
      'dec:var:'
      'incdate:'
      'decdate:'
      'year:'
      'month:'
      'day:'
      'hour:'
      'min:'
      'sec:'
      'get:'
      'get:datetime:'
      'get:date_time:'
      'to:'
      'get:datetime:to:'
      'get:date_time:to:'
      'get:output:'
      'output:'
      'get:fieldby:'
      'fieldby:'
      'get:datetime:'
      'datetime:'
      'if:'
      'then:'
      'else:'
      'concat:'
      'vars:'
      'concat:vars:'
      'concat:varandvalue:'
      'execute:varinput:'
      'exit_question:yes:'
      'exit_question:no:'
      'padvar:left:'
      'padvar:right:'
      'goto:'
      'break:'
      'if_question:yes:'
      'if_question:no:'
      'stop_after_error:')
    EndOfTokenChr = '()[]. '
    TriggerChars = '.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clBtnText
    TitleFont.Height = -19
    TitleFont.Name = 'Courier New'
    TitleFont.Style = [fsBold]
    Columns = <>
    ShortCut = 16416
    Editor = se_Script
    Left = 496
    Top = 56
  end
  object dude: TCFD_DUDE
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    OnError = dudeError
    OnBeforeScriptExecute = dudeBeforeScriptExecute
    OnFirstProgress_Init = dudeFirstProgress_Init
    OnSecondProgress_Init = dudeSecondProgress_Init
    OnFirstProgress_Loop = dudeFirstProgress_Loop
    OnSecondProgress_Loop = dudeSecondProgress_Loop
    OnFirstProgress_Complete = dudeFirstProgress_Complete
    OnSecondProgress_Complete = dudeSecondProgress_Complete
    OnWait = dudeWait
    OnStatusChange = dudeStatusChange
    OnSendCommand = dudeSendCommand
    OnReceiveAnswer = dudeReceiveAnswer
    OnAfterScriptExecute = dudeAfterScriptExecute
    OnScriptRowExecute = dudeScriptRowExecute
    OnAfterOpenConnection = dudeAfterOpenConnection
    OnAfterCloseConnection = dudeAfterCloseConnection
    OnAfterChangeSettings = dudeAfterChangeSettings
    Left = 392
    Top = 64
  end
end
