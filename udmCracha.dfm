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
    DataSet = ClientDataSet1
    Left = 400
    Top = 32
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 96
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 232
    Top = 32
  end
  object SQLQuery1: TSQLQuery
    DataSource = dsCracha
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CADCRACHA')
    SQLConnection = SQLConnection1
    Left = 328
    Top = 32
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver280.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver280.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=24.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxint.dll'
      'LibraryNameOsx=libsqlib.dylib'
      'VendorLib=GDS32.DLL'
      'VendorLibWin64=ibclient64.dll'
      'VendorLibOsx=libgds.dylib'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DisplayDriverName=InterBase Server'
      'SEP='
      'DriverName=Interbase'
      'Database=Bco1.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=master'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 560
    Top = 32
  end
  object SQLConnection2: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    Params.Strings = (
      'DriverName=Interbase'
      'Database=database.gdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 560
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet2
    Left = 136
    Top = 232
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 224
    Top = 232
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = ClientDataSet2
    Left = 320
    Top = 232
  end
  object SQLQuery2: TSQLQuery
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CADCRACHA')
    SQLConnection = SQLConnection2
    Left = 56
    Top = 232
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Cracha2\BCO1.FDB'
    Params.Strings = (
      'user_name=sysdba')
    ServerType = 'IBServer'
    Left = 80
    Top = 336
  end
  object IBSQL1: TIBSQL
    Database = IBDatabase1
    SQL.Strings = (
      'SELECT * FROM CADCRACHA')
    Left = 168
    Top = 336
  end
  object IBDataSet1: TIBDataSet
    Database = IBDatabase1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM CADCRACHA')
    ParamCheck = True
    UniDirectional = False
    UpdateObject = IBUpdateSQL1
    Left = 256
    Top = 336
    object IBDataSet1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'CADCRACHA.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet1NR_ANILHA: TIBStringField
      FieldName = 'NR_ANILHA'
      Origin = 'CADCRACHA.NR_ANILHA'
      Size = 30
    end
    object IBDataSet1NOME_AVE: TIBStringField
      FieldName = 'NOME_AVE'
      Origin = 'CADCRACHA.NOME_AVE'
      Size = 80
    end
    object IBDataSet1PROPRIETARIO: TIBStringField
      FieldName = 'PROPRIETARIO'
      Origin = 'CADCRACHA.PROPRIETARIO'
      Size = 100
    end
    object IBDataSet1PAI: TIBStringField
      FieldName = 'PAI'
      Origin = 'CADCRACHA.PAI'
      Size = 50
    end
    object IBDataSet1MAE: TIBStringField
      FieldName = 'MAE'
      Origin = 'CADCRACHA.MAE'
      Size = 50
    end
    object IBDataSet1ANILHA_PAI: TIBStringField
      FieldName = 'ANILHA_PAI'
      Origin = 'CADCRACHA.ANILHA_PAI'
      Size = 30
    end
    object IBDataSet1ANILHA_MAE: TIBStringField
      FieldName = 'ANILHA_MAE'
      Origin = 'CADCRACHA.ANILHA_MAE'
      Size = 30
    end
    object IBDataSet1REGISTRO_CTF: TIBStringField
      FieldName = 'REGISTRO_CTF'
      Origin = 'CADCRACHA.REGISTRO_CTF'
      Size = 15
    end
    object IBDataSet1DATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'CADCRACHA.DATA_NASCIMENTO'
    end
    object IBDataSet1SEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'CADCRACHA.SEXO'
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = IBDataSet1
    Left = 344
    Top = 336
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NR_ANILHA,'
      '  NOME_AVE,'
      '  PROPRIETARIO,'
      '  PAI,'
      '  MAE,'
      '  ANILHA_PAI,'
      '  ANILHA_MAE,'
      '  REGISTRO_CTF,'
      '  DATA_NASCIMENTO,'
      '  SEXO'
      'from CADCRACHA '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update CADCRACHA'
      'set'
      '  NR_ANILHA = :NR_ANILHA,'
      '  NOME_AVE = :NOME_AVE,'
      '  PROPRIETARIO = :PROPRIETARIO,'
      '  PAI = :PAI,'
      '  MAE = :MAE,'
      '  ANILHA_PAI = :ANILHA_PAI,'
      '  ANILHA_MAE = :ANILHA_MAE,'
      '  REGISTRO_CTF = :REGISTRO_CTF,'
      '  DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '  SEXO = :SEXO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CADCRACHA'
      
        '  (NR_ANILHA, NOME_AVE, PROPRIETARIO, PAI, MAE, ANILHA_PAI, ANIL' +
        'HA_MAE, '
      '   REGISTRO_CTF, DATA_NASCIMENTO, SEXO)'
      'values'
      
        '  (:NR_ANILHA, :NOME_AVE, :PROPRIETARIO, :PAI, :MAE, :ANILHA_PAI' +
        ', :ANILHA_MAE, '
      '   :REGISTRO_CTF, :DATA_NASCIMENTO, :SEXO)')
    DeleteSQL.Strings = (
      'delete from CADCRACHA'
      'where'
      '  ID = :OLD_ID')
    Left = 440
    Top = 336
  end
end
