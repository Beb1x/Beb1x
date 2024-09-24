program delphiDemo_01;

uses
  Forms,
  u_MainForm in 'u_MainForm.pas' {fm_MainForm},
  SynHighlighterDST in 'SynHighlighterDST.pas',
  u_Generated in 'u_Generated.pas',
  dude_TLB in '..\dude_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfm_MainForm, fm_MainForm);
  Application.Run;
end.
