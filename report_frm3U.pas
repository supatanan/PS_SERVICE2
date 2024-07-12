unit report_frm3U;

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
  ppBands, ppCtrls, ppVar, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, Data.DB, MemDS, DBAccess, Uni, ppDB, ppComm, ppRelatv, ppDBPipe,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxGDIPlusClasses, Vcl.ExtCtrls, RzPanel;

type
  Treport_frm3 = class(TForm)
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
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ds_companey: TDataSource;
    qry_companey: TUniQuery;
    ppDBPipeline11: TppDBPipeline;
    ppDBPipeline11ppField1: TppField;
    ppDBPipeline11ppField2: TppField;
    ppDBPipeline11ppField3: TppField;
    ppDBPipeline11ppField4: TppField;
    ppDBPipeline11ppField5: TppField;
    ppDBPipeline11ppField6: TppField;
    ppDBPipeline11ppField7: TppField;
    ppDBPipeline11ppField8: TppField;
    ppDBPipeline11ppField9: TppField;
    ppDBPipeline11ppField10: TppField;
    ppDBPipeline11ppField11: TppField;
    ppDBPipeline11ppField12: TppField;
    ppDBPipeline11ppField13: TppField;
    ppDBPipeline11ppField14: TppField;
    ppDBPipeline11ppField15: TppField;
    ppDBPipeline11ppField16: TppField;
    ppDBPipeline11ppField17: TppField;
    ppDBPipeline11ppField18: TppField;
    ppDBPipeline11ppField19: TppField;
    ppDBPipeline11ppField20: TppField;
    ppDBPipeline11ppField21: TppField;
    ppDBPipeline11ppField22: TppField;
    ppDBPipeline11ppField23: TppField;
    ppDBPipeline11ppField24: TppField;
    ppDBPipeline11ppField25: TppField;
    ppDBPipeline11ppField26: TppField;
    ppDBPipeline11ppField27: TppField;
    ppDBPipeline11ppField28: TppField;
    ppDBPipeline11ppField29: TppField;
    ppDBPipeline11ppField30: TppField;
    ppDBPipeline11ppField31: TppField;
    ppDBPipeline11ppField32: TppField;
    ppDBPipeline11ppField33: TppField;
    ppDBPipeline11ppField34: TppField;
    ppDBPipeline11ppField35: TppField;
    ppDBPipeline11ppField36: TppField;
    ppDBPipeline11ppField37: TppField;
    ppDBPipeline11ppField38: TppField;
    ppDBPipeline11ppField39: TppField;
    ppDBPipeline11ppField40: TppField;
    ppDBPipeline11ppField41: TppField;
    ppDBPipeline11ppField42: TppField;
    ppDBPipeline11ppField43: TppField;
    ppDBPipeline11ppField44: TppField;
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
    qry_report11img: TBlobField;
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
    ppLabel3: TppLabel;
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
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
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
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
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
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppParameter1: TppParameter;
    ppParameter2: TppParameter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report_frm3: Treport_frm3;

implementation

{$R *.dfm}

procedure Treport_frm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   report_frm3 := nil;
end;

end.
