unit Lote_frm_number_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, Vcl.StdCtrls, AdvNavBar,
  dxSkinsdxNavBarPainter, dxNavBarCollns, cxSplitter, cxClasses, dxNavBarBase,
  dxNavBar, cxContainer, cxEdit, cxGroupBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, cxGridCustomLayoutView, cxGridCardView, MemDS,
  DBAccess, Uni, RzPanel, RzDBNav, cxDBNavigator, cxCalendar, Vcl.Menus,
  cxButtons, Data.Bind.Components, Data.Bind.DBScope, cxImageComboBox,
  Vcl.ImgList;

type
  TLote_frm_number_frm = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    cxGroupBox1: TcxGroupBox;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1type_id: TcxGridDBColumn;
    cxGrid2DBTableView1type_name: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2id_items: TcxGridDBColumn;
    cxGridDBTableView2items_name: TcxGridDBColumn;
    cxGridDBTableView2detail: TcxGridDBColumn;
    cxGridCardView1: TcxGridCardView;
    cxGridLevel2: TcxGridLevel;
    qry_select: TUniQuery;
    qry_selectcheck: TStringField;
    qry_selectauto_id: TIntegerField;
    qry_selectid_items: TWideStringField;
    qry_selectitems_name: TWideStringField;
    qry_selectdetail: TWideStringField;
    qry_selectInventory: TFloatField;
    qry_selectprice: TFloatField;
    qry_selecttbunits_unit_id: TIntegerField;
    qry_selectstore_address_id: TIntegerField;
    qry_selecttbtypeservice_type_id: TIntegerField;
    qry_selectsn2: TWideStringField;
    qry_selectstatus_active: TWideStringField;
    qry_selectstock_min: TFloatField;
    qry_selectitems_images_id: TWideStringField;
    qry_selectauto_id_1: TIntegerField;
    qry_selectimg_items: TBlobField;
    qry_selectsn_items: TWideStringField;
    qry_selecttype_name: TWideStringField;
    qry_selecttype_id: TIntegerField;
    qry_selectstore_id: TIntegerField;
    qry_selectstore_name: TWideStringField;
    qry_selectunit_name: TWideStringField;
    qry_selectunit_id: TIntegerField;
    ds_select: TDataSource;
    qry_type: TUniQuery;
    ds_type: TDataSource;
    Panel5: TPanel;
    cxDBNavigator1: TcxDBNavigator;
    DBTableView1: TcxGridDBTableView;
    Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    ds_lote: TDataSource;
    qry_lote: TUniQuery;
    DBTableView1id_items: TcxGridDBColumn;
    DBTableView1lote_number: TcxGridDBColumn;
    DBTableView1date_time: TcxGridDBColumn;
    DBTableView1Column1: TcxGridDBColumn;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxSplitter3: TcxSplitter;
    cxSplitter1: TcxSplitter;
    DBTableView1fullname: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    qry_st: TUniQuery;
    ds_st: TDataSource;
    ds_store_itmes: TDataSource;
    qry_store_itmes: TUniQuery;
    procedure cxGridDBColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure DBTableView1Column1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure FormShow(Sender: TObject);
    procedure qry_loteBeforePost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lote_frm_number_frm: TLote_frm_number_frm;

implementation

{$R *.dfm}

uses MyMDU;

procedure TLote_frm_number_frm.cxButton1Click(Sender: TObject);
var i:string;
begin

Close;
end;

procedure TLote_frm_number_frm.cxGridDBColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
   Atext := IntToStr(ARecord.Index+1);
end;

procedure TLote_frm_number_frm.DBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
   AText := IntToStr(ARecord.Index+1);
end;

procedure TLote_frm_number_frm.FormShow(Sender: TObject);
var Str:string;
begin
  qry_lote.Active := True;
  qry_select.Active := True;
  qry_type.Active := True;
  qry_lote.Active := True;
  qry_st.Active := True;
  qry_store_itmes.Active := True;


end;

procedure TLote_frm_number_frm.qry_loteBeforePost(DataSet: TDataSet);
var  i:string;
begin
       MessageDlg('บันทึกสำเร็จค่ะ', mtInformation, [mbOK], 0);



end;

end.
