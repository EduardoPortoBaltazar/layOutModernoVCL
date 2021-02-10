unit u_funcoes;

//Font Primaria $00A00000 //Azul

interface

uses
  Winapi.Windows,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.DBGrids;

  procedure prcArredondaPainel(APanel: TPanel; ATamanho: Integer);
  procedure prcAjustaTamanhoLinha(dbg: TDBGrid);
  procedure prc_focar_botao(BarraPainel: TPanel; Botao: TSpeedButton; focar: Boolean; local : string);
  procedure prc_ocultar_tabs (PageControl: TpageControl);

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
