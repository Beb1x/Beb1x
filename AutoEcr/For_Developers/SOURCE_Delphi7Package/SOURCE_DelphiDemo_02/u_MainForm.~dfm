object fmMain: TfmMain
  Left = 955
  Top = 228
  Width = 642
  Height = 528
  Color = clBtnFace
  Constraints.MinHeight = 528
  Constraints.MinWidth = 642
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Answer: TPanel
    Left = 217
    Top = 0
    Width = 409
    Height = 453
    Align = alClient
    Caption = 'pnl_Answer'
    TabOrder = 0
    object mem_JETextData: TMemo
      Left = 1
      Top = 1
      Width = 407
      Height = 451
      TabStop = False
      Align = alClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object pnl_Buttons: TPanel
    Left = 0
    Top = 453
    Width = 626
    Height = 37
    Align = alBottom
    TabOrder = 1
    object btn_ReadDocuments: TButton
      Left = 147
      Top = 6
      Width = 127
      Height = 25
      Caption = 'Read documents'
      TabOrder = 0
      OnClick = btn_ReadDocumentsClick
    end
    object btn_StopReading: TButton
      Left = 280
      Top = 6
      Width = 127
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = btn_StopReadingClick
    end
    object btn_PrintDocs: TButton
      Left = 14
      Top = 6
      Width = 127
      Height = 25
      Caption = 'Print documents'
      TabOrder = 2
      OnClick = btn_PrintDocsClick
    end
  end
  object pnl_Settings: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 453
    Align = alLeft
    TabOrder = 2
    object grbx_Docs: TGroupBox
      Left = 1
      Top = 1
      Width = 215
      Height = 378
      Align = alClient
      TabOrder = 0
      object lb_StartingDT: TLabel
        Left = 11
        Top = 142
        Width = 87
        Height = 13
        Caption = 'Starting datetime:'
      end
      object lb_DocumentTypes: TLabel
        Left = 11
        Top = 79
        Width = 77
        Height = 13
        Caption = 'Document type:'
      end
      object lb_EndingDT: TLabel
        Left = 11
        Top = 191
        Width = 81
        Height = 13
        Caption = 'Ending datetime:'
      end
      object lb_FromNumber: TLabel
        Left = 11
        Top = 325
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'From number:'
        Enabled = False
      end
      object lb_ToNumber: TLabel
        Left = 11
        Top = 350
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'To number:'
        Enabled = False
      end
      object lbFromZrep: TLabel
        Left = 11
        Top = 275
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'From Z report:'
        Enabled = False
      end
      object lbToZrep: TLabel
        Left = 11
        Top = 300
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'To Z report:'
        Enabled = False
      end
      object lb_BaudRate: TLabel
        Left = 11
        Top = 50
        Width = 51
        Height = 13
        Caption = 'Baud rate:'
      end
      object lb_ComPort: TLabel
        Left = 11
        Top = 23
        Width = 50
        Height = 13
        Caption = 'COM port:'
      end
      object cbx_DocumentTypes: TComboBox
        Left = 11
        Top = 99
        Width = 186
        Height = 24
        Style = csDropDownList
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 2
        OnChange = cbx_DocumentTypesChange
        Items.Strings = (
          'All documents'
          'Fiscal receipts'
          'Z reports'
          'Invoice receipts'
          'Non fiscal receipts'
          'Full EJ content per Z report'
          'LOG file(s)'
          'CashIn/CashOut receipts'
          'Currency buying receipts'
          'Currency selling receipts')
      end
      object dtp_StartDate: TDateTimePicker
        Left = 11
        Top = 161
        Width = 90
        Height = 24
        Date = 40679.783770914350000000
        Time = 40679.783770914350000000
        TabOrder = 3
      end
      object dtp_StartTime: TDateTimePicker
        Left = 107
        Top = 161
        Width = 90
        Height = 24
        Date = 40679.783770914350000000
        Time = 40679.783770914350000000
        Kind = dtkTime
        TabOrder = 4
      end
      object dtp_EndDate: TDateTimePicker
        Left = 11
        Top = 210
        Width = 90
        Height = 24
        Date = 40679.783770914350000000
        Time = 40679.783770914350000000
        TabOrder = 5
      end
      object dtp_EndTime: TDateTimePicker
        Left = 107
        Top = 210
        Width = 90
        Height = 24
        Date = 40679.783770914350000000
        Time = 40679.783770914350000000
        Kind = dtkTime
        TabOrder = 6
      end
      object chbx_RangeByNum: TCheckBox
        Left = 11
        Top = 245
        Width = 164
        Height = 17
        Caption = 'By document number'
        TabOrder = 7
        OnClick = chbx_RangeByNumClick
      end
      object ed_FromNum: TEdit
        Left = 107
        Top = 323
        Width = 90
        Height = 19
        Ctl3D = False
        Enabled = False
        MaxLength = 8
        ParentCtl3D = False
        TabOrder = 10
      end
      object ed_ToNum: TEdit
        Left = 107
        Top = 348
        Width = 90
        Height = 19
        Ctl3D = False
        Enabled = False
        MaxLength = 8
        ParentCtl3D = False
        TabOrder = 11
      end
      object ed_FromZRep: TEdit
        Left = 107
        Top = 273
        Width = 90
        Height = 19
        Ctl3D = False
        Enabled = False
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 8
      end
      object ed_ToZRep: TEdit
        Left = 107
        Top = 298
        Width = 90
        Height = 19
        Ctl3D = False
        Enabled = False
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 9
      end
      object ed_BaudRate: TEdit
        Left = 107
        Top = 47
        Width = 90
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = '115200'
      end
      object ed_ComPort: TEdit
        Left = 107
        Top = 20
        Width = 90
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '1'
      end
    end
    object pnl_Progress: TPanel
      Left = 1
      Top = 379
      Width = 215
      Height = 73
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      Visible = False
      DesignSize = (
        215
        73)
      object gau_Second: TGauge
        Left = 8
        Top = 14
        Width = 198
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        ForeColor = 9961367
        Progress = 0
        ShowText = False
      end
      object gau_First: TGauge
        Left = 8
        Top = 43
        Width = 198
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        ForeColor = 16763025
        Progress = 0
        ShowText = False
      end
    end
  end
  object dude: TCFD_DUDE
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    OnFirstProgress_Init = dudeFirstProgress_Init
    OnSecondProgress_Init = dudeSecondProgress_Init
    OnFirstProgress_Loop = dudeFirstProgress_Loop
    OnSecondProgress_Loop = dudeSecondProgress_Loop
    OnFirstProgress_Complete = dudeFirstProgress_Complete
    OnSecondProgress_Complete = dudeSecondProgress_Complete
    OnWait = dudeWait
    OnJETextData = dudeJETextData
    Left = 288
    Top = 136
  end
end
