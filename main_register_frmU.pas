unit main_register_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzGroupBar, RzPanel, Vcl.ExtCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Vcl.ImgList, cxControls,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxImageComboBox, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxGDIPlusClasses;

type
  Tmain_register_frm = class(TForm)
    Panel5: TPanel;
    cxButton2: TcxButton;
    RzToolbar2: TRzToolbar;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    cxImageList1: TcxImageList;
    qry_select: TUniQuery;
    ds_select: TDataSource;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1firstname: TcxGridDBColumn;
    cxGrid1DBTableView1lastname: TcxGridDBColumn;
    cxGrid1DBTableView1username: TcxGridDBColumn;
    cxGrid1DBTableView1password: TcxGridDBColumn;
    cxGrid1DBTableView1email: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    ImageList1: TImageList;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Label1: TLabel;
    Image4: TImage;
    Image6: TImage;
    Label2: TLabel;
    Image3: TImage;
    Image5: TImage;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure RzGroup1Items0Click(Sender: TObject);
    procedure RzGroup1Items1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main_register_frm: Tmain_register_frm;

implementation

{$R *.dfm}

uses register_frmU;

procedure Tmain_register_frm.cxButton2Click(Sender: TObject);
begin
   Close;
end;

procedure Tmain_register_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   main_register_frm := nil;
end;

procedure Tmain_register_frm.FormShow(Sender: TObject);
begin
qry_select.Active := True;
end;


procedure Tmain_register_frm.RzGroup1Items0Click(Sender: TObject);
begin
           Screen.Cursor := -11;
          if register_frm = nil then
          begin
              Application.CreateForm(Tregister_frm,register_frm);
              register_frm.Show;
          end;
           Screen.Cursor := 0;
end;

procedure Tmain_register_frm.RzGroup1Items1Click(Sender: TObject);
begin
   Close;
end;

end.
