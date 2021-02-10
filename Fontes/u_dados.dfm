object form_dados: Tform_dados
  OldCreateOrder = False
  Height = 408
  Width = 626
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Financeiro\Dropbox\projetosLPORTO\PortoFinan\Win32\D' +
        'ebug\FE.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 40
    Top = 104
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 176
  end
  object qry_Contas: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CONTABANCARIA')
    Left = 128
    Top = 40
    object qry_ContasCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
      Origin = 'CODCONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_ContasDESCCONTA: TStringField
      FieldName = 'DESCCONTA'
      Origin = 'DESCCONTA'
      Size = 70
    end
    object qry_ContasTIPOCONTA: TStringField
      FieldName = 'TIPOCONTA'
      Origin = 'TIPOCONTA'
      Required = True
      Size = 1
    end
    object qry_ContasATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 10
    end
  end
end
