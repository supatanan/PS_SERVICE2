unit FrmSplashU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TFrmSplash = class(TForm)
    Image1: TImage;
    tmMainTimer: TTimer;
    procedure tmMainTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

{$R *.dfm}

procedure TFrmSplash.tmMainTimerTimer(Sender: TObject);
begin
 tmMainTimer.Enabled := False;
end;

end.
