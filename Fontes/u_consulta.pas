unit u_consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  Tform_consulta = class(TForm)
    pnl_fundo: TPanel;
    pnl_topo: TPanel;
    pnl_grid: TPanel;
    pnl_pesquisa: TPanel;
    edt_pesquisa: TEdit;
    spb_pesquisa: TSpeedButton;
    lbl_texto: TLabel;
    dbgRegistros: TDBGrid;
    pnl_edt: TPanel;
    shp_pesquisa: TShape;
    ds_padrao: TDataSource;
    pnl_rodape: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormResize(Sender: TObject);
    procedure dbgRegistrosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure spb_pesquisaClick(Sender: TObject);
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure dbgRegistrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_consulta: Tform_consulta;

implementation

uses
  u_funcoes, u_dados, u_msg_confirm;

{$R *.dfm}

procedure Tform_consulta.dbgRegistrosDblClick(Sender: TObject);
begin
 //Abre pessoas campos


end;

procedure Tform_consulta.dbgRegistrosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //Zebra o Grid
  if Odd( dbgRegistros.DataSource.DataSet.RecNo) then
    dbgRegistros.Canvas.Brush.Color := $00FBFBFB;

  //Muda a cor da seleção
  if gdSelected in State then
  begin
    dbgRegistros.Canvas.Brush.Color := $00FFE8CC;
    dbgRegistros.Canvas.Font.Color  := clBlack;
    dbgRegistros.Canvas.Font.Style  := [fsBold];
  end;


  dbgRegistros.Canvas.FillRect(Rect);
  dbgRegistros.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  //Centralizar texto
  dbgRegistros.Canvas.TextRect( Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText);
end;

procedure Tform_consulta.dbgRegistrosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key = VK_DELETE then
 begin
  form_msn_confirm := Tform_msn_confirm.Create(form_consulta);
  form_msn_confirm.lbl_titulo_pergunta.Caption := 'Exclusão de Registro';
  form_msn_confirm.lbl_mensagem.Caption        := 'Tem certeza que deseja excluir esse registro?';
  form_msn_confirm.ShowModal;

  if form_msn_confirm.bResposta then
    form_dados.qry_Contas.Delete;
 end;

end;

procedure Tform_consulta.FormResize(Sender: TObject);
begin
  pnl_pesquisa.Left := Round(form_consulta.Width/2  - pnl_pesquisa.Width/2 );
  prcArredondaPainel(pnl_topo, 12);
  prcArredondaPainel(pnl_grid, 12);
  prcArredondaPainel(pnl_fundo, 12);
end;

procedure Tform_consulta.FormShow(Sender: TObject);
begin
  form_dados.qry_Contas.Open;
  //prcAjustaTamanhoLinha();
end;

procedure Tform_consulta.spb_pesquisaClick(Sender: TObject);
begin
  form_dados.qry_Contas.Open;
  u_funcoes.prcAjustarColunasGrid(dbgRegistros);
  u_funcoes.prcAjustaTamanhoLinha(dbgRegistros);
end;

end.
