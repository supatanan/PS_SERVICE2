unit Ok_order_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, RzPanel,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, RzLabel, cxImageComboBox,
  MemDS, DBAccess, Uni, Vcl.ImgList, cxCheckBox, ppDB, ppDBPipe, ppEndUsr,
  ppComm, ppRelatv, ppProd, ppClass, ppReport;

type
  TOk_order_frm = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel1: TPanel;
    RzLabel10: TRzLabel;
    ds1: TcxDateEdit;
    RzLabel11: TRzLabel;
    ds2: TcxDateEdit;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    status4: TcxGridDBColumn;
    cxGrid1DBTableView1checkbok: TcxGridDBColumn;
    cxGrid1DBTableView1order_id: TcxGridDBColumn;
    cxGrid1DBTableView1firstname: TcxGridDBColumn;
    cxGrid1DBTableView1date_service: TcxGridDBColumn;
    cxGrid1DBTableView1order_name: TcxGridDBColumn;
    cxGrid1DBTableView1details: TcxGridDBColumn;
    cxGrid1DBTableView1worn_date: TcxGridDBColumn;
    cxGrid1DBTableView1engineering_name: TcxGridDBColumn;
    cxGrid1DBTableView1fullname: TcxGridDBColumn;
    cxGrid1DBTableView1dept_name: TcxGridDBColumn;
    cxGrid1DBTableView1post_name: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
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
    img_icon: TcxImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Panel5: TPanel;
    cxButton2: TcxButton;
    chk: TcxCheckBox;
    cxButton4: TcxButton;
    qry_companey: TUniQuery;
    ds_companey: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1Column2GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ok_order_frm: TOk_order_frm;

implementation

{$R *.dfm}

uses cxGridExportLink,ShellApi;

procedure TOk_order_frm.cxButton1Click(Sender: TObject);
begin
  with qry_select do
          begin
            Close;
            sql.Text :=' SELECT                   '+
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
'tborder_service.tbstatus_status_id,              '+
'tborder_service.tbmember_mem_id,                 '+
'tborder_service.id_tbapproved,                   '+
'tborder_service.engineering_name,                '+
'tborder_service.engineer_order_confirm_id,       '+
'tborder_service.tbconfirm_order_id1,             '+
'tborder_service.tbconfirm_order_id2,             '+
'tborder_service.tbconfirm_order_id3,             '+
'tborder_service.tbconfirm_order_id4,             '+
'tborder_service.success_service_id,              '+
'CONCAT(firstname,''  '',lastname) AS fullname,   '+
'tbdepartment.dept_id,                            '+
'tbdepartment.dept_name,                          '+
'tbposition.post_id,                              '+
'tbposition.post_name                             '+
'FROM                                             '+
'tborder_service                                  '+
'INNER JOIN tbposition ON tbposition.post_id = tborder_service.post_id      '+
'INNER JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id  '+
'WHERE     tborder_service.tbconfirm_order_id4=1                            '+
' and tborder_service.engineer_order_confirm_id=1   and                     '+
'tborder_service.date_service  BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''   '+
'   AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  ';

            open;

          end;
end;

procedure TOk_order_frm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TOk_order_frm.cxButton4Click(Sender: TObject);
begin
       ExportGridToExcel('Export.xls',cxGrid1, True, True, True);
  ShellExecute(Handle, 'open', PChar('Export.xls'), nil, nil, SW_NORMAL);
end;

procedure TOk_order_frm.chkClick(Sender: TObject);
begin
        if chk.Checked = true then
      begin
            with qry_select do
          begin
            Close;
            sql.Text :=' SELECT                   '+
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
'tborder_service.tbstatus_status_id,              '+
'tborder_service.tbmember_mem_id,                 '+
'tborder_service.id_tbapproved,                   '+
'tborder_service.engineering_name,                '+
'tborder_service.engineer_order_confirm_id,       '+
'tborder_service.tbconfirm_order_id1,             '+
'tborder_service.tbconfirm_order_id2,             '+
'tborder_service.tbconfirm_order_id3,             '+
'tborder_service.tbconfirm_order_id4,             '+
'tborder_service.success_service_id,              '+
'CONCAT(firstname,''  '',lastname) AS fullname,   '+
'tbdepartment.dept_id,                            '+
'tbdepartment.dept_name,                          '+
'tbposition.post_id,                              '+
'tbposition.post_name                             '+
'FROM                                             '+
'tborder_service                                  '+
'INNER JOIN tbposition ON tbposition.post_id = tborder_service.post_id      '+
'INNER JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id  '+
'WHERE     tborder_service.tbconfirm_order_id4=1                            '+
' and tborder_service.engineer_order_confirm_id=1     ';

            open;

          end;
      end else
          qry_select.Active := False;
end;

procedure TOk_order_frm.cxGrid1DBTableView1Column2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
   AText := IntToStr(ARecord.Index+1);
end;

procedure TOk_order_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
   Ok_order_frm := nil;

end;

procedure TOk_order_frm.FormShow(Sender: TObject);
begin
  ds1.Date := Now;
  ds2.Date := Now;


end;

end.
