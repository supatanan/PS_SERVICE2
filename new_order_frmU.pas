unit new_order_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinsdxBarPainter, dxBar, cxClasses, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, RzPanel, RzDlgBtn,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxBarBuiltInMenu, cxPC, cxImage, cxDBEdit,
  MemDS, DBAccess, Uni, cxCheckBox, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
  cxGridCustomLayoutView, cxGridCardView, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  cxCurrencyEdit, DBSumLst, cxTextEdit, UniProvider, MySQLUniProvider, RzDBNav,
  cxDBNavigator, cxLabel, cxCalc, Vcl.Mask, Vcl.DBCtrls, cxImageComboBox,
  Vcl.ImgList;

type
  Tnew_order_frm = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    Panel5: TPanel;
    cxButton2: TcxButton;
    qry_select: TUniQuery;
    ds_select: TDataSource;
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
    qry_selectcheck: TStringField;
    qry_type: TUniQuery;
    ds_type: TDataSource;
    ds_order_for_items: TDataSource;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    qry_order_for_items: TUniQuery;
    RzDBNavigator1: TRzDBNavigator;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1type_id: TcxGridDBColumn;
    cxGrid2DBTableView1type_name: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGroupBox7: TcxGroupBox;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2id_items: TcxGridDBColumn;
    cxGridDBTableView2items_name: TcxGridDBColumn;
    cxGridDBTableView2detail: TcxGridDBColumn;
    cxGridDBTableView2Inventory: TcxGridDBColumn;
    cxGridDBTableView2price: TcxGridDBColumn;
    cxGridDBTableView2unit_name: TcxGridDBColumn;
    cxGridDBTableView2status_active: TcxGridDBColumn;
    cxGridDBTableView2stock_min: TcxGridDBColumn;
    cxGridDBTableView2store_name: TcxGridDBColumn;
    cxGridCardView1: TcxGridCardView;
    cxGridLevel2: TcxGridLevel;
    Panel4: TPanel;
    cxButton1: TcxButton;
    cxDBImage1: TcxDBImage;
    cxButton4: TcxButton;
    ds_insert: TDataSource;
    qty_insert: TUniQuery;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    qry_selectlote_number_id: TWideStringField;
    qry_c_inven: TUniQuery;
    ds_c_inven: TDataSource;
    qry_i_string: TUniQuery;
    ds_i_string: TDataSource;
    qry_typetype_id: TIntegerField;
    qry_typetype_name: TWideStringField;
    qty_insertauto_id: TIntegerField;
    qty_insertid_order_member: TWideStringField;
    qty_insertid_items: TWideStringField;
    qty_insertitems_name: TWideStringField;
    qty_inserttotal: TIntegerField;
    qty_insertprice: TFloatField;
    qty_insertunit: TWideStringField;
    qty_insertLot_Number: TWideStringField;
    qty_insertdetail: TWideStringField;
    qty_insertds_date: TDateField;
    qry_order_for_itemsid_order_member: TWideStringField;
    qry_order_for_itemsLot_Number: TWideStringField;
    qry_order_for_itemsds_date: TDateField;
    qry_order_for_itemsid_items: TWideStringField;
    qry_order_for_itemsitems_name: TWideStringField;
    qry_order_for_itemscc_count: TLargeintField;
    qry_order_for_itemsprice: TFloatField;
    qry_order_for_itemsunit: TWideStringField;
    Panel7: TPanel;
    cxLabel1: TcxLabel;
    txt_order_member: TcxTextEdit;
    cxImageList2: TcxImageList;
    qry_selectcheck_stock_seo: TLargeintField;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    qry_update: TUniQuery;
    ds_update: TDataSource;
    dxBarLargeButton7: TdxBarLargeButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Lot_Number: TcxGridDBColumn;
    cxGridDBTableView1cc_count: TcxGridDBColumn;
    cxGridDBTableView1items_name: TcxGridDBColumn;
    cxGridDBTableView1price: TcxGridDBColumn;
    cxGridDBTableView1unit: TcxGridDBColumn;
    cxGridDBTableView1id_items: TcxGridDBColumn;
    cxGridDBTableView1ds_date: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzDialogButtons1ClickCancel(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGridDBTableView1auto_idGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure qry_free_itmesCalcFields(DataSet: TDataSet);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGridDBTableView3Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure Panel3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1auto_idGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure UniQuery2BeforeDelete(DataSet: TDataSet);
    procedure cxGridDBColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cxGridDBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  new_order_frm: Tnew_order_frm;
    auto_order_id:string;

implementation

{$R *.dfm}

uses MyMDU, mian_order_service_frmU, Main_frmU, update_stock_frmU;

procedure Tnew_order_frm.cxButton1Click(Sender: TObject);
var  str:string;
     svc:string;

begin

Str := 'UPDATE store_itmes SET  Inventory = Inventory-1 WHERE lote_number_id='''+qry_select['lote_number_id']+''' and  id_items='''+qry_select['id_items'] +'''   ';
         with  qty_insert do
          begin
             qty_insert.insert;
             qty_insert.FieldByName('id_items').Value := qry_select['id_items'];
             qty_insert.FieldByName('items_name').Value := qry_select['items_name'];
             qty_insert.FieldByName('total').Value :=1;
             qty_insert.FieldByName('unit').Value := qry_select['unit_name'];
             qty_insert.FieldByName('price').Value := qry_select['price'];
             qty_insert.FieldByName('id_order_member').Value := txt_order_member.Text;
             qty_insert.FieldByName('Lot_Number').Value := qry_select['lote_number_id'] ;
             qty_insert.FieldByName('ds_date').Value := Now;
             qty_insert.post;
          end;
      qry_order_for_items.Refresh;


        with qry_c_inven do
   begin
   Close;
   sql.Text := str;
   ExecSQL;
   end;




end;

procedure Tnew_order_frm.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure Tnew_order_frm.cxButton4Click(Sender: TObject);
begin

        with qry_update do
        begin
             sql.Clear;
             SQL.Text := 'INSERT INTO order_discout SELECT * from order_for_items ';
             ExecSQL;
        end;

         with qry_update do
        begin
             sql.Clear;
             SQL.Text := 'delete from  order_for_items';
             ExecSQL;
        end;


      Tupdate_stock_frm.Create(self).Show;
      qry_order_for_items.Refresh;

end;

procedure Tnew_order_frm.cxGrid1DBTableView1auto_idGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
AText := IntToStr(ARecord.Index+1);
end;

procedure Tnew_order_frm.cxGridDBColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.Index+1);
end;

procedure Tnew_order_frm.cxGridDBTableView1auto_idGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
    AText := IntToStr(ARecord.Index+1);
end;

procedure Tnew_order_frm.cxGridDBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.Index+1);
end;

procedure Tnew_order_frm.cxGridDBTableView3Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.Index+1);
end;

procedure Tnew_order_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
   new_order_frm := nil;
end;

procedure Tnew_order_frm.FormCreate(Sender: TObject);
begin
 txt_order_member.Text := mian_order_service_frm.cxDBTextEdit1.Text;
end;

procedure Tnew_order_frm.FormShow(Sender: TObject);
begin
   qty_insert.Active := True;
   qry_order_for_items.Active := True;
   qry_i_string.Active := True;
   // qry_c_inven.Active := True;
   qry_select.Active := True;
   qry_type.Active := True;
    qry_update.Active := True;
  

end;

procedure Tnew_order_frm.Panel3Click(Sender: TObject);
var x:real;
begin
// x:= cxGridDBTableView3.DataController.Summary.FooterSummaryValues[0];
// cxCurrencyEdit1.text := FloatToStr(x);
end;

procedure Tnew_order_frm.qry_free_itmesCalcFields(DataSet: TDataSet);
begin
//qry_free_itmesTotaldiscount.Value :=qry_free_itmestotal.Value*qry_free_itmesprice.Value;

end;

procedure Tnew_order_frm.RzDialogButtons1ClickCancel(Sender: TObject);
begin
 close;
end;

procedure Tnew_order_frm.UniQuery2BeforeDelete(DataSet: TDataSet);
begin
qry_order_for_items.Refresh;
end;

end.
