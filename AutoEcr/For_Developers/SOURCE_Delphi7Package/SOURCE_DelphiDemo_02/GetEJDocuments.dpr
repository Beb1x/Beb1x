program GetEJDocuments;

uses
  Forms,
  u_MainForm in 'u_MainForm.pas' {fmMain},
  dude_TLB in '..\dude_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
