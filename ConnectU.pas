unit ConnectU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls, Vcl.Menus, cxButtons,
  INIFiles, Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxSplitter, RzBckgnd,
  dxGDIPlusClasses, Vcl.Buttons, RzBorder, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxClasses;

type
  TConnectFrm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    txtServer: TEdit;
    Label2: TLabel;
    txtDatabase: TEdit;
    Label5: TLabel;
    txtUsername: TEdit;
    Label6: TLabel;
    txtPassword: TEdit;
    Label3: TLabel;
    txtPort: TcxSpinEdit;
    cxButton1: TcxButton;
    RzLEDDisplay1: TRzLEDDisplay;
    cxLookAndFeelController1: TcxLookAndFeelController;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  ConnectFrm: TConnectFrm;

implementation

{$R *.dfm}

uses MyMDU;

procedure TConnectFrm.btnCancelClick(Sender: TObject);
begin
 Close;    //ª‘¥øÕ√Ï¡
end;

procedure TConnectFrm.btnOkClick(Sender: TObject);
var
    myINI : TINIFile; // INI File
begin
  try   //Finally block
      try   //Except block
      myINI := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'MySetting.ini');
      myINI.WriteString('CONNECT', 'SERVER', txtServer.Text); // Write Server
      myINI.WriteString('CONNECT', 'DB', txtDatabase.Text); // Write Database
      myINI.WriteString('CONNECT', 'USER', txtUsername.Text); // Write User
      myINI.WriteString('CONNECT', 'PASS', txtPassword.Text ); // Write Password
      myINI.WriteString('CONNECT', 'PORT', txtPort.Text ); // Write Port
      myINI.Free;
        showmessage('Success');
      except
      on E:exception do  //E is object of type exception
      begin
        showmessage(E.Message);
      end;
    end;
  finally
     Close;
  end;
    MyMD.CheckConnection;
end;

procedure TConnectFrm.cxButton1Click(Sender: TObject);
var
    myINI : TINIFile; // INI File
begin
try   //Finally block
      try   //Except block
      myINI := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'MySetting.ini');
      myINI.WriteString('CONNECT', 'SERVER', txtServer.Text); // Write Server
      myINI.WriteString('CONNECT', 'DB', txtDatabase.Text); // Write Database
      myINI.WriteString('CONNECT', 'USER', txtUsername.Text); // Write User
      myINI.WriteString('CONNECT', 'PASS', txtPassword.Text ); // Write Password
      myINI.WriteString('CONNECT', 'PORT', txtPort.Text ); // Write Port
      myINI.Free;
        showmessage('Success');
      except
      on E:exception do  //E is object of type exception
      begin
        showmessage(E.Message);
      end;
    end;
  finally
     Close;
  end;
    MyMD.CheckConnection;
end;

procedure TConnectFrm.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TConnectFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
   Resize := false;
end;

procedure TConnectFrm.FormShow(Sender: TObject);
var
    myINI : TINIFile;         //use INIFiles
begin
if myINI=nil then// Check File INI have Create in project
begin
    txtServer.Text := 'localhost';
    txtDatabase.Text := 'hrd_db';
    txtUsername.Text := 'sa';
    txtPassword.Text := 'sa';
    txtPort.Text := '3306';
end;
try
    myINI := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'MySetting.ini');
    txtServer.Text := myINI.ReadString('CONNECT', 'SERVER',txtServer.Text);
    txtDatabase.Text := myINI.ReadString('CONNECT', 'DB',txtDatabase.Text);
    txtUsername.Text := myINI.ReadString('CONNECT', 'USER',txtUsername.Text);
    txtPassword.Text := myINI.ReadString('CONNECT', 'PASS',txtPassword.Text);
    txtPort.Text := myINI.ReadString('CONNECT', 'PORT',txtPort.Text);
finally
     myINI.Free;
end;
end;


procedure TConnectFrm.sBitBtn2Click(Sender: TObject);
begin
Close;
end;

end.
