unit System_report_mode_date_fU;

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
  dxSkinXmas2008Blue, Vcl.Menus, ppParameter, ppDesignLayer, ppModule, raCodMod,
  ppBands, ppCtrls, ppBarCod, ppVar, ppStrtch, ppMemo, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, Data.DB, MemDS, DBAccess, Uni, ppDB, ppComm,
  ppRelatv, ppDBPipe, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxGDIPlusClasses, Vcl.ExtCtrls, RzPanel, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, RzLabel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TSystem_report_mode_date_f = class(TForm)
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
    ppDBPipeline1: TppDBPipeline;
    ds_companey: TDataSource;
    qry_companey: TUniQuery;
    ppDBPipeline11: TppDBPipeline;
    ds_report11: TDataSource;
    qry_report11: TUniQuery;
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
    qry_report11mem_id: TIntegerField;
    qry_report11username: TWideStringField;
    qry_report11password: TWideStringField;
    qry_report11firstname_1: TWideStringField;
    qry_report11lastname_1: TWideStringField;
    qry_report11email: TWideStringField;
    qry_report11dept_id_1: TIntegerField;
    qry_report11post_id_1: TIntegerField;
    qry_report11ac_id: TIntegerField;
    qry_report11dept_id_2: TIntegerField;
    qry_report11dept_name: TWideStringField;
    qry_report11type_id_1: TIntegerField;
    qry_report11type_name: TWideStringField;
    qry_report11success_id: TWideStringField;
    qry_report11success_name: TWideStringField;
    qry_report11id: TWideStringField;
    qry_report11Lname: TWideStringField;
    ppReport1: TppReport;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
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
    RzLabel1: TRzLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppShape3: TppShape;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLine6: TppLine;
    ppLine9: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine11: TppLine;
    ppLabel16: TppLabel;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLine13: TppLine;
    ppLabel4: TppLabel;
    ppLine15: TppLine;
    ppLabel5: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape4: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppDBText9: TppDBText;
    ppLine12: TppLine;
    ppDBText10: TppDBText;
    ppLabel15: TppLabel;
    ppDBText11: TppDBText;
    ppLine8: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppParameter1: TppParameter;
    ppParameter2: TppParameter;
    ppSystemVariable2: TppSystemVariable;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure RzLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  System_report_mode_date_f: TSystem_report_mode_date_f;

implementation

{$R *.dfm}

uses cxGridExportLink,ShellApi;

procedure TSystem_report_mode_date_f.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TSystem_report_mode_date_f.cxButton2Click(Sender: TObject);
var
  path: string;
begin

   ppReport1.Parameters['ppParameter1'].Value := ds1.Text;
   ppReport1.Parameters['ppParameter2'].Value := ds2.Text;

    with qry_report11 do
    begin
         Close;
         sql.Text := 'SELECT                 '+
'tborder_service.order_id,                   '+
'tborder_service.firstname,                  '+
'tborder_service.lastname,                   '+
'tborder_service.date_service,               '+
'tborder_service.order_name,                 '+
'tborder_service.details,                    '+
'tborder_service.worn_date,                  '+
'tborder_service.dept_id,                    '+
'tborder_service.post_id,                    '+
'tborder_service.type_id,                    '+
'tborder_service.cor_id,                     '+
'tborder_service.tborder_servicecol,         '+
'tborder_service.tborder_service_img_ser_img_id,    '+
'tborder_service.tbstatus_status_id,                '+
'tborder_service.tbmember_mem_id,                   '+
'tborder_service.engineering_name,                  '+
'tborder_service.id_tbapproved,                     '+
'tborder_service.engineer_order_confirm_id,         '+
'tborder_service.tbconfirm_order_id1,               '+
'tborder_service.tbconfirm_order_id2,               '+
'tborder_service.tbconfirm_order_id3,               '+
'tborder_service.tbconfirm_order_id4,               '+
'tborder_service.success_service_id,                '+
'tborder_service.order_for_items_id,                '+
'tborder_service.trainsaction_trype_id,             '+
'tborder_service.tbstatus_trype_id,                 '+
'tbmember.mem_id,                                   '+
'tbmember.username,                                 '+
'tbmember.`password`,                               '+
'tbmember.firstname,                                '+
'tbmember.lastname,                                 '+
'tbmember.email,                                    '+
'tbmember.dept_id,                                  '+
'tbmember.post_id,                                  '+
'tbmember.ac_id,                                    '+
'tbmember.img,                                      '+
'tbtypeservice.type_id,                             '+
'tbtypeservice.type_name,                           '+
'tbdepartment.dept_id,                              '+
'tbdepartment.dept_name,                            '+
'tbsuccess.success_id,                              '+
'tbsuccess.success_name,                            '+
'tbstatus_trype_name.id,                            '+
'tbstatus_trype_name.Lname                          '+
'FROM                                               '+
'tborder_service                                    '+
'LEFT JOIN tbmember ON tbmember.mem_id = tborder_service.tbmember_mem_id    '+
'LEFT JOIN tbtypeservice ON tborder_service.type_id = tbtypeservice.type_id '+
'LEFT JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id   '+
'LEFT JOIN tbsuccess ON tbsuccess.success_id = ' +
'tborder_service.success_service_id  '+
'LEFT JOIN tbstatus_trype_name ON tbstatus_trype_name.id = tborder_service.tbstatus_trype_id  '+
'where tbtypeservice.type_id='''+Caption+'''   and  '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''and  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''   ';
   open;
  end;
  ppReport1.ModalPreview := true;
  ppReport1.Print;
  path := ExtractFilePath(Application.ExeName);
  ppReport1.Template.FileName := path + '\report\System_mode_report.rtm';
  ppReport1.Template.LoadFromFile;



end;

procedure TSystem_report_mode_date_f.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  Resize := False;
end;

procedure TSystem_report_mode_date_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   System_report_mode_date_f := nil
end;

procedure TSystem_report_mode_date_f.FormShow(Sender: TObject);
begin
  ds1.Date := Now;
  ds2.Date := Now;
  qry_companey.Active := True;
end;

procedure TSystem_report_mode_date_f.RzLabel1Click(Sender: TObject);
begin
      with qry_report11 do
    begin
         Close;
         sql.Text := 'SELECT                 '+
'tborder_service.order_id,                   '+
'tborder_service.firstname,                  '+
'tborder_service.lastname,                   '+
'tborder_service.date_service,               '+
'tborder_service.order_name,                 '+
'tborder_service.details,                    '+
'tborder_service.worn_date,                  '+
'tborder_service.dept_id,                    '+
'tborder_service.post_id,                    '+
'tborder_service.type_id,                    '+
'tborder_service.cor_id,                     '+
'tborder_service.tborder_servicecol,         '+
'tborder_service.tborder_service_img_ser_img_id,    '+
'tborder_service.tbstatus_status_id,                '+
'tborder_service.tbmember_mem_id,                   '+
'tborder_service.engineering_name,                  '+
'tborder_service.id_tbapproved,                     '+
'tborder_service.engineer_order_confirm_id,         '+
'tborder_service.tbconfirm_order_id1,               '+
'tborder_service.tbconfirm_order_id2,               '+
'tborder_service.tbconfirm_order_id3,               '+
'tborder_service.tbconfirm_order_id4,               '+
'tborder_service.success_service_id,                '+
'tborder_service.order_for_items_id,                '+
'tborder_service.trainsaction_trype_id,             '+
'tborder_service.tbstatus_trype_id,                 '+
'tbmember.mem_id,                                   '+
'tbmember.username,                                 '+
'tbmember.`password`,                               '+
'tbmember.firstname,                                '+
'tbmember.lastname,                                 '+
'tbmember.email,                                    '+
'tbmember.dept_id,                                  '+
'tbmember.post_id,                                  '+
'tbmember.ac_id,                                    '+
'tbmember.img,                                      '+
'tbtypeservice.type_id,                             '+
'tbtypeservice.type_name,                           '+
'tbdepartment.dept_id,                              '+
'tbdepartment.dept_name,                            '+
'tbsuccess.success_id,                              '+
'tbsuccess.success_name,                            '+
'tbstatus_trype_name.id,                            '+
'tbstatus_trype_name.Lname                          '+
'FROM                                               '+
'tborder_service                                    '+
'LEFT JOIN tbmember ON tbmember.mem_id = tborder_service.tbmember_mem_id    '+
'LEFT JOIN tbtypeservice ON tborder_service.type_id = tbtypeservice.type_id '+
'LEFT JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id   '+
'LEFT JOIN tbsuccess ON tbsuccess.success_id = ' +
'tborder_service.success_service_id  '+
'LEFT JOIN tbstatus_trype_name ON tbstatus_trype_name.id = tborder_service.tbstatus_trype_id  '+
'where tbtypeservice.type_id='''+Caption+'''   and  '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''and  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''   ';
   open;
    end;




  ExportGridToExcel('Export.xls',cxGrid1, True, True, True);
  ShellExecute(Handle, 'open', PChar('Export.xls'), nil, nil, SW_NORMAL);
end;

end.
