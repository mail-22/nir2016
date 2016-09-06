object BaseForm: TBaseForm
  Left = 165
  Top = 250
  Width = 800
  Height = 600
  Caption = 'BaseForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object jvfrmstrg1: TJvFormStorage
    AppStorage = jvpnflstrg1
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 50
  end
  object jvpnflstrg1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    AutoReload = True
    FileName = 'JvAppIniStorage.ini'
    SubStorages = <>
  end
end
