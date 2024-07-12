unit service_img_frmU;

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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxImage,
  cxDBEdit, Vcl.ExtCtrls, cxGroupBox, MemDS, DBAccess, Uni, cxDBNavigator,
  Vcl.Menus, cxSplitter, Vcl.StdCtrls, cxButtons, Vcl.DBActns, System.Actions,
  Vcl.ActnList, cxLabel;

type
  Tservice_img_frm = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox1: TcxGroupBox;
    cxDBImage1: TcxDBImage;
    qry_gent_img_id: TUniQuery;
    ds_gen_img_id: TDataSource;
    cxGrid1DBTableView1auto_id: TcxGridDBColumn;
    cxGrid1DBTableView1service_img_id: TcxGridDBColumn;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxSplitter1: TcxSplitter;
    ActionList1: TActionList;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    Panel4: TPanel;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure qry_gent_img_idBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  service_img_frm: Tservice_img_frm;

implementation

{$R *.dfm}

procedure Tservice_img_frm.FormShow(Sender: TObject);
begin
qry_gent_img_id.Active := true;
end;

procedure Tservice_img_frm.qry_gent_img_idBeforePost(DataSet: TDataSet);
begin
 MessageDlg('จัดเก็บภาพเข้าระบบ สำเร็จค่ะ', mtInformation, [mbOK], 0);
 close;
end;

end.
