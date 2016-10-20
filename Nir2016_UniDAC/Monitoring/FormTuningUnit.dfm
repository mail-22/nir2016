inherited FormTuning: TFormTuning
  Left = 143
  Top = 234
  Width = 808
  Height = 627
  Caption = 'tuning'
  PixelsPerInch = 96
  TextHeight = 13
  object actmmb1: TActionMainMenuBar [0]
    Left = 0
    Top = 0
    Width = 800
    Height = 26
    UseSystemFont = False
    ActionManager = actmgr1
    Caption = 'actmmb1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    PersistentHotKeys = True
    Spacing = 0
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
  end
  object actlst1: TActionList
    Left = 160
    Top = 248
  end
end
