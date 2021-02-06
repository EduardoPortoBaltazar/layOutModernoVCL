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
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_consulta: Tform_consulta;

implementation

uses
  u_funcoes;

{$R *.dfm}

procedure Tform_consulta.FormResize(Sender: TObject);
begin
  pnl_pesquisa.Left := Round(form_consulta.Width/2  - pnl_pesquisa.Width/2 );
  prcArredondaPainel(pnl_topo, 12);
  prcArredondaPainel(pnl_grid, 12);
  prcArredondaPainel(pnl_fundo, 12);
end;

end.
