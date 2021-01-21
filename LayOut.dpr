program LayOut;

uses
  Vcl.Forms,
  u_principal in 'Fontes\u_principal.pas' {form_principal},
  u_central in 'Fontes\u_central.pas' {form_central},
  u_funcoes in 'Fontes\u_funcoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.Run;
end.
