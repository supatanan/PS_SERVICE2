unit update_stock_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvCircularProgress, Vcl.ExtCtrls,
  Vcl.ImgList, cxGraphics, RzAnimtr,Vcl.Imaging.GIFImg, dxGDIPlusClasses,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxProgressBar;

type
  Tupdate_stock_frm = class(TForm)
    Panel2: TPanel;
    ProgressBar1: TAdvCircularProgress;
    bar1: TcxProgressBar;
    Timer2: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  update_stock_frm: Tupdate_stock_frm;

implementation

{$R *.dfm}

procedure Tupdate_stock_frm.FormShow(Sender: TObject);
begin
     Timer2.Enabled := true;
end;

procedure Tupdate_stock_frm.Timer2Timer(Sender: TObject);
begin
  bar1.Position := bar1.Position + 55;
      if bar1.Position = 100 then
      begin
           Timer2.Enabled := False;
        Close;
      end;

end;

end.
