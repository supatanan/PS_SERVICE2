unit inbox_engerner_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzGroupBar, RzPanel, Vcl.ExtCtrls,
  Vcl.ImgList, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxContainer, cxLabel, MemDS, DBAccess, Uni;

type
  Tinbox_engerner_frm = class(TForm)
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    cxImageList1: TcxImageList;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxButton1: TcxButton;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    cxGrid1DBTableView1header: TcxGridDBColumn;
    cxGrid1DBTableView1detail: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure FormShow(Sender: TObject);
    procedure RzGroup1Items0Click(Sender: TObject);
    procedure RzGroup1Items1Click(Sender: TObject);
    procedure RzGroup1Items2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inbox_engerner_frm: Tinbox_engerner_frm;

implementation

{$R *.dfm}

uses MyMDU, add_inbox_engerner_frmU,cxGridExportLink,ShellApi;

procedure Tinbox_engerner_frm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Tinbox_engerner_frm.cxGrid1DBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.Index+1);
end;

procedure Tinbox_engerner_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
    inbox_engerner_frm := nil;
end;

procedure Tinbox_engerner_frm.FormShow(Sender: TObject);
begin
UniQuery1.Active :=True;
end;

procedure Tinbox_engerner_frm.RzGroup1Items0Click(Sender: TObject);
begin
         if add_inbox_engerner_frm = nil then
         begin
           Application.CreateForm(Tadd_inbox_engerner_frm,add_inbox_engerner_frm);
           add_inbox_engerner_frm.Show;
         end;

end;

procedure Tinbox_engerner_frm.RzGroup1Items1Click(Sender: TObject);
begin
    ExportGridToExcel('Export.xls',cxGrid1, True, True, True);
  ShellExecute(Handle, 'open', PChar('Export.xls'), nil, nil, SW_NORMAL);
end;

procedure Tinbox_engerner_frm.RzGroup1Items2Click(Sender: TObject);
begin

Close;
end;

end.
