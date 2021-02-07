program LayOut;

uses
  Vcl.Forms,
  u_principal in 'Fontes\u_principal.pas' {form_principal},
  u_central in 'Fontes\u_central.pas' {form_central},
  u_funcoes in 'Fontes\u_funcoes.pas',
  u_pessoas in 'Fontes\u_pessoas.pas' {form_pessoas},
  u_consulta in 'Fontes\u_consulta.pas' {form_consulta},
  u_pessoas_campos in 'Fontes\u_pessoas_campos.pas' {form_pessoas_campos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tform_consulta, form_consulta);
  Application.CreateForm(Tform_pessoas_campos, form_pessoas_campos);
  Application.Run;
end.
