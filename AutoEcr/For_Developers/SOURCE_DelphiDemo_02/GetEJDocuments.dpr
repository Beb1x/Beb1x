program GetEJDocuments;

uses
  Vcl.Forms,
  u_MainForm in 'u_MainForm.pas' {fmMain},
  dude_TLB in '..\SOURCE_DelphiPackage\dude_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
