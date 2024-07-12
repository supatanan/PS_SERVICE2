unit System_report_mode_fU;

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
  cxDropDownEdit, cxCalendar, dxGDIPlusClasses, Vcl.ExtCtrls, RzPanel,
  Vcl.DBCtrls, RzDBCmbo;

type
  TSystem_report_mode_f = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    RzGroupBox1: TRzGroupBox;
    Image1: TImage;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ppDBPipeline1: TppDBPipeline;
    ds_companey: TDataSource;
    qry_companey: TUniQuery;
    ppReport1: TppReport;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    qry_mod: TUniQuery;
    ds_mod: TDataSource;
    qry_select: TUniQuery;
    ds_select: TDataSource;
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
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppParameter1: TppParameter;
    ppParameter2: TppParameter;
    qry_selectorder_id: TIntegerField;
    qry_selectfirstname: TWideStringField;
    qry_selectlastname: TWideStringField;
    qry_selectdate_service: TDateField;
    qry_selectorder_name: TWideStringField;
    qry_selectdetails: TWideStringField;
    qry_selectworn_date: TDateField;
    qry_selectdept_id: TIntegerField;
    qry_selectpost_id: TIntegerField;
    qry_selecttype_id: TIntegerField;
    qry_selectcor_id: TIntegerField;
    qry_selecttborder_servicecol: TWideStringField;
    qry_selecttborder_service_img_ser_img_id: TWideStringField;
    qry_selecttbstatus_status_id: TIntegerField;
    qry_selecttbmember_mem_id: TIntegerField;
    qry_selectengineering_name: TWideStringField;
    qry_selectid_tbapproved: TIntegerField;
    qry_selectengineer_order_confirm_id: TIntegerField;
    qry_selecttbconfirm_order_id1: TIntegerField;
    qry_selecttbconfirm_order_id2: TIntegerField;
    qry_selecttbconfirm_order_id3: TIntegerField;
    qry_selecttbconfirm_order_id4: TIntegerField;
    qry_selectsuccess_service_id: TIntegerField;
    qry_selectorder_for_items_id: TWideStringField;
    qry_selecttrainsaction_trype_id: TWideStringField;
    qry_selecttbstatus_trype_id: TWideStringField;
    qry_selectmem_id: TIntegerField;
    qry_selectusername: TWideStringField;
    qry_selectpassword: TWideStringField;
    qry_selectfirstname_1: TWideStringField;
    qry_selectlastname_1: TWideStringField;
    qry_selectemail: TWideStringField;
    qry_selectdept_id_1: TIntegerField;
    qry_selectpost_id_1: TIntegerField;
    qry_selectac_id: TIntegerField;
    qry_selectimg: TWideStringField;
    qry_selecttype_id_1: TIntegerField;
    qry_selecttype_name: TWideStringField;
    qry_selectdept_id_2: TIntegerField;
    qry_selectdept_name: TWideStringField;
    qry_selectsuccess_id: TWideStringField;
    qry_selectsuccess_name: TWideStringField;
    qry_selectid: TWideStringField;
    qry_selectLname: TWideStringField;
    qry_companeyid: TIntegerField;
    qry_companeycompaney_id: TWideStringField;
    qry_companeycomp_name: TWideStringField;
    qry_companeyaddress: TWideMemoField;
    qry_companeyphone: TWideStringField;
    qry_companeyfax: TWideStringField;
    qry_modtype_id: TIntegerField;
    qry_modtype_name: TWideStringField;
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  System_report_mode_f: TSystem_report_mode_f;

implementation

{$R *.dfm}

uses MyMDU, System_report_mode_date_fU;

procedure TSystem_report_mode_f.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TSystem_report_mode_f.cxButton2Click(Sender: TObject);
var  i:string;
begin


        if System_report_mode_date_f = nil then
        begin
          Application.CreateForm(TSystem_report_mode_date_f,
             System_report_mode_date_f);
             System_report_mode_date_f.Show;
            System_report_mode_date_f.Caption :=   qry_mod.FieldValues['type_id'] ;
        end;

        Close;

end;
   procedure TSystem_report_mode_f.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
   Resize := False;
end;

procedure TSystem_report_mode_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  System_report_mode_f := nil
end;



procedure TSystem_report_mode_f.FormShow(Sender: TObject);
begin
       qry_companey.Active := true;
       qry_select.Active := true;
       qry_mod.Active := true;
end;

end.




