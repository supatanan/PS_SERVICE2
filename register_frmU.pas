unit register_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, dxCustomTileControl,
  cxClasses, dxTileControl, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  Vcl.ImgList, dxSkinsdxNavBarPainter, dxNavBarCollns, dxNavBarBase, dxNavBar,
  dxNavBarStyles, cxContainer, cxEdit, cxTextEdit, cxGroupBox, cxLabel,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxRadioGroup, RzPanel, cxCheckBox, RzEdit, Vcl.Mask, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MemDS, DBAccess,
  Uni, cxGridLevel, cxGridCustomView, cxGrid, RzLabel, RzButton, RzRadChk,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Buttons, System.Bluetooth,
  System.Bluetooth.Components, dxGDIPlusClasses, RzForms, RzDBEdit, Vcl.DBActns,
  System.Actions, Vcl.ActnList, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.DBCtrls, RzDBCmbo, cxDBEdit, RzDBChk, cxImage, cxImageComboBox, cxSplitter;

type
  Tregister_frm = class(TForm)
    ActionList1: TActionList;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    ImageList1: TImageList;
    ds_dept: TDataSource;
    ds_select: TDataSource;
    ds_position: TDataSource;
    ds_active: TDataSource;
    qry_active: TUniQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    txtuser: TRzEdit;
    txtpass: TRzEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    txt_firstname: TRzEdit;
    cxLabel4: TcxLabel;
    txt_lastname: TRzEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    qry_dept: TUniQuery;
    qry_select: TUniQuery;
    qry_position: TUniQuery;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    Qr_post: TUniQuery;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    ds_post: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxButton2Click(Sender: TObject);
    procedure Qr_postAfterPost(DataSet: TDataSet);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure qry_selectBeforePost(DataSet: TDataSet);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  register_frm: Tregister_frm;

implementation

{$R *.dfm}

uses Main_frmU, MyMDU, main_member_frmU;

procedure Tregister_frm.cxButton1Click(Sender: TObject);
begin

      with Qr_post do
      begin
           insert;
           FieldByName('username').Value := txtuser.Text;
           FieldByName('password').Value := txtpass.Text;
           FieldByName('firstname').Value := txt_firstname.Text;
           FieldByName('lastname').Value := txt_lastname.Text;
         //  FieldByName('dept_id').Value := cxDBTextEdit1.Text;
         //  FieldValues['dept_id'] := StrToInt(cxDBTextEdit1.Text);
           {
           if cxCheckBox1.Checked = true then
           begin
             FieldByName('status_id').Value := '1'; // user
           end
           else if cxCheckBox2.Checked = true then // ช่าง
           begin
             FieldByName('status_id').Value := '2';
           end
           else
                if cxCheckBox3.Checked = true then // จัดซ์้อ
           begin
             FieldByName('status_id').Value := '3';
           end
                else
              if cxCheckBox4.Checked = true then //  admin
           begin
             FieldByName('status_id').Value := '4';
           end;
           }

             post;
         end;

       //  main_member_frm.main_select.Refresh;

       end;




       procedure Tregister_frm.cxButton2Click(Sender: TObject);
begin
   Close;


          {
      with Qr_post do
      begin
           insert;
           FieldByName('username').Value := txtuser.Text;
           FieldByName('password').Value := txtpass.Text;
           FieldByName('firstname').Value := txt_firstname.Text;
           FieldByName('lastname').Value := txt_lastname.Text;
           FieldByName('date').AsDateTime :=  DateTimePicker1.Date;

           if cxCheckBox1.Checked = true  then
           begin
               FieldByName('status_id').Value := '0';
           end
               else
                  FieldByName('status_id').Value := '1';
           post;
      end;

      }




end;

procedure Tregister_frm.cxButton5Click(Sender: TObject);
begin
    close;
end;

procedure Tregister_frm.cxButton6Click(Sender: TObject);
begin
qry_dept.Active := True;
qry_select.Active := True;
qry_position.Active := true;
qry_active.Active := true;
end;

procedure Tregister_frm.cxGrid1DBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
 Atext := intTostr(ARecord.Index+1);
end;

procedure Tregister_frm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize := false;
end;

procedure Tregister_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  register_frm := nil;
end;

procedure Tregister_frm.FormShow(Sender: TObject);
begin
qry_dept.Active := True;
qry_select.Active := True;
qry_position.Active := true;
qry_active.Active := true;
  txtuser.SetFocus;
   Qr_post.Active := True;
end;

procedure Tregister_frm.qry_selectBeforePost(DataSet: TDataSet);
begin
       MessageDlg('บันทึกสำเร็จค่ะ', mtInformation, [mbOK], 0);
end;

procedure Tregister_frm.Qr_postAfterPost(DataSet: TDataSet);
begin
 MessageDlg('บันทึกสำเร็จค่ะ', mtInformation, [mbOK], 0);
end;

end.
