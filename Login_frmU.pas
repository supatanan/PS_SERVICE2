unit Login_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Vcl.Mask, RzEdit, RzBHints,
  RzStatus,INIfiles, Data.DB, MemDS, DBAccess, Uni, cxControls, cxContainer,
  cxEdit, cxLabel;

type
  TLogin_frm = class(TForm)
    Image1: TImage;
    txtuser: TRzEdit;
    txtpass: TRzEdit;
    RzBalloonHints1: TRzBalloonHints;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    RzClockStatus1: TRzClockStatus;
    MyQuery: TUniQuery;
    DataSource1: TDataSource;
    cxLabel1: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login_frm: TLogin_frm;

implementation

{$R *.dfm}

uses MyMDU, ConnectU, Main_frmU, FrmSplashU;

procedure TLogin_frm.cxButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TLogin_frm.cxButton3Click(Sender: TObject);
var
INI : TINIFile;
begin
    try
      try
        screen.cursor:=crhourglass;
      MyQuery.Close;
      MyQuery.SQL.Text:=' SELECT * FROM tbmember ' +
      ' WHERE username='+QuotedStr(txtuser.Text)+' ' +
      ' AND password='+QuotedStr(txtpass.Text)+' ';
      MyQuery.Open;

      if MyQuery.recordcount > 0 then
      begin
           Close;
      end
       else
      begin
        MessageDlg('กรุณาตรวจสอบรหัสผ่านค่ะ', mtInformation, [mbOK], 0);
        txtuser.SetFocus;
        txtuser.SelectAll;
      end;
      Except On E:Exception do
      begin
        MessageDlg('กรุณาตรวจสอบการเชื่อมต่อ ฐานข้อมูลค่ะ', mtInformation, [mbOK], 0);
      end;

      end;
  finally
     screen.cursor:=crdefault;
end;

   INI := TINIFile.Create(ExtractFilePath(Application.ExeName) +
      'UserLog.ini');
    INI.WriteString('UserLog','UserName',txtuser.Text);
    INI.WriteString('UserLog','PassWord',txtpass.Text);


    Main_frm.Login_name := MyQuery.FieldByName('username').AsString;
    Main_frm.Login_pass := MyQuery.FieldByName('password').AsString;


end;

procedure TLogin_frm.cxLabel1Click(Sender: TObject);
begin
 ConnectFrm := TConnectFrm.Create(nil);
        try
          ConnectFrm.ShowModal;
        finally
            ConnectFrm.Free;
        end;

end;

procedure TLogin_frm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
   Resize := false;
end;

procedure TLogin_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
close;
end;

procedure TLogin_frm.FormShow(Sender: TObject);
begin
  txtuser.SetFocus;


end;

end.
