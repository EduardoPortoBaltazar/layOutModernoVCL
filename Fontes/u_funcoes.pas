unit u_funcoes;

//Font Primaria $00A00000 //Azul

interface

uses
  Winapi.Windows,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Grids, System.Classes;

  procedure prcArredondaPainel(APanel: TPanel; ATamanho: Integer);
  procedure prc_focar_botao(BarraPainel: TPanel; Botao: TSpeedButton; focar: Boolean; local : string);
  procedure prc_ocultar_tabs (PageControl: TpageControl);

  procedure prcAjustaTamanhoLinha (dbg: TDBGrid);
  procedure prcAjustarColunasGrid(const xDBgrid: TDBGrid);

type

  TDBGridPadrao = class (TCustomGrid);

var
  var_gbl_modulo: string;


implementation

uses
  Vcl.Graphics;


procedure prcArredondaPainel(APanel: TPanel; ATamanho: Integer);
var
  rgn: HRGN;
  dc: HDC;
begin

  rgn := CreateRoundRectRgn(0, 0, APanel.Width, APanel.Height, ATamanho, ATamanho);
  dc  := GetDC(APanel.Handle);
  SetWindowRgn(APanel.Handle, rgn, True);
  ReleaseDC(APanel.Handle, dc);
  DeleteObject(rgn);
end;

procedure prc_focar_botao(BarraPainel: TPanel;
  Botao: TSpeedButton; focar: Boolean; local: string);
begin
  if focar then
  begin
    if local = 'MENU' then
      Botao.Font.Color := clNavy
    else
    if local = 'RAPIDO' then
      Botao.Font.Color := $007A3D00
    else
    if local = 'PAGECONTROL' then
    begin
       Botao.Font.Style := [fsBold];
       Botao.Font.Color := $00A00000;
    end;


    Botao.Font.Color := clNavy;
    //Botao.Font.Style := [fsBold];
    BarraPainel.Parent := Botao.Parent;
    BarraPainel.BringToFront;

    BarraPainel.Left    := Botao.Left;
    BarraPainel.top     := Botao.Top + (Botao.Height - 1);
    BarraPainel.Width   := Botao.Width;
    BarraPainel.Visible := True;
  end
  else
  begin
    if local = 'MENU' then
      Botao.Font.Color := clGray
    else
    if local = 'RAPIDO' then
      Botao.Font.Color := $00424244
    else
    if local = 'PAGECONTROL' then
      Botao.Font.Color := $00A00000;

    BarraPainel.Visible := False;
  end;
end;

procedure prcAjustaTamanhoLinha(dbg: TDBGrid);
begin
  //Define o tamanho da linha apos abrir a query
  TDBGridPadrao(dbg).DefaultRowHeight := 32;
  TDBGridPadrao(dbg).ClientHeight     := ( 33 * TDBGridPadrao(dbg).RowCount ) + 33;

  TDBGridPadrao(dbg).RowHeights[0] := 30;
end;

procedure prcAjustarColunasGrid(const xDBgrid: TDBGrid);
var
  I, TotalWidht, VarWidth, QtdTotalColuna : Integer;
  xColumn : TColumn;
begin
  ShowScrollBar( xDBGrid.Handle,SB_Vert, True );

  For I := 0 to xDBGrid.FieldCount - 1 do
  begin

    {if ( xDBGrid.Fields[I].FieldName = 'ds_razaosocial' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_fantasia' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_endereco')or
       ( xDBGrid.Fields[I].FieldName = 'ds_bairro' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_municipio' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_descricao' ) then}
      xDBGrid.Fields[I].Tag := 15;
    {else
      xDBGrid.Fields[I].Tag := 0;  }

  end;

  // Largura total de todas as colunas antes de redimensionar
  TotalWidht := 0;

  // Quantas colunas devem ser auto-redimensionamento
  QtdTotalColuna := 0;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    TotalWidht := TotalWidht + xDBGrid.Columns[I].Width;

    if xDBGrid.Columns[I].Field.Tag <> 0 then
      Inc(QtdTotalColuna);
  end;

  // Adiciona 1px para a linha de separador de coluna
  if dgColLines in xDBGrid.Options then
    TotalWidht := TotalWidht + xDBGrid.Columns.Count;

  // width vale "Left"
  VarWidth :=  xDBGrid.ClientWidth - TotalWidht;

  // Da mesma forma distribuir VarWidth para todas as colunas auto-resizable
  if QtdTotalColuna > 0 then
    VarWidth := varWidth div QtdTotalColuna;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    xColumn := xDBGrid.Columns[I];

    if xColumn.Field.Tag <> 0 then
    begin
      xColumn.Width := xColumn.Width + VarWidth;

      if xColumn.Width < xColumn.Field.Tag then
        xColumn.Width := xColumn.Field.Tag;
    end;
  end;
end;

procedure prc_ocultar_tabs (PageControl: TpageControl);
var
  page: Integer;
begin
  for page :=0 to PageControl.PageCount -1 do
    PageControl.Pages[page].TabVisible := False;

  PageControl.ActivePageIndex := 0;
end;

end.
