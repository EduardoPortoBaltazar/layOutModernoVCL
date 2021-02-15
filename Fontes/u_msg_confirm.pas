unit u_msg_confirm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls;

type
  Tform_msn_confirm = class(TForm)
    pnl_fundo: TPanel;
    img_sistema: TImage;
    pnl_barra_fundo: TPanel;
    img_confirmacao: TImage;
    lbl_confirmacao: TLabel;
    lbl_titulo_pergunta: TLabel;
    lbl_mensagem: TLabel;
    pnl_botoes: TPanel;
    pnl_confirma: TPanel;
    spb_confirmar: TSpeedButton;
    pnl_cancelar: TPanel;
    spb_cancelar: TSpeedButton;
    pnl_barra: TPanel;
    procedure spb_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spb_confirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bResposta : Boolean;
  end;

var
  form_msn_confirm: Tform_msn_confirm;

implementation

{$R *.dfm}

uses u_esmaecer;

procedure Tform_msn_confirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  form_esmaiecer_fundo.Hide;
  Action := caFree;
end;

procedure Tform_msn_confirm.FormCreate(Sender: TObject);
begin
  form_esmaiecer_fundo.Show;
end;

procedure Tform_msn_confirm.FormShow(Sender: TObject);
begin
 bResposta := False;
end;

procedure Tform_msn_confirm.spb_cancelarClick(Sender: TObject);
begin
  bResposta := False;
 Close;
end;

procedure Tform_msn_confirm.spb_confirmarClick(Sender: TObject);
begin
  bResposta := True;

end;

end.
