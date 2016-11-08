object ImportXLSUnitForm: TImportXLSUnitForm
  Left = -1528
  Top = 59
  Width = 1280
  Height = 1024
  Caption = 'ImportXLSUnitForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 8
    Top = 36
    Width = 803
    Height = 601
    ColCount = 2
    DefaultRowHeight = 17
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving, goEditing]
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 880
    Top = 210
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object btn1: TButton
    Left = 850
    Top = 10
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 2
    OnClick = btn1Click
  end
  object UniConnection1: TUniConnection
    ProviderName = 'Access'
    Database = 'D:\Dropbox\Share5\Work\Monitoring_2017\db1.mdb'
    DefaultTransaction = UniTransaction1
    Username = 'admin'
    Connected = True
    Left = 898
    Top = 52
  end
  object AccessUniProvider1: TAccessUniProvider
    Left = 1087
    Top = 148
  end
  object UniTransaction1: TUniTransaction
    DefaultConnection = UniConnection1
    Left = 1020
    Top = 50
  end
  object unqryAllNorm: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from norm')
    ReadOnly = True
    FilterOptions = [foCaseInsensitive]
    Left = 1124
    Top = 222
    object intgrfld1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
    end
    object strngfld1: TStringField
      FieldName = 'N'
      Size = 255
    end
    object strngfld2: TStringField
      FieldName = #1044#1086#1082#1091#1084#1077#1085#1090
      Size = 255
    end
    object strngfld3: TStringField
      FieldName = #1089#1090#1072#1090#1100#1103'-'#1088#1072#1079#1076#1077#1083
      Size = 255
    end
    object strngfld4: TStringField
      FieldName = #1095#1072#1089#1090#1100' ('#1087#1091#1085#1082#1090')'
      Size = 255
    end
    object strngfld5: TStringField
      FieldName = #1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Size = 255
    end
    object mfld1: TMemoField
      FieldName = #1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1086#1088#1084
      BlobType = ftMemo
    end
    object strngfldAllNormF: TStringField
      FieldName = 'F'
      Size = 255
    end
  end
  object dsAllNorm: TDataSource
    DataSet = unqryAllNorm
    Left = 1130
    Top = 280
  end
end
