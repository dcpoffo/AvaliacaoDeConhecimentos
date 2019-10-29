object dm: Tdm
  OldCreateOrder = False
  Left = 415
  Top = 224
  Height = 315
  Width = 411
  object qEmpresa: TIBQuery
    Database = IBBanco
    Transaction = IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from EMPRESA')
    Left = 24
    Top = 64
    object qEmpresaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'EMPRESA.CNPJ'
      Required = True
      Size = 18
    end
    object qEmpresaUF: TIBStringField
      FieldName = 'UF'
      Origin = 'EMPRESA.UF'
    end
    object qEmpresaNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'EMPRESA.NOMEFANTASIA'
      Size = 50
    end
    object qEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'EMPRESA.CODIGO'
      Required = True
    end
  end
  object IBBanco: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Bludata\Banco\CADASTRO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 8
  end
  object IBTransacao: TIBTransaction
    Active = True
    DefaultDatabase = IBBanco
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 112
    Top = 8
  end
  object dsEmpresa: TDataSource
    DataSet = qEmpresa
    Left = 112
    Top = 64
  end
  object qFornecedores: TIBQuery
    Database = IBBanco
    Transaction = IBTransacao
    AfterScroll = qFornecedoresAfterScroll
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FORNECEDOR')
    Left = 24
    Top = 120
    object qFornecedoresID: TIntegerField
      FieldName = 'ID'
      Origin = 'FORNECEDOR.ID'
      Required = True
    end
    object qFornecedoresDATA: TDateField
      FieldName = 'DATA'
      Origin = 'FORNECEDOR.DATA'
      Required = True
    end
    object qFornecedoresHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'FORNECEDOR.HORA'
    end
    object qFornecedoresTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'FORNECEDOR.TIPO'
      Required = True
      Size = 15
    end
    object qFornecedoresDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = 'FORNECEDOR.DOCUMENTO'
      Required = True
      Size = 18
    end
    object qFornecedoresNOMEEMPRESA: TIBStringField
      FieldName = 'NOMEEMPRESA'
      Origin = 'FORNECEDOR.NOMEEMPRESA'
      Required = True
      Size = 50
    end
    object qFornecedoresNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Origin = 'FORNECEDOR.NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object qFornecedoresRG: TIBStringField
      FieldName = 'RG'
      Origin = 'FORNECEDOR.RG'
      Size = 15
    end
    object qFornecedoresDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'FORNECEDOR.DATANASCIMENTO'
    end
    object qFornecedoresCODIGOEMPRESA: TIntegerField
      FieldName = 'CODIGOEMPRESA'
      Origin = 'FORNECEDOR.CODIGOEMPRESA'
      Required = True
    end
  end
  object dsFornecedores: TDataSource
    DataSet = qFornecedores
    Left = 112
    Top = 120
  end
  object qCodigo: TIBQuery
    Database = IBBanco
    Transaction = IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(id) as codigo from fornecedor')
    Left = 336
    Top = 120
  end
  object qPesquisaFornecedor: TIBQuery
    Database = IBBanco
    Transaction = IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fornecedor')
    Left = 40
    Top = 176
  end
  object dsContatos: TDataSource
    DataSet = qContatos
    Left = 264
    Top = 120
  end
  object qContatos: TIBQuery
    Database = IBBanco
    Transaction = IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CONTATO')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'ID-CONTATO'
    Left = 192
    Top = 120
  end
  object dsPesquisaFornecedor: TDataSource
    DataSet = qPesquisaFornecedor
    Left = 160
    Top = 176
  end
end
