unit Tracking_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  cxGroupBox, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, RzLabel, MemDS, DBAccess, Uni, dxBarBuiltInMenu, cxImageComboBox,
  Vcl.ImgList, cxPC;

type
  TTracking_frm = class(TForm)
    Panel2: TPanel;
    qry_select: TUniQuery;
    qry_selectcheckbok: TStringField;
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
    qry_selecttbstatus_status_id: TIntegerField;
    qry_selecttbmember_mem_id: TIntegerField;
    qry_selectid_tbapproved: TIntegerField;
    qry_selectengineering_name: TWideStringField;
    qry_selectfullname: TWideStringField;
    qry_selectdept_id_1: TIntegerField;
    qry_selectdept_name: TWideStringField;
    qry_selectpost_id_1: TIntegerField;
    qry_selectpost_name: TWideStringField;
    qry_selectengineer_order_confirm_id: TIntegerField;
    qry_selecttbconfirm_order_id1: TIntegerField;
    qry_selecttbconfirm_order_id2: TIntegerField;
    qry_selecttbconfirm_order_id3: TIntegerField;
    qry_selecttbconfirm_order_id4: TIntegerField;
    qry_selectsuccess_service_id: TIntegerField;
    ds_select: TDataSource;
    cxPageControl2: TcxPageControl;
    cxTabSheet8: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ImageList2: TImageList;
    img_icon: TcxImageList;
    Panel1: TPanel;
    cxButton1: TcxButton;
    Panel3: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGridDBColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tracking_frm: TTracking_frm;

implementation

{$R *.dfm}

uses cxGridExportLink,ShellApi, update_stock_frmU;

procedure TTracking_frm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TTracking_frm.cxButton3Click(Sender: TObject);
begin

       ExportGridToExcel('Export.xls',cxGrid1, True, True, True);
  ShellExecute(Handle, 'open', PChar('Export.xls'), nil, nil, SW_NORMAL);
end;

procedure TTracking_frm.cxButton4Click(Sender: TObject);
begin
 

ExportGridToHTML('Export.html', cxGrid1, True, True);
  ShellExecute(Handle, 'open', PChar('Export.html'), nil, nil, SW_NORMAL)
end;

procedure TTracking_frm.cxGrid1DBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
     AText := IntToStr(ARecord.Index+1);
end;

procedure TTracking_frm.cxGridDBColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
     AText  := IntToStr(ARecord.Index+1);

end;

procedure TTracking_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     Tracking_frm := nil;
end;

procedure TTracking_frm.FormShow(Sender: TObject);
begin
  qry_select.Active := True;
end;

end.
