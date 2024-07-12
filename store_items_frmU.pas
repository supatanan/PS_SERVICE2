unit store_items_frmU;

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
  dxSkinsdxNavBarPainter, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, RzPanel,
  RzDlgBtn, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxSplitter, dxNavBarCollns,
  dxNavBarBase, dxNavBar, dxGDIPlusClasses, Vcl.ImgList, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, RzLabel, dxBarBuiltInMenu, cxContainer, cxTextEdit, cxPC,
  cxMaskEdit, cxSpinEdit, cxLabel, cxGroupBox, Vcl.Menus, cxButtons, RzDBNav,
  cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView,
  cxSchedulerRecurrence, cxSchedulerTreeListBrowser,
  cxSchedulerRibbonStyleEventEditor, dxSkinscxSchedulerPainter, dxScreenTip,
  dxSkinsdxBarPainter, dxBar, RzStatus, dxSkinsForm, RzGroupBar, RzButton,
  cxImage, cxDBEdit, cxImageComboBox, cxCurrencyEdit, cxDBNavigator,
  cxGridCustomLayoutView, cxGridCardView, cxCalendar, cxDBLookupComboBox,
  cxDropDownEdit, cxDBExtLookupComboBox;

type
  Tstore_items_frm = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel1: TPanel;
    txtseacch: TcxTextEdit;
    cxLabel1: TcxLabel;
    qry_main: TUniQuery;
    ds_select_main: TDataSource;
    ImageList1: TImageList;
    cxGroupBox2: TcxGroupBox;
    Panel2: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxDBImage1: TcxDBImage;
    Image1: TImage;
    Image2: TImage;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Panel3: TPanel;
    cxButton1: TcxButton;
    qry_type: TUniQuery;
    ds_select: TDataSource;
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
    ds_type: TDataSource;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    cxImageList3: TcxImageList;
    ds_st: TDataSource;
    qry_st: TUniQuery;
    qry_mainauto_id: TIntegerField;
    qry_mainid_items: TWideStringField;
    qry_mainitems_name: TWideStringField;
    qry_maindetail: TWideStringField;
    qry_mainInventory: TFloatField;
    qry_mainprice: TFloatField;
    qry_maintbunits_unit_id: TIntegerField;
    qry_mainstore_address_id: TIntegerField;
    qry_maintbtypeservice_type_id: TIntegerField;
    qry_mainsn2: TWideStringField;
    qry_mainstatus_active: TWideStringField;
    qry_mainstock_min: TFloatField;
    qry_mainitems_images_id: TWideStringField;
    qry_mainauto_id_1: TIntegerField;
    qry_mainimg_items: TBlobField;
    qry_mainsn_items: TWideStringField;
    qry_mainlote_number_id: TWideStringField;
    qry_maintype_name: TWideStringField;
    qry_maintype_id: TIntegerField;
    qry_mainstore_id: TIntegerField;
    qry_mainstore_name: TWideStringField;
    qry_mainunit_name: TWideStringField;
    qry_maincheck_stock_min: TLargeintField;
    qry_maincheck_stock_seo: TLargeintField;
    qry_mainunit_id: TIntegerField;
    qry_updat: TUniQuery;
    ds_update: TDataSource;
    qry_mainLookup_f: TStringField;
    qry_look: TUniQuery;
    ds_look: TDataSource;
    Panel6: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1auto_id: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1id_items: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1items_name: TcxGridDBColumn;
    cxGrid1DBTableView1detail: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1Inventory: TcxGridDBColumn;
    cxGrid1DBTableView1unit_name: TcxGridDBColumn;
    cxGrid1DBTableView1stock_min: TcxGridDBColumn;
    cxGrid1DBTableView1type_name: TcxGridDBColumn;
    cxGrid1DBTableView1store_name: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    img_lot_status: TcxImageList;
    Panel4: TPanel;
    cxGroupBox3: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1status: TcxGridDBColumn;
    cxGrid2DBTableView1id_items: TcxGridDBColumn;
    cxGrid2DBTableView1lote_number: TcxGridDBColumn;
    cxGrid2DBTableView1fullname: TcxGridDBColumn;
    cxGrid2DBTableView1date_time: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Image3: TImage;
    cxLabel4: TcxLabel;
    cxSplitter3: TcxSplitter;
    Panel5: TPanel;
    RzDBNavigator1: TRzDBNavigator;
    cxButton5: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton5Click(Sender: TObject);
    procedure RzDialogButtons1ClickCancel(Sender: TObject);
    procedure cxGrid1DBTableView1auto_idGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxNavBar1Item3Click(Sender: TObject);
    procedure RzGroup1Items1Click(Sender: TObject);
    procedure RzGroup1Items3Click(Sender: TObject);
    procedure cxGrid2DBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure txtseacchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzGroup1Items2Click(Sender: TObject);
    procedure RzGroup1Items0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  store_items_frm: Tstore_items_frm;

implementation

{$R *.dfm}

uses MyMDU, add_frm_itemsU, serails_number_frmU, service_img_frmU,
  Lote_frm_number_frmU, update_stock_frmU, Main_frmU;

procedure Tstore_items_frm.cxButton1Click(Sender: TObject);
begin
    close;
    Main_frm.dxRibbon1.ShowTabGroups := True;
end;

procedure Tstore_items_frm.cxButton2Click(Sender: TObject);

begin

        update_stock_frm  :=  Tupdate_stock_frm.Create(nil);
        try
          update_stock_frm.ShowModal;
        finally
           update_stock_frm.Free;
        end;

          qry_main.Refresh;
end;


procedure Tstore_items_frm.cxButton5Click(Sender: TObject);
begin
    update_stock_frm :=  Tupdate_stock_frm.Create(nil);
       try
           update_stock_frm.ShowModal;
       finally
           update_stock_frm.Free;
       end;

       qry_main.Refresh;
end;

procedure Tstore_items_frm.cxGrid1DBTableView1auto_idGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
     AText := IntToStr(ARecord.Index+1);
end;

procedure Tstore_items_frm.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxGroupBox3.Caption:= 'แสดงข้อมูลล๊อทอุปกรณ์ --> '+qry_main['items_name'];
end;

procedure Tstore_items_frm.cxGrid2DBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.Index+1);
end;

procedure Tstore_items_frm.txtseacchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var  j:string;
begin
       try
       if (Trim(txtseacch.Text)='') then
       begin
           j:= '""';
           qry_main.Close;
           qry_main.open;
           Exit;
           end
              else
                 begin
                     j:= txtseacch.Text;
                     qry_main.Close;
                     qry_main.SQL.Text:=' SELECT    '+
'store_itmes.auto_id,                            '+
'store_itmes.id_items,                           '+
'store_itmes.items_name,                         '+
'store_itmes.detail,                             '+
'store_itmes.Inventory,                          '+
'store_itmes.price,                              '+
'store_itmes.tbunits_unit_id,                    '+
'store_itmes.store_address_id,                   '+
'store_itmes.tbtypeservice_type_id,              '+
'store_itmes.sn2,                                '+
'store_itmes.status_active,                      '+
'store_itmes.stock_min,                          '+
'store_itmes.items_images_id,                    '+
'items_images.auto_id,                           '+
'items_images.img_items,                         '+
'items_images.sn_items,                          '+
'store_itmes.lote_number_id,                     '+
'tbtypeservice.type_name,                        '+
'tbtypeservice.type_id,                          '+
'store_address.store_id,                         '+
'store_address.store_name,                       '+
'tbunits.unit_name,                              '+
'store_itmes.Inventory < store_itmes.stock_min as check_stock_min ,   '+
' 0 < store_itmes.Inventory     as check_stock_seo ,                  '+
'tbunits.unit_id                                                      '+
'FROM                                                                 '+
'store_itmes                                                          '+
'LEFT JOIN items_images ON items_images.sn_items = ' +
'store_itmes.items_images_id  ' +
'LEFT JOIN tbtypeservice ON store_itmes.tbtypeservice_type_id = ' +
'tbtypeservice.type_id  '+
'LEFT JOIN store_address ON store_itmes.store_address_id = ' +
'store_address.store_id  '+
'LEFT JOIN tbunits ON store_itmes.tbunits_unit_id = tbunits.unit_id   '+
'where (store_itmes.items_name like ''%'+ j +'%'')   ';
                     qry_main.Open;
                 end;
    Except  // check Search Error
      On E: Exception   do
      begin
        ShowMessage('Invalid');
      end;


   end;
end;

procedure Tstore_items_frm.dxBarLargeButton12Click(Sender: TObject);
begin
  close;
end;

procedure Tstore_items_frm.dxNavBar1Item3Click(Sender: TObject);
begin

              add_frm_items:=  Tadd_frm_items.Create(nil);
              try
                add_frm_items.ShowModal;
              finally
               add_frm_items.Free;
              end;
end;

procedure Tstore_items_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
   store_items_frm := nil;
end;

procedure Tstore_items_frm.FormShow(Sender: TObject);
begin
qry_main.Active := true;
qry_type.Active := True;
qry_select.Active := True;
qry_st.Active := True;
qry_updat.Active := True;

end;

procedure Tstore_items_frm.RzDialogButtons1ClickCancel(Sender: TObject);
begin
    close;
end;

procedure Tstore_items_frm.RzGroup1Items0Click(Sender: TObject);
begin
      add_frm_items  := Tadd_frm_items.Create(nil);
      try
        add_frm_items.ShowModal;
      finally
        add_frm_items.Free;
      end;
end;

procedure Tstore_items_frm.RzGroup1Items1Click(Sender: TObject);
begin
   update_stock_frm :=  Tupdate_stock_frm.Create(nil);
       try
           update_stock_frm.ShowModal;
       finally
           update_stock_frm.Free;
       end;

       qry_main.Refresh;
end;

procedure Tstore_items_frm.RzGroup1Items2Click(Sender: TObject);
begin
       Close;
        Main_frm.dxRibbon1.ShowTabGroups := True;
end;

procedure Tstore_items_frm.RzGroup1Items3Click(Sender: TObject);

begin
  Close;
  Main_frm.dxRibbon1.ShowTabGroups := True;
end;

end.
