inherited FormListOfBilding: TFormListOfBilding
  Left = 502
  Top = 158
  Width = 1198
  Height = 800
  Caption = #1089#1087#1080#1089#1086#1082' '#1079#1076#1072#1085#1080#1081' '#1087#1086#1076#1083#1077#1078#1072#1097#1080#1093' '#1084#1086#1085#1080#1090#1086#1088#1080#1085#1075#1091
  Position = poMainFormCenter
  OnClose = FormClose
  OnHelp = FormHelp
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAll: TPanel [0]
    Left = 0
    Top = 71
    Width = 1182
    Height = 691
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Caption = 'pnlAll'
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object pnlT01: TPanel
      Left = 2
      Top = 2
      Width = 1174
      Height = 683
      Align = alClient
      Caption = 'pnlT'
      TabOrder = 0
      object pnlL: TPanel
        Left = 1
        Top = 1
        Width = 828
        Height = 681
        Align = alLeft
        Caption = 'pnlL'
        TabOrder = 0
        object lbl1: TLabel
          Left = 1
          Top = 1
          Width = 826
          Height = 18
          Align = alTop
          Alignment = taCenter
          Caption = #1089#1087#1080#1089#1086#1082' '#1079#1076#1072#1085#1080#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxgrd1: TcxGrid
          Left = 1
          Top = 61
          Width = 826
          Height = 579
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
            FilterBox.Visible = fvAlways
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DM.dsBilding
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
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsCustomize.DataRowSizing = True
            OptionsData.Appending = True
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = #1085#1077#1090' '#1076#1072#1085#1085#1099#1093
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
              Width = 46
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn: TcxGridDBColumn
              DataBinding.FieldName = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077', '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1077#1090' '#1074#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn1: TcxGridDBColumn
              DataBinding.FieldName = #1047#1076#1072#1085#1080#1103', '#1087#1086#1084#1077#1097#1077#1085#1080#1103' '#1087#1088#1077#1076#1085#1072#1079#1085#1072#1095#1077#1085#1099' '#1076#1083#1103':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #1047#1076#1072#1085#1080#1103', '#1087#1086#1084#1077#1097#1077#1085#1080#1103' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1103#1102#1090' '#1089#1086#1073#1086#1081':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #1050#1083#1072#1089#1089' '#1092#1091#1085#1082#1094#1080#1086#1085#1072#1083#1100#1085#1086#1081' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #1069#1090#1072#1078#1085#1086#1089#1090#1100':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn5: TcxGridDBColumn
              DataBinding.FieldName = #1060#1091#1085#1076#1072#1084#1077#1085#1090' '#1079#1076#1072#1085#1080#1103':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn6: TcxGridDBColumn
              DataBinding.FieldName = #1057#1090#1077#1085#1099' '#1085#1072#1088#1091#1078#1085#1099#1077'('#1084#1072#1090#1077#1088#1080#1072#1083'):'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn7: TcxGridDBColumn
              DataBinding.FieldName = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1077' '#1089#1090#1077#1085#1099' '#1080' '#1087#1077#1088#1077#1075#1086#1088#1086#1076#1082#1080' ('#1084#1072#1090#1077#1088#1080#1072#1083'):'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn8: TcxGridDBColumn
              DataBinding.FieldName = #1050#1088#1086#1074#1083#1103' ('#1090#1080#1087', '#1084#1072#1090#1077#1088#1080#1072#1083'):'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn9: TcxGridDBColumn
              DataBinding.FieldName = #1051#1077#1089#1090#1085#1080#1094#1099' ('#1084#1072#1090#1077#1088#1080#1072#1083'):'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn10: TcxGridDBColumn
              DataBinding.FieldName = #1042#1099#1089#1086#1090#1072' '#1079#1076#1072#1085#1080#1103':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn11: TcxGridDBColumn
              DataBinding.FieldName = #1055#1083#1086#1097#1072#1076#1100' '#1079#1076#1072#1085#1080#1103', '#1087#1086#1084#1077#1097#1077#1085#1080#1081':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn12: TcxGridDBColumn
              DataBinding.FieldName = #1054#1073#1098#1077#1084' '#1079#1076#1072#1085#1080#1103':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn13: TcxGridDBColumn
              DataBinding.FieldName = #1054#1089#1074#1077#1097#1077#1085#1080#1077':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn14: TcxGridDBColumn
              DataBinding.FieldName = #1042#1077#1085#1090#1080#1083#1103#1094#1080#1103':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn15: TcxGridDBColumn
              DataBinding.FieldName = #1054#1090#1086#1087#1083#1077#1085#1080#1077':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn16: TcxGridDBColumn
              DataBinding.FieldName = #1054#1073#1098#1077#1082#1090' '#1086#1093#1088#1072#1085#1103#1077#1090#1089#1103':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1C: TcxGridDBColumn
              DataBinding.FieldName = 'C'#1090#1077#1087#1077#1085#1100' '#1086#1075#1085#1077#1089#1090#1086#1081#1082#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn17: TcxGridDBColumn
              DataBinding.FieldName = #1055#1088#1077#1076#1077#1083#1099' '#1086#1075#1085#1077#1089#1090#1086#1081#1082#1086#1089#1090#1080' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn18: TcxGridDBColumn
              DataBinding.FieldName = '- '#1085#1077#1089#1091#1097#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1099' '#1079#1076#1072#1085#1080#1103', '#1085#1077' '#1084#1077#1085#1077#1077
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn19: TcxGridDBColumn
              DataBinding.FieldName = '- '#1085#1072#1088#1091#1078#1085#1099#1077' '#1085#1077' '#1085#1077#1089#1091#1097#1080#1077' '#1089#1090#1077#1085#1099', '#1085#1077' '#1084#1077#1085#1077#1077
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn20: TcxGridDBColumn
              DataBinding.FieldName = '- '#1087#1077#1088#1077#1082#1088#1099#1090#1080#1103' '#1084#1077#1078#1076#1091#1101#1090#1072#1078#1085#1099#1077', '#1085#1077' '#1084#1077#1085#1077#1077
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn21: TcxGridDBColumn
              DataBinding.FieldName = '- '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1077' '#1089#1090#1077#1085#1099' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082', '#1085#1077' '#1084#1077#1085#1077#1077
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn22: TcxGridDBColumn
              DataBinding.FieldName = '- '#1084#1072#1088#1096#1080' '#1080' '#1087#1083#1086#1097#1072#1076#1082#1080' '#1083#1077#1089#1090#1085#1080#1094' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082', '#1085#1077' '#1084#1077#1085#1077#1077
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn23: TcxGridDBColumn
              DataBinding.FieldName = #1050#1083#1072#1089#1089' '#1082#1086#1085#1089#1090#1088#1091#1082#1090#1080#1074#1085#1086#1081' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn24: TcxGridDBColumn
              DataBinding.FieldName = #1050#1083#1072#1089#1089' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081':'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn0: TcxGridDBColumn
              DataBinding.FieldName = #1043#1086#1076'0'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn25: TcxGridDBColumn
              DataBinding.FieldName = #1075#1086#1076' '#1087#1086#1078#1072#1088#1072
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn26: TcxGridDBColumn
              DataBinding.FieldName = #1091#1097#1077#1088#1073' '#1086#1090' '#1087#1086#1078#1072#1088#1072
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn27: TcxGridDBColumn
              DataBinding.FieldName = #1087#1086#1075#1080#1073#1083#1086' '#1087#1088#1080' '#1087#1086#1078#1072#1088#1077
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn28: TcxGridDBColumn
              DataBinding.FieldName = #1087#1086#1089#1090#1088#1072#1076#1072#1083#1086' '#1087#1088#1080' '#1087#1086#1078#1072#1088#1077
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1Adress: TcxGridDBColumn
              DataBinding.FieldName = 'Adress'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1Street: TcxGridDBColumn
              DataBinding.FieldName = 'Street'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1BildingNo: TcxGridDBColumn
              DataBinding.FieldName = 'BildingNo'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1Region: TcxGridDBColumn
              DataBinding.FieldName = 'Region'
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn29: TcxGridDBColumn
              DataBinding.FieldName = #1085#1086#1084#1077#1088' '#1057#1069#1059
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1DBColumn30: TcxGridDBColumn
              DataBinding.FieldName = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'  '#1057#1069#1059
              PropertiesClassName = 'TcxMRUEditProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1sootvet: TcxGridDBColumn
              DataBinding.FieldName = 'sootvet'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Width = 77
            end
            object cxgrdbclmncxgrdbtblvw1PprT: TcxGridDBColumn
              DataBinding.FieldName = 'PprT'
              PropertiesClassName = 'TcxMRUEditProperties'
            end
            object cxgrdbclmncxgrdbtblvw1ZT: TcxGridDBColumn
              DataBinding.FieldName = 'ZT'
              PropertiesClassName = 'TcxMRUEditProperties'
            end
            object cxgrdbclmncxgrdbtblvw1Et: TcxGridDBColumn
              DataBinding.FieldName = 'Et'
              PropertiesClassName = 'TcxMRUEditProperties'
            end
            object cxgrdbclmncxgrdbtblvw1P1: TcxGridDBColumn
              DataBinding.FieldName = 'P1'
              PropertiesClassName = 'TcxMRUEditProperties'
            end
            object cxgrdbclmncxgrdbtblvw1P2: TcxGridDBColumn
              DataBinding.FieldName = 'P2'
              PropertiesClassName = 'TcxMRUEditProperties'
            end
          end
          object cxgrdbndtblvwcxgrd1DBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end
              item
              end>
            object cxgrdbndclmncxgrdbndtblvwcxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxgrdbcrdvwcxgrd1DBCardView1: TcxGridDBCardView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxgrdbcrdvwcxgrd1DBCardView1Row1: TcxGridDBCardViewRow
              Position.BeginsLayer = True
            end
          end
          object cxgrdbtblvwcxgrd1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxgrdlvl1: TcxGridLevel
            GridView = cxgrdbtblvw1
          end
        end
        object pnlBB: TPanel
          Left = 1
          Top = 656
          Width = 826
          Height = 24
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          BorderStyle = bsSingle
          TabOrder = 1
          object jvdbstslbl2: TJvDBStatusLabel
            Left = 2
            Top = 2
            Width = 81
            Height = 16
            DataSource = DM.dsBilding
            CalcRecCount = True
            ShowOptions = doBoth
            Align = alLeft
            Alignment = taRightJustify
          end
          object cxdbnvgtr1: TcxDBNavigator
            Left = 83
            Top = 2
            Width = 735
            Height = 16
            DataSource = DM.dsBilding
            Align = alClient
            TabOrder = 0
          end
        end
        object cxProgressBarVypoln: TcxProgressBar
          Left = 1
          Top = 40
          Align = alTop
          TabOrder = 2
          Width = 826
        end
        object cxProgressBarTrebovan: TcxProgressBar
          Left = 1
          Top = 19
          Align = alTop
          TabOrder = 3
          Width = 826
        end
        object JvDBProgressBar1: TJvDBProgressBar
          Left = 1
          Top = 640
          Width = 826
          Height = 16
          Align = alBottom
          Position = 38
          TabOrder = 4
          DataField = 'id'
          DataSource = DM.dsBilding
        end
      end
      object pnlR: TPanel
        Left = 837
        Top = 1
        Width = 336
        Height = 681
        Align = alClient
        TabOrder = 1
        object lbl2: TLabel
          Left = 1
          Top = 1
          Width = 334
          Height = 18
          Align = alTop
          Alignment = taCenter
          Caption = #1086#1087#1080#1089#1072#1085#1080#1077' '#1079#1076#1072#1085#1080#1103
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
          Width = 334
          Height = 550
          Align = alTop
          OptionsView.RowHeaderWidth = 155
          TabOrder = 0
          DataController.DataSource = ds1
          DataController.GridMode = True
          Version = 1
          object cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'id'
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077', '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1077#1090' '#1074#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080':'
            ID = 1
            ParentID = -1
            Index = 1
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow1: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1047#1076#1072#1085#1080#1103', '#1087#1086#1084#1077#1097#1077#1085#1080#1103' '#1087#1088#1077#1076#1085#1072#1079#1085#1072#1095#1077#1085#1099' '#1076#1083#1103':'
            ID = 2
            ParentID = -1
            Index = 2
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow2: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1047#1076#1072#1085#1080#1103', '#1087#1086#1084#1077#1097#1077#1085#1080#1103' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1103#1102#1090' '#1089#1086#1073#1086#1081':'
            ID = 3
            ParentID = -1
            Index = 3
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow3: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1050#1083#1072#1089#1089' '#1092#1091#1085#1082#1094#1080#1086#1085#1072#1083#1100#1085#1086#1081' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080':'
            ID = 4
            ParentID = -1
            Index = 4
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow4: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1069#1090#1072#1078#1085#1086#1089#1090#1100':'
            ID = 5
            ParentID = -1
            Index = 5
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow5: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1060#1091#1085#1076#1072#1084#1077#1085#1090' '#1079#1076#1072#1085#1080#1103':'
            ID = 6
            ParentID = -1
            Index = 6
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow6: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1057#1090#1077#1085#1099' '#1085#1072#1088#1091#1078#1085#1099#1077'('#1084#1072#1090#1077#1088#1080#1072#1083'):'
            ID = 7
            ParentID = -1
            Index = 7
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow7: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1077' '#1089#1090#1077#1085#1099' '#1080' '#1087#1077#1088#1077#1075#1086#1088#1086#1076#1082#1080' ('#1084#1072#1090#1077#1088#1080#1072#1083'):'
            ID = 8
            ParentID = -1
            Index = 8
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow8: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1050#1088#1086#1074#1083#1103' ('#1090#1080#1087', '#1084#1072#1090#1077#1088#1080#1072#1083'):'
            ID = 9
            ParentID = -1
            Index = 9
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow9: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1051#1077#1089#1090#1085#1080#1094#1099' ('#1084#1072#1090#1077#1088#1080#1072#1083'):'
            ID = 10
            ParentID = -1
            Index = 10
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow10: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1042#1099#1089#1086#1090#1072' '#1079#1076#1072#1085#1080#1103':'
            ID = 11
            ParentID = -1
            Index = 11
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow11: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1055#1083#1086#1097#1072#1076#1100' '#1079#1076#1072#1085#1080#1103', '#1087#1086#1084#1077#1097#1077#1085#1080#1081':'
            ID = 12
            ParentID = -1
            Index = 12
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow12: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1054#1073#1098#1077#1084' '#1079#1076#1072#1085#1080#1103':'
            ID = 13
            ParentID = -1
            Index = 13
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow13: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1054#1089#1074#1077#1097#1077#1085#1080#1077':'
            ID = 14
            ParentID = -1
            Index = 14
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow14: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1042#1077#1085#1090#1080#1083#1103#1094#1080#1103':'
            ID = 15
            ParentID = -1
            Index = 15
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow15: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1054#1090#1086#1087#1083#1077#1085#1080#1077':'
            ID = 16
            ParentID = -1
            Index = 16
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow16: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1054#1073#1098#1077#1082#1090' '#1086#1093#1088#1072#1085#1103#1077#1090#1089#1103':'
            ID = 17
            ParentID = -1
            Index = 17
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1C: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'C'#1090#1077#1087#1077#1085#1100' '#1086#1075#1085#1077#1089#1090#1086#1081#1082#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103':'
            ID = 18
            ParentID = -1
            Index = 18
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow17: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1055#1088#1077#1076#1077#1083#1099' '#1086#1075#1085#1077#1089#1090#1086#1081#1082#1086#1089#1090#1080' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081':'
            ID = 19
            ParentID = -1
            Index = 19
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow18: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = '- '#1085#1077#1089#1091#1097#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1099' '#1079#1076#1072#1085#1080#1103', '#1085#1077' '#1084#1077#1085#1077#1077
            ID = 20
            ParentID = -1
            Index = 20
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow19: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = '- '#1085#1072#1088#1091#1078#1085#1099#1077' '#1085#1077' '#1085#1077#1089#1091#1097#1080#1077' '#1089#1090#1077#1085#1099', '#1085#1077' '#1084#1077#1085#1077#1077
            ID = 21
            ParentID = -1
            Index = 21
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow20: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = '- '#1087#1077#1088#1077#1082#1088#1099#1090#1080#1103' '#1084#1077#1078#1076#1091#1101#1090#1072#1078#1085#1099#1077', '#1085#1077' '#1084#1077#1085#1077#1077
            ID = 22
            ParentID = -1
            Index = 22
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow21: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = '- '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1077' '#1089#1090#1077#1085#1099' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082', '#1085#1077' '#1084#1077#1085#1077#1077
            ID = 23
            ParentID = -1
            Index = 23
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow22: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = '- '#1084#1072#1088#1096#1080' '#1080' '#1087#1083#1086#1097#1072#1076#1082#1080' '#1083#1077#1089#1090#1085#1080#1094' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082', '#1085#1077' '#1084#1077#1085#1077#1077
            ID = 24
            ParentID = -1
            Index = 24
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow23: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1050#1083#1072#1089#1089' '#1082#1086#1085#1089#1090#1088#1091#1082#1090#1080#1074#1085#1086#1081' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103':'
            ID = 25
            ParentID = -1
            Index = 25
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow24: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1050#1083#1072#1089#1089' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081':'
            ID = 26
            ParentID = -1
            Index = 26
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow0: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1043#1086#1076'0'
            ID = 27
            ParentID = -1
            Index = 27
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow25: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1075#1086#1076' '#1087#1086#1078#1072#1088#1072
            ID = 28
            ParentID = -1
            Index = 28
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow26: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1091#1097#1077#1088#1073' '#1086#1090' '#1087#1086#1078#1072#1088#1072
            ID = 29
            ParentID = -1
            Index = 29
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow27: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1087#1086#1075#1080#1073#1083#1086' '#1087#1088#1080' '#1087#1086#1078#1072#1088#1077
            ID = 30
            ParentID = -1
            Index = 30
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow28: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1087#1086#1089#1090#1088#1072#1076#1072#1083#1086' '#1087#1088#1080' '#1087#1086#1078#1072#1088#1077
            ID = 31
            ParentID = -1
            Index = 31
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1rtf: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'rtf'
            Visible = False
            ID = 32
            ParentID = -1
            Index = 32
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1Adress: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'Adress'
            ID = 33
            ParentID = -1
            Index = 33
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1Street: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'Street'
            ID = 34
            ParentID = -1
            Index = 34
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1BildingNo: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'BildingNo'
            ID = 35
            ParentID = -1
            Index = 35
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1Region: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'Region'
            ID = 36
            ParentID = -1
            Index = 36
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow29: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1085#1086#1084#1077#1088' '#1057#1069#1059
            ID = 37
            ParentID = -1
            Index = 37
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DBEditorRow30: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'  '#1057#1069#1059
            ID = 38
            ParentID = -1
            Index = 38
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1sootvet: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DataBinding.FieldName = 'sootvet'
            ID = 39
            ParentID = -1
            Index = 39
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1PprT: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'PprT'
            ID = 40
            ParentID = -1
            Index = 40
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1ZT: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'ZT'
            ID = 41
            ParentID = -1
            Index = 41
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1Et: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'Et'
            ID = 42
            ParentID = -1
            Index = 42
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1P1: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'P1'
            ID = 43
            ParentID = -1
            Index = 43
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1P2: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'P2'
            ID = 44
            ParentID = -1
            Index = 44
            Version = 1
          end
        end
        object pnlB: TPanel
          Left = 1
          Top = 577
          Width = 334
          Height = 103
          Align = alClient
          Caption = 'pnlB'
          TabOrder = 1
          object lbl3: TLabel
            Left = 1
            Top = 1
            Width = 332
            Height = 18
            Align = alTop
            Alignment = taCenter
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103' ('#1086#1087#1080#1089#1072#1085#1080#1077' '#1079#1076#1072#1085#1080#1103')'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object scrlbx1: TScrollBox
            Left = 1
            Top = 19
            Width = 332
            Height = 83
            Align = alClient
            AutoSize = True
            TabOrder = 0
            object dbrchvwdtole: TDBRichViewEdit
              Left = 0
              Top = 0
              Width = 328
              Height = 79
              DataField = 'rtf'
              DataSource = ds1
              ReadOnly = False
              FieldFormat = rvdbRTF
              Align = alClient
              TabOrder = 0
              DoInPaletteMode = rvpaCreateCopies
              Style = rvstyl1
            end
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 1
          Top = 569
          Width = 334
          Height = 8
          HotZoneClassName = 'TcxMediaPlayer8Style'
          AlignSplitter = salTop
        end
      end
      object spl2: TcxSplitter
        Left = 829
        Top = 1
        Width = 8
        Height = 681
        Cursor = crHSplit
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AutoSnap = True
        Color = clSkyBlue
        ParentColor = False
      end
    end
  end
  object pnlH: TPanel [1]
    Left = 0
    Top = 46
    Width = 1182
    Height = 25
    Align = alTop
    Caption = 'pnlH'
    TabOrder = 1
    Visible = False
    object mmo1: TMemo
      Left = 1
      Top = 1
      Width = 1180
      Height = 23
      Align = alClient
      Lines.Strings = (
        
          #1089#1087#1080#1089#1086#1082' '#1079#1076#1072#1085#1080#1081' '#1074' '#1041#1044'  ->'#1058#1072#1073#1083#1080#1094#1072' - '#1054#1087#1080#1089#1072#1085#1080#1077' '#1079#1076#1072#1085#1080#1103' ('#1086#1073#1098#1077#1082#1090#1072') -> tbl' +
          'Bilding')
      TabOrder = 0
    end
  end
  object pnlHeader: TPanel [2]
    Left = 0
    Top = 24
    Width = 1182
    Height = 22
    Align = alTop
    Caption = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
    TabOrder = 2
  end
  object actmmb1: TActionMainMenuBar [3]
    Left = 0
    Top = 0
    Width = 1182
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
    Spacing = 0
  end
  object btn1: TButton [4]
    Left = 648
    Top = 0
    Width = 113
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1076#1072#1085#1080#1077' !'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton [5]
    Left = 824
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 5
  end
  object ds1: TDataSource [6]
    DataSet = DM.tblBilding
    Left = 450
    Top = 40
  end
  object actmgr1: TActionManager [7]
    ActionBars = <
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = act_AddNewBuilding
          end
          item
            Caption = '-'
          end
          item
            Action = actAct_Vypoln_Show
          end
          item
            Action = act5
          end
          item
            Caption = '-'
          end>
        ActionBar = actmmb1
      end>
    Left = 634
    Top = 156
    StyleName = 'XP Style'
    object act1: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '1. '#1056#1077#1096#1077#1085#1080#1081' '#1087#1086' '#1075#1077#1085#1077#1088#1072#1083#1100#1085#1086#1084#1091' '#1087#1083#1072#1085#1091
      Hint = '1. '#1056#1077#1096#1077#1085#1080#1081' '#1087#1086' '#1075#1077#1085#1077#1088#1072#1083#1100#1085#1086#1084#1091' '#1087#1083#1072#1085#1091
    end
    object act2: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '2. '#1057#1080#1089#1090#1077#1084' '#1085#1072#1088#1091#1078#1085#1086#1075#1086' '#1087#1088#1086#1090#1080#1074#1086#1087#1086#1078#1072#1088#1085#1086#1075#1086' '#1074#1086#1076#1086#1089#1085#1072#1073#1078#1077#1085#1080#1103
      Hint = '2. '#1057#1080#1089#1090#1077#1084' '#1085#1072#1088#1091#1078#1085#1086#1075#1086' '#1087#1088#1086#1090#1080#1074#1086#1087#1086#1078#1072#1088#1085#1086#1075#1086' '#1074#1086#1076#1086#1089#1085#1072#1073#1078#1077#1085#1080#1103
    end
    object act3: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '3. '#1054#1073#1098#1077#1084#1085#1086'-'#1087#1083#1072#1085#1080#1088#1086#1074#1086#1095#1085#1099#1093' '#1088#1077#1096#1077#1085#1080#1081' '#1079#1076#1072#1085#1080#1081
      Hint = '3. '#1054#1073#1098#1077#1084#1085#1086'-'#1087#1083#1072#1085#1080#1088#1086#1074#1086#1095#1085#1099#1093' '#1088#1077#1096#1077#1085#1080#1081' '#1079#1076#1072#1085#1080#1081
      OnExecute = act3Execute
    end
    object act0: TAction
      Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
      OnExecute = act0Execute
    end
    object act24: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '4. '#1057#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1087#1088#1086#1090#1080#1074#1086#1087#1086#1078#1072#1088#1085#1099#1093' '#1087#1088#1077#1075#1088#1072#1076
      OnExecute = act24Execute
    end
    object act23: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '3. '#1054#1073#1098#1077#1084#1085#1086'-'#1087#1083#1072#1085#1080#1088#1086#1074#1086#1095#1085#1099#1093' '#1088#1077#1096#1077#1085#1080#1081' '#1079#1076#1072#1085#1080#1081
      OnExecute = act23Execute
    end
    object act22: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '2. '#1057#1080#1089#1090#1077#1084' '#1085#1072#1088#1091#1078#1085#1086#1075#1086' '#1087#1088#1086#1090#1080#1074#1086#1087#1086#1078#1072#1088#1085#1086#1075#1086' '#1074#1086#1076#1086#1089#1085#1072#1073#1078#1077#1085#1080#1103
      OnExecute = act22Execute
    end
    object act21: TAction
      Category = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' :'
      Caption = '1. '#1056#1077#1096#1077#1085#1080#1081' '#1087#1086' '#1075#1077#1085#1077#1088#1072#1083#1100#1085#1086#1084#1091' '#1087#1083#1072#1085#1091
      OnExecute = act21Execute
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
      Caption = 'Export'
      OnExecute = actExportExecute
    end
    object actVypoln_False: TAction
      Caption = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' = '#1085#1077#1090
      OnExecute = actVypoln_FalseExecute
    end
    object actVypol_TRUE: TAction
      Caption = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' = '#1076#1072'!'
      OnExecute = actVypol_TRUEExecute
    end
    object actAct_Vypoln_Show: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1053#1044' '#1087#1086' '#1079#1076#1072#1085#1080#1102
      OnExecute = actAct_Vypoln_ShowExecute
    end
    object act_AddNewBuilding: TAction
      Caption = #1076#1086#1073#1072#1074#1080#1090#1100' '#1079#1076#1072#1085#1080#1077' '
      OnExecute = act_AddNewBuildingExecute
    end
    object hlpcntnts1: THelpContents
      Category = 'Help'
      Caption = '&Contents'
      Enabled = False
      Hint = 'Help Contents'
      ImageIndex = 40
      OnExecute = hlpcntnts1Execute
    end
    object hlptpcsrch1: THelpTopicSearch
      Category = 'Help'
      Caption = '&Topic Search'
      Enabled = False
      Hint = 'Topic Search'
      ImageIndex = 9
      OnExecute = hlptpcsrch1Execute
    end
    object hlpnhlp1: THelpOnHelp
      Category = 'Help'
      Caption = '&Help on Help'
      Enabled = False
      Hint = 'Help on help'
      OnExecute = hlpnhlp1Execute
    end
    object Action1: TAction
      Category = 'Help'
      Caption = 'Action1'
    end
    object act4: THelpContextAction
      Category = 'Help'
      Caption = 'act4'
      Enabled = False
      ImageIndex = 11
      OnExecute = act4Execute
    end
    object act5: TAction
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1053#1045' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1084' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1085#1077' '#1086#1073#1098#1077#1082#1090#1077' '
      OnExecute = act5Execute
    end
  end
  object rvstyl1: TRVStyle [8]
    TextStyles = <
      item
        StyleName = 'Normal text'
        FontName = 'Arial'
      end
      item
        StyleName = 'Heading'
        FontName = 'Arial'
        Style = [fsBold]
        Color = clBlue
      end
      item
        StyleName = 'Subheading'
        FontName = 'Arial'
        Style = [fsBold]
        Color = clNavy
      end
      item
        StyleName = 'Keywords'
        FontName = 'Arial'
        Style = [fsItalic]
        Color = clMaroon
      end
      item
        StyleName = 'Jump 1'
        FontName = 'Arial'
        Style = [fsUnderline]
        Color = clGreen
        Jump = True
      end
      item
        StyleName = 'Jump 2'
        FontName = 'Arial'
        Style = [fsUnderline]
        Color = clGreen
        Jump = True
      end>
    ParaStyles = <
      item
        StyleName = 'Paragraph Style'
        Tabs = <>
      end
      item
        StyleName = 'Centered'
        Alignment = rvaCenter
        Tabs = <>
      end>
    ListStyles = <>
    FootnotePageReset = False
    InvalidPicture.Data = {
      07544269746D617036100000424D361000000000000036000000280000002000
      0000200000000100200000000000001000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000}
    StyleTemplates = <>
    Left = 414
    Top = 34
  end
  object cxstylrpstry1: TcxStyleRepository
    Left = 579
    Top = 18
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
    end
  end
  object xpclrmp1: TXPColorMap
    HighlightColor = clWhite
    BtnSelectedColor = clBtnFace
    UnusedColor = clWhite
    Left = 547
    Top = 250
  end
  object stndrdclrmp1: TStandardColorMap
    HighlightColor = clBtnHighlight
    UnusedColor = clWhite
    MenuColor = clMenu
    SelectedColor = clHighlight
    Left = 595
    Top = 266
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = pnlAll
        Properties.Strings = (
          'Width')
      end
      item
        Component = pnlB
        Properties.Strings = (
          'Width')
      end
      item
        Component = pnlBB
        Properties.Strings = (
          'Width')
      end
      item
        Component = pnlH
        Properties.Strings = (
          'Width')
      end
      item
        Component = pnlHeader
        Properties.Strings = (
          'Width')
      end
      item
        Component = pnlL
        Properties.Strings = (
          'Width')
      end
      item
        Component = pnlR
        Properties.Strings = (
          'Width')
      end
      item
        Component = pnlT01
        Properties.Strings = (
          'Width')
      end>
    StorageName = 'cxPropertiesStore1.ini'
    Left = 424
    Top = 273
  end
end
