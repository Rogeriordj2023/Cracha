object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Database=C:\Cracha\BCO1.FDB'
      'CharacterSet=UTF8'
      'Password=master')
    Connected = True
    Left = 32
    Top = 24
  end
  object dsCracha: TDataSource
    DataSet = qryCracha
    Left = 560
    Top = 24
  end
  object qryCracha: TFDQuery
    Connection = FDConnection1
    UpdateObject = updSQL
    SQL.Strings = (
      'SELECT * FROM CADCRACHA')
    Left = 560
    Top = 96
    object qryCrachaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
  object updSQL: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CADCRACHA'
      '(NR_ANILHA, NOME_AVE, PROPRIETARIO, PAI, '
      '  MAE, ANILHA_PAI, ANILHA_MAE, REGISTRO_CTF, '
      '  DATA_NASCIMENTO, SEXO)'
      
        'VALUES (:NEW_NR_ANILHA, :NEW_NOME_AVE, :NEW_PROPRIETARIO, :NEW_P' +
        'AI, '
      
        '  :NEW_MAE, :NEW_ANILHA_PAI, :NEW_ANILHA_MAE, :NEW_REGISTRO_CTF,' +
        ' '
      '  :NEW_DATA_NASCIMENTO, :NEW_SEXO)'
      
        'RETURNING NR_ANILHA, NOME_AVE, PROPRIETARIO, PAI, MAE, ANILHA_PA' +
        'I, ANILHA_MAE, REGISTRO_CTF, DATA_NASCIMENTO, SEXO')
    ModifySQL.Strings = (
      'UPDATE CADCRACHA'
      
        'SET NR_ANILHA = :NEW_NR_ANILHA, NOME_AVE = :NEW_NOME_AVE, PROPRI' +
        'ETARIO = :NEW_PROPRIETARIO, '
      '  PAI = :NEW_PAI, MAE = :NEW_MAE, ANILHA_PAI = :NEW_ANILHA_PAI, '
      
        '  ANILHA_MAE = :NEW_ANILHA_MAE, REGISTRO_CTF = :NEW_REGISTRO_CTF' +
        ', '
      '  DATA_NASCIMENTO = :NEW_DATA_NASCIMENTO, SEXO = :NEW_SEXO'
      'WHERE ID = :OLD_ID'
      
        'RETURNING NR_ANILHA, NOME_AVE, PROPRIETARIO, PAI, MAE, ANILHA_PA' +
        'I, ANILHA_MAE, REGISTRO_CTF, DATA_NASCIMENTO, SEXO')
    DeleteSQL.Strings = (
      'DELETE FROM CADCRACHA'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ID, NR_ANILHA, NOME_AVE, PROPRIETARIO, PAI, MAE, ANILHA_P' +
        'AI, '
      '  ANILHA_MAE, REGISTRO_CTF, DATA_NASCIMENTO, SEXO'
      'FROM CADCRACHA'
      'WHERE ID = :OLD_ID')
    Left = 560
    Top = 168
  end
end
