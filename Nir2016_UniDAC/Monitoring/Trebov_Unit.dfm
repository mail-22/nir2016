inherited Trebov: TTrebov
  Left = 138
  Top = 217
  Width = 1109
  Height = 877
  Action = act1Copy
  Caption = #1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1085#1086#1088#1084'.'#1076#1086#1082'.  '#1082' '#1079#1076#1072#1085#1080#1103#1084
  OnClick = act1CopyExecute
  PixelsPerInch = 96
  TextHeight = 13
  object pnlH: TPanel [0]
    Left = 0
    Top = 23
    Width = 1093
    Height = 41
    Align = alTop
    Caption = 'pnlH'
    TabOrder = 0
    object mmo1: TMemo
      Left = 1
      Top = 1
      Width = 1091
      Height = 39
      Align = alClient
      Lines.Strings = (
        #1089#1087#1080#1089#1086#1082' '#1085#1086#1088#1084#1072#1090#1080#1074#1085#1099#1093' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1082' '#1079#1076#1072#1085#1080#1080#1103#1084' ')
      TabOrder = 0
    end
  end
  object pnlT: TPanel [1]
    Left = 0
    Top = 64
    Width = 1093
    Height = 448
    Align = alTop
    Caption = 'pnlT'
    TabOrder = 1
    object pnlL: TPanel
      Left = 1
      Top = 1
      Width = 584
      Height = 446
      Align = alLeft
      Caption = 'pnlL'
      TabOrder = 0
      object lbl1: TLabel
        Left = 1
        Top = 1
        Width = 582
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = #1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvDBStatusLabel1: TJvDBStatusLabel
        Left = 28
        Top = 1
        Width = 116
        Height = 13
        DataSource = ds1
        CalcRecCount = True
        ShowOptions = doBoth
        Alignment = taRightJustify
      end
      object cxgrd1: TcxGrid
        Left = 1
        Top = 19
        Width = 582
        Height = 401
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
          DataController.DataSource = ds1
          DataController.DetailKeyFieldNames = 'id'
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
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
          OptionsCustomize.DataRowSizing = True
          OptionsCustomize.GroupBySorting = True
          OptionsCustomize.GroupRowSizing = True
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
          end
          object cxgrdbclmncxgrdbtblvw1N: TcxGridDBColumn
            DataBinding.FieldName = 'N'
            Width = 55
          end
          object cxgrdbclmncxgrdbtblvw1DBColumn: TcxGridDBColumn
            DataBinding.FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
            Width = 44
          end
          object cxgrdbclmncxgrdbtblvw1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
          end
          object cxgrdbtblvw1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #1075#1086#1076'1'
          end
          object cxgrdbtblvw1rtf: TcxGridDBColumn
            DataBinding.FieldName = 'rtf'
          end
          object cxgrdbtblvw1ParentField: TcxGridDBColumn
            DataBinding.FieldName = 'ParentField'
          end
          object cxgrdbtblvw1DetailField: TcxGridDBColumn
            DataBinding.FieldName = 'DetailField'
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
      object dbnvgr1: TDBNavigator
        Left = 1
        Top = 420
        Width = 582
        Height = 25
        DataSource = ds1
        Align = alBottom
        TabOrder = 1
      end
    end
    object pnlR: TPanel
      Left = 592
      Top = 1
      Width = 500
      Height = 446
      Align = alClient
      Caption = 'pnlR'
      TabOrder = 1
      object lbl2: TLabel
        Left = 1
        Top = 1
        Width = 498
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = #1086#1087#1080#1089#1072#1085#1080#1077' '#1085#1086#1088#1084#1072#1090#1080#1074#1085#1086#1075#1086' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxdbvrtclgrd1: TcxDBVerticalGrid
        Left = 351
        Top = 19
        Width = 148
        Height = 426
        Align = alClient
        DragCursor = crDrag
        OptionsView.RowHeaderWidth = 80
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
          Properties.DataBinding.FieldName = #8470
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxdbdtrwcxdbvrtclgrd1DBEditorRow1: TcxDBEditorRow
          Properties.DataBinding.FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object cxdbdtrwcxdbvrtclgrd1DBEditorRow2: TcxDBEditorRow
          Properties.DataBinding.FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
      end
      object tv1: TdxDBTreeView
        Left = 1
        Top = 19
        Width = 350
        Height = 426
        ShowNodeHint = True
        AutoExpand = True
        HotTrack = True
        DataSource = ds1
        DisplayField = 'N'
        KeyField = 'id'
        ListField = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
        ParentField = 'ParentField'
        RootValue = Null
        SeparatedSt = ' - '
        StateIndexField = 'ParentField'
        RaiseOnError = False
        Indent = 19
        Align = alLeft
        ParentColor = False
        Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trCheckHasChildren]
        SelectedIndex = -1
        TabOrder = 1
      end
    end
    object spl1: TcxSplitter
      Left = 585
      Top = 1
      Width = 7
      Height = 446
      Cursor = crHSplit
      AutoSnap = True
      Color = clActiveCaption
      ParentColor = False
    end
  end
  object pnlB: TPanel [2]
    Left = 1093
    Top = 512
    Width = 0
    Height = 327
    Align = alClient
    Caption = 'pnlB'
    TabOrder = 2
    object dbrchvwdtole: TDBRichViewEdit
      Left = 41
      Top = 1
      Width = 608
      Height = 325
      DataField = 'rtf'
      DataSource = ds1
      ReadOnly = False
      FieldFormat = rvdbRTF
      Align = alLeft
      TabOrder = 0
      DoInPaletteMode = rvpaCreateCopies
      Style = rvstyl1
    end
    object img1: TcxDBImage
      Left = 656
      Top = 1
      Align = alClient
      DataBinding.DataSource = ds1
      Properties.GraphicClassName = 'TJPEGImage'
      TabOrder = 1
      OnClick = img1Click
      Height = 325
      Width = 436
    end
    object pnlC: TPanel
      Left = 1
      Top = 1
      Width = 40
      Height = 325
      Align = alLeft
      TabOrder = 2
      object actmmb1: TActionMainMenuBar
        Left = 1
        Top = 1
        Width = 38
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
    end
    object spl3: TcxSplitter
      Left = 649
      Top = 1
      Width = 7
      Height = 325
      Cursor = crHSplit
      AutoSnap = True
    end
  end
  object acttb1: TActionToolBar [3]
    Left = 0
    Top = 0
    Width = 1093
    Height = 23
    ActionManager = actmgr1
    Caption = 'acttb1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Spacing = 0
  end
  object spl2: TcxSplitter [4]
    Left = 0
    Top = 512
    Width = 1093
    Height = 327
    Cursor = crVSplit
    AutoSnap = True
    Color = clActiveCaption
    ParentColor = False
  end
  object ds1: TDataSource [5]
    DataSet = DM.tdlTrebovan
    Left = 336
    Top = 18
  end
  object rvstyl1: TRVStyle [6]
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
    Left = 64
    Top = 424
  end
  object actmgr1: TActionManager [7]
    ActionBars = <
      item
        ActionBar = actmmb1
      end
      item
        ActionBar = acttb1
      end>
    Images = il1
    Left = 400
    Top = 20
    StyleName = 'XP Style'
    object act1Copy: TAction
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1082' '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1079#1076#1072#1085#1080#1102' !'
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
      OnExecute = act1CopyExecute
    end
  end
  object il1: TImageList [8]
    Left = 584
    Top = 32
  end
  object cxlclzr1: TcxLocalizer
    Left = 692
    Top = 295
  end
end
