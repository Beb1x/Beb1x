program delphiDemo_01;

uses
  Vcl.Forms,
  SynHighlighterDST in 'SynHighlighterDST.pas',
  dude_TLB in '..\SOURCE_DelphiPackage\dude_TLB.pas',
  u_Generated in 'u_Generated.pas',
  u_MainForm in 'u_MainForm.pas' {fm_MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfm_MainForm, fm_MainForm);
  Application.Run;
end.
