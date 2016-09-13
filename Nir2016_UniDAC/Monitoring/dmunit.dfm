object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 679
  Top = 132
  Height = 458
  Width = 760
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.mdb'
    Left = 90
    Top = 294
  end
  object JvDBFilter1: TJvDBFilter
    Left = 58
    Top = 338
  end
  object dsBilding: TDataSource
    DataSet = tblBilding
    Left = 184
    Top = 66
  end
  object dsTrebovan: TDataSource
    DataSet = tdlTrebovan
    Left = 662
    Top = 80
  end
  object dsNorm: TDataSource
    DataSet = tblNorm
    Left = 426
    Top = 124
  end
  object dstblVypoln: TDataSource
    DataSet = tblVypoln
    Left = 352
    Top = 48
  end
  object dsNormOfBilding: TDataSource
    DataSet = tblNormOfBilding
    Left = 598
    Top = 224
  end
  object UniConnection1: TUniConnection
    ProviderName = 'Access'
    Database = 'D:\Dropbox\Share5\Work\Nir2016_UniDAC\Monitoring\db1.mdb'
    DefaultTransaction = UniTransaction1
    Connected = True
    Left = 38
    Top = 72
  end
  object tblBilding: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from Bilding')
    Active = True
    Left = 150
    Top = 40
    object tblBildingid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
    end
    object tblBildingDSDesigner: TStringField
      FieldName = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077', '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1077#1090' '#1074#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080':'
      Size = 255
    end
    object tblBildingDSDesigner2: TStringField
      FieldName = #1047#1076#1072#1085#1080#1103', '#1087#1086#1084#1077#1097#1077#1085#1080#1103' '#1087#1088#1077#1076#1085#1072#1079#1085#1072#1095#1077#1085#1099' '#1076#1083#1103':'
      Size = 255
    end
    object tblBildingDSDesigner3: TStringField
      FieldName = #1047#1076#1072#1085#1080#1103', '#1087#1086#1084#1077#1097#1077#1085#1080#1103' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1103#1102#1090' '#1089#1086#1073#1086#1081':'
      Size = 255
    end
    object tblBildingDSDesigner4: TStringField
      FieldName = #1050#1083#1072#1089#1089' '#1092#1091#1085#1082#1094#1080#1086#1085#1072#1083#1100#1085#1086#1081' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080':'
      Size = 255
    end
    object tblBildingDSDesigner5: TStringField
      FieldName = #1069#1090#1072#1078#1085#1086#1089#1090#1100':'
      Size = 255
    end
    object tblBildingDSDesigner6: TStringField
      FieldName = #1060#1091#1085#1076#1072#1084#1077#1085#1090' '#1079#1076#1072#1085#1080#1103':'
      Size = 255
    end
    object tblBildingDSDesigner7: TStringField
      FieldName = #1057#1090#1077#1085#1099' '#1085#1072#1088#1091#1078#1085#1099#1077'('#1084#1072#1090#1077#1088#1080#1072#1083'):'
      Size = 255
    end
    object tblBildingDSDesigner8: TStringField
      FieldName = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1077' '#1089#1090#1077#1085#1099' '#1080' '#1087#1077#1088#1077#1075#1086#1088#1086#1076#1082#1080' ('#1084#1072#1090#1077#1088#1080#1072#1083'):'
      Size = 255
    end
    object tblBildingDSDesigner9: TStringField
      FieldName = #1050#1088#1086#1074#1083#1103' ('#1090#1080#1087', '#1084#1072#1090#1077#1088#1080#1072#1083'):'
      Size = 255
    end
    object tblBildingDSDesigner10: TStringField
      FieldName = #1051#1077#1089#1090#1085#1080#1094#1099' ('#1084#1072#1090#1077#1088#1080#1072#1083'):'
      Size = 255
    end
    object tblBildingDSDesigner11: TStringField
      FieldName = #1042#1099#1089#1086#1090#1072' '#1079#1076#1072#1085#1080#1103':'
      Size = 255
    end
    object tblBildingDSDesigner12: TStringField
      FieldName = #1055#1083#1086#1097#1072#1076#1100' '#1079#1076#1072#1085#1080#1103', '#1087#1086#1084#1077#1097#1077#1085#1080#1081':'
      Size = 255
    end
    object tblBildingDSDesigner13: TStringField
      FieldName = #1054#1073#1098#1077#1084' '#1079#1076#1072#1085#1080#1103':'
      Size = 255
    end
    object tblBildingDSDesigner14: TStringField
      FieldName = #1054#1089#1074#1077#1097#1077#1085#1080#1077':'
      Size = 255
    end
    object tblBildingDSDesigner15: TStringField
      FieldName = #1042#1077#1085#1090#1080#1083#1103#1094#1080#1103':'
      Size = 255
    end
    object tblBildingDSDesigner16: TStringField
      FieldName = #1054#1090#1086#1087#1083#1077#1085#1080#1077':'
      Size = 255
    end
    object tblBildingDSDesigner17: TStringField
      FieldName = #1054#1073#1098#1077#1082#1090' '#1086#1093#1088#1072#1085#1103#1077#1090#1089#1103':'
      Size = 255
    end
    object tblBildingC: TStringField
      FieldName = 'C'#1090#1077#1087#1077#1085#1100' '#1086#1075#1085#1077#1089#1090#1086#1081#1082#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103':'
      Size = 255
    end
    object tblBildingDSDesigner18: TStringField
      FieldName = #1055#1088#1077#1076#1077#1083#1099' '#1086#1075#1085#1077#1089#1090#1086#1081#1082#1086#1089#1090#1080' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081':'
      Size = 255
    end
    object tblBildingDSDesigner19: TStringField
      FieldName = '- '#1085#1077#1089#1091#1097#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1099' '#1079#1076#1072#1085#1080#1103', '#1085#1077' '#1084#1077#1085#1077#1077
      Size = 255
    end
    object tblBildingDSDesigner20: TStringField
      FieldName = '- '#1085#1072#1088#1091#1078#1085#1099#1077' '#1085#1077' '#1085#1077#1089#1091#1097#1080#1077' '#1089#1090#1077#1085#1099', '#1085#1077' '#1084#1077#1085#1077#1077
      Size = 255
    end
    object tblBildingDSDesigner21: TStringField
      FieldName = '- '#1087#1077#1088#1077#1082#1088#1099#1090#1080#1103' '#1084#1077#1078#1076#1091#1101#1090#1072#1078#1085#1099#1077', '#1085#1077' '#1084#1077#1085#1077#1077
      Size = 255
    end
    object tblBildingDSDesigner22: TStringField
      FieldName = '- '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1077' '#1089#1090#1077#1085#1099' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082', '#1085#1077' '#1084#1077#1085#1077#1077
      Size = 255
    end
    object tblBildingDSDesigner23: TStringField
      FieldName = '- '#1084#1072#1088#1096#1080' '#1080' '#1087#1083#1086#1097#1072#1076#1082#1080' '#1083#1077#1089#1090#1085#1080#1094' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082', '#1085#1077' '#1084#1077#1085#1077#1077
      Size = 255
    end
    object tblBildingDSDesigner24: TStringField
      FieldName = #1050#1083#1072#1089#1089' '#1082#1086#1085#1089#1090#1088#1091#1082#1090#1080#1074#1085#1086#1081' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103':'
      Size = 255
    end
    object tblBildingDSDesigner25: TStringField
      FieldName = #1050#1083#1072#1089#1089' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081':'
      Size = 255
    end
    object tblBildingDSDesigner0: TIntegerField
      FieldName = #1043#1086#1076'0'
    end
    object tblBildingDSDesigner26: TIntegerField
      FieldName = #1075#1086#1076' '#1087#1086#1078#1072#1088#1072
    end
    object tblBildingDSDesigner27: TIntegerField
      FieldName = #1091#1097#1077#1088#1073' '#1086#1090' '#1087#1086#1078#1072#1088#1072
    end
    object tblBildingDSDesigner28: TIntegerField
      FieldName = #1087#1086#1075#1080#1073#1083#1086' '#1087#1088#1080' '#1087#1086#1078#1072#1088#1077
    end
    object tblBildingDSDesigner29: TIntegerField
      FieldName = #1087#1086#1089#1090#1088#1072#1076#1072#1083#1086' '#1087#1088#1080' '#1087#1086#1078#1072#1088#1077
    end
    object tblBildingrtf: TMemoField
      FieldName = 'rtf'
      BlobType = ftMemo
    end
    object tblBildingAdress: TStringField
      FieldName = 'Adress'
      Size = 255
    end
    object tblBildingStreet: TStringField
      FieldName = 'Street'
      Size = 255
    end
    object tblBildingBildingNo: TStringField
      FieldName = 'BildingNo'
      Size = 255
    end
    object tblBildingRegion: TStringField
      FieldName = 'Region'
      Size = 255
    end
    object tblBildingDSDesigner30: TStringField
      FieldName = #1085#1086#1084#1077#1088' '#1057#1069#1059
      Size = 50
    end
    object tblBildingDSDesigner31: TStringField
      FieldName = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'  '#1057#1069#1059
      Size = 50
    end
    object tblBildingsootvet: TBooleanField
      FieldName = 'sootvet'
    end
    object tblBildingPprT: TIntegerField
      FieldName = 'PprT'
    end
    object tblBildingZT: TIntegerField
      FieldName = 'ZT'
    end
    object tblBildingEt: TIntegerField
      FieldName = 'Et'
    end
    object tblBildingP1: TIntegerField
      FieldName = 'P1'
    end
    object tblBildingP2: TIntegerField
      FieldName = 'P2'
    end
  end
  object AccessUniProvider1: TAccessUniProvider
    Left = 37
    Top = 8
  end
  object tblVypoln: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from Vypoln where (fid_Bilding = :id) '
      'and (N like :N) and '
      
        '(  (['#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090'] = :SOOTVETSTV1)  OR  (['#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' ' +
        #1076#1072'/'#1085#1077#1090'] = :SOOTVETSTV2) )')
    MasterSource = dsBilding
    MasterFields = 'id'
    DetailFields = 'fid_Bilding'
    Active = True
    Left = 300
    Top = 20
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 30
      end
      item
        DataType = ftString
        Name = 'N'
        ParamType = ptInput
        Value = '...'
      end
      item
        DataType = ftBoolean
        Name = 'SOOTVETSTV1'
        ParamType = ptInput
        Value = True
      end
      item
        DataType = ftBoolean
        Name = 'SOOTVETSTV2'
        ParamType = ptInput
        Value = True
      end>
    object tblVypolnid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
    end
    object tblVypolnN: TStringField
      FieldName = 'N'
      Size = 255
    end
    object tblVypolnDSDesigner: TStringField
      FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
      Size = 255
    end
    object tblVypolnDSDesigner2: TBooleanField
      FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
      Required = True
    end
    object tblVypolnfid_Bilding: TIntegerField
      FieldName = 'fid_Bilding'
    end
    object tblVypolnDSDesigner1: TIntegerField
      FieldName = #1075#1086#1076'1'
    end
    object tblVypolnSOOTVETSTV: TSmallintField
      FieldName = 'SOOTVETSTV'
    end
    object tblVypolnrtf: TMemoField
      FieldName = 'rtf'
      BlobType = ftMemo
    end
    object tblVypolnNTreb: TIntegerField
      FieldName = 'NTreb'
    end
    object tblVypolnNTreb2: TIntegerField
      FieldName = 'NTreb2'
    end
    object tblVypolntest: TIntegerField
      FieldName = 'test'
    end
  end
  object tblNorm: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from norm where (N like :N)')
    MasterSource = dstblVypoln
    MasterFields = 'N'
    DetailFields = 'N'
    Active = True
    Left = 402
    Top = 82
    ParamData = <
      item
        DataType = ftString
        Name = 'N'
        ParamType = ptInput
      end>
    object tblNormid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
    end
    object tblNormN: TStringField
      FieldName = 'N'
      Size = 255
    end
    object tblNormDSDesigner: TStringField
      FieldName = #1044#1086#1082#1091#1084#1077#1085#1090
      Size = 255
    end
    object tblNormDSDesigner3: TStringField
      FieldName = #1089#1090#1072#1090#1100#1103'-'#1088#1072#1079#1076#1077#1083
      Size = 255
    end
    object tblNormDSDesigner6: TStringField
      FieldName = #1095#1072#1089#1090#1100' ('#1087#1091#1085#1082#1090')'
      Size = 255
    end
    object tblNormDSDesigner7: TStringField
      FieldName = #1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Size = 255
    end
    object tblNormDSDesigner5: TMemoField
      FieldName = #1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1086#1088#1084
      BlobType = ftMemo
    end
  end
  object tblNormOfBilding: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from normofbilding where (fid_Vypoln = :id)')
    MasterSource = dstblVypoln
    MasterFields = 'id'
    DetailFields = 'fid_Vypoln'
    Left = 570
    Top = 170
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
  end
  object UniTransaction1: TUniTransaction
    DefaultConnection = UniConnection1
    Left = 40
    Top = 120
  end
  object tblVypolnAll: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from Vypoln where (fid_Bilding = :id) ')
    MasterSource = dsBilding
    MasterFields = 'id'
    DetailFields = 'id'
    ObjectView = True
    Left = 296
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 30
      end>
    object tblVypolnAllADDSDesigner: TStringField
      DisplayWidth = 255
      FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
      Origin = '['#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080']'
      Size = 255
    end
    object tblVypolnAllADDSDesigner2: TBooleanField
      DisplayWidth = 5
      FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
      Origin = '['#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090']'
      Required = True
    end
    object tblVypolnAllfid_Bilding: TIntegerField
      DisplayWidth = 10
      FieldName = 'fid_Bilding'
      Origin = 'fid_Bilding'
    end
    object tblVypolnAllADDSDesigner1: TIntegerField
      DisplayWidth = 10
      FieldName = #1075#1086#1076'1'
      Origin = '['#1075#1086#1076'1]'
    end
    object tblVypolnAllSOOTVETSTV: TSmallintField
      DisplayWidth = 10
      FieldName = 'SOOTVETSTV'
      Origin = 'SOOTVETSTV'
    end
    object tblVypolnAllrtf: TMemoField
      DisplayWidth = 10
      FieldName = 'rtf'
      Origin = 'rtf'
      BlobType = ftMemo
    end
    object tblVypolnAllNTreb: TIntegerField
      DisplayWidth = 10
      FieldName = 'NTreb'
      Origin = 'NTreb'
    end
    object tblVypolnAllNTreb2: TIntegerField
      DisplayWidth = 10
      FieldName = 'NTreb2'
      Origin = 'NTreb2'
    end
    object tblVypolnAlltest: TIntegerField
      DisplayWidth = 10
      FieldName = 'test'
      Origin = 'test'
    end
    object strngfldVypolnAllN: TStringField
      DisplayWidth = 255
      FieldName = 'N'
      Origin = '[N]'
      Size = 255
    end
  end
  object tblVypoln_SOOTVETSTV: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from Vypoln where (fid_Bilding = :id) and (N like :N) '
      'and (['#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090'] = :SOOTVETSTV)')
    MasterSource = dsBilding
    MasterFields = 'id'
    DetailFields = 'id;N'
    Left = 408
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 30
      end
      item
        DataType = ftString
        Name = 'N'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = 'SOOTVETSTV'
        ParamType = ptInput
      end>
    object strngfldVypoln_SOOTVETSTVN: TStringField
      DisplayWidth = 255
      FieldName = 'N'
      Origin = '[N]'
      Size = 255
    end
    object strngfldVypoln_SOOTVETSTVADDSDesigner: TStringField
      DisplayWidth = 255
      FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
      Origin = '['#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080']'
      Size = 255
    end
    object blnfldVypoln_SOOTVETSTVADDSDesigner2: TBooleanField
      DisplayWidth = 5
      FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
      Origin = '['#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090']'
      Required = True
    end
    object intgrfldVypoln_SOOTVETSTVfid_Bilding: TIntegerField
      DisplayWidth = 10
      FieldName = 'fid_Bilding'
      Origin = 'fid_Bilding'
    end
    object intgrfldVypoln_SOOTVETSTVADDSDesigner1: TIntegerField
      DisplayWidth = 10
      FieldName = #1075#1086#1076'1'
      Origin = '['#1075#1086#1076'1]'
    end
    object smlntfldVypoln_SOOTVETSTVSOOTVETSTV: TSmallintField
      DisplayWidth = 10
      FieldName = 'SOOTVETSTV'
      Origin = 'SOOTVETSTV'
    end
    object mfldVypoln_SOOTVETSTVrtf: TMemoField
      DisplayWidth = 10
      FieldName = 'rtf'
      Origin = 'rtf'
      BlobType = ftMemo
    end
    object intgrfldVypoln_SOOTVETSTVNTreb: TIntegerField
      DisplayWidth = 10
      FieldName = 'NTreb'
      Origin = 'NTreb'
    end
    object intgrfldVypoln_SOOTVETSTVNTreb2: TIntegerField
      DisplayWidth = 10
      FieldName = 'NTreb2'
      Origin = 'NTreb2'
    end
    object intgrfldVypoln_SOOTVETSTVtest: TIntegerField
      DisplayWidth = 10
      FieldName = 'test'
      Origin = 'test'
    end
  end
  object tdlTrebovan: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from Trebovan')
    Active = True
    ObjectView = True
    Left = 656
    Top = 32
    object strngfldTrebovanN: TStringField
      DisplayWidth = 55
      FieldName = 'N'
      Origin = '[N]'
      Size = 55
    end
    object strngfldTrebovanADDSDesigner: TStringField
      DisplayWidth = 255
      FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
      Origin = '['#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080']'
      Size = 255
    end
    object blnfldTrebovanADDSDesigner2: TBooleanField
      DisplayWidth = 5
      FieldName = #1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090
      Origin = '['#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1076#1072'/'#1085#1077#1090']'
    end
    object intgrfldTrebovanADDSDesigner1: TIntegerField
      DisplayWidth = 10
      FieldName = #1075#1086#1076'1'
      Origin = '['#1075#1086#1076'1]'
    end
    object mfldTrebovanrtf: TMemoField
      DisplayWidth = 10
      FieldName = 'rtf'
      Origin = 'rtf'
      BlobType = ftMemo
    end
    object intgrfldTrebovanParentField: TIntegerField
      DisplayWidth = 10
      FieldName = 'ParentField'
      Origin = 'ParentField'
    end
    object intgrfldTrebovanDetailField: TIntegerField
      DisplayWidth = 10
      FieldName = 'DetailField'
      Origin = 'DetailField'
    end
    object tdlTrebovanid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 360
    Top = 336
  end
  object UniAlerter1: TUniAlerter
    Connection = UniConnection1
    Left = 440
    Top = 344
  end
end
