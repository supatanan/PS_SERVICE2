unit add_frm_itemsU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxGroupBox, Vcl.StdCtrls, Vcl.Mask, RzEdit, cxLabel,
  cxCheckBox, cxImage, cxDBEdit, dxGDIPlusClasses, Vcl.DBCtrls, Vcl.Menus,
  cxButtons, Data.DB, MemDS, DBAccess, Uni, RzLabel, RzDBCmbo, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, RzBHints,
  RzPanel, dxSkinsForm, dxStatusBar, dxRibbonStatusBar, cxCurrencyEdit, RzStatus,
  System.Actions, Vcl.ActnList, Vcl.DBActns, RzButton, Vcl.Buttons, RzDBEdit,
  Vcl.ComCtrls, RzDTP;

type
  Tadd_frm_items = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel11: TPanel;
    Panel13: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxButton1: TcxButton;
    qry_type: TUniQuery;
    ds_type: TDataSource;
    qry_unit: TUniQuery;
    ds_unit: TDataSource;
    RzEdit6: TRzEdit;
    cxDBImage1: TcxDBImage;
    RzLabel1: TRzLabel;
    qry_store: TUniQuery;
    ds_store: TDataSource;
    RzEdit10: TRzEdit;
    txtseach_unit_cc: TRzEdit;
    cxGroupBox3: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1type_name: TcxGridDBColumn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel14: TPanel;
    txtseach: TRzEdit;
    Label1: TLabel;
    RzEdit9: TRzEdit;
    cxGroupBox4: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel15: TPanel;
    Label2: TLabel;
    txt_seach_store: TRzEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    RzBalloonHints1: TRzBalloonHints;
    cxGroupBox5: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Panel16: TPanel;
    Label3: TLabel;
    txtseach_unit: TRzEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    cxGridDBTableView2unit_name: TcxGridDBColumn;
    RzStatusBar1: TRzStatusBar;
    cxCurrencyEdit1: TcxCurrencyEdit;
    RzEdit4: TRzEdit;
    RzMarqueeStatus1: TRzMarqueeStatus;
    ds_sent_max: TDataSource;
    qry_sent_max: TUniQuery;
    DBEdit7: TDBEdit;
    cxTextEdit1: TcxTextEdit;
    qry_items_images: TUniQuery;
    ds_items_images: TDataSource;
    txt_sn: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    img_id_picture: TEdit;
    Edit1: TEdit;
    ds_select: TDataSource;
    qry_select: TUniQuery;
    qry_sn: TUniQuery;
    ds_sn: TDataSource;
    RzDBEdit1: TRzDBEdit;
    cxButton4: TcxButton;
    qry_max_store_items: TUniQuery;
    ds_max_store_items: TDataSource;
    DBEdit8: TDBEdit;
    ds_insertmain: TDataSource;
    qry_insertmain: TUniQuery;
    Label4: TLabel;
    ds1: TRzDateTimePicker;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtseachKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1store_nameCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure txtseachKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1type_nameCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure txt_seach_storeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBColumn1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure RzEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure txtseach_unitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView2unit_nameCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure txtseach_unit_ccKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure qry_items_imagesBeforePost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure qry_max_store_itemsBeforePost(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure qry_insertmainNewRecord(DataSet: TDataSet);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_frm_items: Tadd_frm_items;

implementation

{$R *.dfm}

uses MyMDU, lote2_frmU;

procedure Tadd_frm_items.cxButton1Click(Sender: TObject);
begin

  with qry_items_images do
  begin
    Edit;
    FieldByName('sn_items').Value := img_id_picture.Text;
    post;
  end;

  with qry_insertmain do
  begin
    insert;
    FieldByName('id_items').Value := txt_sn.Text;
    FieldByName('items_name').Value := RzEdit2.Text; // srails_number
    FieldByName('detail').Value := RzEdit3.Text;
    FieldByName('Inventory').Value := RzEdit4.Text; // คงเหลือ
    FieldByName('price').Value := cxCurrencyEdit1.Text;
    FieldByName('tbunits_unit_id').Value := DBEdit5.Text;   // หน่วย นับ
    FieldByName('store_address_id').Value := DBEdit4.Text;    // สถานที่เก็บ
    FieldByName('tbtypeservice_type_id').Value := DBEdit1.Text;
    FieldByName('stock_min').Value := RzEdit6.Text;
    FieldByName('items_images_id').Value := img_id_picture.Text;
    FieldByName('lote_number_id').Value := txt_sn.Text;
    post;
  end;
end;


procedure Tadd_frm_items.cxButton2Click(Sender: TObject);
begin
   Tlote2_frm.Create(self).Show;
end;

procedure Tadd_frm_items.cxButton4Click(Sender: TObject);
begin
    close;
end;

procedure Tadd_frm_items.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
cxGroupBox3.Visible := false;
end;

procedure Tadd_frm_items.cxGrid1DBTableView1store_nameCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 //  cxGroupBox3.Visible := false;
end;

procedure Tadd_frm_items.cxGrid1DBTableView1type_nameCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  RzEdit9.Text := DBEdit2.Text ;
end;

procedure Tadd_frm_items.cxGridDBColumn1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 RzEdit10.Text := DBEdit3.Text ;
end;

procedure Tadd_frm_items.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
cxGroupBox4.Visible := false;
end;

procedure Tadd_frm_items.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
cxGroupBox5.Visible := false;
end;

procedure Tadd_frm_items.cxGridDBTableView2unit_nameCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 txtseach_unit_cc.Text := DBEdit6.Text ;
end;

procedure Tadd_frm_items.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
 Resize := False;
end;

procedure Tadd_frm_items.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 add_frm_items := nil;
end;

procedure Tadd_frm_items.FormShow(Sender: TObject);
begin
qry_type.Active := true;
qry_unit.Active := true;
qry_store.Active := true;
qry_items_images.Active := true;
qry_insertmain.Active := true;
 ds1.Date := Now;
 txt_sn.Text := RzDBEdit1.Text+DBEdit8.Text;
 qry_sent_max.Active := True;

img_id_picture.Text := cxTextEdit1.Text+DBEdit7.Text;
end;

procedure Tadd_frm_items.qry_insertmainNewRecord(DataSet: TDataSet);
begin
  MessageDlg('บันทึกสำเร็จค่ะ', mtInformation, [mbOK], 0);
end;

procedure Tadd_frm_items.qry_items_imagesBeforePost(DataSet: TDataSet);
begin

     txtseach_unit_cc.Clear;
     txt_sn.Clear;
     RzEdit2.Clear;
     RzEdit3.Clear;
     RzEdit4.Clear;
     cxCurrencyEdit1.Clear;
     RzEdit6.Clear;
     img_id_picture.Clear;
     RzEdit9.Clear;
     RzEdit10.Clear;
end;

procedure Tadd_frm_items.qry_max_store_itemsBeforePost(DataSet: TDataSet);
begin
   MessageDlg('บันทึกสำเร็จค่ะ', mtInformation, [mbOK], 0);
end;

procedure Tadd_frm_items.RzEdit10KeyPress(Sender: TObject; var Key: Char);
begin
   cxGroupBox4.Visible := true;
     txt_seach_store.SetFocus;
end;

procedure Tadd_frm_items.txtseachKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var j:string;
begin
        try
          if (Trim(txtseach.Text)='') then
          begin
                j := '""';
             qry_type.close;
             qry_type.Open;
             Exit;

          end
              else
                  begin
                      j:= txtseach.Text;
                      qry_type.Close;
                      qry_type.SQL.Text := 'select * from tbtypeservice where'+
                      '(type_name like ''%'+j+'%'')';
                      qry_type.Open;
                  end;
        Except
              on E:Exception do
              begin
                MessageDlg('Invalid', mtInformation, [mbOK], 0);
              end;
        end;
end;

procedure Tadd_frm_items.txtseachKeyPress(Sender: TObject; var Key: Char);
begin
     cxGroupBox3.Visible := true;
     txtseach.SetFocus;
end;

procedure Tadd_frm_items.txtseach_unitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var j:string;
begin
  try
    if (Trim(txtseach_unit.Text) = '') then
    begin
      j := '""';
      qry_unit.close;
      qry_unit.Open;
      Exit;

    end
    else
    begin
      j := txtseach_unit.Text;
      qry_unit.close;
      qry_unit.SQL.Text := 'select * from tbunits where' +
        '(unit_name like ''%' + j + '%'')';
      qry_unit.Open;
    end;
  Except
    on E: Exception do
    begin
      MessageDlg('Invalid', mtInformation, [mbOK], 0);
    end;
  end;
end;


procedure Tadd_frm_items.txtseach_unit_ccKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   cxGroupBox5.Visible := true;
     txtseach_unit.SetFocus;
end;

procedure Tadd_frm_items.txt_seach_storeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var j:string;
begin
 try
          if (Trim(txt_seach_store.Text)='') then
          begin
                j := '""';
             qry_store.close;
             qry_store.Open;
             Exit;

          end
              else
                  begin
                      j:= txt_seach_store.Text;
                      qry_store.Close;
                      qry_store.SQL.Text := 'select * from store_address where'+
                      '(store_name like ''%'+j+'%'')';
                      qry_store.Open;
                  end;
        Except
              on E:Exception do
              begin
                MessageDlg('Invalid', mtInformation, [mbOK], 0);
              end;
        end;
end;

end.
