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
    procedure FormResize(Sender: TObject);
    procedure dbgRegistrosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure spb_pesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_consulta: Tform_consulta;

implementation

uses
  u_funcoes, u_dados;

{$R *.dfm}

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
  //dbgRegistros.Canvas.TextRect( Rect, Rect.Left + 8, Column.Field.DisplayText);
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
  //prcAjustaTamanhoLinha();
end;

end.
