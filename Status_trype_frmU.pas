unit Status_trype_frmU;

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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxGroupBox, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons, RzBorder,
  dxGDIPlusClasses, Vcl.ImgList;

type
  TStatus_trype_frm = class(TForm)
    procedure Image1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Status_trype_frm: TStatus_trype_frm;

implementation

{$R *.dfm}

uses mian_order_service_frmU;

procedure TStatus_trype_frm.cxButton1Click(Sender: TObject);
begin
             with  mian_order_service_frm.qry_select  do
        begin
             Edit;
             FieldByName('tbstatus_trype_id').Value :=5;
             post;
        end;
end;

procedure TStatus_trype_frm.cxButton2Click(Sender: TObject);
begin
     with  mian_order_service_frm.qry_select  do
        begin
             Edit;
             FieldByName('tbstatus_trype_id').Value :=3;
             post;
        end;
end;

procedure TStatus_trype_frm.cxButton3Click(Sender: TObject);
begin
                 with  mian_order_service_frm.qry_select  do
        begin
             Edit;
             FieldByName('tbstatus_trype_id').Value :=2;
             post;
        end;
end;

procedure TStatus_trype_frm.cxButton5Click(Sender: TObject);
begin
              with  mian_order_service_frm.qry_select  do
        begin
             Edit;
             FieldByName('tbstatus_trype_id').Value :=4;
             post;
        end;
end;

procedure TStatus_trype_frm.Image1Click(Sender: TObject);
begin
      Close;
end;

end.
