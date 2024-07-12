unit mian_order_service_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, RzLabel, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxContainer, cxEdit, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxImage, cxDBEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  AdvCircularProgress, Vcl.DBCtrls, cxProgressBar, RzEdit, cxLabel, cxTextEdit,
  cxButtons, Vcl.ComCtrls, RzDTP, Vcl.Mask, cxGroupBox, MemDS, DBAccess, Uni,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxImageComboBox, Vcl.ImgList, cxDBLabel, cxSplitter, RzDBNav, Vcl.DBActns,
  System.Actions, Vcl.ActnList, cxDBNavigator, RzDBLbl, RzBorder, cxCheckBox,
  cxCheckGroup, cxCheckComboBox, AdvMenus, dxCore, cxDateUtils, cxCalendar;

type
  Tmian_order_service_frm = class(TForm)
    ds_select: TDataSource;
    ImageList1: TImageList;
    qry_man_service: TUniQuery;
    ds_man_service: TDataSource;
    ds_tbapproved: TDataSource;
    qry_tbapproved: TUniQuery;
    r: TActionList;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    ImageList2: TImageList;
    gry_where: TUniQuery;
    ds_where: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    cxPageControl2: TcxPageControl;
    cxTabSheet8: TcxTabSheet;
    cxSplitter2: TcxSplitter;
    Panel5: TPanel;
    cxButton2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1id_tbapproved: TcxGridDBColumn;
    cxGrid4DBTableView1checkbok: TcxGridDBColumn;
    cxGrid4DBTableView1order_id: TcxGridDBColumn;
    cxGrid4DBTableView1firstname: TcxGridDBColumn;
    cxGrid4DBTableView1date_service: TcxGridDBColumn;
    cxGrid4DBTableView1order_name: TcxGridDBColumn;
    cxGrid4DBTableView1details: TcxGridDBColumn;
    cxGrid4DBTableView1worn_date: TcxGridDBColumn;
    cxGrid4DBTableView1engineering_name: TcxGridDBColumn;
    cxGrid4DBTableView1fullname: TcxGridDBColumn;
    cxGrid4DBTableView1dept_name: TcxGridDBColumn;
    cxGrid4DBTableView1post_name: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    ImageList3: TImageList;
    RzLabel9: TRzLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    status1: TcxGridDBColumn;
    qry_confirm_id: TUniQuery;
    ds_confirm_id: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    status2: TcxGridDBColumn;
    status3: TcxGridDBColumn;
    status4: TcxGridDBColumn;
    cxGrid4DBTableView1Column2: TcxGridDBColumn;
    ImageList4: TImageList;
    qry_select: TUniQuery;
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
    qry_selectengineer_order_confirm_id: TIntegerField;
    qry_selecttbconfirm_order_id1: TIntegerField;
    qry_selecttbconfirm_order_id2: TIntegerField;
    qry_selecttbconfirm_order_id3: TIntegerField;
    qry_selecttbconfirm_order_id4: TIntegerField;
    qry_selectsuccess_service_id: TIntegerField;
    qry_selectfullname: TWideStringField;
    qry_selectdept_id_1: TIntegerField;
    qry_selectdept_name: TWideStringField;
    qry_selectpost_id_1: TIntegerField;
    qry_selectpost_name: TWideStringField;
    Image6: TImage;
    Image8: TImage;
    RzLabel7: TRzLabel;
    cxTextEdit1: TcxTextEdit;
    RzPanel2: TRzPanel;
    RzLabel5: TRzLabel;
    Image7: TImage;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    Image1: TImage;
    Image2: TImage;
    RzLabel4: TRzLabel;
    Image5: TImage;
    Image10: TImage;
    Image11: TImage;
    qry_d1: TUniQuery;
    ds_d1: TDataSource;
    qry_d1count_id_tbapproved: TLargeintField;
    PopupMenu1: TPopupMenu;
    qry_d3: TUniQuery;
    ds_d3: TDataSource;
    D3: TcxGridDBColumn;
    D1: TMenuItem;
    cxImageList1_1: TcxImageList;
    AdvPopupMenu1: TAdvPopupMenu;
    ddddddddd1: TMenuItem;
    AdvMenuStyler1: TAdvMenuStyler;
    N1: TMenuItem;
    AdvPopupMenu2: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    sdf: TMenuItem;
    N2: TMenuItem;
    ORDER2: TMenuItem;
    N3: TMenuItem;
    RzGroupBox1: TRzGroupBox;
    RzLabel10: TRzLabel;
    ds1: TcxDateEdit;
    RzLabel11: TRzLabel;
    ds2: TcxDateEdit;
    cxButton1: TcxButton;
    RzGroupBox2: TRzGroupBox;
    RzLabel12: TRzLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cxButton3: TcxButton;
    RzLabel6: TRzLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Image4: TImage;
    RzDBLabel3: TRzDBLabel;
    RzLabel2: TRzLabel;
    N4: TMenuItem;
    cxGrid4DBTableView1Column3: TcxGridDBColumn;
    qry_selecttbstatus_trype_id: TWideStringField;
    img_tbstatus_trype_id: TcxImageList;
    img_status_T1: TcxImageList;
    img_success_status: TcxImageList;
    Panel4: TPanel;
    Image3: TImage;
    Label2: TLabel;
    cxGroupBox1: TcxGroupBox;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    qry_dd1: TUniQuery;
    ds_dd1: TDataSource;
    RzDBLabel1: TRzDBLabel;
    DataSource1: TDataSource;
    qry_d3count_order_confirm_id: TLargeintField;
    qry_d3order_id: TIntegerField;
    qry_d3firstname: TWideStringField;
    qry_d3lastname: TWideStringField;
    qry_d3date_service: TDateField;
    qry_d3order_name: TWideStringField;
    qry_d3details: TWideStringField;
    qry_d3worn_date: TDateField;
    qry_d3dept_id: TIntegerField;
    qry_d3post_id: TIntegerField;
    qry_d3type_id: TIntegerField;
    qry_d3cor_id: TIntegerField;
    qry_d3tborder_servicecol: TWideStringField;
    qry_d3tborder_service_img_ser_img_id: TWideStringField;
    qry_d3tbstatus_status_id: TIntegerField;
    qry_d3tbmember_mem_id: TIntegerField;
    qry_d3engineering_name: TWideStringField;
    qry_d3engineer_order_confirm_id: TIntegerField;
    qry_d3tbconfirm_order_id1: TIntegerField;
    qry_d3tbconfirm_order_id2: TIntegerField;
    qry_d3tbconfirm_order_id3: TIntegerField;
    qry_d3tbconfirm_order_id4: TIntegerField;
    qry_d3success_service_id: TIntegerField;
    qry_d3order_for_items_id: TWideStringField;
    qry_d3trainsaction_trype_id: TWideStringField;
    qry_d3tbstatus_trype_id: TWideStringField;
    qry_S1_1: TUniQuery;
    ds_S1_1: TDataSource;
    qry_S1_1count_success_service_id: TLargeintField;
    qry_S1_1order_id: TIntegerField;
    qry_S1_1firstname: TWideStringField;
    qry_S1_1lastname: TWideStringField;
    qry_S1_1date_service: TDateField;
    qry_S1_1order_name: TWideStringField;
    qry_S1_1details: TWideStringField;
    qry_S1_1worn_date: TDateField;
    qry_S1_1dept_id: TIntegerField;
    qry_S1_1post_id: TIntegerField;
    qry_S1_1type_id: TIntegerField;
    qry_S1_1cor_id: TIntegerField;
    qry_S1_1tborder_servicecol: TWideStringField;
    qry_S1_1tborder_service_img_ser_img_id: TWideStringField;
    qry_S1_1tbstatus_status_id: TIntegerField;
    qry_S1_1tbmember_mem_id: TIntegerField;
    qry_S1_1engineering_name: TWideStringField;
    qry_S1_1engineer_order_confirm_id: TIntegerField;
    qry_S1_1tbconfirm_order_id1: TIntegerField;
    qry_S1_1tbconfirm_order_id2: TIntegerField;
    qry_S1_1tbconfirm_order_id3: TIntegerField;
    qry_S1_1tbconfirm_order_id4: TIntegerField;
    qry_S1_1success_service_id: TIntegerField;
    qry_S1_1order_for_items_id: TWideStringField;
    qry_S1_1trainsaction_trype_id: TWideStringField;
    qry_S1_1tbstatus_trype_id: TWideStringField;
    txt_s1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    qry_S1_0: TUniQuery;
    ds_S1_0: TDataSource;
    qry_S1_0count_success_service_id: TLargeintField;
    qry_S1_0order_id: TIntegerField;
    qry_S1_0firstname: TWideStringField;
    qry_S1_0lastname: TWideStringField;
    qry_S1_0date_service: TDateField;
    qry_S1_0order_name: TWideStringField;
    qry_S1_0details: TWideStringField;
    qry_S1_0worn_date: TDateField;
    qry_S1_0dept_id: TIntegerField;
    qry_S1_0post_id: TIntegerField;
    qry_S1_0type_id: TIntegerField;
    qry_S1_0cor_id: TIntegerField;
    qry_S1_0tborder_servicecol: TWideStringField;
    qry_S1_0tborder_service_img_ser_img_id: TWideStringField;
    qry_S1_0tbstatus_status_id: TIntegerField;
    qry_S1_0tbmember_mem_id: TIntegerField;
    qry_S1_0engineering_name: TWideStringField;
    qry_S1_0engineer_order_confirm_id: TIntegerField;
    qry_S1_0tbconfirm_order_id1: TIntegerField;
    qry_S1_0tbconfirm_order_id2: TIntegerField;
    qry_S1_0tbconfirm_order_id3: TIntegerField;
    qry_S1_0tbconfirm_order_id4: TIntegerField;
    qry_S1_0success_service_id: TIntegerField;
    qry_S1_0order_for_items_id: TWideStringField;
    qry_S1_0trainsaction_trype_id: TWideStringField;
    qry_S1_0tbstatus_trype_id: TWideStringField;
    Image9: TImage;
    RzLabel1: TRzLabel;
    Image12: TImage;
    RzLabel3: TRzLabel;
    Image13: TImage;
    RzLabel8: TRzLabel;
    RzLabel16: TRzLabel;
    Image14: TImage;
    Image15: TImage;
    RzLabel17: TRzLabel;
    txt_order_id: TDBEdit;
    qry_d2_1: TUniQuery;
    ds_d2_1: TDataSource;
    txt_d2_1: TRzDBLabel;
    qry_d2_1count_tbstatus_trype_id: TLargeintField;
    qry_d2_1order_id: TIntegerField;
    qry_d2_1firstname: TWideStringField;
    qry_d2_1lastname: TWideStringField;
    qry_d2_1date_service: TDateField;
    qry_d2_1order_name: TWideStringField;
    qry_d2_1details: TWideStringField;
    qry_d2_1worn_date: TDateField;
    qry_d2_1dept_id: TIntegerField;
    qry_d2_1post_id: TIntegerField;
    qry_d2_1type_id: TIntegerField;
    qry_d2_1cor_id: TIntegerField;
    qry_d2_1tborder_servicecol: TWideStringField;
    qry_d2_1tborder_service_img_ser_img_id: TWideStringField;
    qry_d2_1tbstatus_status_id: TIntegerField;
    qry_d2_1tbmember_mem_id: TIntegerField;
    qry_d2_1engineering_name: TWideStringField;
    qry_d2_1engineer_order_confirm_id: TIntegerField;
    qry_d2_1tbconfirm_order_id1: TIntegerField;
    qry_d2_1tbconfirm_order_id2: TIntegerField;
    qry_d2_1tbconfirm_order_id3: TIntegerField;
    qry_d2_1tbconfirm_order_id4: TIntegerField;
    qry_d2_1success_service_id: TIntegerField;
    qry_d2_1order_for_items_id: TWideStringField;
    qry_d2_1trainsaction_trype_id: TWideStringField;
    qry_d2_1tbstatus_trype_id: TWideStringField;
    qry_d2_2: TUniQuery;
    ds_d2_2: TDataSource;
    RzDBLabel4: TRzDBLabel;
    ds_d2_3: TDataSource;
    qry_d2_3: TUniQuery;
    RzDBLabel5: TRzDBLabel;
    RzDBLabel6: TRzDBLabel;
    ds_dd2_4: TDataSource;
    qry_d2_4: TUniQuery;
    RzDBLabel7: TRzDBLabel;
    qry_d2_5: TUniQuery;
    ds_d5: TDataSource;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    ORDER1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzLabel8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure sdfClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton4Click(Sender: TObject);
    procedure sssssssss1Click(Sender: TObject);
    procedure ddd1Click(Sender: TObject);
    procedure cxGrid4DBTableView1Column2GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxButton1Click(Sender: TObject);
    procedure ddddddddd1Click(Sender: TObject);
    procedure ORDER2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure qry_selectBeforeEdit(DataSet: TDataSet);
    procedure N6Click(Sender: TObject);
    procedure cxGrid4DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ORDER1Click(Sender: TObject);
  private
    { Private declarations }
  public



    { Public declarations }
  end;

var
  mian_order_service_frm: Tmian_order_service_frm;

implementation

{$R *.dfm}

uses MyMDU, Main_frmU, store_items_frmU, main_member_frmU, new_order_frmU,
  engineer_order_confirm_frmU, Status_trype_frmU;

procedure Tmian_order_service_frm.cxButton10Click(Sender: TObject);
begin
Main_frm.dxRibbon1.ShowTabGroups := False;


end;

procedure Tmian_order_service_frm.cxButton1Click(Sender: TObject);
begin

//---------------------------------- show all data select view

 with  qry_select do
 begin
 Close;
 sql.Text :='SELECT                                               '+
' tborder_service.order_id,                                       '+
'tborder_service.firstname,                                       '+
'tborder_service.lastname,                                        '+
'tborder_service.date_service,                                    '+
'tborder_service.order_name,                                      '+
'tborder_service.details,                                         '+
'tborder_service.worn_date,                                       '+
'tborder_service.dept_id,                                         '+
'tborder_service.post_id,                                         '+
'tborder_service.type_id,                                         '+
'tborder_service.cor_id,                                          '+
'tborder_service.tborder_servicecol,                              '+
'tborder_service.tbstatus_status_id,                              '+
'tborder_service.tbmember_mem_id,                                 '+
'tborder_service.id_tbapproved,                                   '+
'tborder_service.engineering_name,                                '+
'tborder_service.engineer_order_confirm_id,                       '+
'tborder_service.tbconfirm_order_id1,                             '+
'tborder_service.tbconfirm_order_id2,                             '+
'tborder_service.tbconfirm_order_id3,                             '+
'tborder_service.tbconfirm_order_id4,                             '+
'tborder_service.success_service_id,                              '+
'tborder_service.tbstatus_trype_id,                                '+
'CONCAT(firstname,''  '',lastname) AS fullname,                     '+
'tbdepartment.dept_id,                                            '+
'tbdepartment.dept_name,                                          '+
'tbposition.post_id,                                              '+
'tbposition.post_name                                             '+
'FROM                                                             '+
'tborder_service                                                  '+
'INNER JOIN tbposition ON tbposition.post_id = tborder_service.post_id      '+
'INNER JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id  '+
'where  tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''and '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''      '+
'order by tborder_service.date_service desc';
 open;

 end;




//-----------------------------------show all data select view




 with qry_d1 do
 begin
    Close;
    sql.Text := ' select                                            '+
' Count(tborder_service.id_tbapproved) AS count_id_tbapproved,      '+
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
'tborder_service.engineer_order_confirm_id,                         '+
'tborder_service.tbconfirm_order_id1,                               '+
'tborder_service.tbconfirm_order_id2,                               '+
'tborder_service.tbconfirm_order_id3,                               '+
'tborder_service.tbconfirm_order_id4,                               '+
'tborder_service.success_service_id,                                '+
'tborder_service.order_for_items_id,                                '+
'tborder_service.trainsaction_trype_id,                             '+
'tborder_service.tbstatus_trype_id                                  '+
'from tborder_service                                               '+
'WHERE                                                              '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''  '+
'  AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  AND  tborder_service.id_tbapproved = 2     ';
open;
 end;



 //=================== show select D3 New   07-03-2559
 with qry_d3 do
 begin
    Close;
    sql.Text := ' select                                            '+
' Count(tborder_service.engineer_order_confirm_id) AS count_order_confirm_id,      '+
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
'tborder_service.engineer_order_confirm_id,                         '+
'tborder_service.tbconfirm_order_id1,                               '+
'tborder_service.tbconfirm_order_id2,                               '+
'tborder_service.tbconfirm_order_id3,                               '+
'tborder_service.tbconfirm_order_id4,                               '+
'tborder_service.success_service_id,                                '+
'tborder_service.order_for_items_id,                                '+
'tborder_service.trainsaction_trype_id,                             '+
'tborder_service.tbstatus_trype_id                                  '+
'from tborder_service                                               '+
'WHERE                                                              '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''  '+
'  AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  AND tborder_service.engineer_order_confirm_id = 1   ';
open;
 end;

 //=================== show select D3 New 07-03-2559






 //==============  qry_S1  สถานะการซ่อมปิดงาน   ที่เป็น 0

      with qry_S1_1 do
 begin
    Close;
    sql.Text := ' select                                            '+
'Count(tborder_service.success_service_id) AS count_success_service_id,      '+
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
'tborder_service.engineer_order_confirm_id,                         '+
'tborder_service.tbconfirm_order_id1,                               '+
'tborder_service.tbconfirm_order_id2,                               '+
'tborder_service.tbconfirm_order_id3,                               '+
'tborder_service.tbconfirm_order_id4,                               '+
'tborder_service.success_service_id,                                '+
'tborder_service.order_for_items_id,                                '+
'tborder_service.trainsaction_trype_id,                             '+
'tborder_service.tbstatus_trype_id                                  '+
'from tborder_service                                               '+
'WHERE                                                              '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''  '+
'  AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  AND  '+
'  tborder_service.success_service_id = 1  ';
open;
 end;
  //==============  qry_S1_1





 //==============  qry_S1_0  สถานะการซ่อมปิดงาน ที่เป็น  0

      with qry_S1_0 do
 begin
    Close;
    sql.Text := ' select                                            '+
'Count(tborder_service.success_service_id) AS count_success_service_id,      '+
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
'tborder_service.engineer_order_confirm_id,                         '+
'tborder_service.tbconfirm_order_id1,                               '+
'tborder_service.tbconfirm_order_id2,                               '+
'tborder_service.tbconfirm_order_id3,                               '+
'tborder_service.tbconfirm_order_id4,                               '+
'tborder_service.success_service_id,                                '+
'tborder_service.order_for_items_id,                                '+
'tborder_service.trainsaction_trype_id,                             '+
'tborder_service.tbstatus_trype_id                                  '+
'from tborder_service                                               '+
'WHERE                                                              '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''  '+
'  AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  AND  '+
'  tborder_service.success_service_id = 0  ';
open;
 end;
  //==============  qry_S1_0


 //===================================================



 //==============  qry_d2_1  ระยะเวลาการซ่อมไม่เกิน 1  วัน

      with qry_d2_1 do
 begin
    Close;
    sql.Text := ' select                                            '+
'Count(tborder_service.tbstatus_trype_id) AS count_tbstatus_trype_id,      '+
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
'tborder_service.engineer_order_confirm_id,                         '+
'tborder_service.tbconfirm_order_id1,                               '+
'tborder_service.tbconfirm_order_id2,                               '+
'tborder_service.tbconfirm_order_id3,                               '+
'tborder_service.tbconfirm_order_id4,                               '+
'tborder_service.success_service_id,                                '+
'tborder_service.order_for_items_id,                                '+
'tborder_service.trainsaction_trype_id,                             '+
'tborder_service.tbstatus_trype_id                                  '+
'from tborder_service                                               '+
'WHERE                                                              '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''  '+
'  AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  AND  '+
'  tborder_service.tbstatus_trype_id = 1';
open;
 end;


   //===========  qry_d2_1  ระยะเวลาการซ่อมไม่เกิน 1  วัน







 //==============  qry_d2_2  ระยะเวลาการซ่อมไม่เกิน 2 วัน

      with qry_d2_2 do
 begin
    Close;
    sql.Text := ' select                                            '+
'Count(tborder_service.tbstatus_trype_id) AS count_tbstatus_trype_id,      '+
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
'tborder_service.engineer_order_confirm_id,                         '+
'tborder_service.tbconfirm_order_id1,                               '+
'tborder_service.tbconfirm_order_id2,                               '+
'tborder_service.tbconfirm_order_id3,                               '+
'tborder_service.tbconfirm_order_id4,                               '+
'tborder_service.success_service_id,                                '+
'tborder_service.order_for_items_id,                                '+
'tborder_service.trainsaction_trype_id,                             '+
'tborder_service.tbstatus_trype_id                                  '+
'from tborder_service                                               '+
'WHERE                                                              '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''  '+
'  AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  AND  '+
'  tborder_service.tbstatus_trype_id = 2';
open;
 end;


   //===========  qry_d2_2  ระยะเวลาการซ่อมไม่เกิน 2  วัน






 //==============  qry_d2_3  ระยะเวลาการซ่อมไม่เกิน 2 วัน

      with qry_d2_3 do
 begin
    Close;
    sql.Text := ' select                                            '+
'Count(tborder_service.tbstatus_trype_id) AS count_tbstatus_trype_id,      '+
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
'tborder_service.engineer_order_confirm_id,                         '+
'tborder_service.tbconfirm_order_id1,                               '+
'tborder_service.tbconfirm_order_id2,                               '+
'tborder_service.tbconfirm_order_id3,                               '+
'tborder_service.tbconfirm_order_id4,                               '+
'tborder_service.success_service_id,                                '+
'tborder_service.order_for_items_id,                                '+
'tborder_service.trainsaction_trype_id,                             '+
'tborder_service.tbstatus_trype_id                                  '+
'from tborder_service                                               '+
'WHERE                                                              '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''  '+
'  AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  AND  '+
'  tborder_service.tbstatus_trype_id = 3';
open;
 end;


   //===========  qry_d2_3  ระยะเวลาการซ่อมไม่เกิน 2  วัน






 //==============  qry_d2_4  ระยะเวลาการซ่อมไม่เกิน 2 วัน

      with qry_d2_4 do
 begin
    Close;
    sql.Text := ' select                                            '+
'Count(tborder_service.tbstatus_trype_id) AS count_tbstatus_trype_id,      '+
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
'tborder_service.engineer_order_confirm_id,                         '+
'tborder_service.tbconfirm_order_id1,                               '+
'tborder_service.tbconfirm_order_id2,                               '+
'tborder_service.tbconfirm_order_id3,                               '+
'tborder_service.tbconfirm_order_id4,                               '+
'tborder_service.success_service_id,                                '+
'tborder_service.order_for_items_id,                                '+
'tborder_service.trainsaction_trype_id,                             '+
'tborder_service.tbstatus_trype_id                                  '+
'from tborder_service                                               '+
'WHERE                                                              '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''  '+
'  AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  AND  '+
'  tborder_service.tbstatus_trype_id = 4';
open;
 end;


   //===========  qry_d2_4  ระยะเวลาการซ่อมไม่เกิน 2  วัน



    //==============  qry_d2_5   รายการส่งต่อ

      with qry_d2_5 do
 begin
    Close;
    sql.Text := ' select                                            '+
'Count(tborder_service.tbstatus_trype_id) AS count_tbstatus_trype_id,      '+
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
'tborder_service.engineer_order_confirm_id,                         '+
'tborder_service.tbconfirm_order_id1,                               '+
'tborder_service.tbconfirm_order_id2,                               '+
'tborder_service.tbconfirm_order_id3,                               '+
'tborder_service.tbconfirm_order_id4,                               '+
'tborder_service.success_service_id,                                '+
'tborder_service.order_for_items_id,                                '+
'tborder_service.trainsaction_trype_id,                             '+
'tborder_service.tbstatus_trype_id                                  '+
'from tborder_service                                               '+
'WHERE                                                              '+
'tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''  '+
'  AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  AND  '+
'  tborder_service.tbstatus_trype_id = 5';
open;
 end;


   //===========  qry_d2_5 รายการสงต่อ



end;

procedure Tmian_order_service_frm.cxButton2Click(Sender: TObject);
begin
  close;
   Main_frm.dxRibbon1.ShowTabGroups := True;    //ปิด ribbar
end;

procedure Tmian_order_service_frm.cxButton4Click(Sender: TObject);
begin
 screen.cursor:=crhourglass;
 if new_order_frm = nil then
 begin
 Application.CreateForm(Tnew_order_frm,new_order_frm);
 new_order_frm.show;
 end;

   screen.cursor:=crdefault;
end;


procedure Tmian_order_service_frm.cxButton5Click(Sender: TObject);
begin
        with  qry_select  do
        begin
             Edit;
             FieldByName('tbstatus_trype_id').Value :=5;
             post;
        end;
end;

procedure Tmian_order_service_frm.cxButton6Click(Sender: TObject);
begin
  with  qry_select  do
        begin
             Edit;
             FieldByName('tbstatus_trype_id').Value :=3;
             post;
        end;
end;

procedure Tmian_order_service_frm.cxButton7Click(Sender: TObject);
begin
        with  qry_select  do
        begin
             Edit;
             FieldByName('tbstatus_trype_id').Value :=2;
             post;
        end;
end;

procedure Tmian_order_service_frm.cxButton8Click(Sender: TObject);
begin
         with  qry_select  do
        begin
             Edit;
             FieldByName('tbstatus_trype_id').Value :=1;
             post;
        end;
end;

procedure Tmian_order_service_frm.cxButton9Click(Sender: TObject);
begin
  with  qry_select  do
        begin
             Edit;
             FieldByName('tbstatus_trype_id').Value :=4;
             post;
        end;
end;

procedure Tmian_order_service_frm.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

with  gry_where do
begin
      close;
      sql.Text := ' SELECT                                   '+
'tborder_service.order_id,                                   '+
'tborder_service.firstname,                                  '+
'tborder_service.lastname,                                   '+
'tborder_service.date_service,                               '+
'tborder_service.order_name,                                 '+
'tborder_service.details,                                    '+
'tborder_service.worn_date,                                  '+
'tborder_service.dept_id,                                    '+
'tborder_service.post_id,                                    '+
'tborder_service.type_id,                                    '+
'tborder_service.cor_id,                                     '+
'tborder_service.tborder_servicecol,                         '+
'tborder_service.tbtypeservice_type_id,                      '+
'tborder_service.tbstatus_status_id,                         '+
'tborder_service.tbmember_mem_id,                            '+
'tborder_service.img,                                        '+
'tborder_service.tborder_service_img_id,                     '+
'tborder_service.id_tbapproved,                              '+
'tborder_service.ser_img_id,                                 '+
'tborder_service.engineering_name,                           '+
'CONCAT(firstname,''  '',lastname) AS fullname,              '+
'tbdepartment.dept_id,                                       '+
'tbdepartment.dept_name,                                     '+
'tbposition.post_id,                                         '+
'tbposition.post_name                                        '+
'FROM                                                        '+
'tborder_service                                             '+
'INNER JOIN tbposition ON tbposition.post_id = tborder_service.post_id       '+
'INNER JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id   '+
'WHERE  tborder_service.order_id='''+txt_order_id.Text+''' ';
open;
end;
end;

procedure Tmian_order_service_frm.cxGrid4DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
if (MessageDlg('คุณต้องการ ทำรายการเบิกพัสุดหรือไม่', mtInformation, [mbYes, mbNo], 0) in [mrYes]) then
 begin
       if new_order_frm = nil then
 begin
 Application.CreateForm(Tnew_order_frm,new_order_frm);
 new_order_frm.show;
 end;
 end;



end;

procedure Tmian_order_service_frm.cxGrid4DBTableView1Column2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
      AText := IntToStr(ARecord.Index+1);
end;

procedure Tmian_order_service_frm.ddd1Click(Sender: TObject);
begin
    Tengineer_order_confirm_frm.Create(self).Show;

end;

procedure Tmian_order_service_frm.ddddddddd1Click(Sender: TObject);
begin
    Panel4.Visible := True;
end;

procedure Tmian_order_service_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  mian_order_service_frm := nil;
end;

procedure Tmian_order_service_frm.FormShow(Sender: TObject);
begin
  ds1.Date := Now;
  ds2.Date := Now;
  cxDBTextEdit1.Text := Main_frm.order_id;

 //qry_select.Active := true;
qry_man_service.Active := true;
qry_tbapproved.Active :=true;
qry_confirm_id.Active := True;
 //order_item_id := order_for_itemsa_id.Text;




end;




procedure Tmian_order_service_frm.Image3Click(Sender: TObject);
begin
Panel4.Visible := False;
end;

procedure Tmian_order_service_frm.N4Click(Sender: TObject);
begin
         if (MessageDlg('ยืนยันการปิดงานซ่อมในระบบ', mtInformation, [mbYes, mbNo], 0) = mrYes) then
         begin
               with  qry_select  do
        begin
             Edit;
             FieldByName('success_service_id').Value :=1;
             post;
        end;
         end  ;


end;

procedure Tmian_order_service_frm.N6Click(Sender: TObject);
begin
       screen.cursor:=crhourglass;


   screen.cursor:= crdefault;
 end;

 procedure Tmian_order_service_frm.sdfClick(Sender: TObject);
 begin
   screen.cursor := crhourglass;
   Main_frm.dxRibbon1.ShowTabGroups := False;
   Tnew_order_frm.Create(self).show;
   screen.cursor := crdefault;


   {
   
     }

end;

procedure Tmian_order_service_frm.ORDER1Click(Sender: TObject);
begin
     with qry_select do
   begin
     Edit;
     FieldByName('engineer_order_confirm_id').Value :=1;
             post;
        end;

end;

procedure Tmian_order_service_frm.ORDER2Click(Sender: TObject);
begin
         with  qry_select  do
        begin
             Edit;
             FieldByName('engineer_order_confirm_id').Value :=0;
             post;
        end;
        MessageDlg('ยกเลิกรายการสั่ง Oder สำเร็จค่ะ', mtInformation, [mbOK], 0);



end;

procedure Tmian_order_service_frm.qry_selectBeforeEdit(DataSet: TDataSet);
begin
       MessageDlg('ยีนยันทำรายการสำเร็จค่ะ', mtInformation, [mbOK], 0);
end;

procedure Tmian_order_service_frm.RzLabel8Click(Sender: TObject);
begin
   close;
end;

procedure Tmian_order_service_frm.sssssssss1Click(Sender: TObject);
begin
    Tengineer_order_confirm_frm.Create(self).Show;
end;

end.
