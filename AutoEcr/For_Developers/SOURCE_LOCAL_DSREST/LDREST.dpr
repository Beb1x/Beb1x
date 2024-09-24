program LDREST;
{$APPTYPE GUI}
{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  u_MainForm in 'u_MainForm.pas' {fm_MainForm},
  u_ServerMethods in 'u_ServerMethods.pas' {SM: TDataModule},
  u_ServerContainer in 'u_ServerContainer.pas' {ServerContainer1: TDataModule},
  u_WebModule in 'u_WebModule.pas' {WebModule1: TWebModule},
  dude_TLB in '..\SOURCE_DelphiPackage\dude_TLB.pas';

{$R *.res}

begin
	if WebRequestHandler <> nil then WebRequestHandler.WebModuleClass := WebModuleClass;
	Application.Initialize;
	Application.CreateForm(Tfm_MainForm, fm_MainForm);
     Application.Title := 'Dude - Rest Server';
  	Application.Run;

end.
