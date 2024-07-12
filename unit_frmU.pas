unit unit_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, cxContainer, Vcl.DBActns,
  System.Actions, Vcl.ActnList, cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxGDIPlusClasses, Vcl.ExtCtrls, MemDS,
  DBAccess, Uni, cxDBEdit, Vcl.ImgList, RzPanel, RzDBNav;

type
  Tunit_frm = class(TForm)
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ImageList1: TImageList;
    RzDBNavigator1: TRzDBNavigator;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure UniQuery1BeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unit_frm: Tunit_frm;

implementation

{$R *.dfm}

procedure Tunit_frm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize := false;
end;

procedure Tunit_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   unit_frm  := nil;

end;

procedure Tunit_frm.FormShow(Sender: TObject);
begin
 UniQuery1.Active := true;
end;

procedure Tunit_frm.UniQuery1BeforePost(DataSet: TDataSet);
begin
 MessageDlg('บันทึกสำเร็จค่ะ', mtInformation, [mbOK], 0);
end;

end.
