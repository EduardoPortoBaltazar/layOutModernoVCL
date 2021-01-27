unit u_funcoes;

interface

uses
  Winapi.Windows,
  Vcl.ExtCtrls, Vcl.Buttons;

  procedure prcArredondaPainel(APanel: TPanel; ATamanho: Integer);
  procedure prc_focar_botao(BarraPainel: TPanel; Botao: TSpeedButton; focar: Boolean; local : string);

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
      Botao.Font.Color := $007A3D00;


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
    Botao.Font.Color := clGray;
    Botao.Font.Style := [];
    BarraPainel.Visible := False;
  end;
end;

end.
