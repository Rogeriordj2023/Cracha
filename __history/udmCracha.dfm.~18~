object dmCracha: TdmCracha
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
    Left = 24
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
      Required = True
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
end
