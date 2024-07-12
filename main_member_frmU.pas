unit main_member_frmU;

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
  dxSkinsdxNavBarPainter, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, MemDS, DBAccess, Uni, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, Vcl.ImgList, dxNavBarCollns, dxNavBarBase, cxPC, dxNavBar,
  cxLabel, cxTextEdit,  cxgridstrs,cxfilterconsts,cxfiltercontrolstrs,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxSplitter, cxImage,
  cxDBEdit, RzGroupBar, RzPanel, Vcl.DBCtrls, RzDBCmbo, cxCheckBox, Vcl.Mask,
  RzEdit, RzDBNav, RzDBEdit, cxDBLookupComboBox, RzLabel, AdvGaugeCircle,
  AdvSmoothCapacityBar, AdvCircularProgress;

type
  Tmain_member_frm = class(TForm)
    main_select: TUniQuery;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1username: TcxGridDBColumn;
    cxGrid1DBTableView1password: TcxGridDBColumn;
    cxGrid1DBTableView1firstname: TcxGridDBColumn;
    cxGrid1DBTableView1lastname: TcxGridDBColumn;
    cxGrid1DBTableView1post_name: TcxGridDBColumn;
    cxGrid1DBTableView1dept_name: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel5: TPanel;
    cxButton2: TcxButton;
    cxSplitter1: TcxSplitter;
    DataSource1: TDataSource;
    cxImageList1: TcxImageList;
    qry_dept: TUniQuery;
    ds_dept: TDataSource;
    qry_position: TUniQuery;
    ds_position: TDataSource;
    Qry_status: TUniQuery;
    DataSource2: TDataSource;
    ds_status: TDataSource;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Panel2: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    cxLabel8: TcxLabel;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    txtUser: TRzEdit;
    txtPass: TRzEdit;
    txtFname: TRzEdit;
    txtLmame: TRzEdit;
    RzGroupBox1: TRzGroupBox;
    cxButton1: TcxButton;
    RzLabel1: TRzLabel;
    AdvSmoothCapacityBar1: TAdvSmoothCapacityBar;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxNavBar1Item1Click(Sender: TObject);
    procedure dxNavBar1Item2Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure RzGroup1Items1Click(Sender: TObject);
    procedure RzGroup1Items0Click(Sender: TObject);
    procedure main_selectBeforePost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main_member_frm: Tmain_member_frm;

implementation

{$R *.dfm}

uses MyMDU, register_frmU;

procedure Tmain_member_frm.cxButton1Click(Sender: TObject);
begin
           with main_select do
           begin
                  Insert;
                  FieldByName('username').Value  := txtUser.Text;
                  FieldByName('password').Value  := txtPass.Text;
                  FieldByName('firstname').Value  := txtFname.Text;
                  FieldByName('lastname').Value  := txtLmame.Text;
                  FieldByName('dept_id').Value  := qry_dept['dept_id'];
                  FieldByName('post_id').Value  := qry_position['post_id'];
                  FieldByName('ac_id').Value  := Qry_status['ac_id'];
                  FieldByName('Vdate').AsDateTime  := Now;
                  post;

           end;
        main_select.Refresh;
end;

procedure Tmain_member_frm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure Tmain_member_frm.cxButton3Click(Sender: TObject);
begin

main_select.Refresh;
end;

procedure Tmain_member_frm.cxGrid1DBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
      atext:= IntTostr(ARecord.Index+1);
end;

procedure Tmain_member_frm.dxNavBar1Item1Click(Sender: TObject);
begin
       if  register_frm  = nil    then
       begin
         Application.CreateForm(Tregister_frm,register_frm);
         register_frm.Show;
       end;
end;

procedure Tmain_member_frm.dxNavBar1Item2Click(Sender: TObject);
begin
   Close;
end;

procedure Tmain_member_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := cafree;
     main_member_frm := nil;
end;

procedure Tmain_member_frm.FormCreate(Sender: TObject);
begin
    cxSetResourceString(@scxGridGroupByBoxCaption,'รายการข้อมูลทั้งหมด');
end;

procedure Tmain_member_frm.FormShow(Sender: TObject);
begin
main_select.Active := true;
qry_dept.Active := True;
 Qry_status.Active := True;
qry_position.Active := true;
end;

procedure Tmain_member_frm.main_selectBeforePost(DataSet: TDataSet);
begin
  MessageDlg('บันทึกสำเร็จค่ะ', mtInformation, [mbOK], 0);
   txtUser.Clear;
   txtPass.Clear;
   txtFname.Clear;
   txtLmame.Clear;

end;

procedure Tmain_member_frm.RzGroup1Items0Click(Sender: TObject);
begin

  Screen.Cursor := -11;
  if register_frm = nil then
  begin
    Application.CreateForm(Tregister_frm, register_frm);
    register_frm.Show;
  end;
  Screen.Cursor := 0;

end;

procedure Tmain_member_frm.RzGroup1Items1Click(Sender: TObject);
begin
   Close;
end;

end.
