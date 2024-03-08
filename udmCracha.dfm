object dmCracha: TdmCracha
  Height = 392
  Width = 699
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Database=C:\Cracha\BCO1.FDB'
      'CharacterSet=UTF8'
      'Password=master')
    Connected = True
    Left = 32
    Top = 16
  end
  object qryCracha: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    Transaction = FDTransaction2
    UpdateObject = updCracha
    SQL.Strings = (
      'SELECT CA.*, GE.* FROM CADCRACHA CA'
      'left join genetica GE on GE.id_anilha_ref=CA.ID;')
    Left = 128
    Top = 16
    object qryCrachaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object qryCrachaNR_ANILHA: TStringField
      FieldName = 'NR_ANILHA'
      Origin = 'NR_ANILHA'
      Size = 30
    end
    object qryCrachaNOME_AVE: TStringField
      FieldName = 'NOME_AVE'
      Origin = 'NOME_AVE'
      Size = 80
    end
    object qryCrachaPROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Origin = 'PROPRIETARIO'
      Size = 100
    end
    object qryCrachaPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 50
    end
    object qryCrachaMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 50
    end
    object qryCrachaANILHA_PAI: TStringField
      FieldName = 'ANILHA_PAI'
      Origin = 'ANILHA_PAI'
      Size = 30
    end
    object qryCrachaANILHA_MAE: TStringField
      FieldName = 'ANILHA_MAE'
      Origin = 'ANILHA_MAE'
      Size = 30
    end
    object qryCrachaREGISTRO_CTF: TStringField
      FieldName = 'REGISTRO_CTF'
      Origin = 'REGISTRO_CTF'
      Size = 15
    end
    object qryCrachaDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object qryCrachaSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 10
    end
  end
  object updCracha: TFDUpdateSQL
    Connection = FDConnection1
    Left = 216
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = qryCracha
    Left = 304
    Top = 16
  end
  object qryGenetica: TFDQuery
    CachedUpdates = True
    MasterSource = DataSource1
    MasterFields = 'ID'
    Connection = FDConnection1
    Transaction = FDTransaction1
    UpdateObject = updGenetica
    SQL.Strings = (
      'SELECT * FROM GENETICA'
      'WHERE ID_ANILHA_REF=:ID')
    Left = 128
    Top = 99
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryGeneticaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      KeyFields = 'ID_ANILHA_REF'
      Origin = 'ID'
      ReadOnly = True
      Visible = False
    end
    object qryGeneticaGEN1: TStringField
      FieldName = 'GEN1'
      Origin = 'GEN1'
    end
    object qryGeneticaGEN2: TStringField
      FieldName = 'GEN2'
      Origin = 'GEN2'
    end
    object qryGeneticaGEN3: TStringField
      FieldName = 'GEN3'
      Origin = 'GEN3'
    end
    object qryGeneticaGEN4: TStringField
      FieldName = 'GEN4'
      Origin = 'GEN4'
    end
    object qryGeneticaGEN5: TStringField
      FieldName = 'GEN5'
      Origin = 'GEN5'
    end
    object qryGeneticaGEN6: TStringField
      FieldName = 'GEN6'
      Origin = 'GEN6'
    end
    object qryGeneticaGEN7: TStringField
      FieldName = 'GEN7'
      Origin = 'GEN7'
    end
    object qryGeneticaGEN8: TStringField
      FieldName = 'GEN8'
      Origin = 'GEN8'
    end
    object qryGeneticaGEN9: TStringField
      FieldName = 'GEN9'
      Origin = 'GEN9'
    end
    object qryGeneticaGEN10: TStringField
      FieldName = 'GEN10'
      Origin = 'GEN10'
    end
    object qryGeneticaGEN11: TStringField
      FieldName = 'GEN11'
      Origin = 'GEN11'
    end
    object qryGeneticaGEN12: TStringField
      FieldName = 'GEN12'
      Origin = 'GEN12'
    end
    object qryGeneticaID_ANILHA_REF: TIntegerField
      FieldName = 'ID_ANILHA_REF'
      Origin = 'ID_ANILHA_REF'
      Required = True
    end
    object qryGeneticaGEN13: TStringField
      FieldName = 'GEN13'
      Origin = 'GEN13'
    end
    object qryGeneticaGEN14: TStringField
      FieldName = 'GEN14'
      Origin = 'GEN14'
    end
    object qryGeneticaGEN15: TStringField
      FieldName = 'GEN15'
      Origin = 'GEN15'
    end
    object qryGeneticaGEN16: TStringField
      FieldName = 'GEN16'
      Origin = 'GEN16'
    end
    object qryGeneticaGEN17: TStringField
      FieldName = 'GEN17'
      Origin = 'GEN17'
    end
    object qryGeneticaGEN18: TStringField
      FieldName = 'GEN18'
      Origin = 'GEN18'
    end
    object qryGeneticaGEN19: TStringField
      FieldName = 'GEN19'
      Origin = 'GEN19'
    end
    object qryGeneticaGEN20: TStringField
      FieldName = 'GEN20'
      Origin = 'GEN20'
    end
    object qryGeneticaGEN21: TStringField
      FieldName = 'GEN21'
      Origin = 'GEN21'
    end
    object qryGeneticaGEN22: TStringField
      FieldName = 'GEN22'
      Origin = 'GEN22'
    end
    object qryGeneticaGEN23: TStringField
      FieldName = 'GEN23'
      Origin = 'GEN23'
    end
    object qryGeneticaGEN24: TStringField
      FieldName = 'GEN24'
      Origin = 'GEN24'
    end
    object qryGeneticaGEN25: TStringField
      FieldName = 'GEN25'
      Origin = 'GEN25'
    end
    object qryGeneticaGEN26: TStringField
      FieldName = 'GEN26'
      Origin = 'GEN26'
    end
    object qryGeneticaGEN27: TStringField
      FieldName = 'GEN27'
      Origin = 'GEN27'
    end
    object qryGeneticaGEN28: TStringField
      FieldName = 'GEN28'
      Origin = 'GEN28'
    end
    object qryGeneticaGEN29: TStringField
      FieldName = 'GEN29'
      Origin = 'GEN29'
    end
    object qryGeneticaGEN30: TStringField
      FieldName = 'GEN30'
      Origin = 'GEN30'
    end
  end
  object updGenetica: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO GENETICA'
      '(GEN1, GEN2, GEN3, GEN4, GEN5, GEN6, '
      '  GEN7, GEN8, GEN9, GEN10, GEN11, '
      '  GEN12, ID_ANILHA_REF, GEN13, GEN14, '
      '  GEN15, GEN16, GEN17, GEN18, GEN19, '
      '  GEN20, GEN21, GEN22, GEN23, GEN24, '
      '  GEN25, GEN26, GEN27, GEN28, GEN29, '
      '  GEN30)'
      
        'VALUES (:NEW_GEN1, :NEW_GEN2, :NEW_GEN3, :NEW_GEN4, :NEW_GEN5, :' +
        'NEW_GEN6, '
      '  :NEW_GEN7, :NEW_GEN8, :NEW_GEN9, :NEW_GEN10, :NEW_GEN11, '
      '  :NEW_GEN12, :NEW_ID_ANILHA_REF, :NEW_GEN13, :NEW_GEN14, '
      '  :NEW_GEN15, :NEW_GEN16, :NEW_GEN17, :NEW_GEN18, :NEW_GEN19, '
      '  :NEW_GEN20, :NEW_GEN21, :NEW_GEN22, :NEW_GEN23, :NEW_GEN24, '
      '  :NEW_GEN25, :NEW_GEN26, :NEW_GEN27, :NEW_GEN28, :NEW_GEN29, '
      '  :NEW_GEN30)'
      
        'RETURNING GEN1, GEN2, GEN3, GEN4, GEN5, GEN6, GEN7, GEN8, GEN9, ' +
        'GEN10, GEN11, GEN12, ID_ANILHA_REF, GEN13, GEN14, GEN15, GEN16, ' +
        'GEN17, GEN18, GEN19, GEN20, GEN21, GEN22, GEN23, GEN24, GEN25, G' +
        'EN26, GEN27, GEN28, GEN29, GEN30')
    ModifySQL.Strings = (
      'UPDATE GENETICA'
      
        'SET GEN1 = :NEW_GEN1, GEN2 = :NEW_GEN2, GEN3 = :NEW_GEN3, GEN4 =' +
        ' :NEW_GEN4, '
      
        '  GEN5 = :NEW_GEN5, GEN6 = :NEW_GEN6, GEN7 = :NEW_GEN7, GEN8 = :' +
        'NEW_GEN8, '
      '  GEN9 = :NEW_GEN9, GEN10 = :NEW_GEN10, GEN11 = :NEW_GEN11, '
      '  GEN12 = :NEW_GEN12, ID_ANILHA_REF = :NEW_ID_ANILHA_REF, '
      '  GEN13 = :NEW_GEN13, GEN14 = :NEW_GEN14, GEN15 = :NEW_GEN15, '
      '  GEN16 = :NEW_GEN16, GEN17 = :NEW_GEN17, GEN18 = :NEW_GEN18, '
      '  GEN19 = :NEW_GEN19, GEN20 = :NEW_GEN20, GEN21 = :NEW_GEN21, '
      '  GEN22 = :NEW_GEN22, GEN23 = :NEW_GEN23, GEN24 = :NEW_GEN24, '
      '  GEN25 = :NEW_GEN25, GEN26 = :NEW_GEN26, GEN27 = :NEW_GEN27, '
      '  GEN28 = :NEW_GEN28, GEN29 = :NEW_GEN29, GEN30 = :NEW_GEN30'
      'WHERE ID = :OLD_ID'
      
        'RETURNING GEN1, GEN2, GEN3, GEN4, GEN5, GEN6, GEN7, GEN8, GEN9, ' +
        'GEN10, GEN11, GEN12, ID_ANILHA_REF, GEN13, GEN14, GEN15, GEN16, ' +
        'GEN17, GEN18, GEN19, GEN20, GEN21, GEN22, GEN23, GEN24, GEN25, G' +
        'EN26, GEN27, GEN28, GEN29, GEN30')
    DeleteSQL.Strings = (
      'DELETE FROM GENETICA'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ID, GEN1, GEN2, GEN3, GEN4, GEN5, GEN6, GEN7, GEN8, GEN9,' +
        ' GEN10, '
      '  GEN11, GEN12, ID_ANILHA_REF, GEN13, GEN14, GEN15, GEN16, '
      '  GEN17, GEN18, GEN19, GEN20, GEN21, GEN22, GEN23, GEN24, '
      '  GEN25, GEN26, GEN27, GEN28, GEN29, GEN30'
      'FROM GENETICA'
      'WHERE ID = :OLD_ID')
    Left = 216
    Top = 99
  end
  object dsGenetica: TDataSource
    DataSet = qryGenetica
    Left = 304
    Top = 99
  end
  object dsConsultaCracha: TDataSource
    DataSet = qryConsultaCracha
    Left = 304
    Top = 163
  end
  object qryConsultaCracha: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CADCRACHA')
    Left = 128
    Top = 163
    object qryConsultaCrachaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConsultaCrachaNR_ANILHA: TStringField
      FieldName = 'NR_ANILHA'
      Origin = 'NR_ANILHA'
      Size = 30
    end
    object qryConsultaCrachaNOME_AVE: TStringField
      FieldName = 'NOME_AVE'
      Origin = 'NOME_AVE'
      Size = 80
    end
    object qryConsultaCrachaPROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Origin = 'PROPRIETARIO'
      Size = 100
    end
    object qryConsultaCrachaPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 50
    end
    object qryConsultaCrachaMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 50
    end
    object qryConsultaCrachaANILHA_PAI: TStringField
      FieldName = 'ANILHA_PAI'
      Origin = 'ANILHA_PAI'
      Size = 30
    end
    object qryConsultaCrachaANILHA_MAE: TStringField
      FieldName = 'ANILHA_MAE'
      Origin = 'ANILHA_MAE'
      Size = 30
    end
    object qryConsultaCrachaREGISTRO_CTF: TStringField
      FieldName = 'REGISTRO_CTF'
      Origin = 'REGISTRO_CTF'
      Size = 15
    end
    object qryConsultaCrachaDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object qryConsultaCrachaSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 10
    end
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 432
    Top = 104
  end
  object qryValida: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM GENETICA '
      'WHERE ID_ANILHA_REF=:ID_ANILHA_REF')
    Left = 128
    Top = 232
    ParamData = <
      item
        Name = 'ID_ANILHA_REF'
        DataType = ftString
        ParamType = ptInput
      end>
    object qryValidaID_ANILHA_REF: TIntegerField
      FieldName = 'ID_ANILHA_REF'
      Origin = 'ID_ANILHA_REF'
      Required = True
    end
  end
  object FDTransaction2: TFDTransaction
    Connection = FDConnection1
    Left = 432
    Top = 16
  end
end
