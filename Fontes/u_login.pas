unit u_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tform_login = class(TForm)
    pnl_fundo: TPanel;
    pnl_lateral: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    Label8: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Label9: TLabel;
    Edit2: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_login: Tform_login;

implementation

{$R *.dfm}

procedure Tform_login.FormResize(Sender: TObject);
begin
  pnl_fundo.Left := Round((form_login.Width - pnl_fundo.Width) / 2);
  pnl_fundo.Top  := Round((form_login.Height - pnl_fundo.Height) / 2);
end;

procedure Tform_login.SpeedButton1Click(Sender: TObject);
begin
 Close;
end;

end.
