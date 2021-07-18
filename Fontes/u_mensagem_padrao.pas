unit u_mensagem_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type
  Tfrm_mensagens_padrao = class(TForm)
    pnl_body: TPanel;
    shp_body: TShape;
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    pnl_confirmar: TPanel;
    pnl_cancelar: TPanel;
    spb_confirmar: TSpeedButton;
    spb_cancela: TSpeedButton;
    procedure spb_cancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mensagens_padrao: Tfrm_mensagens_padrao;

implementation

{$R *.dfm}

procedure Tfrm_mensagens_padrao.spb_cancelaClick(Sender: TObject);
begin
  Close;
end;

end.
