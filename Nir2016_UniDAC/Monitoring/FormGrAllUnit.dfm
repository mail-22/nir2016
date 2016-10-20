inherited FormGrAll: TFormGrAll
  Left = 530
  Top = 297
  Caption = 'FormGrAll'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object actmmb1: TActionMainMenuBar [0]
    Left = 0
    Top = 0
    Width = 784
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
  object cht1: TChart [1]
    Left = 0
    Top = 24
    Width = 784
    Height = 538
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Gradient.EndColor = 11118482
    BackWall.Gradient.Visible = True
    BackWall.Transparent = False
    Border.Color = 14645801
    Border.Width = 7
    Border.Visible = True
    BottomWall.Gradient.EndColor = 16580349
    BottomWall.Gradient.StartColor = 3114493
    BottomWall.Gradient.Visible = True
    Gradient.Direction = gdDiagonalDown
    Gradient.EndColor = 11645361
    Gradient.Visible = True
    LeftWall.Gradient.EndColor = 2413052
    LeftWall.Gradient.StartColor = 900220
    LeftWall.Gradient.Visible = True
    Legend.Alignment = laBottom
    Legend.Gradient.Direction = gdTopBottom
    Legend.Gradient.EndColor = clYellow
    Legend.Gradient.StartColor = clWhite
    Legend.Gradient.Visible = True
    Legend.Shadow.Transparency = 50
    Title.Text.Strings = (
      '')
    BottomAxis.LabelsAngle = 90
    BottomAxis.LabelsMultiLine = True
    BottomAxis.MaximumOffset = 72
    BottomAxis.MinimumOffset = 72
    LeftAxis.Title.Angle = 0
    Shadow.Color = clBlack
    Shadow.HorizSize = 10
    Shadow.VertSize = 10
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ColorPaletteIndex = 9
    object brsrsSeries1: TBarSeries
      ColorEachPoint = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Gradient.Visible = True
      Marks.Style = smsValue
      Marks.Visible = True
      BarStyle = bsCilinder
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object actlst1: TActionList [2]
    Left = 176
    Top = 60
    object actGr: TAction
      Caption = #1089#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1075#1088#1072#1092#1080#1082
      OnExecute = actGrExecute
    end
  end
  object actmgr1: TActionManager [3]
    ActionBars = <
      item
        Items = <
          item
            Action = actGr
          end>
        ActionBar = actmmb1
      end>
    LinkedActionLists = <
      item
        ActionList = actlst1
        Caption = 'actlst1'
      end>
    Left = 216
    Top = 58
    StyleName = 'XP Style'
  end
end
