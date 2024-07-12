object MyMD: TMyMD
  OldCreateOrder = False
  Height = 267
  Width = 286
  object MyCon: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'myservice'
    SpecificOptions.Strings = (
      'MySQL.UseUnicode=True')
    Username = 'sa'
    Server = '192.168.1.201'
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 152
    EncryptedPassword = 'CEFFCEFFCFFFCCFFC7FF'
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 184
    Top = 88
  end
end
