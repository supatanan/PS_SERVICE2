unit report_frmê;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  Treport_frm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report_frm: Treport_frm;

implementation

{$R *.dfm}

procedure Treport_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
  order_service_frm := nil;
end;

end.
