unit dept_frmU;

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
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, MemDS, DBAccess, Uni, RzButton,
  RzRadChk, RzPanel, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox, Vcl.ExtCtrls,
  dxGDIPlusClasses, cxTextEdit, Vcl.DBActns, System.Actions, Vcl.ActnList,
  cxLabel, Vcl.ImgList, cxDBEdit, RzDBNav;

type
  Tdept_frm = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dept_frm: Tdept_frm;

implementation

{$R *.dfm}

procedure Tdept_frm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin

  Resize := false;

end;

procedure Tdept_frm.FormShow(Sender: TObject);
begin
   UniQuery1.Active := true;
end;

procedure Tdept_frm.UniQuery1BeforePost(DataSet: TDataSet);
begin
  MessageDlg('บันทึกสำเร็จค่ะ', mtInformation, [mbOK], 0);
end;

end.
