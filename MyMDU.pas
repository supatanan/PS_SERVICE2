unit MyMDU;

interface

uses
  System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, INIFiles , Forms , dialogs;

type
  TMyMD = class(TDataModule)
    MyCon: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CheckConnection; // Check Connection
  end;

var
  MyMD: TMyMD;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TMyMD }

procedure TMyMD.CheckConnection;
var
  myINI : TINIFile;    //Include INIFiles
begin
  try //finally Check
    myINI:=TINIFile.Create('');   // Creage File=''
    try//Exception     //Create File MySetting.ini
      myINI := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'MySetting.ini');
      MyCon.Database := myINI.ReadString('CONNECT', 'DB',MyCon.Database);//dbname
      MyCon.ProviderName := 'MySQL';   //Database Type
      MyCon.Username := myINI.ReadString('CONNECT', 'USER',MyCon.Username);//username
      MyCon.Password := myINI.ReadString('CONNECT', 'PASS',MyCon.Password);//password
      MyCon.Server :=myINI.ReadString('CONNECT', 'SERVER',MyCon.Server);//server
      MyCon.Port :=StrToInt(myINI.ReadString('CONNECT', 'PORT',MyCon.Server));//port
      MyCon.LoginPrompt := False;//Don't Show Prompt
      MyCon.Connected:=True;//Start Connect
    Except
        On E: Exception do
        begin  //Message Error Connect Lost
        //MessageDlg('Connect Database ERROR '+ E.Message, mtError, [mbOK], 0);
        end;
    end;
  finally
       // MyCon.Free; //Free Component
  end;
end;

end.
