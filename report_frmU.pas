unit report_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzSplit,
  RzGroupBar, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.ImgList, cxPC,
  cxClasses, dxGaugeCustomScale, dxGaugeQuantitativeScale, dxGaugeCircularScale,
  dxGaugeControl, cxSplitter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxGDIPlusClasses,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, cxLabel, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGridChartView, cxGridDBChartView, MemDS,
  DBAccess, Uni, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppDesignLayer, ppParameter, ppBands, ppCache;

type
  Treport_frm = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    cxSplitter1: TcxSplitter;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1: TcxGrid;
    dxGaugeControl3: TdxGaugeControl;
    dxGaugeCircularScale2: TdxGaugeCircularScale;
    Panel1: TPanel;
    Label3: TLabel;
    dxGaugeControl1: TdxGaugeControl;
    dxGaugeCircularScale1: TdxGaugeCircularScale;
    dxGaugeControl2: TdxGaugeControl;
    dxGaugeCircularScale3: TdxGaugeCircularScale;
    Label1: TLabel;
    ds1: TcxDateEdit;
    ds2: TcxDateEdit;
    cxButton2: TcxButton;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series2: TcxGridDBChartSeries;
    cxGrid1DBChartView2: TcxGridDBChartView;
    cxGrid1DBChartView3: TcxGridDBChartView;
    cxGrid1DBChartView3DataGroup1: TcxGridDBChartDataGroup;
    cxGrid1DBChartView3Series1: TcxGridDBChartSeries;
    cxGrid1Level1: TcxGridLevel;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    cxGrid1DBChartView4: TcxGridDBChartView;
    cxGrid1DBChartView4Series2: TcxGridDBChartSeries;
    cxGrid1DBChartView4DataGroup1: TcxGridDBChartDataGroup;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    qry_report: TUniQuery;
    ds_report: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzGroup2Items4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report_frm: Treport_frm;

implementation

{$R *.dfm}

uses MyMDU, cxGridExportLink,ShellApi;

procedure Treport_frm.cxButton2Click(Sender: TObject);
begin
        with UniQuery1 do
        begin
             Close;
             sql.Text := 'SELECT                                  '+
'tbtypeservice.type_name,                                         '+
'Count(tborder_service.type_id) AS `จำนวนทั้งหมด`,    '+
'tborder_service.date_service                                     '+
'FROM                                                             '+
'tborder_service                                                  '+
'LEFT JOIN tbtypeservice ON tborder_service.type_id = tbtypeservice.type_id   '+
'where  tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',
   ds1.Date)+'''and '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''      '+
'GROUP BY   tborder_service.type_id ';
             open;

        end;
end;

procedure Treport_frm.cxButton3Click(Sender: TObject);
var sPath: string;
begin
  ExportGridToExcel('Export.xls',cxGrid1, True, True, True);
  ShellExecute(Handle, 'open', PChar('Export.xls'), nil, nil, SW_NORMAL);
end;

procedure Treport_frm.cxButton4Click(Sender: TObject);
begin
  ExportGridToHTML('Export.html', cxGrid1, True, True);
  ShellExecute(Handle, 'open', PChar('Export.html'), nil, nil, SW_NORMAL);
end;

procedure Treport_frm.cxButton5Click(Sender: TObject);
begin
  ExportGridToHTML('Export.xmls', cxGrid1, True, True);
  ShellExecute(Handle, 'open', PChar('Export.xmls'), nil, nil, SW_NORMAL);
end;

procedure Treport_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
  report_frm := nil;
end;

procedure Treport_frm.FormShow(Sender: TObject);
begin
    ds1.Date := Now;
    ds2.Date := Now;
end;

procedure Treport_frm.RzGroup2Items4Click(Sender: TObject);
begin
       Close;
end;

end.
