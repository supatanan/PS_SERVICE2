{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit purchase_frmU;

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
  cxGroupBox, Vcl.ExtCtrls, cxCheckBox, RzPanel, cxLabel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Data.DB, MemDS, DBAccess, Uni, Vcl.Mask, Vcl.DBCtrls,
  dxGDIPlusClasses, RzLabel, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC, Vcl.ImgList,
  Vcl.ComCtrls, RzDTP, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBLabel;

type
  Tpurchase_frm = class(TForm)
    Panel5: TPanel;
    cxPageControl2: TcxPageControl;
    cxTabSheet8: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    ds_select: TDataSource;
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
    ImageList2: TImageList;
    ImageList3: TImageList;
    qry_selecttbconfirm_order_id1: TIntegerField;
    qry_selecttbconfirm_order_id2: TIntegerField;
    qry_selecttbconfirm_order_id3: TIntegerField;
    qry_selecttbconfirm_order_id4: TIntegerField;
    qry_selectsuccess_service_id: TIntegerField;
    Panel3: TPanel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1Column2: TcxGridDBColumn;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    status1: TcxGridDBColumn;
    status2: TcxGridDBColumn;
    status3: TcxGridDBColumn;
    status4: TcxGridDBColumn;
    cxGrid4DBTableView1checkbok: TcxGridDBColumn;
    cxGrid4DBTableView1order_id: TcxGridDBColumn;
    cxGrid4DBTableView1firstname: TcxGridDBColumn;
    cxGrid4DBTableView1date_service: TcxGridDBColumn;
    cxGrid4DBTableView1order_name: TcxGridDBColumn;
    cxGrid4DBTableView1details: TcxGridDBColumn;
    cxGrid4DBTableView1worn_date: TcxGridDBColumn;
    cxGrid4DBTableView1dept_id: TcxGridDBColumn;
    cxGrid4DBTableView1post_id: TcxGridDBColumn;
    cxGrid4DBTableView1type_id: TcxGridDBColumn;
    cxGrid4DBTableView1cor_id: TcxGridDBColumn;
    cxGrid4DBTableView1tbstatus_status_id: TcxGridDBColumn;
    cxGrid4DBTableView1engineering_name: TcxGridDBColumn;
    cxGrid4DBTableView1fullname: TcxGridDBColumn;
    cxGrid4DBTableView1dept_id_1: TcxGridDBColumn;
    cxGrid4DBTableView1dept_name: TcxGridDBColumn;
    cxGrid4DBTableView1post_id_1: TcxGridDBColumn;
    cxGrid4DBTableView1post_name: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    RzPanel1: TRzPanel;
    RzLabel2: TRzLabel;
    Image7: TImage;
    Image11: TImage;
    Image12: TImage;
    Image14: TImage;
    DBEdit1: TDBEdit;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    RzGroupBox1: TRzGroupBox;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    cxButton1: TcxButton;
    img_icon: TcxImageList;
    Image2: TImage;
    RzLabel1: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    Image13: TImage;
    Image4: TImage;
    RzLabel6: TRzLabel;
    Image1: TImage;
    RzLabel3: TRzLabel;
    Image3: TImage;
    RzLabel7: TRzLabel;
    Image5: TImage;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    ds1: TcxDateEdit;
    ds2: TcxDateEdit;
    cxButton2: TcxButton;
    cxDBLabel1: TcxDBLabel;
    ds_T1: TDataSource;
    qry_T1: TUniQuery;
    qry_T1count_tbconfirm_order_id1: TLargeintField;
    qry_T1order_id: TIntegerField;
    qry_T1firstname: TWideStringField;
    qry_T1lastname: TWideStringField;
    qry_T1date_service: TDateField;
    qry_T1order_name: TWideStringField;
    qry_T1details: TWideStringField;
    qry_T1worn_date: TDateField;
    qry_T1dept_id: TIntegerField;
    qry_T1post_id: TIntegerField;
    qry_T1type_id: TIntegerField;
    qry_T1cor_id: TIntegerField;
    qry_T1tborder_servicecol: TWideStringField;
    qry_T1tborder_service_img_ser_img_id: TWideStringField;
    qry_T1tbstatus_status_id: TIntegerField;
    qry_T1tbmember_mem_id: TIntegerField;
    qry_T1engineering_name: TWideStringField;
    qry_T1engineer_order_confirm_id: TIntegerField;
    qry_T1tbconfirm_order_id1: TIntegerField;
    qry_T1tbconfirm_order_id2: TIntegerField;
    qry_T1tbconfirm_order_id3: TIntegerField;
    qry_T1tbconfirm_order_id4: TIntegerField;
    qry_T1success_service_id: TIntegerField;
    qry_T1order_for_items_id: TWideStringField;
    qry_T1trainsaction_trype_id: TWideStringField;
    qry_T1tbstatus_trype_id: TWideStringField;
    cxDBLabel2: TcxDBLabel;
    qry_T1_0: TUniQuery;
    ds_T1_0: TDataSource;
    qry_T1_0count_tbconfirm_order_id1: TLargeintField;
    qry_T1_0order_id: TIntegerField;
    qry_T1_0firstname: TWideStringField;
    qry_T1_0lastname: TWideStringField;
    qry_T1_0date_service: TDateField;
    qry_T1_0order_name: TWideStringField;
    qry_T1_0details: TWideStringField;
    qry_T1_0worn_date: TDateField;
    qry_T1_0dept_id: TIntegerField;
    qry_T1_0post_id: TIntegerField;
    qry_T1_0type_id: TIntegerField;
    qry_T1_0cor_id: TIntegerField;
    qry_T1_0tborder_servicecol: TWideStringField;
    qry_T1_0tbstatus_status_id: TIntegerField;
    qry_T1_0tbmember_mem_id: TIntegerField;
    qry_T1_0id_tbapproved: TIntegerField;
    qry_T1_0engineering_name: TWideStringField;
    qry_T1_0engineer_order_confirm_id: TIntegerField;
    qry_T1_0tbconfirm_order_id1: TIntegerField;
    qry_T1_0tbconfirm_order_id2: TIntegerField;
    qry_T1_0tbconfirm_order_id3: TIntegerField;
    qry_T1_0tbconfirm_order_id4: TIntegerField;
    qry_T1_0success_service_id: TIntegerField;
    qry_T1_0fullname: TWideStringField;
    qry_T1_0dept_id_1: TIntegerField;
    qry_T1_0dept_name: TWideStringField;
    qry_T1_0post_id_1: TIntegerField;
    qry_T1_0post_name: TWideStringField;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    qry_T2: TUniQuery;
    ds_T2: TDataSource;
    qry_T2count_tbconfirm_order_id2: TLargeintField;
    qry_T2order_id: TIntegerField;
    qry_T2firstname: TWideStringField;
    qry_T2lastname: TWideStringField;
    qry_T2date_service: TDateField;
    qry_T2order_name: TWideStringField;
    qry_T2details: TWideStringField;
    qry_T2worn_date: TDateField;
    qry_T2dept_id: TIntegerField;
    qry_T2post_id: TIntegerField;
    qry_T2type_id: TIntegerField;
    qry_T2cor_id: TIntegerField;
    qry_T2tborder_servicecol: TWideStringField;
    qry_T2tbstatus_status_id: TIntegerField;
    qry_T2tbmember_mem_id: TIntegerField;
    qry_T2id_tbapproved: TIntegerField;
    qry_T2engineering_name: TWideStringField;
    qry_T2engineer_order_confirm_id: TIntegerField;
    qry_T2tbconfirm_order_id1: TIntegerField;
    qry_T2tbconfirm_order_id2: TIntegerField;
    qry_T2tbconfirm_order_id3: TIntegerField;
    qry_T2tbconfirm_order_id4: TIntegerField;
    qry_T2success_service_id: TIntegerField;
    qry_T2fullname: TWideStringField;
    qry_T2dept_id_1: TIntegerField;
    qry_T2dept_name: TWideStringField;
    qry_T2post_id_1: TIntegerField;
    qry_T2post_name: TWideStringField;
    qry_T3: TUniQuery;
    ds_T3: TDataSource;
    cxDBLabel6: TcxDBLabel;
    qry_T4: TUniQuery;
    ds_T4: TDataSource;
    qry_T4count_tbconfirm_order_id4: TLargeintField;
    qry_T4order_id: TIntegerField;
    qry_T4firstname: TWideStringField;
    qry_T4lastname: TWideStringField;
    qry_T4date_service: TDateField;
    qry_T4order_name: TWideStringField;
    qry_T4details: TWideStringField;
    qry_T4worn_date: TDateField;
    qry_T4dept_id: TIntegerField;
    qry_T4post_id: TIntegerField;
    qry_T4type_id: TIntegerField;
    qry_T4cor_id: TIntegerField;
    qry_T4tborder_servicecol: TWideStringField;
    qry_T4tbstatus_status_id: TIntegerField;
    qry_T4tbmember_mem_id: TIntegerField;
    qry_T4id_tbapproved: TIntegerField;
    qry_T4engineering_name: TWideStringField;
    qry_T4engineer_order_confirm_id: TIntegerField;
    qry_T4tbconfirm_order_id1: TIntegerField;
    qry_T4tbconfirm_order_id2: TIntegerField;
    qry_T4tbconfirm_order_id3: TIntegerField;
    qry_T4tbconfirm_order_id4: TIntegerField;
    qry_T4success_service_id: TIntegerField;
    qry_T4fullname: TWideStringField;
    qry_T4dept_id_1: TIntegerField;
    qry_T4dept_name: TWideStringField;
    qry_T4post_id_1: TIntegerField;
    qry_T4post_name: TWideStringField;
    qry_T3count_tbconfirm_order_id3: TLargeintField;
    qry_T3order_id: TIntegerField;
    qry_T3firstname: TWideStringField;
    qry_T3lastname: TWideStringField;
    qry_T3date_service: TDateField;
    qry_T3order_name: TWideStringField;
    qry_T3details: TWideStringField;
    qry_T3worn_date: TDateField;
    qry_T3dept_id: TIntegerField;
    qry_T3post_id: TIntegerField;
    qry_T3type_id: TIntegerField;
    qry_T3cor_id: TIntegerField;
    qry_T3tborder_servicecol: TWideStringField;
    qry_T3tbstatus_status_id: TIntegerField;
    qry_T3tbmember_mem_id: TIntegerField;
    qry_T3id_tbapproved: TIntegerField;
    qry_T3engineering_name: TWideStringField;
    qry_T3engineer_order_confirm_id: TIntegerField;
    qry_T3tbconfirm_order_id1: TIntegerField;
    qry_T3tbconfirm_order_id2: TIntegerField;
    qry_T3tbconfirm_order_id3: TIntegerField;
    qry_T3tbconfirm_order_id4: TIntegerField;
    qry_T3success_service_id: TIntegerField;
    qry_T3fullname: TWideStringField;
    qry_T3dept_id_1: TIntegerField;
    qry_T3dept_name: TWideStringField;
    qry_T3post_id_1: TIntegerField;
    qry_T3post_name: TWideStringField;
    cxButton7: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid4DBTableView1Column2GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  purchase_frm: Tpurchase_frm;

implementation

{$R *.dfm}

uses mian_order_service_frmU, Main_frmU;

procedure Tpurchase_frm.cxButton1Click(Sender: TObject);
begin

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
'where   tborder_service.engineer_order_confirm_id=1   and tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''and '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''      '+
'order by tborder_service.date_service desc';
 open;
end;



//=====================================================


 with qry_T1 do
 begin
    Close;
    sql.Text := ' select                                            '+
'Count(tborder_service.tbconfirm_order_id1) AS count_tbconfirm_order_id1,     '+
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
'  AND  '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''  AND  tborder_service.tbconfirm_order_id1 = 1     ';
open;
 end;



//======================================================




 with qry_T1_0 do
 begin
    Close;
    sql.Text := ' select                                                   '+
'Count(tborder_service.tbconfirm_order_id1) AS count_tbconfirm_order_id1,  '+
'tborder_service.order_id,                                                 '+
'tborder_service.firstname,                                                '+
'tborder_service.lastname,                                                 '+
'tborder_service.date_service,                                             '+
'tborder_service.order_name,                                               '+
'tborder_service.details,                                                  '+
'tborder_service.worn_date,                                                '+
'tborder_service.dept_id,                                                  '+
'tborder_service.post_id,                                                  '+
'tborder_service.type_id,                                                  '+
'tborder_service.cor_id,                                                   '+
'tborder_service.tborder_servicecol,                                       '+
'tborder_service.tbstatus_status_id,                                       '+
'tborder_service.tbmember_mem_id,                                          '+
'tborder_service.id_tbapproved,                                            '+
'tborder_service.engineering_name,                                         '+
'tborder_service.engineer_order_confirm_id,                                '+
'tborder_service.tbconfirm_order_id1,                                      '+
'tborder_service.tbconfirm_order_id2,                                      '+
'tborder_service.tbconfirm_order_id3,                                      '+
'tborder_service.tbconfirm_order_id4,                                      '+
'tborder_service.success_service_id,                                       '+
'CONCAT(firstname,''  '',lastname) AS fullname,                              '+
'tbdepartment.dept_id,                                                     '+
'tbdepartment.dept_name,                                                   '+
'tbposition.post_id,                                                       '+
'tbposition.post_name                                                      '+
'FROM                                                                      '+
'tborder_service                                                           '+
'INNER JOIN tbposition ON tbposition.post_id = tborder_service.post_id     '+
'INNER JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id '+
 'WHERE  tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''and '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''    '+
 '  and tborder_service.engineer_order_confirm_id=1  and ' +
 'tborder_service.tbconfirm_order_id1=0 ';
open;
 end;



 //----------------------------------------------




 with qry_T2 do
 begin
    Close;
    sql.Text := ' select                                                   '+
'Count(tborder_service.tbconfirm_order_id2) AS count_tbconfirm_order_id2,  '+
'tborder_service.order_id,                                                 '+
'tborder_service.firstname,                                                '+
'tborder_service.lastname,                                                 '+
'tborder_service.date_service,                                             '+
'tborder_service.order_name,                                               '+
'tborder_service.details,                                                  '+
'tborder_service.worn_date,                                                '+
'tborder_service.dept_id,                                                  '+
'tborder_service.post_id,                                                  '+
'tborder_service.type_id,                                                  '+
'tborder_service.cor_id,                                                   '+
'tborder_service.tborder_servicecol,                                       '+
'tborder_service.tbstatus_status_id,                                       '+
'tborder_service.tbmember_mem_id,                                          '+
'tborder_service.id_tbapproved,                                            '+
'tborder_service.engineering_name,                                         '+
'tborder_service.engineer_order_confirm_id,                                '+
'tborder_service.tbconfirm_order_id1,                                      '+
'tborder_service.tbconfirm_order_id2,                                      '+
'tborder_service.tbconfirm_order_id3,                                      '+
'tborder_service.tbconfirm_order_id4,                                      '+
'tborder_service.success_service_id,                                       '+
'CONCAT(firstname,''  '',lastname) AS fullname,                              '+
'tbdepartment.dept_id,                                                     '+
'tbdepartment.dept_name,                                                   '+
'tbposition.post_id,                                                       '+
'tbposition.post_name                                                      '+
'FROM                                                                      '+
'tborder_service                                                           '+
'INNER JOIN tbposition ON tbposition.post_id = tborder_service.post_id     '+
'INNER JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id '+
 'WHERE  tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''and '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''    '+
 '  and tborder_service.engineer_order_confirm_id=1  and ' +
 'tborder_service.tbconfirm_order_id2=1';
open;
 end;





 //----------------------------------------------




 with qry_T3 do
 begin
    Close;
    sql.Text := ' select                                                   '+
'Count(tborder_service.tbconfirm_order_id3) AS count_tbconfirm_order_id3,  '+
'tborder_service.order_id,                                                 '+
'tborder_service.firstname,                                                '+
'tborder_service.lastname,                                                 '+
'tborder_service.date_service,                                             '+
'tborder_service.order_name,                                               '+
'tborder_service.details,                                                  '+
'tborder_service.worn_date,                                                '+
'tborder_service.dept_id,                                                  '+
'tborder_service.post_id,                                                  '+
'tborder_service.type_id,                                                  '+
'tborder_service.cor_id,                                                   '+
'tborder_service.tborder_servicecol,                                       '+
'tborder_service.tbstatus_status_id,                                       '+
'tborder_service.tbmember_mem_id,                                          '+
'tborder_service.id_tbapproved,                                            '+
'tborder_service.engineering_name,                                         '+
'tborder_service.engineer_order_confirm_id,                                '+
'tborder_service.tbconfirm_order_id1,                                      '+
'tborder_service.tbconfirm_order_id2,                                      '+
'tborder_service.tbconfirm_order_id3,                                      '+
'tborder_service.tbconfirm_order_id4,                                      '+
'tborder_service.success_service_id,                                       '+
'CONCAT(firstname,''  '',lastname) AS fullname,                              '+
'tbdepartment.dept_id,                                                     '+
'tbdepartment.dept_name,                                                   '+
'tbposition.post_id,                                                       '+
'tbposition.post_name                                                      '+
'FROM                                                                      '+
'tborder_service                                                           '+
'INNER JOIN tbposition ON tbposition.post_id = tborder_service.post_id     '+
'INNER JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id '+
 'WHERE  tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''and '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''    '+
 '  and tborder_service.engineer_order_confirm_id=1  and ' +
 'tborder_service.tbconfirm_order_id3=1';
open;
 end;


  //---------------------------------------------




 with qry_T4 do
 begin
    Close;
    sql.Text := ' select                                                   '+
'Count(tborder_service.tbconfirm_order_id4) AS count_tbconfirm_order_id4,  '+
'tborder_service.order_id,                                                 '+
'tborder_service.firstname,                                                '+
'tborder_service.lastname,                                                 '+
'tborder_service.date_service,                                             '+
'tborder_service.order_name,                                               '+
'tborder_service.details,                                                  '+
'tborder_service.worn_date,                                                '+
'tborder_service.dept_id,                                                  '+
'tborder_service.post_id,                                                  '+
'tborder_service.type_id,                                                  '+
'tborder_service.cor_id,                                                   '+
'tborder_service.tborder_servicecol,                                       '+
'tborder_service.tbstatus_status_id,                                       '+
'tborder_service.tbmember_mem_id,                                          '+
'tborder_service.id_tbapproved,                                            '+
'tborder_service.engineering_name,                                         '+
'tborder_service.engineer_order_confirm_id,                                '+
'tborder_service.tbconfirm_order_id1,                                      '+
'tborder_service.tbconfirm_order_id2,                                      '+
'tborder_service.tbconfirm_order_id3,                                      '+
'tborder_service.tbconfirm_order_id4,                                      '+
'tborder_service.success_service_id,                                       '+
'CONCAT(firstname,''  '',lastname) AS fullname,                              '+
'tbdepartment.dept_id,                                                     '+
'tbdepartment.dept_name,                                                   '+
'tbposition.post_id,                                                       '+
'tbposition.post_name                                                      '+
'FROM                                                                      '+
'tborder_service                                                           '+
'INNER JOIN tbposition ON tbposition.post_id = tborder_service.post_id     '+
'INNER JOIN tbdepartment ON tbdepartment.dept_id = tborder_service.dept_id '+
 'WHERE  tborder_service.date_service BETWEEN '''+FormatDateTime('yyyy-mm-dd',ds1.Date)+'''and '''+FormatDateTime('yyyy-mm-dd',ds2.Date)+'''    '+
 '  and tborder_service.engineer_order_confirm_id=1  and ' +
 'tborder_service.tbconfirm_order_id4=1';
open;
 end;








end;



procedure Tpurchase_frm.cxButton2Click(Sender: TObject);
begin
  Close;
    Main_frm.dxRibbon1.ShowTabGroups := True;
end;

procedure Tpurchase_frm.cxButton3Click(Sender: TObject);
begin
              with  qry_select  do
        begin
             Edit;
             FieldByName('tbconfirm_order_id1').Value :=1;
             post;
        end;
        qry_select.Refresh;
end;

procedure Tpurchase_frm.cxButton4Click(Sender: TObject);
begin
        with  qry_select  do
        begin
             Edit;
             FieldByName('tbconfirm_order_id2').Value :=1;
             post;
        end;
         qry_select.Refresh;
end;

procedure Tpurchase_frm.cxButton5Click(Sender: TObject);
begin
                with  qry_select  do
        begin
             Edit;
             FieldByName('tbconfirm_order_id4').Value :=1;
             post;
        end;
         qry_select.Refresh;
end;

procedure Tpurchase_frm.cxButton6Click(Sender: TObject);
begin
        with  qry_select  do
        begin
             Edit;
             FieldByName('tbconfirm_order_id3').Value :=1;
             post;
        end;
         qry_select.Refresh;
end;

procedure Tpurchase_frm.cxButton7Click(Sender: TObject);
begin
qry_select.Active := True;
qry_select.Refresh;
end;

procedure Tpurchase_frm.cxGrid4DBTableView1Column2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
   AText := IntToStr(ARecord.Index+1);
end;

procedure Tpurchase_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    purchase_frm := nil;
    Main_frm.dxRibbon1.ShowTabGroups := True;
end;

procedure Tpurchase_frm.FormShow(Sender: TObject);
begin
  ds1.Date := Now;
  ds2.Date := Now;
end;

end.
