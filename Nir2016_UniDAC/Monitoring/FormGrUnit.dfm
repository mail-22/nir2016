inherited FormGr: TFormGr
  Left = 161
  Top = 269
  Height = 560
  Caption = #1043#1088#1072#1092#1080#1082#1080
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cht1: TChart [0]
    Left = 0
    Top = 24
    Width = 784
    Height = 498
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Dark3D = False
    BackWall.Gradient.EndColor = 11118482
    BackWall.Pen.Color = clGray
    BackWall.Transparent = False
    Border.Visible = True
    BottomWall.Color = clGray
    BottomWall.Dark3D = False
    BottomWall.Gradient.EndColor = 16580349
    BottomWall.Gradient.StartColor = 3114493
    BottomWall.Pen.Color = clGray
    LeftWall.Color = clSilver
    LeftWall.Dark3D = False
    LeftWall.Gradient.EndColor = 2413052
    LeftWall.Gradient.StartColor = 900220
    LeftWall.Pen.Color = clGray
    Legend.Color = clInfoBk
    Legend.DividingLines.Color = clSilver
    Legend.Font.Color = 6553600
    Legend.Font.Height = -13
    Legend.Gradient.Direction = gdTopBottom
    Legend.Gradient.EndColor = 13556735
    Legend.Gradient.MidColor = 14739177
    Legend.Gradient.StartColor = 16774122
    Legend.Shadow.Color = 13421772
    Legend.Shadow.HorizSize = 0
    Legend.Shadow.VertSize = 0
    Legend.Symbol.Squared = True
    RightWall.Dark3D = False
    RightWall.Pen.Color = clGray
    Title.Alignment = taLeftJustify
    Title.Color = clInfoBk
    Title.Font.Color = clBlack
    Title.Font.Height = -13
    Title.Frame.Color = clGray
    Title.Gradient.Balance = 40
    Title.Gradient.Direction = gdRightLeft
    Title.Gradient.EndColor = clBlack
    Title.Gradient.MidColor = 8388672
    Title.Gradient.StartColor = clGray
    Title.Shadow.HorizSize = 0
    Title.Shadow.Transparency = 70
    Title.Shadow.VertSize = 0
    Title.Text.Strings = (
      '')
    Title.Transparent = False
    Title.Visible = False
    BottomAxis.Axis.Width = 1
    BottomAxis.Grid.Color = clBlack
    BottomAxis.Grid.Style = psSolid
    BottomAxis.Grid.Visible = False
    BottomAxis.GridCentered = True
    BottomAxis.LabelsAngle = 90
    BottomAxis.LabelsFont.Height = -13
    BottomAxis.LabelsMultiLine = True
    BottomAxis.MaximumOffset = 72
    BottomAxis.MinimumOffset = 72
    BottomAxis.MinorGrid.Color = 15066597
    BottomAxis.MinorTicks.Visible = False
    BottomAxis.Ticks.Color = clBlack
    BottomAxis.TicksInner.Visible = False
    DepthAxis.Axis.Width = 1
    DepthAxis.Grid.Color = clBlack
    DepthAxis.Grid.Style = psSolid
    DepthAxis.LabelsFont.Height = -13
    DepthAxis.MinorTicks.Visible = False
    DepthAxis.Ticks.Color = clBlack
    DepthAxis.TicksInner.Visible = False
    DepthTopAxis.Axis.Width = 1
    DepthTopAxis.Grid.Color = clBlack
    DepthTopAxis.Grid.Style = psSolid
    DepthTopAxis.LabelsFont.Height = -13
    DepthTopAxis.MinorTicks.Visible = False
    DepthTopAxis.Ticks.Color = clBlack
    DepthTopAxis.TicksInner.Visible = False
    Frame.Color = clGray
    LeftAxis.Axis.Width = 1
    LeftAxis.Grid.Color = clBlack
    LeftAxis.Grid.Style = psSolid
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.MinorTicks.Visible = False
    LeftAxis.Ticks.Color = clBlack
    LeftAxis.TicksInner.Visible = False
    RightAxis.Axis.Width = 1
    RightAxis.Grid.Color = clBlack
    RightAxis.Grid.Style = psSolid
    RightAxis.LabelsFont.Height = -13
    RightAxis.MinorTicks.Visible = False
    RightAxis.Ticks.Color = clBlack
    RightAxis.TicksInner.Visible = False
    Shadow.Color = clBlack
    TopAxis.Axis.Width = 1
    TopAxis.Grid.Color = clBlack
    TopAxis.Grid.Style = psSolid
    TopAxis.Grid.Visible = False
    TopAxis.LabelsFont.Height = -13
    TopAxis.MinorTicks.Visible = False
    TopAxis.Ticks.Color = clBlack
    TopAxis.TicksInner.Visible = False
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    ColorPaletteIndex = 1
    object brsrsSeries1: TBarSeries
      BarPen.Visible = False
      ColorEachPoint = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Font.Height = -13
      Marks.Frame.Color = clGray
      Marks.MultiLine = True
      Marks.Shadow.Color = 13421772
      Marks.Shadow.HorizSize = 2
      Marks.Shadow.VertSize = 2
      Marks.Style = smsValue
      Marks.Transparent = True
      Marks.Visible = True
      BarStyle = bsBevel
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object GridBandTool1: TGridBandTool
      Band1.Color = 15329769
      Band2.Color = clWhite
      AxisID = 2
    end
  end
  object actmmb1: TActionMainMenuBar [1]
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
  object actlst1: TActionList
    Left = 176
    Top = 60
    object actGr: TAction
      Caption = #1089#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1075#1088#1072#1092#1080#1082
      OnExecute = actGrExecute
    end
  end
  object actmgr1: TActionManager
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
