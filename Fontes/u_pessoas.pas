unit u_pessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses,
  Vcl.Buttons, Vcl.StdCtrls;

type
  Tform_pessoas = class(TForm)
    pnl_consultar: TPanel;
    pnl_pessoas_principal: TPanel;
    lbl_consultar_titulo: TLabel;
    pnl_btn_consultar: TPanel;
    lbl_consultar_text: TLabel;
    img_consultar: TImage;
    shp_consultar: TShape;
    spb_consultar: TSpeedButton;
    pnl_inserir: TPanel;
    lbl_inserir_titulo: TLabel;
    lbl_inserir_pessoa_texto: TLabel;
    img_inseriri_pessoa: TImage;
    pnl_btn_inserir: TPanel;
    shp_inserir: TShape;
    spb_inserir: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_pessoas: Tform_pessoas;

implementation

uses
  u_funcoes;

{$R *.dfm}

procedure Tform_pessoas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tform_pessoas.FormResize(Sender: TObject);
begin
  prcArredondaPainel(pnl_consultar, 12);
  prcArredondaPainel(pnl_inserir, 12);
  prcArredondaPainel(pnl_pessoas_principal, 12);

  pnl_pessoas_principal.Top  := Round(form_pessoas.Height/2 - pnl_pessoas_principal.Height/2)- 70;
  pnl_pessoas_principal.Left := Round(form_pessoas.Width/2 - pnl_pessoas_principal.Width/2);
end;

end.
