unit u_central;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  dxGDIPlusClasses, Vcl.StdCtrls;

type
  Tform_central = class(TForm)
    pnl_topo: TPanel;
    pnl_principal: TPanel;
    pnl_rodape: TPanel;
    Image1: TImage;
    spb_minimizar: TSpeedButton;
    lbl_central: TLabel;
    lbl_texto_central: TLabel;
    lbl_nome_central: TLabel;
    Image2: TImage;
    Label4: TLabel;
    lbl_texto_central_ajuda: TLabel;
    procedure spb_minimizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_central: Tform_central;

implementation

uses
  u_funcoes;

{$R *.dfm}

procedure Tform_central.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tform_central.FormResize(Sender: TObject);
begin
   prcArredondaPainel(pnl_topo, 12);
   prcArredondaPainel(pnl_principal, 12);
   prcArredondaPainel(pnl_rodape, 12);
end;

procedure Tform_central.spb_minimizarClick(Sender: TObject);
begin
  Close;
end;

end.
