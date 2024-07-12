object lote2_frm: Tlote2_frm
  Left = 0
  Top = 0
  Caption = 'lote2_frm'
  ClientHeight = 287
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 268
    Width = 505
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitTop = 190
    ExplicitWidth = 402
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 0
    Width = 505
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 1
    VisualStyle = vsGradient
    ExplicitWidth = 402
  end
  object RzGroupBar1: TRzGroupBar
    Left = 0
    Top = 29
    Width = 137
    Height = 239
    GradientColorStart = clBtnFace
    GradientColorStop = clBtnShadow
    GroupBorderSize = 8
    Color = clBtnShadow
    ParentColor = False
    TabOrder = 2
    ExplicitHeight = 300
  end
  object cxGrid1: TcxGrid
    Left = 137
    Top = 29
    Width = 368
    Height = 239
    Align = alClient
    TabOrder = 3
    ExplicitLeft = 168
    ExplicitTop = 48
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object UniQuery1: TUniQuery
    Connection = MyMD.MyCon
    Left = 64
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 64
    Top = 40
  end
end
