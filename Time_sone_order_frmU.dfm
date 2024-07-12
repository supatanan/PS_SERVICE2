object Time_sone_order_frm: TTime_sone_order_frm
  Left = 0
  Top = 0
  Caption = 'Time_sone_order_frm'
  ClientHeight = 477
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    ParentBackground = False
    ParentColor = False
    Style.Color = clActiveCaption
    Style.LookAndFeel.SkinName = 'GlassOceans'
    StyleDisabled.Color = clSilver
    StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
    StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
    StyleHot.LookAndFeel.SkinName = 'GlassOceans'
    TabOrder = 0
    Height = 73
    Width = 822
    object cxTextEdit1: TcxTextEdit
      Left = 63
      Top = 18
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 35
      Width = 249
    end
    object cxLabel1: TcxLabel
      Left = 21
      Top = 26
      Caption = #3588#3657#3609#3627#3634
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 73
    Align = alClient
    Caption = 'cxGroupBox2'
    Style.LookAndFeel.SkinName = 'GlassOceans'
    StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
    StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
    StyleHot.LookAndFeel.SkinName = 'GlassOceans'
    TabOrder = 1
    Height = 404
    Width = 822
  end
  object cxSchedulerHolidays1: TcxSchedulerHolidays
    Locations = <>
    Left = 400
    Top = 137
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 13173176
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 272
    Top = 257
  end
  object UniQuery1: TUniQuery
    Connection = MyMD.MyCon
    SQL.Strings = (
      'select * from tborder_service')
    Left = 344
    Top = 273
  end
end
