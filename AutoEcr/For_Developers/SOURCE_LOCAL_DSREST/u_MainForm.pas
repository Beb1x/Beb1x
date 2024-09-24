unit u_MainForm;

interface

uses
	Winapi.Messages,
	System.SysUtils,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.AppEvnts,
	Vcl.StdCtrls,
	IdHTTPWebBrokerBridge,
	Web.HTTPApp,
	Vcl.OleServer,
	dude_TLB,
	uC_Misc,
	Vcl.ExtCtrls,
	Vcl.Menus;

type
	Tfm_MainForm = class(TForm)
		btn_Start: TButton;
		btn_Stop: TButton;
		EditPort: TEdit;
		Label1: TLabel;
		ApplicationEvents1: TApplicationEvents;
		ButtonOpenBrowser: TButton;
		dude: TCFD_DUDE;
		FDMisc1: TFDMisc;
		TrayIcon1: TTrayIcon;
		btn_Minimize: TButton;
		PopupMenu1: TPopupMenu;
		Open1: TMenuItem;
		N1: TMenuItem;
		Exit1: TMenuItem;
		procedure FormCreate(Sender: TObject);
		procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
		procedure btn_StartClick(Sender: TObject);
		procedure btn_StopClick(Sender: TObject);
		procedure ButtonOpenBrowserClick(Sender: TObject);
		procedure btn_MinimizeClick(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure Exit1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
	private
		FServer: TIdHTTPWebBrokerBridge;
		procedure StartServer;
		{ Private declarations }
	public
		error_Code: Integer;
	end;

var
	fm_MainForm: Tfm_MainForm;

implementation

{$R *.dfm}

uses
	Winapi.Windows,
	Winapi.ShellApi,
	Datasnap.DSSession;

procedure TerminateThreads;
begin
	if TDSSessionManager.Instance <> nil then TDSSessionManager.Instance.TerminateAllSessions;
end;

procedure Tfm_MainForm.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
	btn_Start.Enabled := not FServer.Active;
	btn_Stop.Enabled := FServer.Active;
	EditPort.Enabled := not FServer.Active;
     if not FServer.Active then btn_Minimize.Enabled:=False;
end;

procedure Tfm_MainForm.ButtonOpenBrowserClick(Sender: TObject);
var
	LURL: string;
begin
	StartServer;
	LURL := Format('http://localhost:%s', [EditPort.Text]);
	ShellExecute(0, nil, PChar(LURL), nil, nil, SW_SHOWNOACTIVATE);
end;

procedure Tfm_MainForm.Exit1Click(Sender: TObject);
begin
	try
		TerminateThreads;
		FServer.Active := False;
		FServer.Bindings.Clear;
		if dude.connected_ToDevice then dude.Disconnect;
	finally
		Application.ProcessMessages;
		Application.Terminate;
	end;
end;

procedure Tfm_MainForm.btn_MinimizeClick(Sender: TObject);
begin
	btn_Minimize.Enabled := False;
	try
		TrayIcon1.ShowBalloonHint;
	finally
		btn_Minimize.Enabled := True;
		Close;
	end;

end;

procedure Tfm_MainForm.btn_StartClick(Sender: TObject);
begin
	btn_Start.Enabled := False;
	btn_Stop.Enabled := False;
	btn_Minimize.Enabled := False;
	try
		try
			dude.Connect;
			error_Code := dude.open_Connection;
			if error_Code <> 0 then Exit;
			//
			FDMisc1.sleep_ForMSec(1000);
			StartServer;
		except
			//
		end;
	finally
		if not dude.connected_ToDevice then
		begin
			dude.Disconnect;
			btn_Start.Enabled := True;
		end
          else btn_Minimize.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_StopClick(Sender: TObject);
begin
	try
		TerminateThreads;
		FServer.Active := False;
		FServer.Bindings.Clear;
	finally
		if dude.connected_ToDevice then dude.Disconnect;
	end;
end;

procedure Tfm_MainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	if FServer.Active then
	try
		Action := caNone;
		TrayIcon1.Visible := True;
		TrayIcon1.ShowBalloonHint;
	finally
		fm_MainForm.Hide;
		btn_Minimize.Enabled := True;
	end;
end;

procedure Tfm_MainForm.FormCreate(Sender: TObject);
begin
	FServer := TIdHTTPWebBrokerBridge.Create(Self);
end;

procedure Tfm_MainForm.Open1Click(Sender: TObject);
begin
	fm_MainForm.Show;
	ShowWindow(Application.Handle, SW_SHOWNORMAL);
end;

procedure Tfm_MainForm.StartServer;
begin
	if not FServer.Active then
	begin
		FServer.Bindings.Clear;
		FServer.DefaultPort := StrToInt(EditPort.Text);
		FServer.Active := True;
	end;
end;

end.
