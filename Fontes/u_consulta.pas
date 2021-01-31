unit u_consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tform_consulta = class(TForm)
    pnl_fundo: TPanel;
    pnl_topo: TPanel;
    pnl_grid: TPanel;
    lbl_texto: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_consulta: Tform_consulta;

implementation

{$R *.dfm}

end.
