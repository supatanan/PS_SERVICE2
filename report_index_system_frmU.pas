unit report_index_system_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, ppParameter,
  ppDesignLayer, ppModule, raCodMod, ppBands, ppCtrls, ppVar, ppStrtch, ppMemo,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, MemDS, DBAccess, Uni, ppComm,
  ppRelatv, ppDB, ppDBPipe, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxGDIPlusClasses, Vcl.ExtCtrls, RzPanel, RzLabel, ppBarCod;

type
  Treport_index_system_frm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    ds1: TcxDateEdit;
    ds2: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1order_id: TcxGridDBColumn;
    cxGrid1DBTableView1firstname: TcxGridDBColumn;
    cxGrid1DBTableView1lastname: TcxGridDBColumn;
    cxGrid1DBTableView1date_service: TcxGridDBColumn;
    cxGrid1DBTableView1order_name: TcxGridDBColumn;
    cxGrid1DBTableView1details: TcxGridDBColumn;
    cxGrid1DBTableView1worn_date: TcxGridDBColumn;
    cxGrid1DBTableView1dept_id: TcxGridDBColumn;
    cxGrid1DBTableView1post_id: TcxGridDBColumn;
    cxGrid1DBTableView1type_id: TcxGridDBColumn;
    cxGrid1DBTableView1cor_id: TcxGridDBColumn;
    cxGrid1DBTableView1tborder_servicecol: TcxGridDBColumn;
    cxGrid1DBTableView1tborder_service_img_ser_img_id: TcxGridDBColumn;
    cxGrid1DBTableView1tbstatus_status_id: TcxGridDBColumn;
    cxGrid1DBTableView1tbmember_mem_id: TcxGridDBColumn;
    cxGrid1DBTableView1engineering_name: TcxGridDBColumn;
    cxGrid1DBTableView1id_tbapproved: TcxGridDBColumn;
    cxGrid1DBTableView1engineer_order_confirm_id: TcxGridDBColumn;
    cxGrid1DBTableView1tbconfirm_order_id1: TcxGridDBColumn;
    cxGrid1DBTableView1tbconfirm_order_id2: TcxGridDBColumn;
    cxGrid1DBTableView1tbconfirm_order_id3: TcxGridDBColumn;
    cxGrid1DBTableView1tbconfirm_order_id4: TcxGridDBColumn;
    cxGrid1DBTableView1success_service_id: TcxGridDBColumn;
    cxGrid1DBTableView1order_for_items_id: TcxGridDBColumn;
    cxGrid1DBTableView1trainsaction_trype_id: TcxGridDBColumn;
    cxGrid1DBTableView1tbstatus_trype_id: TcxGridDBColumn;
    cxGrid1DBTableView1mem_id: TcxGridDBColumn;
    cxGrid1DBTableView1username: TcxGridDBColumn;
    cxGrid1DBTableView1password: TcxGridDBColumn;
    cxGrid1DBTableView1firstname_1: TcxGridDBColumn;
    cxGrid1DBTableView1lastname_1: TcxGridDBColumn;
    cxGrid1DBTableView1email: TcxGridDBColumn;
    cxGrid1DBTableView1dept_id_1: TcxGridDBColumn;
    cxGrid1DBTableView1post_id_1: TcxGridDBColumn;
    cxGrid1DBTableView1ac_id: TcxGridDBColumn;
    cxGrid1DBTableView1img: TcxGridDBColumn;
    cxGrid1DBTableView1dept_id_2: TcxGridDBColumn;
    cxGrid1DBTableView1dept_name: TcxGridDBColumn;
    cxGrid1DBTableView1type_id_1: TcxGridDBColumn;
    cxGrid1DBTableView1type_name: TcxGridDBColumn;
    cxGrid1DBTableView1success_id: TcxGridDBColumn;
    cxGrid1DBTableView1success_name: TcxGridDBColumn;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1Lname: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ds_companey: TDataSource;
    qry_companey: TUniQuery;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline11: TppDBPipeline;
    qry_report11: TUniQuery;
    ds_report11: TDataSource;
    ppReport1: TppReport;
    qry_report11order_id: TIntegerField;
    qry_report11firstname: TWideStringField;
    qry_report11lastname: TWideStringField;
    qry_report11date_service: TDateField;
    qry_report11order_name: TWideStringField;
    qry_report11details: TWideStringField;
    qry_report11worn_date: TDateField;
    qry_report11dept_id: TIntegerField;
    qry_report11post_id: TIntegerField;
    qry_report11type_id: TIntegerField;
    qry_report11cor_id: TIntegerField;
    qry_report11tborder_servicecol: TWideStringField;
    qry_report11tborder_service_img_ser_img_id: TWideStringField;
    qry_report11tbstatus_status_id: TIntegerField;
    qry_report11tbmember_mem_id: TIntegerField;
    qry_report11engineering_name: TWideStringField;
    qry_report11id_tbapproved: TIntegerField;
    qry_report11engineer_order_confirm_id: TIntegerField;
    qry_report11tbconfirm_order_id1: TIntegerField;
    qry_report11tbconfirm_order_id2: TIntegerField;
    qry_report11tbconfirm_order_id3: TIntegerField;
    qry_report11tbconfirm_order_id4: TIntegerField;
    qry_report11success_service_id: TIntegerField;
    qry_report11order_for_items_id: TWideStringField;
    qry_report11trainsaction_trype_id: TWideStringField;
    qry_report11tbstatus_trype_id: TWideStringField;
    qry_report11auto_id: TIntegerField;
    qry_report11id_order_member: TWideStringField;
    qry_report11items_name: TWideStringField;
    qry_report11total: TIntegerField;
    qry_report11price: TFloatField;
    qry_report11unit: TWideStringField;
    qry_report11ds_date: TDateField;
    qry_report11id_items: TWideStringField;
    qry_report11cc_count: TLargeintField;
    qry_report11cc_count_1: TFloatField;
    ppHeaderBand1: TppHeaderBand;
    ppDBImage1: TppDBImage;
    ppDBText1: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppShape3: TppShape;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppLine9: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine11: TppLine;
    ppLabel16: TppLabel;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
    ppLabel7: TppLabel;
    ppLine8: TppLine;
    ppLabel4: TppLabel;
    ppLine14: TppLine;
    ppLabel5: TppLabel;
    ppLine15: TppLine;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape4: TppShape;
    ppDBCalc1: TppDBCalc;
    ppLine4: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine5: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine7: TppLine;
    ppDBText9: TppDBText;
    ppLine13: TppLine;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine16: TppLine;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLine17: TppLine;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppParameter1: TppParameter;
    ppParameter2: TppParameter;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report_index_system_frm: Treport_index_system_frm;

implementation

{$R *.dfm}

procedure Treport_index_system_frm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Treport_index_system_frm.cxButton2Click(Sender: TObject);
var
  path: string;
begin
   ppReport1.Parameters['ppParameter1'].Value := ds1.Text;
   ppReport1.Parameters['ppParameter2'].Value := ds2.Text;

with qry_report11 do
begin
      Close;
      sql.Text := ' SELECT                        '+
'tborder_service.order_id,                        '+
'tborder_service.firstname,                       '+
'tborder_service.lastname,                        '+
'tborder_service.date_service,                    '+
'tborder_service.order_name,                      '+
'tborder_service.details,                         '+
'tborder_service.worn_date,                       '+
'tborder_service.dept_id,                         '+
'tborder_service.post_id,                         '+
'tborder_service.type_id,                         '+
'tborder_service.cor_id,                          '+
'tborder_service.tborder_servicecol,              '+
'tborder_service.tborder_service_img_ser_img_id,  '+
'tborder_service.tbstatus_status_id,              '+
'tborder_service.tbmember_mem_id,                 '+
'tborder_service.engineering_name,                '+
'tborder_service.id_tbapproved,                   '+
'tborder_service.engineer_order_confirm_id,       '+
'tborder_service.tbconfirm_order_id1,             '+
'tborder_service.tbconfirm_order_id2,             '+
'tborder_service.tbconfirm_order_id3,             '+
'tborder_service.tbconfirm_order_id4,             '+
'tborder_service.success_service_id,              '+
'tborder_service.order_for_items_id,              '+
'tborder_service.trainsaction_trype_id,           '+
'tborder_service.tbstatus_trype_id,               '+
'order_discout.auto_id,                           '+
'order_discout.id_order_member,                   '+
'order_discout.items_name,                        '+
'order_discout.total,                             '+
'order_discout.unit,                              '+
'order_discout.ds_date,                           '+
'order_discout.id_items,                          '+
'COUNT(order_discout.Lot_Number) as cc_count ,    '+
'order_discout.price,                             '+
'order_discout.price * COUNT(order_discout.Lot_Number) as cc_count         '+
'FROM                                                                      '+
'tborder_service                                                           '+
'LEFT JOIN order_discout ON tborder_service.order_id = ' +
'order_discout.id_order_member '+
'where (SELECT tborder_service.order_id  from tborder_service where ' +
'tborder_service.order_id=order_discout.id_order_member ) GROUP BY   order_discout.id_items and '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''and  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+''' ';
open;
end;
  ppReport1.ModalPreview := true;
  ppReport1.Print;
  path := ExtractFilePath(Application.ExeName);
  ppReport1.Template.FileName := path + '\report\System_index_report.rtm';
  ppReport1.Template.LoadFromFile;


end;

procedure Treport_index_system_frm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
 Resize := False;
end;

procedure Treport_index_system_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
   report_index_system_frm := nil
end;

procedure Treport_index_system_frm.FormShow(Sender: TObject);
begin
  ds1.Date := Now;
  ds2.Date := Now;

end;

end.
