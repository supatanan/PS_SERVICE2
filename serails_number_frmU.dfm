object serails_number_frm: Tserails_number_frm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = ' '#3619#3632#3610#3640' serails-number '#3648#3619#3636#3656#3617#3605#3657#3609#3652#3604#3657#3648#3614#3637#3618#3591'  1 '#3588#3656#3634#3648#3607#3656#3634#3609#3633#3657#3609
  ClientHeight = 259
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = '.'
    Style.LookAndFeel.SkinName = 'GlassOceans'
    StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
    StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
    StyleHot.LookAndFeel.SkinName = 'GlassOceans'
    TabOrder = 0
    ExplicitWidth = 279
    Height = 259
    Width = 293
    object Panel1: TPanel
      Left = 3
      Top = 210
      Width = 287
      Height = 41
      Align = alBottom
      TabOrder = 0
      ExplicitWidth = 273
      object RzDBNavigator1: TRzDBNavigator
        Left = 16
        Top = 8
        Width = 240
        Height = 24
        DataSource = DataSource1
        BorderOuter = fsNone
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 3
      Top = 15
      Width = 287
      Height = 41
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 273
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 56
        Top = 5
        AutoSize = False
        DataBinding.DataField = 'sn_name'
        DataBinding.DataSource = DataSource1
        Style.LookAndFeel.SkinName = 'Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Blue'
        StyleFocused.LookAndFeel.SkinName = 'Blue'
        StyleHot.LookAndFeel.SkinName = 'Blue'
        TabOrder = 0
        Height = 30
        Width = 200
      end
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 56
      Width = 287
      Height = 154
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.SkinName = 'GlassOceans'
      ExplicitWidth = 273
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1sn_name: TcxGridDBColumn
          DataBinding.FieldName = 'sn_name'
          Width = 273
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object UniQuery1: TUniQuery
    Connection = MyMD.MyCon
    SQL.Strings = (
      'select * from tb_sn')
    Left = 224
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 128
    Top = 72
  end
end
