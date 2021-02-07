unit u_pessoas_campos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tform_pessoas_campos = class(TForm)
    pnl_fundo: TPanel;
    pg_pessoas: TPageControl;
    tbs_dados_Gerais: TTabSheet;
    tbs_endereco: TTabSheet;
    pnl_topo: TPanel;
    pnl_botoes: TPanel;
    pnl_confirma: TPanel;
    pnl_cancelar: TPanel;
    spb_confirmar: TSpeedButton;
    spb_cancelar: TSpeedButton;
    spb_dados: TSpeedButton;
    spb_endereco: TSpeedButton;
    pnl_barra_botao: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    procedure spb_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure spb_dadosMouseEnter(Sender: TObject);
    procedure spb_dadosMouseLeave(Sender: TObject);
    procedure spb_enderecoMouseEnter(Sender: TObject);
    procedure spb_enderecoMouseLeave(Sender: TObject);
    procedure spb_dadosClick(Sender: TObject);
    procedure spb_enderecoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_pessoas_campos: Tform_pessoas_campos;

implementation

uses
  u_funcoes;

{$R *.dfm}

procedure Tform_pessoas_campos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tform_pessoas_campos.FormResize(Sender: TObject);
begin
  pnl_fundo.Left := Round(form_pessoas_campos.Width /2 - pnl_fundo.Width/2);
end;

procedure Tform_pessoas_campos.FormShow(Sender: TObject);
begin
  prc_ocultar_tabs (pg_pessoas);
end;

procedure Tform_pessoas_campos.spb_cancelarClick(Sender: TObject);
begin
 Close;
end;

procedure Tform_pessoas_campos.spb_dadosClick(Sender: TObject);
begin
  pg_pessoas.ActivePage := tbs_dados_Gerais;
end;

procedure Tform_pessoas_campos.spb_dadosMouseEnter(Sender: TObject);
begin
 // prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
 //         as TSpeedButton), true, 'PAGECONTROL' );

end;

procedure Tform_pessoas_campos.spb_dadosMouseLeave(Sender: TObject);
begin
 // prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
 //         as TSpeedButton), False, 'PAGECONTROL' );
end;

procedure Tform_pessoas_campos.spb_enderecoClick(Sender: TObject);
begin
  pg_pessoas.ActivePage := tbs_endereco;
end;

procedure Tform_pessoas_campos.spb_enderecoMouseEnter(Sender: TObject);
begin
 // prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
 //         as TSpeedButton), true, 'PAGECONTROL' );

end;

procedure Tform_pessoas_campos.spb_enderecoMouseLeave(Sender: TObject);
begin
 // prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
 //         as TSpeedButton), False, 'PAGECONTROL' );
end;

end.
