unit language_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, dxGDIPlusClasses, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxGroupBox, RzBorder, RzStatus, RzPanel, Vcl.Menus,
  RzBHints, Data.DB, MemDS, DBAccess, Uni;

type
  Tlanguage_frm = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Image1: TImage;
    cxGroupBox2: TcxGroupBox;
    Image2: TImage;
    cxGroupBox3: TcxGroupBox;
    Image3: TImage;
    cxGroupBox4: TcxGroupBox;
    Image4: TImage;
    cxGroupBox5: TcxGroupBox;
    Image5: TImage;
    cxGroupBox6: TcxGroupBox;
    Image6: TImage;
    cxGroupBox7: TcxGroupBox;
    Image7: TImage;
    cxGroupBox8: TcxGroupBox;
    Image8: TImage;
    cxGroupBox9: TcxGroupBox;
    Image9: TImage;
    cxGroupBox10: TcxGroupBox;
    Image10: TImage;
    RzStatusBar1: TRzStatusBar;
    RzLEDDisplay1: TRzLEDDisplay;
    RzLEDDisplay2: TRzLEDDisplay;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ENGLISH1: TMenuItem;
    RzClockStatus1: TRzClockStatus;
    ds_Languae: TDataSource;
    qry_Language: TUniQuery;
    RzBalloonHints1: TRzBalloonHints;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  language_frm: Tlanguage_frm;

implementation

{$R *.dfm}

procedure Tlanguage_frm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;
end;

end.
