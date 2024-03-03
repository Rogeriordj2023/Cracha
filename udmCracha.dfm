object dmCracha: TdmCracha
  Height = 298
  Width = 515
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
  object FDQuery1: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'SELECT * FROM CADCRACHA')
    Left = 128
    Top = 16
    object FDQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object FDQuery1NR_ANILHA: TStringField
      FieldName = 'NR_ANILHA'
      Origin = 'NR_ANILHA'
      Size = 30
    end
    object FDQuery1NOME_AVE: TStringField
      FieldName = 'NOME_AVE'
      Origin = 'NOME_AVE'
      Size = 80
    end
    object FDQuery1PROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Origin = 'PROPRIETARIO'
      Size = 100
    end
    object FDQuery1PAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 50
    end
    object FDQuery1MAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 50
    end
    object FDQuery1ANILHA_PAI: TStringField
      FieldName = 'ANILHA_PAI'
      Origin = 'ANILHA_PAI'
      Size = 30
    end
    object FDQuery1ANILHA_MAE: TStringField
      FieldName = 'ANILHA_MAE'
      Origin = 'ANILHA_MAE'
      Size = 30
    end
    object FDQuery1REGISTRO_CTF: TStringField
      FieldName = 'REGISTRO_CTF'
      Origin = 'REGISTRO_CTF'
      Size = 15
    end
    object FDQuery1DATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object FDQuery1SEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 10
    end
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = FDConnection1
    Left = 216
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 304
    Top = 16
  end
  object FDQuery2: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    UpdateObject = FDUpdateSQL2
    SQL.Strings = (
      'SELECT * FROM GENETICA')
    Left = 128
    Top = 99
    object FDQuery2ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
    end
    object FDQuery2GEN1: TStringField
      FieldName = 'GEN1'
      Origin = 'GEN1'
    end
    object FDQuery2GEN2: TStringField
      FieldName = 'GEN2'
      Origin = 'GEN2'
    end
    object FDQuery2GEN3: TStringField
      FieldName = 'GEN3'
      Origin = 'GEN3'
    end
    object FDQuery2GEN4: TStringField
      FieldName = 'GEN4'
      Origin = 'GEN4'
    end
    object FDQuery2GEN5: TStringField
      FieldName = 'GEN5'
      Origin = 'GEN5'
    end
    object FDQuery2GEN6: TStringField
      FieldName = 'GEN6'
      Origin = 'GEN6'
    end
    object FDQuery2GEN7: TStringField
      FieldName = 'GEN7'
      Origin = 'GEN7'
    end
    object FDQuery2GEN8: TStringField
      FieldName = 'GEN8'
      Origin = 'GEN8'
    end
    object FDQuery2GEN9: TStringField
      FieldName = 'GEN9'
      Origin = 'GEN9'
    end
    object FDQuery2GEN10: TStringField
      FieldName = 'GEN10'
      Origin = 'GEN10'
    end
    object FDQuery2GEN11: TStringField
      FieldName = 'GEN11'
      Origin = 'GEN11'
    end
    object FDQuery2GEN12: TStringField
      FieldName = 'GEN12'
      Origin = 'GEN12'
    end
    object FDQuery2ID_ANILHA_REF: TIntegerField
      FieldName = 'ID_ANILHA_REF'
      Origin = 'ID_ANILHA_REF'
      Required = True
    end
    object FDQuery2GEN13: TStringField
      FieldName = 'GEN13'
      Origin = 'GEN13'
    end
    object FDQuery2GEN14: TStringField
      FieldName = 'GEN14'
      Origin = 'GEN14'
    end
    object FDQuery2GEN15: TStringField
      FieldName = 'GEN15'
      Origin = 'GEN15'
    end
    object FDQuery2GEN16: TStringField
      FieldName = 'GEN16'
      Origin = 'GEN16'
    end
    object FDQuery2GEN17: TStringField
      FieldName = 'GEN17'
      Origin = 'GEN17'
    end
    object FDQuery2GEN18: TStringField
      FieldName = 'GEN18'
      Origin = 'GEN18'
    end
    object FDQuery2GEN19: TStringField
      FieldName = 'GEN19'
      Origin = 'GEN19'
    end
    object FDQuery2GEN20: TStringField
      FieldName = 'GEN20'
      Origin = 'GEN20'
    end
    object FDQuery2GEN21: TStringField
      FieldName = 'GEN21'
      Origin = 'GEN21'
    end
    object FDQuery2GEN22: TStringField
      FieldName = 'GEN22'
      Origin = 'GEN22'
    end
    object FDQuery2GEN23: TStringField
      FieldName = 'GEN23'
      Origin = 'GEN23'
    end
    object FDQuery2GEN24: TStringField
      FieldName = 'GEN24'
      Origin = 'GEN24'
    end
    object FDQuery2GEN25: TStringField
      FieldName = 'GEN25'
      Origin = 'GEN25'
    end
    object FDQuery2GEN26: TStringField
      FieldName = 'GEN26'
      Origin = 'GEN26'
    end
    object FDQuery2GEN27: TStringField
      FieldName = 'GEN27'
      Origin = 'GEN27'
    end
    object FDQuery2GEN28: TStringField
      FieldName = 'GEN28'
      Origin = 'GEN28'
    end
    object FDQuery2GEN29: TStringField
      FieldName = 'GEN29'
      Origin = 'GEN29'
    end
    object FDQuery2GEN30: TStringField
      FieldName = 'GEN30'
      Origin = 'GEN30'
    end
  end
  object FDUpdateSQL2: TFDUpdateSQL
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
    DataSet = FDQuery2
    Left = 304
    Top = 99
  end
  object dsCracha: TDataSource
    DataSet = FDQuery3
    Left = 304
    Top = 163
  end
  object FDQuery3: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CADCRACHA')
    Left = 128
    Top = 163
    object FDQuery3ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery3NR_ANILHA: TStringField
      FieldName = 'NR_ANILHA'
      Origin = 'NR_ANILHA'
      Size = 30
    end
    object FDQuery3NOME_AVE: TStringField
      FieldName = 'NOME_AVE'
      Origin = 'NOME_AVE'
      Size = 80
    end
  end
end
