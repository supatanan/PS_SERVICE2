unit order_service_frmU;

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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, dxSkinsdxBarPainter,
  cxColorComboBox, cxContainer, cxEdit, cxTextEdit, cxLabel, cxGroupBox, dxBar,
  cxBarEditItem, cxClasses, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, RzPanel,
  Vcl.ExtCtrls, dxGDIPlusClasses, RzDlgBtn, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxSplitter, Vcl.ComCtrls, Vcl.Menus, cxButtons, RzDTP, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.DBCtrls,
  MemDS, DBAccess, Uni, cxImageComboBox, Vcl.ImgList, cxImage, cxDBEdit,
  RzBorder, AdvCircularProgress, RzPrgres, cxProgressBar, RzBHints,
  cxPivotGridChartConnection, cxCheckBox, cxDBLabel, dxCore, cxDateUtils,
  cxCalendar;

type
  Torder_service_frm = class(TForm)
    Panel1: TPanel;
    RzPanel2: TRzPanel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    RzDialogButtons1: TRzDialogButtons;
    cxSplitter1: TcxSplitter;
    qry_typt: TUniQuery;
    ds_type: TDataSource;
    qry_emr: TUniQuery;
    ds_emr: TDataSource;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Image1: TImage;
    RzLabel1: TRzLabel;
    txtname: TRzLabel;
    ds_gen: TDataSource;
    qry_gen: TUniQuery;
    Timer1: TTimer;
    bar1: TcxProgressBar;
    Timer2: TTimer;
    txt_auto_gen_img: TcxTextEdit;
    ds_gen_img_id: TDataSource;
    qry_gent_img_id: TUniQuery;
    qry_insert__img: TUniQuery;
    ds_insert_img: TDataSource;
    qry_post_img: TUniQuery;
    ds_post_img: TDataSource;
    ds_post_main: TDataSource;
    qry_post_main: TUniQuery;
    RzBalloonHints1: TRzBalloonHints;
    cxButton5: TcxButton;
    g: TRzBalloonHints;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxImageList3: TcxImageList;
    cxImageList4: TcxImageList;
    Image8: TImage;
    RzLabel7: TRzLabel;
    Image9: TImage;
    RzLabel8: TRzLabel;
    cxPageControl3: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    Image7: TImage;
    cxGroupBox4: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txrfname: TRzEdit;
    txtlname: TRzEdit;
    RzDateTimePicker1: TRzDateTimePicker;
    RzDateTimePicker2: TRzDateTimePicker;
    cxButton2: TcxButton;
    tt_mem_id: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    RzEdit2: TRzEdit;
    RzEdit5: TRzEdit;
    txtdept_id: TRzEdit;
    txt_post_id: TRzEdit;
    cxGroupBox6: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    txtdetails: TRzMemo;
    txtorder_name: TRzEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    cxButton1: TcxButton;
    txttype_id: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    db_fristname: TDBEdit;
    db_lastname: TDBEdit;
    db_dept_id: TDBEdit;
    db_position_id: TDBEdit;
    db_deptname: TDBEdit;
    db_position_name: TDBEdit;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    cxTabSheet7: TcxTabSheet;
    Panel3: TPanel;
    cxGroupBox7: TcxGroupBox;
    cxDBImage1: TcxDBImage;
    qry_A1: TUniQuery;
    ds_A1: TDataSource;
    lable_A1: TcxDBLabel;
    qry_B2_2: TUniQuery;
    ds_B2_2: TDataSource;
    lable_B2_2: TcxDBLabel;
    lable_B2_1: TcxDBLabel;
    qry_B2_1: TUniQuery;
    ds_B2_1: TDataSource;
    ds_B2_3: TDataSource;
    qry_B2_3: TUniQuery;
    cxDBLabel1: TcxDBLabel;
    D4: TcxGridDBColumn;
    cxImageList5: TcxImageList;
    Que_gen: TUniQuery;
    Ds_gen1: TDataSource;
    Image6: TImage;
    RzLabel2: TRzLabel;
    RzLabel9: TRzLabel;
    Image10: TImage;
    Image11: TImage;
    RzLabel10: TRzLabel;
    Image12: TImage;
    RzLabel11: TRzLabel;
    Image13: TImage;
    RzLabel12: TRzLabel;
    Image14: TImage;
    RzLabel13: TRzLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    Ds_c_1: TDataSource;
    qry_c_1: TUniQuery;
    qry_c_2: TUniQuery;
    Ds_c_2: TDataSource;
    qry_c_4: TUniQuery;
    qry_c_3: TUniQuery;
    Ds_c_3: TDataSource;
    Ds_c_4: TDataSource;
    qry_c_5: TUniQuery;
    Ds_c_5: TDataSource;
    cxDBLabel6: TcxDBLabel;
    qry_d_0: TUniQuery;
    ds_d_0: TDataSource;
    cxDBLabel7: TcxDBLabel;
    DBEdit3: TDBEdit;
    qry_emrorder_id: TIntegerField;
    qry_emrfirstname: TWideStringField;
    qry_emrlastname: TWideStringField;
    qry_emrdate_service: TDateField;
    qry_emrorder_name: TWideStringField;
    qry_emrdetails: TWideStringField;
    qry_emrworn_date: TDateField;
    qry_emrdept_id: TIntegerField;
    qry_emrpost_id: TIntegerField;
    qry_emrtype_id: TIntegerField;
    qry_emrcor_id: TIntegerField;
    qry_emrtborder_servicecol: TWideStringField;
    qry_emrtborder_service_img_ser_img_id: TWideStringField;
    qry_emrtbstatus_status_id: TIntegerField;
    qry_emrtbmember_mem_id: TIntegerField;
    qry_emrengineering_name: TWideStringField;
    qry_emrid_tbapproved: TIntegerField;
    qry_emrengineer_order_confirm_id: TIntegerField;
    qry_emrtbconfirm_order_id1: TIntegerField;
    qry_emrtbconfirm_order_id2: TIntegerField;
    qry_emrtbconfirm_order_id3: TIntegerField;
    qry_emrtbconfirm_order_id4: TIntegerField;
    qry_emrsuccess_service_id: TIntegerField;
    qry_emrorder_for_items_id: TWideStringField;
    qry_emrtrainsaction_trype_id: TWideStringField;
    qry_emrtbstatus_trype_id: TWideStringField;
    qry_show_img: TUniQuery;
    ds_show_img: TDataSource;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel2: TPanel;
    txt_seach: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox10: TcxGroupBox;
    txt_order_id: TDBEdit;
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
    qry_selecttbstatus_trype_id: TWideStringField;
    ds_select: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1order_id: TcxGridDBColumn;
    cxGrid2DBTableView1firstname: TcxGridDBColumn;
    cxGrid2DBTableView1lastname: TcxGridDBColumn;
    cxGrid2DBTableView1date_service: TcxGridDBColumn;
    cxGrid2DBTableView1order_name: TcxGridDBColumn;
    cxGrid2DBTableView1details: TcxGridDBColumn;
    cxGrid2DBTableView1worn_date: TcxGridDBColumn;
    cxGrid2DBTableView1engineering_name: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    img_icon_order: TImageList;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    img_icon_status: TcxImageList;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    vr_mem_id: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzDialogButtons1ClickCancel(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1Column2GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid1DBTableView1Column3GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBTableView2Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure txt_seachKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid4DBTableView1Column2GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid2DBTableView1Column2GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
  private
    { Private declarations }
  public
   mem_id:string;
    { Public declarations }
  end;

var
  order_service_frm: Torder_service_frm;

implementation

{$R *.dfm}

uses MyMDU, Main_frmU, service_img_frmU, update_stock_frmU;

procedure Torder_service_frm.cxButton1Click(Sender: TObject);
begin
  qry_gent_img_id.Refresh;
  Edit1.Text := txt_auto_gen_img.Text+DBEdit1.Text;

  with qry_post_img do
  begin
      insert;
      FieldByName('service_img_id').Value := Edit1.Text;
      post;
  end;


 Tservice_img_frm.Create(self).Show;

end;

procedure Torder_service_frm.cxButton2Click(Sender: TObject);
begin

      //  RzEdit4.Text  :=  qry_gen.FieldByName('lastname').AsString ;
        cxLabel1.Visible := true;
         tt_mem_id.Visible := true;
        txrfname.Text := db_fristname.Text;
        txtlname.Text := db_lastname.Text;
        txtdept_id.Text := db_dept_id.Text;
        RzEdit2.Text := db_deptname.Text;
        txt_post_id.Text :=  db_position_id.Text;
        RzEdit5.Text := db_position_name.Text;
      //  RzEdit3.Text := qry_gen.FieldByName('f
end;

procedure Torder_service_frm.cxButton3Click(Sender: TObject);
begin
  close;

end;

procedure Torder_service_frm.cxButton4Click(Sender: TObject);
begin

         if txtorder_name.Text = '' then
         begin
             MessageDlg('กรุณาระบุ'+#13+#10+'หัวขัวการแจ้งซ่อมด้วยค่ะ', mtInformation, [mbOK], 0);
              txtorder_name.SetFocus;
              txtorder_name.FocusColor := clRed;
         end  else
         begin
               Tupdate_stock_frm.Create(self).Show;
               Timer2.Enabled := true;
             with qry_post_main do
             begin
               insert;

           FieldByName('tbmember_mem_id').Value := tt_mem_id.Text;
           FieldByName('firstname').Value := txrfname.Text;
           FieldByName('lastname').Value := txtlname.Text;
           FieldByName('dept_id').Value := txtdept_id.Text;
           FieldByName('post_id').Value := txt_post_id.Text;
           FieldByName('cor_id').Value := 0;
           FieldByName('type_id').Value := StrToInt(txttype_id.Text);
           FieldByName('order_name').Value := txtorder_name.Text;
           FieldByName('details').Value := txtdetails.Text;
           FieldByName('date_service').AsDateTime := RzDateTimePicker1.Date;
           FieldByName('worn_date').AsDateTime := RzDateTimePicker2.Date;
           FieldByName('tborder_service_img_ser_img_id').Value := Edit1.Text;
           FieldByName('id_tbapproved').Value := 1;
           FieldByName('tborder_servicecol').Value := 1;
           FieldByName('trainsaction_trype_id').Value := 0;
           FieldByName('success_service_id').Value := 0;
           FieldByName('tbstatus_trype_id').Value := 0;
           FieldByName('tbstatus_status_id').Value := 1;

           FieldByName('tbconfirm_order_id1').Value := 0;
           FieldByName('tbconfirm_order_id2').Value := 0;
           FieldByName('tbconfirm_order_id3').Value := 0;
           FieldByName('tbconfirm_order_id4').Value := 0;

            if cxCheckBox1.Checked = true then
               begin

               FieldByName('trainsaction_trype_id').Value := 1;

               end
               else if cxCheckBox2.Checked = true then
               begin

                 FieldByName('trainsaction_trype_id').Value := 2;

               end
               else if cxCheckBox3.Checked = true then
               begin

                FieldByName('trainsaction_trype_id').Value := 3;

               end;


              post;



             end;


         end;










end;



procedure Torder_service_frm.cxButton5Click(Sender: TObject);
begin
  //qry_emr.Refresh;
     update_stock_frm :=  Tupdate_stock_frm.Create(nil);
       try
           update_stock_frm.ShowModal;
       finally
           update_stock_frm.Free;
       end;
end;

procedure Torder_service_frm.cxGrid1DBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
   AText := IntToStr(ARecord.Index+1);
end;

procedure Torder_service_frm.cxGrid1DBTableView1Column2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
//  AText := IntToStr(ARecord.Index+1) ;
end;

procedure Torder_service_frm.cxGrid1DBTableView1Column3GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
 AText := IntToStr(ARecord.Index+1) ;
end;

procedure Torder_service_frm.cxGrid2DBTableView1Column2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
   AText := IntToStr(ARecord.Index+1) ;

end;

procedure Torder_service_frm.cxGrid4DBTableView1Column2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.Index+1);
end;

procedure Torder_service_frm.cxGridDBTableView2Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
// atext:= IntTostr(ARecord.Index+1);
AText := IntToStr(ARecord.Index+1);
end;

procedure Torder_service_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  order_service_frm := nil;
end;

procedure Torder_service_frm.FormShow(Sender: TObject);
var gen_y:string;


begin
  vr_mem_id.Text := Main_frm.txtmember_id.Text;
  qry_post_main.Active := true;
  qry_insert__img.Active := true;
   RzDateTimePicker1.Date := Now;
   RzDateTimePicker2.Date := Now;
  qry_post_img.Active := true;
  qry_typt.Active := true;
  qry_emr.Active := true;
  // qry_gen.Active := true;

  //qry_show_img.Active := True;
  qry_gent_img_id.Active := true;
  cxButton1.Caption := 'เพิ่มรูปภาพ';

  RzDateTimePicker1.Date := Now;
  RzDateTimePicker2.Date := Now;

  with qry_gen do
    begin
       Close;
       sql.Text:=  ' SELECT                                             '+
' tbmember.mem_id,                                                      '+
'tbmember.username,                                                     '+
'tbmember.`password`,                                                   '+
'tbmember.firstname,                                                    '+
'tbmember.lastname,                                                     '+
'tbmember.email,                                                        '+
'tbmember.dept_id,                                                      '+
'tbmember.post_id,                                                      '+
'tbmember.ac_id,                                                        '+
'tbposition.post_id,                                                    '+
'tbposition.post_name,                                                  '+
'tbdepartment.dept_id,                                                  '+
'tbdepartment.dept_name                                                 '+
'FROM                                                                   '+
'tbmember                                                               '+
'INNER JOIN tbposition ON tbposition.post_id = tbmember.post_id         '+
'INNER JOIN tbdepartment ON tbdepartment.dept_id = tbmember.dept_id     '+
'where tbmember.mem_id='''+vr_mem_id.Text+''' ';

       open;
    end;



   txtname.Caption := ''+Main_frm.txtfullname.Text ;
   Edit1.Text := txt_auto_gen_img.Text+DBEdit1.Text;


   mem_id := Main_frm.member_id ;
    //===============  ส่วนที่รับค่า จาก ID
   with qry_emr do
  begin
    close;
    sql.Text := 'SELECT * from tborder_service      ' +
      ' where tbmember_mem_id=''' + vr_mem_id.Text + '''   ' +
      '  ORDER BY date_service ASC';
    open;
  end;


  //  qry_B2_1.Active := True;
 //  qry_B2_2.Active := True;
  // qry_B2_3.Active := True;
 //  qry_A1.Active := True;



 with qry_A1 do
 begin
 Close;
 sql.Text := 'SELECT COUNT(id_tbapproved)as _count_id_tbapproved  from tborder_service  where id_tbapproved=1  '+
 '   and tbmember_mem_id='''+ vr_mem_id.Text+'''    ';
 open;

 end;


 with qry_B2_2 do
 begin
 Close;
 sql.Text :='SELECT COUNT(trainsaction_trype_id)as _trainsaction_trype_id  from tborder_service  '+
   ' WHERE trainsaction_trype_id=2   and tbmember_mem_id='''+ vr_mem_id.Text+'''    ';
 open;

 end;


 with qry_B2_1 do
 begin
 Close;
 sql.Text := 'SELECT COUNT(trainsaction_trype_id)as _trainsaction_trype_id  from tborder_service  '+
   '  WHERE trainsaction_trype_id=1   and tbmember_mem_id='''+ vr_mem_id.Text+'''     ' ;
 open;

 end;



 with qry_B2_3 do
 begin
 Close;
 sql.Text := 'SELECT COUNT(trainsaction_trype_id)as _trainsaction_trype_id  from tborder_service '+
   '  WHERE trainsaction_trype_id=3   and tbmember_mem_id='''+ vr_mem_id.Text+'''     ' ;
 open;

 end;


 with qry_c_1 do
 begin
 Close;
 sql.Text := 'SELECT COUNT(tbstatus_trype_id)as cc_tbstatus_trype_id  from tborder_service '+
             ' WHERE tbstatus_trype_id=1  and tbmember_mem_id='''+ vr_mem_id.Text+'''    ';
 open;

 end;

  with qry_c_2 do
 begin
 Close;
 sql.Text := 'SELECT COUNT(tbstatus_trype_id)as cc_tbstatus_trype_id  from tborder_service '+
             ' WHERE tbstatus_trype_id=2  and tbmember_mem_id='''+ vr_mem_id.Text+'''    ';
 open;

 end;

   with qry_c_3 do
 begin
 Close;
 sql.Text := 'SELECT COUNT(tbstatus_trype_id)as cc_tbstatus_trype_id  from tborder_service '+
             'WHERE tbstatus_trype_id=3  and tbmember_mem_id='''+ vr_mem_id.Text+'''    ';
 open;

 end;



     with qry_c_4 do
 begin
 Close;
 sql.Text := 'SELECT COUNT(tbstatus_trype_id)as cc_tbstatus_trype_id  from tborder_service '+
             'WHERE tbstatus_trype_id=4   and tbmember_mem_id='''+ vr_mem_id.Text+'''    ';
 open;

 end;



     with qry_c_5 do
 begin
 Close;
 sql.Text :='SELECT COUNT(tbstatus_trype_id)as cc_tbstatus_trype_id  from ' +
    'tborder_service  WHERE tbstatus_trype_id=5   and  tbmember_mem_id='''+ vr_mem_id.Text+'''    ';
 open;

 end;


      with qry_d_0 do
 begin
 Close;
 sql.Text := 'SELECT COUNT(success_service_id)as cc_success  from tborder_service '+
             ' WHERE success_service_id=0  and tbmember_mem_id='''+vr_mem_id.Text+'''    ';
 open;

 end;



  end;

  procedure Torder_service_frm.RzDialogButtons1ClickCancel(Sender: TObject);
begin
    close;
end;

procedure Torder_service_frm.Timer1Timer(Sender: TObject);
//  var
 // i : integer;
begin
{
  bar.Position := bar.Position+70;
   if bar.Position = 100 then
   begin
       ProgressBar1.Visible := false;
       Panel2.Visible := false;
        cxLabel1.Visible := true;
         cxTextEdit1.Visible := true;
        txrfname.Text := db_fristname.Text;
        txtlname.Text := db_lastname.Text;
        txtdept_id.Text := db_dept_id.Text;
        RzEdit2.Text := db_deptname.Text;
        txt_post_id.Text :=  db_position_id.Text;
        RzEdit5.Text := db_position_name.Text;
   end;

     }


end;

procedure Torder_service_frm.Timer2Timer(Sender: TObject);
begin
     bar1.Position := bar1.Position + 55;
      if bar1.Position = 100 then
      begin
           Timer2.Enabled := False;
        MessageDlg('บันทึกสำเร็จค่ะ', mtInformation, [mbOK], 0);


            bar1.Clear;
            qry_emr.Refresh;
      end;

end;

procedure Torder_service_frm.txt_seachKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var  j:string;
begin

  try
      if (Trim( txt_seach.Text)='') then
      begin
          j := '"" ';
        qry_show_img.close;
        qry_show_img.open;
        Exit;
      end
      else
      begin
        j := txt_seach.Text;
        qry_show_img.close;
        qry_show_img.sql.Text := 'select                              '+
'tborder_service.order_id,                                            '+
'tborder_service.firstname,                                           '+
'tborder_service.lastname,                                            '+
'tborder_service.date_service,                                        '+
'tborder_service.order_name,                                          '+
'tborder_service.details,                                             '+
'tborder_service.worn_date,                                           '+
'tborder_service.dept_id,                                             '+
'tborder_service.post_id,                                             '+
'tborder_service.type_id,                                             '+
'tborder_service.cor_id,                                              '+
'tborder_service.tborder_servicecol,                                  '+
'tborder_service.tborder_service_img_ser_img_id,                      '+
'tborder_service.tbstatus_status_id,                                  '+
'tborder_service.tbmember_mem_id,                                     '+
'tborder_service.engineering_name,                                    '+
'tborder_service.id_tbapproved,                                       '+
'tborder_service.engineer_order_confirm_id,                           '+
'tborder_service.tbconfirm_order_id1,                                 '+
'tborder_service.tbconfirm_order_id2,                                 '+
'tborder_service.tbconfirm_order_id3,                                 '+
'tborder_service.tbconfirm_order_id4,                                 '+
'tborder_service.success_service_id,                                  '+
'tborder_service.order_for_items_id,                                  '+
'tborder_service.trainsaction_trype_id,                               '+
'tborder_service.tbstatus_trype_id,                                   '+
'tbservice_img.auto_id,                                               '+
'tbservice_img.id_tbservice_img,                                      '+
'tbservice_img.service_img_id                                         '+
'FROM                                                                 '+
'tborder_service                                                      '+
'LEFT OUTER JOIN tbservice_img ON tbservice_img.service_img_id = ' +
'tborder_service.tborder_service_img_ser_img_id   '+
'where tborder_service.tbmember_mem_id='''+Main_frm.txt_mem_id.text+'''   '+
' and  (tborder_service.order_id like ''%'+j+'%'') '  ;
qry_show_img.open;
end;
Except
        on E: Exception  do
        begin
           ShowMessage('Invalid');
        end;

    end;
end;

end.
