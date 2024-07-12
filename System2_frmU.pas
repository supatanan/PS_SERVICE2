unit System2_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, RzGroupBar, Vcl.Menus, Vcl.StdCtrls, cxButtons, MemDS, DBAccess, Uni,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxImageComboBox, Vcl.ImgList;

type
  TSystem2_frm = class(TForm)
    Panel1: TPanel;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel5: TPanel;
    cxButton2: TcxButton;
    qry_select: TUniQuery;
    ds_select: TDataSource;
    cxGrid1DBTableView1order_id: TcxGridDBColumn;
    cxGrid1DBTableView1firstname: TcxGridDBColumn;
    cxGrid1DBTableView1lastname: TcxGridDBColumn;
    cxGrid1DBTableView1date_service: TcxGridDBColumn;
    cxGrid1DBTableView1order_name: TcxGridDBColumn;
    cxGrid1DBTableView1details: TcxGridDBColumn;
    cxGrid1DBTableView1worn_date: TcxGridDBColumn;
    cxGrid1DBTableView1engineering_name: TcxGridDBColumn;
    cxGrid1DBTableView1engineer_order_confirm_id: TcxGridDBColumn;
    cxGrid1DBTableView1username: TcxGridDBColumn;
    cxGrid1DBTableView1password: TcxGridDBColumn;
    cxGrid1DBTableView1email: TcxGridDBColumn;
    cxGrid1DBTableView1type_name: TcxGridDBColumn;
    cxGrid1DBTableView1dept_name: TcxGridDBColumn;
    cxGrid1DBTableView1success_name: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Label3: TLabel;
    ds1: TcxDateEdit;
    Label2: TLabel;
    ds2: TcxDateEdit;
    cxButton1: TcxButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    img_icon_order: TImageList;
    ss1: TcxGridDBColumn;
    ss2: TcxGridDBColumn;
    ss3: TcxGridDBColumn;
    ss4: TcxGridDBColumn;
    cxImageList5: TcxImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1Column2GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure RzGroup1Items0Click(Sender: TObject);
    procedure RzGroup1Items1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  System2_frm: TSystem2_frm;

implementation

{$R *.dfm}

uses MyMDU,cxGridExportLink,ShellApi;

procedure TSystem2_frm.cxButton1Click(Sender: TObject);
begin
with qry_select do
    begin
    Close;
    sql.Text :='SELECT                                              '+
'tborder_service.order_id,                                          '+
'tborder_service.firstname,                                         '+
'tborder_service.lastname,                                          '+
'tborder_service.date_service,                                      '+
'tborder_service.order_name,                                        '+
'tborder_service.details,                                           '+
'tborder_service.worn_date,                                         '+
'tborder_service.dept_id,                                           '+
'tborder_service.post_id,                                           '+
'tborder_service.type_id,                                           '+
'tborder_service.cor_id,                                            '+
'tborder_service.tborder_servicecol,                                '+
'tborder_service.tborder_service_img_ser_img_id,                    '+
'tborder_service.tbstatus_status_id,                                '+
'tborder_service.tbmember_mem_id,                                   '+
'tborder_service.engineering_name,                                  '+
'tborder_service.id_tbapproved,                                     '+
'tborder_service.engineer_order_confirm_id,                         '+
'tborder_service.tbconfirm_order_id1,                               '+
'tborder_service.tbconfirm_order_id2,                               '+
'tborder_service.tbconfirm_order_id3,                               '+
'tborder_service.tbconfirm_order_id4,                               '+
'tborder_service.success_service_id,                                '+
'tborder_service.order_for_items_id,                                '+
'tborder_service.trainsaction_trype_id,                             '+
'tborder_service.tbstatus_trype_id,                                 '+
'tbmember.mem_id,                                                   '+
'tbmember.username,                                                 '+
'tbmember.`password`,                                               '+
'tbmember.firstname,                                                '+
'tbmember.lastname,                                                 '+
'tbmember.email,                                                    '+
'tbmember.dept_id,                                                  '+
'tbmember.post_id,                                                  '+
'tbmember.ac_id,                                                    '+
'tbmember.img,                                                      '+
'tbtypeservice.type_id,                                             '+
'tbtypeservice.type_name,                                           '+
'tbdepartment.dept_id,                                              '+
'tbdepartment.dept_name,                                            '+
'tbsuccess.success_id,                                              '+
'tbsuccess.success_name,                                            '+
'tbstatus_trype_name.id,                                            '+
'tbstatus_trype_name.Lname                                          '+
'FROM                                                               '+
'tborder_service                                                    '+
'LEFT JOIN tbmember ON tbmember.mem_id = tborder_service.tbmember_mem_id     '+
'LEFT JOIN tbtypeservice ON tborder_service.type_id = tbtypeservice.type_id   '+
'LEFT JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id     '+
'LEFT JOIN tbsuccess ON tbsuccess.success_id = ' +
'tborder_service.success_service_id '+
'LEFT JOIN tbstatus_trype_name ON tbstatus_trype_name.id = ' +
'tborder_service.tbstatus_trype_id '+
'where  tbsuccess.success_id =0    and   '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd', ds1.Date)+'''and  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''     ';
    open;

    end;
end;

procedure TSystem2_frm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TSystem2_frm.cxGrid1DBTableView1Column2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
     AText := IntToStr(ARecord.Index+1);
end;

procedure TSystem2_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   System2_frm := nil;
end;

procedure TSystem2_frm.FormShow(Sender: TObject);
begin
  ds1.Date := Now;
  ds2.Date := Now;

 



end;

procedure TSystem2_frm.RzGroup1Items0Click(Sender: TObject);
begin
       ExportGridToExcel('Export.xls',cxGrid1, True, True, True);
  ShellExecute(Handle, 'open', PChar('Export.xls'), nil, nil, SW_NORMAL);
end;

procedure TSystem2_frm.RzGroup1Items1Click(Sender: TObject);
begin
    Close;
end;

end.
