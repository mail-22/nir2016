inherited FormTuning: TFormTuning
  Left = 571
  Top = 241
  Caption = 'tuning'
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object actmmb1: TActionMainMenuBar [0]
    Left = 0
    Top = 0
    Width = 784
    Height = 51
    UseSystemFont = False
    ActionManager = actmgr1
    Caption = 'actmmb1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object btn1: TButton [1]
    Left = 10
    Top = 80
    Width = 131
    Height = 25
    Caption = 'ImportXLSUnit_Show'
    TabOrder = 1
    OnClick = btn1Click
  end
  object actmgr1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actConn
          end
          item
            Action = acBack
          end
          item
            Action = acTreb
          end
          item
            Action = act1
            Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1053#1045' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1084' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1085#1077' '#1086#1073#1098#1077#1082#1090#1077' '
          end>
        ActionBar = actmmb1
      end>
    LinkedActionLists = <
      item
        ActionList = actlst1
        Caption = 'actlst1'
      end>
    Left = 264
    Top = 128
    StyleName = 'XP Style'
    object actConn: TAction
      Caption = #1085#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103
      OnExecute = actConnExecute
    end
    object acBack: TAction
      Caption = #1089#1086#1079#1076#1072#1085#1080#1077' '#1073#1101#1082#1072#1087#1072' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
      OnExecute = acBackExecute
    end
    object acTreb: TAction
      Caption = #1088#1072#1073#1086#1090#1072' '#1089' '#1087#1077#1088#1077#1095#1085#1077#1084' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1053#1044
      OnExecute = acTrebExecute
    end
    object act1: TAction
      Caption = 'act1'
      OnExecute = act1Execute
    end
  end
  object actlst1: TActionList
    Left = 160
    Top = 248
  end
  object cxprprtstr1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Position'
          'Top'
          'Width')
      end>
    StorageName = 'cxprprtstr1'
    Left = 430
    Top = 280
  end
end
