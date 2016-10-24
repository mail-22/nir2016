inherited Vypoln: TVypoln
  Left = 321
  Top = 56
  Width = 1181
  Height = 912
  Caption = 
    #1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1085#1086#1088#1084' '#1055#1041' ('#1089' '#1086#1090#1084#1077#1090#1082#1072#1084#1080' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080'  '#1076#1083#1103' '#1074#1099#1073#1088#1072#1085#1085 +
    #1086#1075#1086' '#1079#1076#1072#1085#1080#1103')'
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl5: TLabel [0]
    Left = 0
    Top = 0
    Width = 1165
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlL: TPanel [1]
    Left = 0
    Top = 72
    Width = 1046
    Height = 802
    Align = alLeft
    Caption = 'pnlL'
    TabOrder = 0
    object pnlalClient: TPanel
      Left = 1
      Top = 1
      Width = 1044
      Height = 800
      Align = alClient
      Caption = 'pnlalClient'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object pnlB: TPanel
        Left = 1
        Top = 401
        Width = 1042
        Height = 398
        Align = alClient
        TabOrder = 0
        object lbl4: TLabel
          Left = 1
          Top = 257
          Width = 1040
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1074#1088#1077#1084#1077#1085#1085#1099#1081' '#1088#1072#1079#1076#1077#1083' -  '#1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1086#1088#1084' : ('#1076#1083#1103' '#1089#1087#1088#1072#1074#1086#1082')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxspltr2: TcxSplitter
          Left = 1
          Top = 270
          Width = 1040
          Height = 8
          HotZoneClassName = 'TcxMediaPlayer8Style'
          AlignSplitter = salTop
          Control = pnl1T
          Color = clNavy
          ParentColor = False
        end
        object pnl1T: TPanel
          Left = 1
          Top = 1
          Width = 1040
          Height = 256
          Align = alTop
          BevelOuter = bvNone
          Caption = 'pnl1T'
          Color = clActiveCaption
          TabOrder = 1
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 1040
            Height = 256
            Align = alClient
            Caption = 'pnlRR'
            TabOrder = 0
            object cxSplitter1: TcxSplitter
              Left = 1
              Top = 1
              Width = 8
              Height = 207
            end
            object cxGrid3: TcxGrid
              Left = 9
              Top = 1
              Width = 1030
              Height = 207
              Align = alClient
              BevelKind = bkSoft
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              LevelTabs.Style = 8
              LookAndFeel.Kind = lfOffice11
              object cxGridDBTableView3: TcxGridDBTableView
                DragMode = dmAutomatic
                NavigatorButtons.ConfirmDelete = False
                FilterBox.Visible = fvNever
                DataController.DataModeController.DetailInSQLMode = True
                DataController.DataModeController.GridMode = True
                DataController.DataModeController.SmartRefresh = True
                DataController.DataSource = DM.dsNormOfBilding
                DataController.DetailKeyFieldNames = 'id'
                DataController.Filter.Active = True
                DataController.Filter.AutoDataSetFilter = True
                DataController.KeyFieldNames = 'id'
                DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoGroupsAlwaysExpanded]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    FieldName = 'rasstoyaniya'
                  end>
                DataController.Summary.SummaryGroups = <>
                Filtering.ColumnFilteredItemsList = True
                Filtering.ColumnPopup.MultiSelect = False
                FilterRow.ApplyChanges = fracImmediately
                OptionsBehavior.CellHints = True
                OptionsBehavior.NavigatorHints = True
                OptionsCustomize.ColumnHiding = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Appending = True
                OptionsView.CellEndEllipsis = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.FooterAutoHeight = True
                OptionsView.GroupByBox = False
                OptionsView.GroupFooters = gfAlwaysVisible
                OptionsView.GroupRowStyle = grsOffice11
                OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
                OptionsView.HeaderEndEllipsis = True
                OptionsView.Indicator = True
                OptionsView.IndicatorWidth = 24
                OptionsView.ShowColumnFilterButtons = sfbAlways
                object cxgrdbclmnGridDBTableView3id: TcxGridDBColumn
                  DataBinding.FieldName = 'id'
                end
                object cxgrdbclmnGridDBTableView3N: TcxGridDBColumn
                  DataBinding.FieldName = 'N'
                end
                object cxgrdbclmnGridDBTableView3DBColumn: TcxGridDBColumn
                  DataBinding.FieldName = #1044#1086#1082#1091#1084#1077#1085#1090
                end
                object cxgrdbclmnGridDBTableView3DBColumn1: TcxGridDBColumn
                  DataBinding.FieldName = #1089#1090#1072#1090#1100#1103'-'#1088#1072#1079#1076#1077#1083
                end
                object cxgrdbclmnGridDBTableView3DBColumn2: TcxGridDBColumn
                  DataBinding.FieldName = #1095#1072#1089#1090#1100' ('#1087#1091#1085#1082#1090')'
                end
                object cxgrdbclmnGridDBTableView3DBColumn4: TcxGridDBColumn
                  DataBinding.FieldName = #1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1086#1088#1084
                end
                object cxgrdbclmnGridDBTableView3DBColumn5: TcxGridDBColumn
                  DataBinding.FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
                end
                object cxgrdbclmnGridDBTableView3fid_Bilding: TcxGridDBColumn
                  DataBinding.FieldName = 'fid_Bilding'
                  Visible = False
                end
                object cxgrdbclmnGridDBTableView3fid_Vypoln: TcxGridDBColumn
                  DataBinding.FieldName = 'fid_Vypoln'
                  Visible = False
                end
                object cxgrdbclmnGridDBTableView3DBColumn3: TcxGridDBColumn
                  DataBinding.FieldName = #1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cxGridDBTableView3
              end
            end
            object Panel2: TPanel
              Left = 1
              Top = 224
              Width = 1038
              Height = 31
              Align = alBottom
              BevelInner = bvLowered
              BevelOuter = bvLowered
              BorderStyle = bsSingle
              TabOrder = 2
              object JvDBStatusLabel1: TJvDBStatusLabel
                Left = 2
                Top = 2
                Width = 113
                Height = 23
                DataSource = DM.dsNormOfBilding
                CalcRecCount = True
                ShowOptions = doBoth
                Align = alLeft
                Alignment = taRightJustify
              end
              object cxDBNavigator1: TcxDBNavigator
                Left = 115
                Top = 2
                Width = 915
                Height = 23
                DataSource = DM.dsNormOfBilding
                Align = alClient
                TabOrder = 0
              end
            end
            object JvDBProgressBar1: TJvDBProgressBar
              Left = 1
              Top = 208
              Width = 1038
              Height = 16
              Align = alBottom
              TabOrder = 3
              DataSource = DM.dsNormOfBilding
            end
          end
        end
        object cxGrid1: TcxGrid
          Left = 1
          Top = 278
          Width = 1040
          Height = 72
          Align = alClient
          BevelKind = bkSoft
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          LevelTabs.Style = 8
          LookAndFeel.Kind = lfOffice11
          object cxGridDBTableView1: TcxGridDBTableView
            DragMode = dmAutomatic
            NavigatorButtons.ConfirmDelete = False
            FilterBox.Visible = fvNever
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DM.dsNorm
            DataController.DetailKeyFieldNames = 'id'
            DataController.Filter.Active = True
            DataController.Filter.AutoDataSetFilter = True
            DataController.KeyFieldNames = 'id'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoGroupsAlwaysExpanded]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                FieldName = 'rasstoyaniya'
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnFilteredItemsList = True
            Filtering.ColumnPopup.MultiSelect = False
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.CellHints = True
            OptionsBehavior.NavigatorHints = True
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.FooterAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 24
            OptionsView.ShowColumnFilterButtons = sfbAlways
            object cxgrdbclmnGridDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Width = 20
            end
            object cxgrdbclmnGridDBTableView1N: TcxGridDBColumn
              DataBinding.FieldName = 'N'
              Width = 34
            end
            object cxgrdbclmnGridDBTableView1DBColumn: TcxGridDBColumn
              DataBinding.FieldName = #1044#1086#1082#1091#1084#1077#1085#1090
              Width = 147
            end
            object cxgrdbclmnGridDBTableView1DBColumn1: TcxGridDBColumn
              DataBinding.FieldName = #1089#1090#1072#1090#1100#1103'-'#1088#1072#1079#1076#1077#1083
              Width = 102
            end
            object cxgrdbclmnGridDBTableView1DBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #1095#1072#1089#1090#1100' ('#1087#1091#1085#1082#1090')'
              Width = 109
            end
            object cxgrdbclmnGridDBTableView1DBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
              Width = 91
            end
            object cxgrdbclmnGridDBTableView1DBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1086#1088#1084
              Width = 507
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 350
          Width = 1040
          Height = 31
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          BorderStyle = bsSingle
          TabOrder = 3
          object JvDBStatusLabel2: TJvDBStatusLabel
            Left = 2
            Top = 2
            Width = 113
            Height = 23
            DataSource = DM.dsNorm
            CalcRecCount = True
            ShowOptions = doBoth
            Align = alLeft
            Alignment = taRightJustify
          end
          object cxDBNavigator2: TcxDBNavigator
            Left = 115
            Top = 2
            Width = 915
            Height = 23
            DataSource = DM.dsNorm
            Align = alClient
            TabOrder = 0
          end
        end
        object JvDBProgressBar3: TJvDBProgressBar
          Left = 1
          Top = 381
          Width = 1040
          Height = 16
          Align = alBottom
          TabOrder = 4
          DataField = 'id'
          DataSource = DM.dsNorm
        end
      end
      object pnlT: TPanel
        Left = 1
        Top = 1
        Width = 1042
        Height = 392
        Align = alTop
        Caption = 'pnlT'
        TabOrder = 1
        object pnlLLL: TPanel
          Left = 1
          Top = 1
          Width = 192
          Height = 390
          Align = alLeft
          TabOrder = 0
          object jvlktOutlookBar1: TJvLookOut
            Left = 1
            Top = 1
            Width = 190
            Height = 388
            ActivePage = jvlktpgLookOutPage3
            Align = alClient
            AutoSize = True
            Color = clMoneyGreen
            Smooth = True
            object jvlktpgLookOutPage1: TJvLookOutPage
              Left = 0
              Top = 0
              Width = 186
              Height = 328
              ImageSize = isSmall
              HighlightFont.Charset = DEFAULT_CHARSET
              HighlightFont.Color = clWindowText
              HighlightFont.Height = -11
              HighlightFont.Name = 'Tahoma'
              HighlightFont.Style = []
              ParentImageSize = False
              ShowPressed = True
              Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
              Color = clCream
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              object btnLookOutButton4: TJvLookOutButton
                Left = 4
                Top = 26
                Width = 180
                Height = 50
                Action = actAll
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
                ImageSize = isSmall
                ParentImageSize = False
              end
              object btnLookOutButton5: TJvLookOutButton
                Left = 4
                Top = 76
                Width = 180
                Height = 50
                Action = act21
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
                ImageSize = isSmall
                ParentImageSize = False
              end
              object btnLookOutButton6: TJvLookOutButton
                Left = 4
                Top = 126
                Width = 180
                Height = 50
                Action = act22
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
                ImageSize = isSmall
                ParentImageSize = False
              end
              object btnLookOutButton7: TJvLookOutButton
                Left = 4
                Top = 176
                Width = 180
                Height = 50
                Action = act23
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
                ImageSize = isSmall
                ParentImageSize = False
              end
              object btnLookOutButton8: TJvLookOutButton
                Left = 4
                Top = 226
                Width = 180
                Height = 50
                Action = act24
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
                ImageSize = isSmall
                ParentImageSize = False
              end
              object btnLookOutButton9: TJvLookOutButton
                Left = 4
                Top = 276
                Width = 180
                Height = 50
                Action = act25
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
                ImageSize = isSmall
                ParentImageSize = False
              end
              object btnLookOutButton10: TJvLookOutButton
                Left = 3
                Top = 326
                Width = 180
                Height = 50
                Action = act26
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton11: TJvLookOutButton
                Left = 3
                Top = 2632
                Width = 180
                Height = 50
                Action = act27
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton12: TJvLookOutButton
                Left = 3
                Top = 2961
                Width = 180
                Height = 50
                Action = act28
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton13: TJvLookOutButton
                Left = 3
                Top = 3290
                Width = 180
                Height = 50
                Action = act29
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton14: TJvLookOutButton
                Left = 3
                Top = 3619
                Width = 180
                Height = 50
                Action = act210
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton15: TJvLookOutButton
                Left = 3
                Top = 3948
                Width = 180
                Height = 50
                Action = act211
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton16: TJvLookOutButton
                Left = 3
                Top = 4277
                Width = 180
                Height = 50
                Action = act212
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton17: TJvLookOutButton
                Left = 3
                Top = 4606
                Width = 180
                Height = 50
                Action = act213
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton18: TJvLookOutButton
                Left = 3
                Top = 4935
                Width = 180
                Height = 50
                Action = act214
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton19: TJvLookOutButton
                Left = 3
                Top = 5264
                Width = 180
                Height = 50
                Action = act215
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton20: TJvLookOutButton
                Left = 3
                Top = 5593
                Width = 180
                Height = 50
                Action = act216
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
            end
            object jvlktpgLookOutPage2: TJvLookOutPage
              Left = 0
              Top = 20
              Width = 186
              Height = 328
              ImageSize = isSmall
              HighlightFont.Charset = DEFAULT_CHARSET
              HighlightFont.Color = clWindowText
              HighlightFont.Height = -11
              HighlightFont.Name = 'Tahoma'
              HighlightFont.Style = []
              Caption = #1101#1082#1089#1087#1086#1088#1090' '#1074' ... '
              Color = clMenuBar
              object btnExport: TJvLookOutButton
                Left = 37
                Top = 26
                Width = 111
                Action = actExport
                Caption = 'Export '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083'  '#1074#1089#1077#1093' '#1086#1073#1098#1077#1082#1090#1086#1074' ('#1079#1076#1072#1085#1080#1081')'
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton2: TJvLookOutButton
                Left = 37
                Top = 86
                Width = 111
                Action = actExportXLS
                Caption = 'Export '#1074' Microsoft Office Excel '#1074#1089#1077#1093' '#1086#1073#1098#1077#1082#1090#1086#1074' ('#1079#1076#1072#1085#1080#1081')'
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnExport1: TJvLookOutButton
                Left = 37
                Top = 146
                Width = 111
                Action = actExport11
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton3: TJvLookOutButton
                Left = 37
                Top = 206
                Width = 111
                Action = actExportEx1
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
            end
            object jvlktpgLookOutPage3: TJvLookOutPage
              Left = 0
              Top = 40
              Width = 186
              Height = 328
              ImageSize = isSmall
              HighlightFont.Charset = DEFAULT_CHARSET
              HighlightFont.Color = clWindowText
              HighlightFont.Height = -11
              HighlightFont.Name = 'Tahoma'
              HighlightFont.Style = []
              Caption = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1083#1080' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1053#1044
              Color = clBtnFace
              object rgjvrdgrp1: TRadioGroup
                Left = 10
                Top = 34
                Width = 121
                Height = 175
                Caption = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
                ItemIndex = 2
                Items.Strings = (
                  #1076#1072
                  #1085#1077#1090
                  #1083#1102#1073#1099#1077)
                TabOrder = 0
                OnClick = rgjvrdgrp1Click
              end
            end
            object jvlktpgFormGrLookOutPage1: TJvLookOutPage
              Left = 0
              Top = 365
              Width = 186
              Height = 328
              ImageSize = isSmall
              HighlightFont.Charset = DEFAULT_CHARSET
              HighlightFont.Color = clWindowText
              HighlightFont.Height = -11
              HighlightFont.Name = 'Tahoma'
              HighlightFont.Style = []
              Caption = #1040#1085#1072#1083#1080#1079' '#1080' '#1074#1080#1079#1091#1072#1083#1080#1079#1072#1094#1080#1103
              Color = clBtnFace
              object btnFormGr: TJvLookOutButton
                Left = 43
                Top = 26
                Width = 100
                Action = actFormGr
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnLookOutButton1: TJvLookOutButton
                Left = 43
                Top = 86
                Width = 100
                Action = actGr2
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
              object btnAnal: TJvLookOutButton
                Left = 43
                Top = 146
                Width = 100
                Action = actAnal
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -11
                HighlightFont.Name = 'Tahoma'
                HighlightFont.Style = []
              end
            end
          end
        end
        object pnlGrid: TPanel
          Left = 193
          Top = 1
          Width = 848
          Height = 390
          Align = alClient
          AutoSize = True
          TabOrder = 1
          object lbl1: TLabel
            Left = 1
            Top = 1
            Width = 846
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = #1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxgrd1: TcxGrid
            Left = 1
            Top = 14
            Width = 846
            Height = 245
            Align = alClient
            BevelKind = bkSoft
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LevelTabs.Style = 8
            LookAndFeel.Kind = lfOffice11
            object cxgrdbtblvw1: TcxGridDBTableView
              DragMode = dmAutomatic
              NavigatorButtons.ConfirmDelete = False
              DataController.DataModeController.DetailInSQLMode = True
              DataController.DataModeController.GridMode = True
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = DM.dstblVypoln
              DataController.DetailKeyFieldNames = 'id'
              DataController.Filter.Active = True
              DataController.Filter.AutoDataSetFilter = True
              DataController.KeyFieldNames = 'id'
              DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoGroupsAlwaysExpanded]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  FieldName = 'rasstoyaniya'
                end>
              DataController.Summary.SummaryGroups = <>
              Filtering.ColumnFilteredItemsList = True
              Filtering.ColumnPopup.MultiSelect = False
              FilterRow.ApplyChanges = fracImmediately
              OptionsBehavior.CellHints = True
              OptionsBehavior.NavigatorHints = True
              OptionsCustomize.ColumnHiding = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Appending = True
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.FooterAutoHeight = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfAlwaysVisible
              OptionsView.GroupRowStyle = grsOffice11
              OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
              OptionsView.HeaderEndEllipsis = True
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 24
              OptionsView.ShowColumnFilterButtons = sfbAlways
              object cxgrdbclmncxgrdbtblvw1id: TcxGridDBColumn
                DataBinding.FieldName = 'id'
                Width = 44
              end
              object cxgrdbclmncxgrdbtblvw1N: TcxGridDBColumn
                DataBinding.FieldName = 'N'
                Width = 44
              end
              object cxgrdbclmncxgrdbtblvw1DBColumn: TcxGridDBColumn
                DataBinding.FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
                Width = 44
              end
              object cxgrdbclmncxgrdbtblvw1fid_Bilding: TcxGridDBColumn
                DataBinding.FieldName = 'fid_Bilding'
                Visible = False
                Width = 44
              end
              object cxgrdbclmncxgrdbtblvw1DBColumn1: TcxGridDBColumn
                DataBinding.FieldName = #1075#1086#1076'1'
                Visible = False
                Width = 44
              end
              object cxgrdbclmncxgrdbtblvw1SOOTVETSTV: TcxGridDBColumn
                DataBinding.FieldName = 'SOOTVETSTV'
                Visible = False
                Width = 44
              end
              object cxgrdbclmncxgrdbtblvw1rtf: TcxGridDBColumn
                DataBinding.FieldName = 'rtf'
                Visible = False
                Width = 44
              end
              object cxgrdbclmncxgrdbtblvw1NTreb: TcxGridDBColumn
                DataBinding.FieldName = 'NTreb'
                Visible = False
                Width = 44
              end
              object cxgrdbclmncxgrdbtblvw1NTreb2: TcxGridDBColumn
                DataBinding.FieldName = 'NTreb2'
                Visible = False
                Width = 44
              end
              object cxgrdbclmncxgrdbtblvw1test: TcxGridDBColumn
                DataBinding.FieldName = 'test'
                Visible = False
                Width = 44
              end
              object cxgrdbclmncxgrdbtblvw1soot: TcxGridDBColumn
                AlternateCaption = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
                Caption = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
                DataBinding.FieldName = 'soot'
              end
            end
            object cxgrdlvl1: TcxGridLevel
              GridView = cxgrdbtblvw1
            end
          end
          object pnlBBB: TPanel
            Left = 1
            Top = 328
            Width = 846
            Height = 61
            Align = alBottom
            TabOrder = 1
            Visible = False
            object lbl2: TLabel
              Left = 1
              Top = 1
              Width = 844
              Height = 16
              Align = alTop
              Alignment = taCenter
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103' ('#1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
          object cxDBProgressBar1: TcxDBProgressBar
            Left = 1
            Top = 275
            Align = alBottom
            DataBinding.DataField = 'id'
            DataBinding.DataSource = DM.dstblVypoln
            TabOrder = 2
            Width = 846
          end
          object Panel4: TPanel
            Left = 1
            Top = 297
            Width = 846
            Height = 31
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            BorderStyle = bsSingle
            TabOrder = 3
            object JvDBStatusLabel3: TJvDBStatusLabel
              Left = 2
              Top = 2
              Width = 113
              Height = 23
              DataSource = DM.dstblVypoln
              CalcRecCount = True
              ShowOptions = doBoth
              Align = alLeft
              Alignment = taRightJustify
            end
            object cxDBNavigator3: TcxDBNavigator
              Left = 115
              Top = 2
              Width = 720
              Height = 23
              DataSource = DM.dstblVypoln
              Align = alClient
              TabOrder = 0
            end
          end
          object JvDBProgressBar2: TJvDBProgressBar
            Left = 1
            Top = 259
            Width = 846
            Height = 16
            Align = alBottom
            TabOrder = 4
            DataSource = DM.dstblVypoln
          end
        end
      end
      object cxspltr3: TcxSplitter
        Left = 1
        Top = 393
        Width = 1042
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AlignSplitter = salTop
        Control = pnlT
        Color = clNavy
        ParentColor = False
      end
    end
  end
  object pnlRight: TPanel [2]
    Left = 1054
    Top = 72
    Width = 111
    Height = 802
    Align = alClient
    Caption = 'pnlRight'
    TabOrder = 1
    Visible = False
    object lbl3: TLabel
      Left = 1
      Top = 1
      Width = 109
      Height = 18
      Align = alTop
      Alignment = taCenter
      Caption = #1086#1090#1084#1077#1090#1082#1080' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxdbvrtclgrd1: TcxDBVerticalGrid
      Left = 1
      Top = 19
      Width = 109
      Height = 384
      Align = alTop
      OptionsView.CellEndEllipsis = True
      OptionsView.RowHeaderWidth = 54
      TabOrder = 0
      Visible = False
      DataController.DataSource = ds1
      Version = 1
      object cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'id'
        Properties.Options.Editing = False
        Visible = False
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1N: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'N'
        Properties.Options.Editing = False
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1DBEditorRow: TcxDBEditorRow
        Properties.DataBinding.FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
        Properties.Options.Editing = False
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1DBEditorRow1: TcxDBEditorRow
        Properties.DataBinding.FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1fid_Bilding: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'fid_Bilding'
        Properties.Options.Editing = False
        Visible = False
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1DBEditorRow11: TcxDBEditorRow
        Properties.DataBinding.FieldName = #1075#1086#1076'1'
        Properties.Options.Editing = False
        Visible = False
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1SOOTVETSTV: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'SOOTVETSTV'
        Properties.Options.Editing = False
        Visible = False
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1rtf: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'rtf'
        Properties.Options.Editing = False
        Visible = False
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1NTreb: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
          end>
        Properties.EditProperties.ListOptions.SyncMode = True
        Properties.EditProperties.ListSource = DM.dsTrebovan
        Properties.DataBinding.FieldName = 'NTreb'
        Properties.Options.Editing = False
        Visible = False
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1NTreb2: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'NTreb2'
        Properties.Options.Editing = False
        Visible = False
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1test: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'test'
        Properties.Options.Editing = False
        Visible = False
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
    end
    object spl2: TcxSplitter
      Left = 1
      Top = 403
      Width = 109
      Height = 398
      Cursor = crVSplit
      AutoSnap = True
      Color = clNavy
      ParentColor = False
    end
  end
  object pnlH: TPanel [3]
    Left = 0
    Top = 37
    Width = 1165
    Height = 35
    Align = alTop
    Caption = 'pnlTop'
    TabOrder = 2
    Visible = False
    object mmo1: TMemo
      Left = 1
      Top = 1
      Width = 1163
      Height = 33
      Align = alClient
      Lines.Strings = (
        
          #1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1085#1086#1088#1084#1072#1090#1080#1074#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074'- ('#1087#1088#1086#1089#1090#1072#1085#1086#1074#1082#1072' '#1086#1090#1084#1077#1090 +
          #1086#1082' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080')  -> ')
      TabOrder = 0
      Visible = False
    end
  end
  object actmmb1: TActionMainMenuBar [4]
    Left = 0
    Top = 13
    Width = 1165
    Height = 24
    UseSystemFont = False
    ActionManager = actmgr1
    Caption = 'actmmb1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    PersistentHotKeys = True
    Spacing = 0
  end
  object cxspltr4: TcxSplitter [5]
    Left = 1046
    Top = 72
    Width = 8
    Height = 802
    HotZoneClassName = 'TcxXPTaskBarStyle'
    Control = pnlL
    Color = clPurple
    ParentColor = False
  end
  object ds1: TDataSource [6]
    Left = 585
    Top = 18
  end
  object actmgr1: TActionManager [7]
    ActionBars = <
      item
        ActionBar = actmmb1
      end>
    Left = 532
    Top = 14
    StyleName = 'XP Style'
    object act0: TAction
      Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
    end
    object act21: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '1. '#1056#1077#1096#1077#1085#1080#1081' '#1087#1086' '#1075#1077#1085#1077#1088#1072#1083#1100#1085#1086#1084#1091' '#1087#1083#1072#1085#1091
      OnExecute = act21Execute
    end
    object act22: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '2. '#1057#1080#1089#1090#1077#1084' '#1085#1072#1088#1091#1078#1085#1086#1075#1086' '#1087#1088#1086#1090#1080#1074#1086#1087#1086#1078#1072#1088#1085#1086#1075#1086' '#1074#1086#1076#1086#1089#1085#1072#1073#1078#1077#1085#1080#1103
      OnExecute = act22Execute
    end
    object act23: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '3.'#1054#1073#1098#1077#1084#1085#1086'-'#1087#1083#1072#1085#1080#1088#1086#1074#1086#1095#1085#1099#1093' '#1088#1077#1096#1077#1085#1080#1081' '#1079#1076#1072#1085#1080#1081
      OnExecute = act23Execute
    end
    object act24: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '4. '#1057#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1087#1088#1086#1090#1080#1074#1086#1087#1086#1078#1072#1088#1085#1099#1093' '#1087#1088#1077#1075#1088#1072#1076
      OnExecute = act24Execute
    end
    object act25: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '5. '#1069#1074#1072#1082#1091#1072#1094#1080#1086#1085#1085#1099#1093' '#1087#1091#1090#1077#1081' '#1080' '#1074#1099#1093#1086#1076#1086#1074
      OnExecute = act25Execute
    end
    object act26: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = 
        '6. '#1052#1077#1088#1086#1087#1088#1080#1103#1090#1080#1081' '#1080' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1093' '#1088#1077#1096#1077#1085#1080#1081', '#1086#1073#1077#1089#1087#1077#1095#1080#1074#1072#1102#1097#1080#1093' '#1091#1089#1087#1077#1096#1085#1086#1077' '#1090#1091 +
        #1096#1077#1085#1080#1077' '#1087#1086#1078#1072#1088#1072
      OnExecute = act26Execute
    end
    object act27: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '7. '#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1077#1089#1082#1086#1075#1086' '#1087#1088#1086#1094#1077#1089#1089#1072
      OnExecute = act27Execute
    end
    object act28: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '8. '#1057#1080#1089#1090#1077#1084' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1075#1086' '#1087#1088#1086#1090#1080#1074#1086#1087#1086#1078#1072#1088#1085#1086#1075#1086' '#1074#1086#1076#1086#1089#1085#1072#1073#1078#1077#1085#1080#1103
      OnExecute = act28Execute
    end
    object act29: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = 
        '9. '#1057#1080#1089#1090#1077#1084' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1080#1103' '#1087#1086#1078#1072#1088#1072', '#1086#1087#1086#1074#1077#1097#1077#1085#1080#1103' '#1080' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1101#1074#1072#1082#1091#1072#1094#1080#1077#1081 +
        ' '#1083#1102#1076#1077#1081
      OnExecute = act29Execute
    end
    object act210: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '10. '#1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1093' '#1091#1089#1090#1072#1085#1086#1074#1086#1082' '#1087#1086#1078#1072#1088#1086#1090#1091#1096#1077#1085#1080#1103
      OnExecute = act210Execute
    end
    object act211: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '11. '#1057#1080#1089#1090#1077#1084' '#1087#1088#1086#1090#1080#1074#1086#1076#1099#1084#1085#1086#1081' '#1079#1072#1097#1080#1090#1099
      OnExecute = act211Execute
    end
    object act212: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '12. '#1042#1077#1085#1090#1080#1083#1103#1094#1080#1086#1085#1085#1099#1093' '#1089#1080#1089#1090#1077#1084
      OnExecute = act212Execute
    end
    object act213: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '13. '#1057#1080#1089#1090#1077#1084' '#1086#1090#1086#1087#1083#1077#1085#1080#1103
      OnExecute = act213Execute
    end
    object act214: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '14. '#1057#1080#1089#1090#1077#1084' '#1101#1085#1077#1088#1075#1086#1089#1085#1072#1073#1078#1077#1085#1080#1103' '#1080' '#1101#1083#1077#1082#1090#1088#1086#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      OnExecute = act214Execute
    end
    object act215: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '15. '#1057#1080#1089#1090#1077#1084' '#1087#1088#1086#1090#1080#1074#1086#1074#1079#1088#1099#1074#1085#1086#1081' '#1079#1072#1097#1080#1090#1099' '#1079#1076#1072#1085#1080#1103
      OnExecute = act215Execute
    end
    object act216: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '16. '#1055#1088#1086#1090#1080#1074#1086#1087#1086#1078#1072#1088#1085#1086#1075#1086' '#1088#1077#1078#1080#1084#1072
      OnExecute = act216Execute
    end
    object actTabl2RichEdit: TAction
      Caption = 'actTabl2RichEdit'
    end
    object actExport: TAction
      Category = 'Export'
      Caption = 'Export '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' '#1074#1089#1077#1093' '#1079#1072#1087#1080#1089#1077#1081
      OnExecute = actExportExecute
    end
    object actVypoln_False: TAction
      Caption = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' = '#1085#1077#1090
    end
    object actVypol_TRUE: TAction
      Caption = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' = '#1076#1072'!'
    end
    object actAct_Vypoln_Show: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1053#1044' '#1087#1086' '#1079#1076#1072#1085#1080#1102
      OnExecute = actAct_Vypoln_ShowExecute
    end
    object act_AddNewBuilding: TAction
      Caption = #1076#1086#1073#1072#1074#1080#1090#1100' '#1079#1076#1072#1085#1080#1077' '
    end
    object actAll: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1074#1089#1077#1093' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
      OnExecute = actAllExecute
    end
    object actFormGr: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100' 1 '#1086#1082#1085#1086' '#1075#1088#1072#1092#1080#1082#1086#1074
      OnExecute = actFormGrExecute
    end
    object actDel: TAction
      Caption = #1089#1090#1077#1088#1077#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
      OnExecute = actDelExecute
    end
    object actGr2: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100' 2 '#1086#1082#1085#1086' '#1075#1088#1072#1092#1080#1082#1086#1074
      OnExecute = actGr2Execute
    end
    object actAnal: TAction
      Caption = #1040#1085#1072#1083#1080#1090#1080#1082#1072' '
      OnExecute = actAnalExecute
    end
    object actExportXLS: TAction
      Category = 'Export'
      Caption = 'Export '#1074' Microsoft Office Excel '
      OnExecute = actExportXLSExecute
    end
    object actExport11: TAction
      Category = 'Export'
      Caption = 'Export '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' '#1090#1077#1082#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1077#1081
      OnExecute = actExport11Execute
    end
    object actExportEx1: TAction
      Category = 'Export'
      Caption = 'Export '#1074' Microsoft Office Excel '#1090#1077#1082#1091#1097#1077#1075#1086' '#1086#1073#1098#1077#1082#1090#1072' ('#1079#1076#1072#1085#1080#1103')'
      Hint = 'Export '#1074' Microsoft Office Excel '#1090#1077#1082#1091#1097#1077#1075#1086' '#1086#1073#1098#1077#1082#1090#1072' ('#1079#1076#1072#1085#1080#1103')'
      OnExecute = actExportEx1Execute
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = Panel1
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = Panel2
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = Panel3
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = Panel4
        Properties.Strings = (
          'Height')
      end
      item
        Component = pnl1T
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = pnlalClient
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = pnlB
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = pnlBBB
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = pnlGrid
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = pnlH
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = pnlL
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = pnlLLL
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = pnlRight
        Properties.Strings = (
          'Height'
          'Width')
      end
      item
        Component = pnlT
        Properties.Strings = (
          'Height'
          'Width')
      end>
    StorageName = 'cxPropertiesStore1.ini'
    Left = 264
    Top = 217
  end
end
