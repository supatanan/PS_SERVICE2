unit companey_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  Vcl.StdCtrls, cxButtons, cxControls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, MemDS, DBAccess, Uni, RzDlgBtn,
  cxContainer, cxMemo, cxTextEdit, cxLabel, dxBarBuiltInMenu, cxPC, cxImage,
  cxDBEdit, System.Actions, Vcl.ActnList, Vcl.DBActns, cxDBNavigator;

type
  Tcompaney_frm = class(TForm)
    Panel2: TPanel;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    RzStatusBar1: TRzStatusBar;
    RzToolbar1: TRzToolbar;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txt_hos_id: TcxTextEdit;
    txt_hos_name: TcxTextEdit;
    txt_address: TcxMemo;
    txt_tell: TcxTextEdit;
    cxButton1: TcxButton;
    cxPageControl2: TcxPageControl;
    s: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxDBImage1: TcxDBImage;
    Label6: TLabel;
    ActionList1: TActionList;
    UniQuery1id: TIntegerField;
    UniQuery1companey_id: TWideStringField;
    UniQuery1comp_name: TWideStringField;
    UniQuery1address: TWideMemoField;
    UniQuery1phone: TWideStringField;
    UniQuery1fax: TWideStringField;
    UniQuery1cc_img: TBlobField;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    cxButton3: TcxButton;
    txt_fax: TcxTextEdit;
    PopupMenu1: TPopupMenu;
    cd1: TMenuItem;
    N1: TMenuItem;
    edit2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cd1Click(Sender: TObject);
    procedure edit2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure UniQuery1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  companey_frm: Tcompaney_frm;

implementation

{$R *.dfm}

uses MyMDU;

procedure Tcompaney_frm.cd1Click(Sender: TObject);
begin
cxButton1.Visible := False;
edit2.Visible := True;
                with UniQuery1 do
         begin

          txt_hos_id.Text :=   FieldByName('companey_id').Value ;
          txt_hos_name.Text  :=   FieldByName('comp_name').Value ;
           txt_address.Text :=  FieldByName('address').Value  ;
           txt_tell.Text :=  FieldByName('phone').Value   ;
           txt_fax.Text   := FieldByName('fax').Value  ;

         end;
end;

procedure Tcompaney_frm.cxButton1Click(Sender: TObject);
begin
         with UniQuery1 do
         begin
              Insert;
              FieldByName('companey_id').Value := txt_hos_id.Text ;
              FieldByName('comp_name').Value := txt_hos_name.Text ;
              FieldByName('address').Value := txt_address.Text ;
              FieldByName('phone').Value := txt_tell.Text ;
              FieldByName('fax').Value := txt_fax.Text ;
              post;
         end;
end;

procedure Tcompaney_frm.cxButton2Click(Sender: TObject);
begin
       //   MessageDlg('เพิ่มรายการเรียบร้อยค่ะ', mtInformation, [mbOK], 0);
end;

procedure Tcompaney_frm.edit2Click(Sender: TObject);
begin
    with UniQuery1 do
         begin
              Edit;
              FieldByName('companey_id').Value := txt_hos_id.Text ;
              FieldByName('comp_name').Value := txt_hos_name.Text ;
              FieldByName('address').Value := txt_address.Text ;
              FieldByName('phone').Value := txt_tell.Text ;
              FieldByName('fax').Value := txt_fax.Text ;
              post;
         end;
end;

procedure Tcompaney_frm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
       Resize := False;
end;

procedure Tcompaney_frm.FormShow(Sender: TObject);
begin
UniQuery1.Active := True;
end;

procedure Tcompaney_frm.N1Click(Sender: TObject);
begin
        if (MessageDlg('ยืนยันการลบข้อมูล', mtInformation, [mbYes, mbNo], 0)
          in [mrYes]) then
        begin
          with UniQuery1 do
          begin
            Edit;
            FieldByName('companey_id').Value := txt_hos_id.Text;
            FieldByName('comp_name').Value := txt_hos_name.Text;
            FieldByName('address').Value := txt_address.Text;
            FieldByName('phone').Value := txt_tell.Text;
            FieldByName('fax').Value := txt_fax.Text;
            Delete;
          end;

        end  Else
                   CancelDrag;

      end;

      procedure Tcompaney_frm.UniQuery1BeforePost(DataSet: TDataSet);
begin
         MessageDlg('บันททึกสำเร็จค่ะ', mtInformation, [mbOK], 0);
end;

end.
