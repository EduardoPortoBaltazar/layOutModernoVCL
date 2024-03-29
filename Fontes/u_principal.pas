unit u_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls;

type
  Tform_principal = class(TForm)
    pnl_principal: TPanel;
    pnl_topo: TPanel;
    pln_barra_topo: TPanel;
    pnl_central: TPanel;
    spb_fechar: TSpeedButton;
    pnl_menu: TPanel;
    spbCliente: TSpeedButton;
    spbProduto: TSpeedButton;
    spbVenda: TSpeedButton;
    spbCaixa: TSpeedButton;
    spbFinanceiro: TSpeedButton;
    pnl_barra_botao: TPanel;
    spb_minimizar: TSpeedButton;
    spb_config: TSpeedButton;
    spb_usuario: TSpeedButton;
    pnl_rapido_vendas: TPanel;
    lbl_acesso_rapido: TLabel;
    spb_rapido_venda: TSpeedButton;
    shp_rapido_vendas: TShape;
    pnl_rapido_cliente: TPanel;
    shp_rapido_cliente: TShape;
    spb_rapido_cliente: TSpeedButton;
    pnl_rapido_produto: TPanel;
    shp_rapido_produto: TShape;
    spb_rapido_produto: TSpeedButton;
    pnl_rapido_caixa: TPanel;
    shp_rapido_caixa: TShape;
    spb_rapido_caixa: TSpeedButton;
    Label1: TLabel;
    pnl_rapido_procurar: TPanel;
    spb_rapido_procurar: TSpeedButton;
    shp_rapido_procurar: TShape;
    edt_rapido_procurar: TEdit;
    Image1: TImage;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure spbVendaMouseEnter(Sender: TObject);
    procedure spbVendaMouseLeave(Sender: TObject);
    procedure spb_minimizarClick(Sender: TObject);
    procedure spb_fecharClick(Sender: TObject);
    procedure spb_rapido_vendaMouseEnter(Sender: TObject);
    procedure spb_rapido_vendaMouseLeave(Sender: TObject);
    procedure spb_rapido_clienteMouseEnter(Sender: TObject);
    procedure spb_rapido_produtoMouseEnter(Sender: TObject);
    procedure spb_rapido_caixaMouseEnter(Sender: TObject);
    procedure spb_rapido_clienteMouseLeave(Sender: TObject);
    procedure spb_rapido_produtoMouseLeave(Sender: TObject);
    procedure spb_rapido_caixaMouseLeave(Sender: TObject);
    procedure spbClienteClick(Sender: TObject);
    procedure spb_rapido_caixaClick(Sender: TObject);
    procedure spb_rapido_produtoClick(Sender: TObject);
  private
    { Private declarations }
//    procedure prc_focar_botao(BarraPainel: TPanel; Botao: TSpeedButton; focar: Boolean; local : string);

  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

uses
  u_central, u_funcoes, u_login, u_mensagem_padrao;

{$R *.dfm}

procedure Tform_principal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tform_principal.FormResize(Sender: TObject);
begin
  pnl_central.Top  := Round(form_principal.Height/2 - pnl_central.Height/2)- 70;
  pnl_central.Left := Round(form_principal.Width/2 - pnl_central.Width/2);
end;


procedure Tform_principal.spbClienteClick(Sender: TObject);
begin
  var_gbl_modulo := 'PESSOAS';

  form_central := Tform_central.Create(nil);
  form_central.Show;
end;

procedure Tform_principal.spbVendaMouseEnter(Sender: TObject);
begin
  //mostrar a barra abaixo do botao mouse estiver
  //focando
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), true, 'MENU' );

end;

procedure Tform_principal.spbVendaMouseLeave(Sender: TObject);
begin
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), False, 'MENU' );

end;

procedure Tform_principal.spb_fecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tform_principal.spb_minimizarClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure Tform_principal.spb_rapido_caixaClick(Sender: TObject);
begin
  form_login := Tform_login.Create(nil);
  form_login.Show;
end;

procedure Tform_principal.spb_rapido_caixaMouseEnter(Sender: TObject);
begin
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), true, 'RAPIDO' );
end;

procedure Tform_principal.spb_rapido_caixaMouseLeave(Sender: TObject);
begin
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), False, 'RAPIDO' );
end;

procedure Tform_principal.spb_rapido_clienteMouseEnter(Sender: TObject);
begin
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), true, 'RAPIDO' );
end;

procedure Tform_principal.spb_rapido_clienteMouseLeave(Sender: TObject);
begin
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), False, 'RAPIDO' );
end;

procedure Tform_principal.spb_rapido_produtoClick(Sender: TObject);
begin
  frm_mensagens_padrao   := Tfrm_mensagens_padrao.Create(nil);
  frm_mensagens_padrao.Show;
end;

procedure Tform_principal.spb_rapido_produtoMouseEnter(Sender: TObject);
begin
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), true, 'RAPIDO' );
end;

procedure Tform_principal.spb_rapido_produtoMouseLeave(Sender: TObject);
begin
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), False, 'RAPIDO' );
end;

procedure Tform_principal.spb_rapido_vendaMouseEnter(Sender: TObject);
begin
  //mostrar a barra abaixo do botao mouse estiver
  //focando
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), true, 'RAPIDO' );

end;

procedure Tform_principal.spb_rapido_vendaMouseLeave(Sender: TObject);
begin
  //mostrar a barra abaixo do botao mouse estiver
  //focando
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), False, 'RAPIDO' );

end;

end.
