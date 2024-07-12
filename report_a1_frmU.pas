unit report_a1_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxGDIPlusClasses, ppParameter, ppDesignLayer, ppBands, ppCache, ppClass,
  ppProd, ppReport, Data.DB, MemDS, DBAccess, Uni, ppDB, ppComm, ppRelatv,
  ppDBPipe, ppCtrls, ppPrnabl, ppStrtch, ppMemo, ppVar, ppChrt, ppChrtDP,
  ppModule, raCodMod, ppBarCod;

type
  Treport_a1_frm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    RzGroupBox1: TRzGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ds1: TcxDateEdit;
    ds2: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
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
    ppHeaderBand1: TppHeaderBand;
    ppDBImage1: TppDBImage;
    ppDBText1: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape3: TppShape;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
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
    ppSystemVariable3: TppSystemVariable;
    ppLabel8: TppLabel;
    ppDBBarCode1: TppDBBarCode;
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
    ppFooterBand1: TppFooterBand;
    ppLine8: TppLine;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppParameter1: TppParameter;
    ppParameter2: TppParameter;
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report_a1_frm: Treport_a1_frm;

implementation

{$R *.dfm}

uses Main_frmU;

procedure Treport_a1_frm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Treport_a1_frm.cxButton2Click(Sender: TObject);
var
  path: string;
begin
   ppReport1.Parameters['ppParameter1'].Value := ds1.Text;
   ppReport1.Parameters['ppParameter2'].Value := ds2.Text;
   //ppReport11.ModalPreview:=true;
   //ppReport11.Print;

  with qry_report11 do
  begin
    Close;
    sql.Text := '  SELECT                               '+
'tborder_service.order_id,                               '+
'tborder_service.firstname,                              '+
'tborder_service.lastname,                               '+
'tborder_service.date_service,                           '+
'tborder_service.order_name,                             '+
'tborder_service.details,                                '+
'tborder_service.worn_date,                              '+
'tborder_service.dept_id,                                '+
'tborder_service.post_id,                                '+
'tborder_service.type_id,                                '+
'tborder_service.cor_id,                                 '+
'tborder_service.tborder_servicecol,                     '+
'tborder_service.tborder_service_img_ser_img_id,         '+
'tborder_service.tbstatus_status_id,                     '+
'tborder_service.tbmember_mem_id,                        '+
'tborder_service.engineering_name,                       '+
'tborder_service.id_tbapproved,                          '+
'tborder_service.engineer_order_confirm_id,              '+
'tborder_service.tbconfirm_order_id1,                    '+
'tborder_service.tbconfirm_order_id2,                    '+
'tborder_service.tbconfirm_order_id3,                    '+
'tborder_service.tbconfirm_order_id4,                    '+
'tborder_service.success_service_id,                     '+
'tborder_service.order_for_items_id,                     '+
'tborder_service.trainsaction_trype_id,                  '+
'tborder_service.tbstatus_trype_id,                      '+
'tbmember.mem_id,                                        '+
'tbmember.username,                                      '+
'tbmember.`password`,                                    '+
'tbmember.firstname,                                     '+
'tbmember.lastname,                                      '+
'tbmember.email,                                         '+
'tbmember.dept_id,                                       '+
'tbmember.post_id,                                       '+
'tbmember.ac_id,                                         '+
'tbmember.img,                                           '+
'tbtypeservice.type_id,                                  '+
'tbtypeservice.type_name,                                '+
'tbdepartment.dept_id,                                   '+
'tbdepartment.dept_name,                                 '+
'tbsuccess.success_id,                                   '+
'tbsuccess.success_name,                                 '+
'tbstatus_trype_name.id,                                 '+
'tbstatus_trype_name.Lname                               '+
'FROM                                                    '+
'tborder_service                                         '+
'LEFT JOIN tbmember ON tbmember.mem_id = tborder_service.tbmember_mem_id    '+
'LEFT JOIN tbtypeservice ON tborder_service.type_id = tbtypeservice.type_id  '+
'LEFT JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id    '+
'LEFT JOIN tbsuccess ON tbsuccess.success_id =         '+
'tborder_service.success_service_id  '+
'LEFT JOIN tbstatus_trype_name ON tbstatus_trype_name.id =   '+
'tborder_service.tbstatus_trype_id   '+
'where  tborder_service.tbmember_mem_id='''+Main_frm.txt_mem_id.text+'''   '+
' and   tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',
   ds1.Date)+'''and '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''   ';

    open;
  end;


   ppReport1.ModalPreview:=true;
   ppReport1.Print;
   path := ExtractFilePath(Application.ExeName);
   ppReport1.Template.FileName := path + '\report\report1.rtm';
   ppReport1.Template.LoadFromFile;



end;

procedure Treport_a1_frm.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  Resize := False;
end;

procedure Treport_a1_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   report_a1_frm := nil;
end;

procedure Treport_a1_frm.FormShow(Sender: TObject);
begin
//  qry_companey.Active := True;
//  qry_report11.Active := True;

  ds1.Date := Now;
  ds2.Date := Now;
    qry_companey.Active := True;
end;

end.
