unit add_inbox_engerner_frmU;

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
  dxSkinXmas2008Blue, cxTextEdit, cxLabel, cxMemo, RzPanel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  Tadd_inbox_engerner_frm = class(TForm)
    cxTextEdit1: TcxTextEdit;
    cxMemo1: TcxMemo;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_inbox_engerner_frm: Tadd_inbox_engerner_frm;

implementation

{$R *.dfm}

uses inbox_engerner_frmU;

procedure Tadd_inbox_engerner_frm.cxButton1Click(Sender: TObject);
begin
        if cxTextEdit1.Text = '' then
        begin
            MessageDlg('กรุณาระบุรายการด้วยค่ะ', mtInformation, [mbOK], 0);
            cxTextEdit1.SetFocus;
             cxTextEdit1.Style.Color := clRed;
        end else
        with  inbox_engerner_frm.UniQuery1 do
          begin
              Insert;
              FieldValues['header'] := cxTextEdit1.Text;
              FieldValues['detail'] := cxMemo1.Text;
              FieldValues['s_time'] := Now;
              post;
              MessageDlg('บันทึกสำเร็จค่ะ', mtInformation, [mbOK], 0);

          end;

               

end;

procedure Tadd_inbox_engerner_frm.cxButton2Click(Sender: TObject);
begin
    Close;
end;

procedure Tadd_inbox_engerner_frm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize := False;
end;

procedure Tadd_inbox_engerner_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     add_inbox_engerner_frm := nil;
end;

end.
