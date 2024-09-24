unit u_MainForm;

interface

uses
	Windows,
	Messages,
	ShellAPI,
	SysUtils,
	Variants,
	Classes,
	ComObj,
	Graphics,
	Controls,
	Forms,
	Dialogs,
	OleServer,
	StdCtrls,
	ComCtrls,
	ExtCtrls,
	Buttons,
	AppEvnts,
	Gauges,
	FileCtrl,
	ExtDlgs,
	SynHighlighterDST,
	SynEdit,
	SynCompletionProposal,
	dude_TLB;

const
	caption_None                                   = '.....';
	Hex_Digits                                     = 16;
	Hex_Digit: array [0 .. Hex_Digits - 1] of Char = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f');
	en_Message_NoDriver                            = 'The program can not detect the driver. ' + sLineBreak + 'Please install "Datecs Universal Driver Engine - COMServer" or call the support team! ';

type
	TAfterCase = (             //
	  ac_AfterStart_Program,   // After start of the program
	  ac_AfterStart_Server,    //
	  ac_AfterOpenConnection,  // After open connection to the device
	  ac_AfterCloseConnection, // After close connection to the device
	  ac_AfterStopServer,      //
	  ac_AfterSettingsChange   // After changes from other client application
	  );

	TOldValues = record
		Active_OnAfterCloseConnection: Boolean;
		Active_OnAfterOpenConnection: Boolean;
		Active_OnAfterSettingsChange: Boolean;
		RegisterActiveObject: Boolean;
		Save_Settings_AfterOpenConnection: Boolean;
	end;

	Tfm_MainForm = class(TForm)
		pc_Main: TPageControl;
		ts_Initialisation: TTabSheet;
		ts_CustomCommand: TTabSheet;
		pnl_StatusBytes: TPanel;
		ScrollBox1: TScrollBox;
		grbx_SB_0: TGroupBox;
		chbx_S0_7: TCheckBox;
		chbx_S0_6: TCheckBox;
		chbx_S0_5: TCheckBox;
		chbx_S0_4: TCheckBox;
		chbx_S0_3: TCheckBox;
		chbx_S0_2: TCheckBox;
		chbx_S0_1: TCheckBox;
		chbx_S0_0: TCheckBox;
		grbx_SB_1: TGroupBox;
		chbx_S1_7: TCheckBox;
		chbx_S1_6: TCheckBox;
		chbx_S1_5: TCheckBox;
		chbx_S1_4: TCheckBox;
		chbx_S1_3: TCheckBox;
		chbx_S1_2: TCheckBox;
		chbx_S1_1: TCheckBox;
		chbx_S1_0: TCheckBox;
		grbx_SB_2: TGroupBox;
		chbx_S2_7: TCheckBox;
		chbx_S2_6: TCheckBox;
		chbx_S2_5: TCheckBox;
		chbx_S2_4: TCheckBox;
		chbx_S2_3: TCheckBox;
		chbx_S2_2: TCheckBox;
		chbx_S2_1: TCheckBox;
		chbx_S2_0: TCheckBox;
		grbx_SB_3: TGroupBox;
		chbx_S3_7: TCheckBox;
		chbx_S3_6: TCheckBox;
		chbx_S3_5: TCheckBox;
		chbx_S3_4: TCheckBox;
		chbx_S3_3: TCheckBox;
		chbx_S3_2: TCheckBox;
		chbx_S3_1: TCheckBox;
		chbx_S3_0: TCheckBox;
		grbx_SB_4: TGroupBox;
		chbx_S4_7: TCheckBox;
		chbx_S4_6: TCheckBox;
		chbx_S4_5: TCheckBox;
		chbx_S4_4: TCheckBox;
		chbx_S4_3: TCheckBox;
		chbx_S4_2: TCheckBox;
		chbx_S4_1: TCheckBox;
		chbx_S4_0: TCheckBox;
		grbx_SB_5: TGroupBox;
		chbx_S5_7: TCheckBox;
		chbx_S5_6: TCheckBox;
		chbx_S5_5: TCheckBox;
		chbx_S5_4: TCheckBox;
		chbx_S5_3: TCheckBox;
		chbx_S5_2: TCheckBox;
		chbx_S5_1: TCheckBox;
		chbx_S5_0: TCheckBox;
		grbx_SB_6: TGroupBox;
		chbx_S6_0: TCheckBox;
		chbx_S6_1: TCheckBox;
		chbx_S6_2: TCheckBox;
		chbx_S6_3: TCheckBox;
		chbx_S6_4: TCheckBox;
		chbx_S6_5: TCheckBox;
		chbx_S6_6: TCheckBox;
		chbx_S6_7: TCheckBox;
		grbx_SB_7: TGroupBox;
		chbx_S7_7: TCheckBox;
		chbx_S7_0: TCheckBox;
		chbx_S7_1: TCheckBox;
		chbx_S7_2: TCheckBox;
		chbx_S7_3: TCheckBox;
		chbx_S7_4: TCheckBox;
		chbx_S7_5: TCheckBox;
		chbx_S7_6: TCheckBox;
		ed_Custom_Cmd: TEdit;
		ed_Custom_Input: TEdit;
		ed_Custom_Output: TEdit;
		lb_Custom_Cmd: TLabel;
		lb_Custom_Input: TLabel;
		lb_Custom_Output: TLabel;
		btn_ExecuteCustomCommand: TButton;
		mem_AnswerList: TMemo;
		lb_AnswerList: TLabel;
		OpenDialog1: TOpenDialog;
		btn_Last_AnswerList: TButton;
		ts_SystemInfo: TTabSheet;
		btn_GetSystemInfo: TBitBtn;
		mem_SystemInfo: TMemo;
		ApplicationEvents1: TApplicationEvents;
		ts_ANAF_Download: TTabSheet;
		cbx_RangeType: TComboBox;
		chbx_OpenFolderAfterDownload: TCheckBox;
		chbx_DST: TCheckBox;
		dtp_EndTime: TDateTimePicker;
		dtp_StartTime: TDateTimePicker;
		ed_EndZReport: TEdit;
		ed_StartZReport: TEdit;
		dtp_EndDate: TDateTimePicker;
		dtp_StartDate: TDateTimePicker;
		lb_RangeType: TLabel;
		lb_EndZReport: TLabel;
		lb_StartZReport: TLabel;
		lb_End: TLabel;
		lb_Start: TLabel;
		btn_Download: TBitBtn;
		btn_CancelDownload: TBitBtn;
		pnl_Progress: TPanel;
		gau_Second: TGauge;
		gau_First: TGauge;
		OpenPictureDialog1: TOpenPictureDialog;
		btn_UploadLogo: TBitBtn;
		ts_GetCommandsList: TTabSheet;
		pnl_Pages: TPanel;
		ts_CustomScript: TTabSheet;
		pnl_Btns: TPanel;
		btn_ExecuteScrypt: TBitBtn;
		btn_ExecuteSelected: TBitBtn;
		btn_LoadScriptFromFile: TBitBtn;
		pc_ScriptContainer: TPageControl;
		ts_SimpleScript: TTabSheet;
		se_Script: TSynEdit;
		ts_HumanLog: TTabSheet;
		ts_HEXLog: TTabSheet;
		reHEXLog: TRichEdit;
		reHumanLog: TRichEdit;
		pnl_Btm: TPanel;
		mem_Log: TMemo;
		btn_DelScriptIput: TBitBtn;
		btn_DeleteOutput: TBitBtn;
		cbx_GoToPage: TComboBox;
		pnl_CommandInfo: TPanel;
		btn_ComandsList: TBitBtn;
		cbx_CommandsList: TComboBox;
		btn_GetComandInfo: TBitBtn;
		se_CmdInfo: TSynEdit;
		btn_5Ah_1: TBitBtn;
		SynCompletionProposal1: TSynCompletionProposal;
		btn_Cancel: TBitBtn;
		btn_GenerateCode: TBitBtn;
		btn_GeneratedCode: TBitBtn;
		chbx_SortedCommandsList: TCheckBox;
		cbx_CodeType: TComboBox;
		cbx_CommandList_NameIndex: TComboBox;
		ts_Behavior: TTabSheet;
		dude: TCFD_DUDE;
		pnl_ConnectionProperties: TPanel;
		btn_StartCOMServer: TButton;
		btn_OpenConnection: TButton;
		btn_StopConnection: TButton;
		btn_StopCOMServer: TButton;
		lb_Language_1: TLabel;
		lb_Firmware_CodePage_01: TLabel;
		lb_Firmware_CodePage_02: TLabel;
		lb_Firmware_CheckSum_01: TLabel;
		lb_Firmware_CheckSum_02: TLabel;
		lb_Firmware_Date_01: TLabel;
		lb_Firmware_Date_02: TLabel;
		lb_Firmware_Revision_01: TLabel;
		lb_Firmware_Revision_02: TLabel;
		lb_Device_Type_01: TLabel;
		lb_Device_Type_02: TLabel;
		lb_Language_2: TLabel;
		lb_DeviceConnected_1: TLabel;
		lb_DeviceConnected_2: TLabel;
		lb_LANConnected_1: TLabel;
		lb_LANConnected_2: TLabel;
		lb_ModelName_1: TLabel;
		lb_ModelName_2: TLabel;
		lb_SerialNumber_1: TLabel;
		lb_SerialNumber_2: TLabel;
		lb_Distributor_01: TLabel;
		lb_Distributor_02: TLabel;
		lb_FM_Number_01: TLabel;
		lb_FM_Number_02: TLabel;
		btn_SearchAndDestroy: TButton;
		grbx_Device_TransportProtocol: TGroupBox;
		lb_COMPort: TLabel;
		ed_COMPort: TEdit;
		lb_BaudRate: TLabel;
		lb_LANPort: TLabel;
		lb_IPAddress: TLabel;
		ed_BaudRate: TEdit;
		ed_LANPort: TEdit;
		ed_IPAddress: TEdit;
		pc_Behavior: TPageControl;
		ts_EventsCommands: TTabSheet;
		ts_RAOMode: TTabSheet;
		ts_Events_PorgressBars: TTabSheet;
		TabSheet1: TTabSheet;
		lb_DriverLanguage: TLabel;
		cbx_DriverLanguage: TComboBox;
		chbx_CheckDeviceStatusOnCheckConnection: TCheckBox;
		grbx_TrackingMode: TGroupBox;
		lb_TrackingModePath: TLabel;
		lb_TrackingModeFileName: TLabel;
		Label1: TLabel;
		ed_TrackingModePath: TEdit;
		ed_TrackingModeFileName: TEdit;
		ed_TrackingModeRowLimit: TEdit;
		btn_SaveOtherSettings: TButton;
		chbx_RegisterActiveObject: TCheckBox;
		chbx_Active_OnAfterOpenConnection: TCheckBox;
		chbx_Active_OnAfterCloseConnection: TCheckBox;
		btn_Set_RAO_Mode: TButton;
		chbx_Active_OnAfterSettingsChange: TCheckBox;
		chbx_Save_Settings_AfterOpenConnection: TCheckBox;
		chbx_Active_OnBeforeScriptExecute: TCheckBox;
		chbx_Active_OnScriptRowExecute: TCheckBox;
		chbx_Active_OnAfterScriptExecute: TCheckBox;
		chbx_Active_OnSendCommand: TCheckBox;
		chbx_Active_OnWait: TCheckBox;
		chbx_Active_OnReceiveAnswer: TCheckBox;
		chbx_Active_OnStatusChange: TCheckBox;
		chbx_Active_OnError: TCheckBox;
		btn_SaveEvents_Commands: TButton;
    btn_SaveEvents_ProgressBars: TButton;
		chbx_Active_OnFirstProgress_Init: TCheckBox;
		chbx_Active_OnFirstProgress_Loop: TCheckBox;
		chbx_Active_OnFirstProgress_Complete: TCheckBox;
		chbx_Active_OnSecondProgress_Init: TCheckBox;
		chbx_Active_OnSecondProgress_Loop: TCheckBox;
		chbx_Active_OnSecondProgress_Complete: TCheckBox;
		chbx_TrackingMode: TCheckBox;
    tsw_TransportType: TComboBox;
    lb_TransportType: TLabel;
		procedure btn_StartCOMServerClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure btn_StopCOMServerClick(Sender: TObject);
		procedure btn_OpenConnectionClick(Sender: TObject);
		procedure tsw_TransportTypeClick(Sender: TObject);
		procedure btn_StopConnectionClick(Sender: TObject);
		procedure btn_ExecuteCustomCommandClick(Sender: TObject);
		procedure btn_Last_AnswerListClick(Sender: TObject);
		procedure btn_GetSystemInfoClick(Sender: TObject);
		procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
		procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
		procedure btn_DownloadClick(Sender: TObject);
		procedure cbx_RangeTypeClick(Sender: TObject);
		procedure btn_CancelDownloadClick(Sender: TObject);
		procedure btn_UploadLogoClick(Sender: TObject);
		procedure btn_ComandsListClick(Sender: TObject);
		procedure btn_GetComandInfoClick(Sender: TObject);
		procedure get_CommandInfo;
		procedure get_InputParamsList;
		procedure get_OutputParamsList;
		procedure btn_LoadScriptFromFileClick(Sender: TObject);
		procedure btn_ExecuteScryptClick(Sender: TObject);
		procedure btn_DeleteOutputClick(Sender: TObject);
		procedure btn_DelScriptIputClick(Sender: TObject);
		procedure btn_ExecuteSelectedClick(Sender: TObject);
		procedure btn_5Ah_1Click(Sender: TObject);
		procedure btn_CancelClick(Sender: TObject);
		procedure btn_GenerateCodeClick(Sender: TObject);
		procedure btn_GeneratedCodeClick(Sender: TObject);
		procedure dudeAfterScriptExecute(Sender: TObject);
		procedure dudeBeforeScriptExecute(Sender: TObject);
		procedure dudeFirstProgress_Complete(Sender: TObject);
		procedure dudeFirstProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
		procedure dudeFirstProgress_Loop(ASender: TObject; value_Position: Integer);
		procedure dudeSecondProgress_Complete(Sender: TObject);
		procedure dudeSecondProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
		procedure dudeSecondProgress_Loop(ASender: TObject; value_Position: Integer);
		procedure dudeStatusChange(Sender: TObject);
		procedure dudeWait(ASender: TObject; Value: Byte);
		procedure chbx_SortedCommandsListClick(Sender: TObject);
		procedure cbx_CommandList_NameIndexChange(Sender: TObject);
		procedure btn_SaveEvents_ProgressBarsClick(Sender: TObject);
		procedure dudeReceiveAnswer(ASender: TObject; var Command, DateAndTime, repeat_Value, hex_Header, hex_Data, hex_Footer, human_Data: WideString);
		procedure dudeScriptRowExecute(ASender: TObject; row_Index, error_Code: Integer; var input_Value, output_Value: WideString);
		procedure dudeSendCommand(ASender: TObject; var Command, DateAndTime, repeat_Value, hex_Header, hex_Data, hex_Footer, human_Data: WideString);
		procedure dudeError(ASender: TObject; error_Code: Integer; var error_Message: WideString);
		procedure btn_SearchAndDestroyClick(Sender: TObject);
		procedure dudeAfterOpenConnection(Sender: TObject);
		procedure dudeAfterCloseConnection(Sender: TObject);
		function find_ActiveObject(theName: string): Boolean;
		procedure ApplicationEvents1SettingChange(Sender: TObject; Flag: Integer; const Section: string; var Result: Integer);
		procedure dudeAfterChangeSettings(ASender: TObject; settings_Index: Integer);
		procedure btn_Set_RAO_ModeClick(Sender: TObject);
		//
		procedure set_FormatSettings;
		procedure set_TabVisibility(afterCase: TAfterCase);
		procedure set_LabelValues(afterCase: TAfterCase);
		procedure set_ComboBoxValues(afterCase: TAfterCase);
		procedure set_CheckBoxes(afterCase: TAfterCase);
		procedure set_EditBoxes(afterCase: TAfterCase);
		procedure set_Buttons(afterCase: TAfterCase);
		procedure set_Other(afterCase: TAfterCase);
		function set_TransportProtocol: Integer;
		procedure show_DeviceModel;
		function tryTo_COMServer_Start: Boolean;
		function save_Language: Integer;
		function save_TrackingMode: Integer;
		procedure btn_SaveOtherSettingsClick(Sender: TObject);
		procedure btn_SaveEvents_CommandsClick(Sender: TObject);
		procedure chbx_TrackingModeClick(Sender: TObject);

	protected
		//
	private
		fWeHaveWaitEvent  : Boolean;
		fSYNCount         : Byte;
		fAppMessCount     : Byte;
		fTransportProtocol: TTransportProtocol;
		fComPort          : Integer;
		fBaudRate         : Integer;
		fLastError_Code   : Integer;
		fLastError_Message: WideString;
		fOldDudeInstance  : Variant;
		fAfterCase        : TAfterCase;
		fMyAfterCaseFlag  : Boolean;
		//
		procedure ScrollBarMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
		//
		procedure SetBaudRate(const Value: Integer);
		procedure SetComPort(const Value: Integer);
		{ Private declarations }
		procedure init_StatusState;
		procedure get_StatusState;
		procedure get_StatusDescriptions;
		procedure set_ANAF_Ranges;
		function byteToHex(B: Byte): String;
		procedure scrollToEnd(targetEditor: TRichEdit);
		procedure initForSniffer(targetLogEditor: TRichEdit);
		function set_InputParam_ByIndex(param_Index: Integer; const param_Value: string): Boolean;
		function set_InputParam_ByName(const param_Name: string; const param_Value: string): Boolean;
		function execute_Command_ByName: Boolean;
		function get_OutputParamsCount(var oCount: Integer): Boolean;
		function get_OutputParams_Names(var Value: WideString): Boolean;
		procedure enableScriptBtns(toValue: Boolean);
		procedure SetAfterCase(const Value: TAfterCase);
	public
		command_Name              : string;
		param_Name                : WideString;
		error_Code                : Integer;
		property comPort          : Integer read fComPort write SetComPort;
		property baudRate         : Integer read fBaudRate write SetBaudRate;
		property lastError_Code   : Integer read fLastError_Code;
		property lastError_Message: WideString read fLastError_Message;
		property afterCase        : TAfterCase read fAfterCase write SetAfterCase;
	end;

var
	fm_MainForm: Tfm_MainForm;

implementation

{$R *.dfm}

procedure Tfm_MainForm.btn_GeneratedCodeClick(Sender: TObject);
var
	_Calculate   : WideString; //
	_ErrorCode   : WideString; //
	_Name        : WideString; //
	_FwRev       : WideString; //
	_FwDate      : WideString; //
	_FwTime      : WideString; //
	_Checksum    : WideString; //
	_Sw          : WideString; //
	_SerialNumber: WideString; //

	function execute_090_info_Get_Diagnostic //
	  (myFP: TCFD_DUDE;                      //
	  const Calculate: WideString;           //
	  var ErrorCode: WideString;             //
	  var Name: WideString;                  //
	  var FwRev: WideString;                 //
	  var FwDate: WideString;                //
	  var FwTime: WideString;                //
	  var Checksum: WideString;              //
	  var Sw: WideString;                    //
	  var SerialNumber: WideString           //
	  ): Integer;                            //

	const
		// cmd = '090_info_Get_Diagnostic';
		// cmd = 'info_Get_Diagnostic';
		cmd = 'Get_Diagnostic';

		procedure set_Output;
		begin
			myFP.get_OutputParam_ByName(cmd, 'Name', Name);
			myFP.get_OutputParam_ByName(cmd, 'FwRev', FwRev);
			myFP.get_OutputParam_ByName(cmd, 'FwDate', FwDate);
			myFP.get_OutputParam_ByName(cmd, 'FwTime', FwTime);
			myFP.get_OutputParam_ByName(cmd, 'Checksum', Checksum);
			myFP.get_OutputParam_ByName(cmd, 'Sw', Sw);
			myFP.get_OutputParam_ByName(cmd, 'SerialNumber', SerialNumber);
		end;

	begin
		Result := -1;
		ErrorCode := '-1';
		if not Assigned(myFP) then Exit;
		try
			try
				if not myFP.connected_ToDevice then Exit;
				if myFP.set_InputParam_ByName(cmd, 'Calculate', Calculate) <> 0 then Exit;
				if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
				set_Output;
			except
				On E: Exception do ShowMessage(E.Message);
			end;
		finally
			Result := myFP.lastError_Code;
			myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
		end;
	end;

begin
	btn_GeneratedCode.Enabled := False;
	try
		if not dude.connected_ToDevice then
		begin
			ShowMessage('Not connected to the device. Please - connect to device first!');
			pc_Main.ActivePage := ts_Initialisation;
			if (btn_OpenConnection.Visible) and (btn_OpenConnection.Enabled) then btn_OpenConnection.SetFocus;
			Exit;
		end;

		_Calculate := '1';
		if execute_090_info_Get_Diagnostic(dude, //
		  _Calculate,                            //
		  _ErrorCode,                            //
		  _Name,                                 //
		  _FwRev,                                //
		  _FwDate,                               //
		  _FwTime,                               //
		  _Checksum,                             //
		  _Sw,                                   //
		  _SerialNumber                          //
		  ) <> 0 then ShowMessage(dude.lastError_Message)
		else
		begin
			se_CmdInfo.Clear;
			se_CmdInfo.Lines.Add('ErrorCode    :' + _ErrorCode);
			se_CmdInfo.Lines.Add('Name         :' + _Name);
			se_CmdInfo.Lines.Add('FwRev        :' + _FwRev);
			se_CmdInfo.Lines.Add('FwDate       :' + _FwDate);
			se_CmdInfo.Lines.Add('FwTime       :' + _FwTime);
			se_CmdInfo.Lines.Add('Checksum     :' + _Checksum);
			se_CmdInfo.Lines.Add('Sw           :' + _Sw);
			se_CmdInfo.Lines.Add('SerialNumber :' + _SerialNumber);
		end;
	finally
		btn_GeneratedCode.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.ApplicationEvents1SettingChange(Sender: TObject; Flag: Integer; const Section: string; var Result: Integer);
begin
	set_FormatSettings;
end;

procedure Tfm_MainForm.btn_5Ah_1Click(Sender: TObject);
var
	i, oCount   : Integer;
	Value       : WideString;
	myRow       : string;
	outputParams: TStringList;
begin
	reHEXLog.Clear;
	reHumanLog.Clear;
	se_CmdInfo.Clear;
	if not dude.connected_ToDevice then
	begin
		ShowMessage('Not connected to the device. Please - connect to device first!');
		pc_Main.ActivePage := ts_Initialisation;
		if (btn_OpenConnection.Visible) and (btn_OpenConnection.Enabled) then btn_OpenConnection.SetFocus;
		Exit;
	end;

	btn_5Ah_1.Enabled := False;
	Self.Update;
	outputParams := TStringList.Create;
	try
		try
			command_Name := '090_info_Get_Diagnostic';
			if not set_InputParam_ByName('Calculate', '1') then Exit;
			// or
			// if not set_InputParam_ByIndex(0, '1') then Exit;
			if not execute_Command_ByName then Exit;
			se_CmdInfo.Lines.Add('Command "' + command_Name + '" - Successfully executed.');
			se_CmdInfo.Lines.Add('For more info - go to "Custom script" page and see:');
			se_CmdInfo.Lines.Add(' - "Human oriented log" or "HEX log";');
			se_CmdInfo.Lines.Add('');

			se_CmdInfo.Lines.Add('Result from output params by index:');
			if not get_OutputParamsCount(oCount) then Exit;
			for i := 0 to oCount - 1 do
			begin
				if dude.get_OutputParam_ByIndex(command_Name, i, Value) <> 0 then break;
				myRow := ' ' + 'output param[' + IntToStr(i) + ']';

				myRow := myRow+ StringOfChar( ' ', 42 - Length(myRow) ) + ' = ' + Value;
				se_CmdInfo.Lines.Add(myRow);
			end;

			if not get_OutputParams_Names(Value) then Exit;
			outputParams.Text := Value;
			if (outputParams.Count = 0) then Exit
			else
			begin
				se_CmdInfo.Lines.Add('');
				se_CmdInfo.Lines.Add('Result from output params by names:');
			end;
			for i := 0 to outputParams.Count - 1 do
			begin
				if dude.get_OutputParam_ByName(command_Name, outputParams.Strings[i], Value) <> 0 then break;
				myRow := ' ' + 'output param[' + outputParams.Strings[i] + ']';
				myRow := myRow+ StringOfChar( ' ', 42 - Length(myRow) ) + ' = ' + Value;
				se_CmdInfo.Lines.Add(myRow);
			end;

			se_CmdInfo.Lines.Add('');
			se_CmdInfo.Lines.Add('Result from "Last answer list":');
			outputParams.Clear;
			outputParams.Text := dude.last_AnswerList;
			for i := 0 to outputParams.Count - 1 do
			begin
				if dude.get_OutputParam_ByIndex(command_Name, i, Value) <> 0 then break;
				myRow := ' ' + 'answer_List[' + IntToStr(i) + ']';
				myRow := myRow+ StringOfChar( ' ', 42 - Length(myRow) ) + ' = ' + Value;
				se_CmdInfo.Lines.Add(myRow);
			end;
		except
			on E: Exception do ShowMessage(E.Message);
		end;
	finally
		if outputParams.Count > 0 then outputParams.Clear;
		outputParams.Free;
		btn_5Ah_1.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_GenerateCodeClick(Sender: TObject);
begin
	btn_GenerateCode.Enabled := False;
	try
		if cbx_CommandsList.ItemIndex < 0 then Exit;
		se_CmdInfo.Clear;
		command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
		case cbx_CodeType.ItemIndex of
			0: se_CmdInfo.Text := dude.generate_SourceCode(command_Name, Delphi);
			1: se_CmdInfo.Text := dude.generate_SourceCode(command_Name, CSharp);
		end;
	finally
		btn_GenerateCode.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_GetComandInfoClick(Sender: TObject);
begin
	if cbx_CommandsList.ItemIndex < 0 then Exit;
	command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
	get_CommandInfo;
	get_InputParamsList;
	get_OutputParamsList;
end;

procedure Tfm_MainForm.btn_ComandsListClick(Sender: TObject);
begin
	btn_ComandsList.Enabled := False;
	btn_GetComandInfo.Enabled := False;
	se_CmdInfo.Clear;
	cbx_CommandsList.Clear;
	cbx_CommandsList.Enabled := False;
	Self.Update;
	try
		cbx_CommandsList.Items.Text := dude.get_ComandsList(cbx_CommandList_NameIndex.ItemIndex);
		if cbx_CommandsList.Items.Count > 0 then
		begin
			cbx_CommandsList.ItemIndex := 0;
			command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
			// get_CommandInfo;
			se_CmdInfo.Clear;
			se_CmdInfo.Text := cbx_CommandsList.Items.Text;
		end;
	finally
		btn_ComandsList.Enabled := True;
		btn_GetComandInfo.Enabled := True;
		cbx_CommandsList.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_CancelDownloadClick(Sender: TObject);
begin
	dude.cancel_Loop;
end;

procedure Tfm_MainForm.btn_CancelClick(Sender: TObject);
begin
	dude.cancel_Loop;
end;

procedure Tfm_MainForm.btn_DeleteOutputClick(Sender: TObject);
begin
	reHEXLog.Clear;
	reHumanLog.Clear;
end;

procedure Tfm_MainForm.btn_DelScriptIputClick(Sender: TObject);
begin
	se_Script.Clear;
end;

procedure Tfm_MainForm.btn_DownloadClick(Sender: TObject);
var
	chosenDirectory                     : string;
	Old_Active_OnSendCommand            : Boolean;
	Old_Active_OnReceiveAnswer          : Boolean;
	Old_Active_OnWait                   : Boolean;
	Old_Active_OnStatusChange           : Boolean;
	Old_Active_OnError                  : Boolean;
	Old_Active_OnFirstProgress_Init     : Boolean;
	Old_Active_OnFirstProgress_Loop     : Boolean;
	Old_Active_OnFirstProgress_Complete : Boolean;
	Old_Active_OnSecondProgress_Init    : Boolean;
	Old_Active_OnSecondProgress_Loop    : Boolean;
	Old_Active_OnSecondProgress_Complete: Boolean;

	function calculateFromDTPickers(dtpDate, dtpTime: TDateTimePicker): string;
	var
		Year, Month, Day    : Word;
		Hour, Min, Sec, MSec: Word;
	begin
		Result := '';

		DecodeDate(dtpDate.Date, Year, Month, Day);
		if Year > 2000 then Year := Year - 2000;

		Result := Result + StringOfChar('0', 1 - Length(IntToStr(Day))) + IntToStr(Day) + '-';
		Result := Result + StringOfChar('0', 1 - Length(IntToStr(Month))) + IntToStr(Month) + '-';
		Result := Result + IntToStr(Year) + ' ';

		DecodeTime(dtpTime.Time, Hour, Min, Sec, MSec);
		Result := Result + StringOfChar('0', 1 - Length(IntToStr(Hour))) + IntToStr(Hour) + ':';
		Result := Result + StringOfChar('0', 1 - Length(IntToStr(Min)))  + IntToStr(Min) + ':';
		Result := Result + StringOfChar('0', 1 - Length(IntToStr(Sec)))  + IntToStr(Sec);

		if chbx_DST.Checked then Result := Result + ' DST';
	end;

begin
	btn_Download.Enabled := False;
	btn_CancelDownload.Enabled := True;
	pnl_Progress.Visible := True;
	Self.Update;

	Old_Active_OnSendCommand := dude.active_OnSendCommand;
	Old_Active_OnReceiveAnswer := dude.active_OnReceiveAnswer;
	Old_Active_OnWait := dude.active_OnWait;
	Old_Active_OnStatusChange := dude.active_OnStatusChange;
	Old_Active_OnError := dude.active_OnError;

	Old_Active_OnFirstProgress_Init := dude.active_OnFirstProgress_Init;
	Old_Active_OnFirstProgress_Loop := dude.active_OnFirstProgress_Loop;
	Old_Active_OnFirstProgress_Complete := dude.active_OnFirstProgress_Complete;
	Old_Active_OnSecondProgress_Init := dude.active_OnSecondProgress_Init;
	Old_Active_OnSecondProgress_Loop := dude.active_OnSecondProgress_Loop;
	Old_Active_OnSecondProgress_Complete := dude.active_OnSecondProgress_Complete;

	try

		chosenDirectory := dude.download_Path;
		if not SelectDirectory(chosenDirectory, [sdAllowCreate, sdPerformCreate, sdPrompt], 0) then Exit;
		error_Code := dude.set_Download_Path(chosenDirectory);
		if error_Code <> 0 then Exit;

		error_Code := dude.set_CommunicationEvents(False, False, False, True, True, False);
		if error_Code <> 0 then Exit;

		error_Code := dude.set_FirstProgressEvents(True, True, True, False);
		if error_Code <> 0 then Exit;

		error_Code := dude.set_SecondProgressEvents(True, True, True, False);
		if error_Code <> 0 then Exit;

		case cbx_RangeType.ItemIndex of
			0:
				begin
					dude.DateRange_StartValue := calculateFromDTPickers(dtp_StartDate, dtp_StartTime);
					dude.DateRange_EndValue := calculateFromDTPickers(dtp_EndDate, dtp_EndTime);
					error_Code := dude.download_ANAF_DTRange;
				end;
			1:
				begin
					dude.zRange_StartValue := StrToInt(ed_StartZReport.Text);
					dude.zRange_EndValue := StrToInt(ed_EndZReport.Text);
					error_Code := dude.download_ANAF_ZRange;
				end;
		end;
	finally

		if error_Code <> 0 then ShowMessage(dude.lastError_Message)
		else
			if chbx_OpenFolderAfterDownload.Checked then ShellExecute(Application.Handle, PChar('explore'), PChar(chosenDirectory), nil, nil, SW_SHOWNORMAL);

		dude.set_CommunicationEvents(Old_Active_OnSendCommand, Old_Active_OnWait, Old_Active_OnReceiveAnswer, Old_Active_OnStatusChange, Old_Active_OnError, False);
		dude.set_FirstProgressEvents(Old_Active_OnFirstProgress_Init, Old_Active_OnFirstProgress_Loop, Old_Active_OnFirstProgress_Complete, False);
		dude.set_SecondProgressEvents(Old_Active_OnSecondProgress_Init, Old_Active_OnSecondProgress_Loop, Old_Active_OnSecondProgress_Complete, False);

		btn_Download.Enabled := True;
		btn_CancelDownload.Enabled := False;
		pnl_Progress.Visible := False;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_ExecuteCustomCommandClick(Sender: TObject);
var
	cmd                    : Integer;
	inputValue, outputValue: WideString;
begin
	btn_ExecuteCustomCommand.Enabled := False;
	mem_AnswerList.Clear;
	try
		if not TryStrToInt(ed_Custom_Cmd.Text, cmd) then
		begin
			ShowMessage('Invalied value');
			Exit;
		end;
		inputValue := ed_Custom_Input.Text;
		outputValue := '';
		ed_Custom_Output.Clear;

		if dude.execute_Command(cmd, inputValue, outputValue) <> 0 then
		begin
			ShowMessage(dude.lastError_Message);
			Exit;
		end;
		mem_AnswerList.Text := dude.last_AnswerList;
	finally
		ed_Custom_Output.Text := outputValue;
		btn_ExecuteCustomCommand.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_ExecuteScryptClick(Sender: TObject);
begin
	if dude.execute_Script_V1(dude_TLB.DS, se_Script.Text) <> 0 then ShowMessage(dude.lastError_Message);
end;

procedure Tfm_MainForm.btn_ExecuteSelectedClick(Sender: TObject);
begin
	if dude.execute_Script_V1(dude_TLB.DS, se_Script.SelText) <> 0 then ShowMessage(dude.lastError_Message);
end;

procedure Tfm_MainForm.btn_GetSystemInfoClick(Sender: TObject);
var
	tmpString: string;
	tmpList  : TStringList;
	i        : Integer;
begin
	btn_GetSystemInfo.Enabled := False;
	mem_SystemInfo.Clear;
	tmpList := TStringList.Create;
	try
		tmpList.Text := dude.get_SystemInfoSearchList;
		if tmpList.Count = 0 then Exit;
		for i := 0 to tmpList.Count - 1 do
		begin
			tmpString := tmpList.Strings[i] + ':';
			tmpString := tmpString + StringOfChar( ' ', 42 - Length(tmpString) ) + dude.get_SystemInfo(tmpList.Strings[i]);
			mem_SystemInfo.Lines.Add(tmpString);
		end;
	finally
		if tmpList.Count > 0 then tmpList.Clear;
		tmpList.Free;
		btn_GetSystemInfo.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_OpenConnectionClick(Sender: TObject);
begin
	error_Code := 0;
	btn_OpenConnection.Enabled := False;
	try
		if not dude.connected_ToDevice then
		begin
			error_Code := set_TransportProtocol;
			if error_Code <> 0 then Exit;

			error_Code := dude.open_Connection;
			if error_Code <> 0 then Exit;
		end;
		// show_DeviceModel;
	finally
		if error_Code <> 0 then
		begin
			ShowMessage(dude.lastError_Message);
			btn_OpenConnection.Enabled := True;
		end
		else
		begin
			if dude.connected_ToDevice then
				if not dude.Active_OnAfterOpenConnection then afterCase := ac_AfterOpenConnection;
		end;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_StartCOMServerClick(Sender: TObject);
begin
	btn_StartCOMServer.Enabled := False;
	if not tryTo_COMServer_Start then
	begin
		ShowMessage(en_Message_NoDriver);
		btn_StartCOMServer.Enabled := True;
		Exit;
	end;
	try
		try
			afterCase := ac_AfterStart_Server;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		if dude.connected_ToDevice then afterCase := ac_AfterOpenConnection;
	end;
end;

procedure Tfm_MainForm.btn_StopCOMServerClick(Sender: TObject);
begin
	btn_StopCOMServer.Enabled := False;
	try
		try
			dude.Disconnect;
		except
			btn_StopCOMServer.Enabled := True;
		end;
	finally
		afterCase := ac_AfterStopServer;
	end;
end;

procedure Tfm_MainForm.btn_StopConnectionClick(Sender: TObject);
begin
	error_Code := dude.close_Connection;
	if error_Code <> 0 then ShowMessage(dude.lastError_Message);
	if not dude.Active_OnAfterCloseConnection then afterCase := ac_AfterCloseConnection;
end;

procedure Tfm_MainForm.btn_UploadLogoClick(Sender: TObject);
var
	Old_Active_OnSendCommand  : Boolean;
	Old_Active_OnReceiveAnswer: Boolean;
	Old_Active_OnWait         : Boolean;
	Old_Active_OnStatusChange : Boolean;
	Old_Active_OnError        : Boolean;
	ErrorCode                 : Integer;
begin
	ErrorCode := -1;
	if not OpenPictureDialog1.Execute then Exit;
	btn_UploadLogo.Enabled := False;
	Self.Update;
	Old_Active_OnSendCommand := dude.active_OnSendCommand;
	Old_Active_OnReceiveAnswer := dude.active_OnReceiveAnswer;
	Old_Active_OnWait := dude.active_OnWait;
	Old_Active_OnStatusChange := dude.active_OnStatusChange;
	Old_Active_OnError := dude.active_OnError;
	try
		ErrorCode := dude.set_CommunicationEvents(False, False, False, True, True, False);
		if ErrorCode <> 0 then Exit;
		ErrorCode := dude.upload_Logo(OpenPictureDialog1.FileName);
	finally
		if ErrorCode <> 0 then ShowMessage(dude.lastError_Message);
		dude.set_CommunicationEvents(Old_Active_OnSendCommand, Old_Active_OnWait, Old_Active_OnReceiveAnswer, Old_Active_OnStatusChange, Old_Active_OnError, False);
		btn_UploadLogo.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_SearchAndDestroyClick(Sender: TObject);
var
	oldInstancesCounter: Integer;
begin
	btn_SearchAndDestroy.Enabled := False;
	Self.Update;
	try
		try
			oldInstancesCounter := 0;
			repeat
				Inc(oldInstancesCounter);
				if find_ActiveObject('dude.CFD_DUDE') then
				begin
					ShowMessage('Try to destroy the instance');
					fOldDudeInstance.DestroyInstance;
					break;
				end
				else
				begin
					// OldInstances := False;
					// Note:
					// This code works only if "RegisterActiveObject" setting is used.
					// If you want to use only one instance for all clients - you must set RegisterActiveObject_OnStart=1 (true).
					// In that case:
					// - Your client application can check for the old instance.
					// - If needed - your application can use the old connection to the device.
					// - Your client application can choose to try to destroy the old instance of the COM object and after that to create/start a new instance of the COM object.
					// - The connection to the device is shared between the client applications so:
					// -- If you use more than one client applications you must consider such behaviour and to change your code for an appropriate usage.
					// -- The events will be shared - so you will receive the events from execution of the commands from other client applications.
					// You have to keep all this in mind!
				end;
				Sleep(1000);
			until (oldInstancesCounter >= 3); // The value 3 is for example
		except
			On E: Exception do ShowMessage('GetActiveOleObject: ' + E.Message);
		end;
	finally
		btn_SearchAndDestroy.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_SaveEvents_CommandsClick(Sender: TObject);
var
	tmpResult: Integer;
begin
	tmpResult := -1;
	btn_SaveOtherSettings.Enabled := False;
	Self.Update;
	try
		try
			fMyAfterCaseFlag := True;

			tmpResult := dude.set_ScriptEvents(          //
			  chbx_Active_OnBeforeScriptExecute.Checked, //
			  chbx_Active_OnScriptRowExecute.Checked,    //
			  chbx_Active_OnAfterScriptExecute.Checked,  //
			  True);                                     //
			if tmpResult <> 0 then Exit;

			tmpResult := dude.set_CommunicationEvents( //
			  chbx_Active_OnSendCommand.Checked,       //
			  chbx_Active_OnWait.Checked,              //
			  chbx_Active_OnReceiveAnswer.Checked,     //
			  chbx_Active_OnStatusChange.Checked,      //
			  chbx_Active_OnError.Checked,             //
			  True);                                   //
			if tmpResult <> 0 then Exit;
		except
			On E: Exception do
			begin
				tmpResult := -1;
				ShowMessage(E.Message);
			end;
		end;
	finally
		if tmpResult <> 0 then ShowMessage(dude.lastError_Message);
		btn_SaveOtherSettings.Enabled := True;
		fMyAfterCaseFlag := False;
		afterCase := ac_AfterSettingsChange;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_SaveOtherSettingsClick(Sender: TObject);
var
	tmpResult: Integer;
begin
	tmpResult := -1;
	btn_SaveOtherSettings.Enabled := False;
	Self.Update;
	try
		try
			fMyAfterCaseFlag := True;

			dude.checkDeviceStatusOnCheckConnection := chbx_CheckDeviceStatusOnCheckConnection.Checked;

			tmpResult := save_Language;
			if tmpResult <> 0 then Exit;

			tmpResult := save_TrackingMode;
			if tmpResult <> 0 then Exit;
		except
			On E: Exception do
			begin
				tmpResult := -1;
				ShowMessage(E.Message);
			end;
		end;
	finally
		if tmpResult <> 0 then ShowMessage(dude.lastError_Message);
		btn_SaveOtherSettings.Enabled := True;
		fMyAfterCaseFlag := False;
		afterCase := ac_AfterSettingsChange;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_SaveEvents_ProgressBarsClick(Sender: TObject);
var
	tmpResult: Integer;
begin
	tmpResult := -1;
	btn_SaveEvents_ProgressBars.Enabled := False;
	Self.Update;
	try
		fMyAfterCaseFlag := True;

		tmpResult := dude.set_FirstProgressEvents(      //
		  chbx_Active_OnFirstProgress_Init.Checked,     //
		  chbx_Active_OnFirstProgress_Loop.Checked,     //
		  chbx_Active_OnFirstProgress_Complete.Checked, //
		  True);                                        //
		if tmpResult <> 0 then Exit;

		tmpResult := dude.set_SecondProgressEvents(      //
		  chbx_Active_OnSecondProgress_Init.Checked,     //
		  chbx_Active_OnSecondProgress_Loop.Checked,     //
		  chbx_Active_OnSecondProgress_Complete.Checked, //
		  True);                                         //
	finally
		if tmpResult <> 0 then ShowMessage(dude.lastError_Message);
		btn_SaveEvents_ProgressBars.Enabled := True;
		fMyAfterCaseFlag := False;
		afterCase := ac_AfterSettingsChange;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_Set_RAO_ModeClick(Sender: TObject);
var
	tmpResult : Integer;
	tmpMessage: string;
	OldValues : TOldValues;
	tmpBoolean: Boolean;
begin
	btn_Set_RAO_Mode.Enabled := False;
	fMyAfterCaseFlag := True;
	Self.Update;
	tmpResult := -1;
	try
		OldValues.Active_OnAfterCloseConnection := dude.Active_OnAfterCloseConnection;
		OldValues.Active_OnAfterOpenConnection := dude.Active_OnAfterOpenConnection;
		OldValues.Active_OnAfterSettingsChange := dude.Active_OnAfterSettingsChange;
		OldValues.RegisterActiveObject := dude.register_ActiveObject_OnStart;
		OldValues.Save_Settings_AfterOpenConnection := dude.save_SettingsAfterOpenConnection;

		tmpResult := dude.set_BehaviorOnOpenClose(        //
		  chbx_RegisterActiveObject.Checked,              //
		  chbx_Save_Settings_AfterOpenConnection.Checked, //
		  chbx_Active_OnAfterOpenConnection.Checked,      //
		  chbx_Active_OnAfterCloseConnection.Checked,     //
		  chbx_Active_OnAfterSettingsChange.Checked       //
		  );                                              //
	finally
		if tmpResult <> 0 then ShowMessage(dude.lastError_Message);
		tmpBoolean := (OldValues.Active_OnAfterCloseConnection <> chbx_Active_OnAfterCloseConnection.Checked);
		tmpBoolean := tmpBoolean or (OldValues.Active_OnAfterOpenConnection <> chbx_Active_OnAfterOpenConnection.Checked);
		tmpBoolean := tmpBoolean or (OldValues.Active_OnAfterSettingsChange <> chbx_Active_OnAfterSettingsChange.Checked);
		tmpBoolean := tmpBoolean or (OldValues.RegisterActiveObject <> chbx_RegisterActiveObject.Checked);
		tmpBoolean := tmpBoolean or (OldValues.Save_Settings_AfterOpenConnection <> chbx_Save_Settings_AfterOpenConnection.Checked);

		if tmpBoolean then
		begin
			tmpMessage := 'Important!' + sLineBreak + sLineBreak;
			tmpMessage := tmpMessage + ' 1. Changing of the "Register ActiveX Object on start"';
			tmpMessage := tmpMessage + ' will change the behavior of the COM server after the';
			tmpMessage := tmpMessage + ' restart of the COM server.' + sLineBreak + sLineBreak;

			tmpMessage := tmpMessage + ' 2. Please switch off the connection to the COM server';
			tmpMessage := tmpMessage + ' for all currently connected client applications (including';
			tmpMessage := tmpMessage + ' this application) !' + sLineBreak + sLineBreak;

			tmpMessage := tmpMessage + ' 3. If all client applications are switched off from the COM';
			tmpMessage := tmpMessage + ' server and the tray icon of the "DUDE" is still visible:' + sLineBreak;
			tmpMessage := tmpMessage + '  - please switch off the "DUDE" manually from the popup menu;' + sLineBreak;
			tmpMessage := tmpMessage + '  - you can start to use the "DUDE" with all new settings.' + sLineBreak + sLineBreak;

			tmpMessage := tmpMessage + ' 4. If you use "Register Activex Object on start":' + sLineBreak;
			tmpMessage := tmpMessage + '  - the instance and connection to the device will be "shared"';
			tmpMessage := tmpMessage + ' between all connected client applications;' + sLineBreak;
			tmpMessage := tmpMessage + '  - the software must be designed for such behavior;' + sLineBreak + sLineBreak;

			tmpMessage := tmpMessage + ' 5. If you don''t know anything for this settings and for this behavior mode:' + sLineBreak;
			tmpMessage := tmpMessage + '   - please call to the support team;' + sLineBreak;
			tmpMessage := tmpMessage + '   - please call to the manufacturers of your client application;' + sLineBreak;
			ShowMessage(tmpMessage);
		end;
		fMyAfterCaseFlag := False;
		afterCase := ac_AfterSettingsChange;
		btn_Set_RAO_Mode.Enabled := True;
		Self.Update;
	end;
end;

function Tfm_MainForm.byteToHex(B: Byte): String;
begin
	Result := Hex_Digit[B div Hex_Digits] + Hex_Digit[B mod Hex_Digits]
end;

procedure Tfm_MainForm.cbx_CommandList_NameIndexChange(Sender: TObject);
begin
	cbx_CommandsList.Sorted := chbx_SortedCommandsList.Checked;
	se_CmdInfo.Clear;
	cbx_CommandsList.Clear;
	cbx_CommandsList.Enabled := False;
	Self.Update;

	cbx_CommandsList.Items.Text := dude.get_ComandsList(cbx_CommandList_NameIndex.ItemIndex);
	if cbx_CommandsList.Items.Count > 0 then
	begin
		cbx_CommandsList.ItemIndex := 0;
		command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
		get_CommandInfo;
	end;

	Self.Update;
end;

procedure Tfm_MainForm.cbx_RangeTypeClick(Sender: TObject);
begin
	set_ANAF_Ranges;
end;

procedure Tfm_MainForm.chbx_SortedCommandsListClick(Sender: TObject);
begin
	chbx_SortedCommandsList.Checked := not cbx_CommandsList.Sorted;
	cbx_CommandsList.Sorted := chbx_SortedCommandsList.Checked;
	se_CmdInfo.Clear;
	cbx_CommandsList.Clear;
	cbx_CommandsList.Enabled := False;
	Self.Update;
	cbx_CommandsList.Items.Text := dude.get_ComandsList(cbx_CommandList_NameIndex.ItemIndex);
	if cbx_CommandsList.Items.Count > 0 then
	begin
		cbx_CommandsList.ItemIndex := 0;
		command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
		get_CommandInfo;
	end;

	Self.Update;
end;

procedure Tfm_MainForm.chbx_TrackingModeClick(Sender: TObject);
begin
	grbx_TrackingMode.Enabled := chbx_TrackingMode.Checked;
end;

procedure Tfm_MainForm.btn_Last_AnswerListClick(Sender: TObject);
var
	tmpList: TStringList;
	i      : Integer;
begin
	btn_Last_AnswerList.Enabled := False;
	mem_AnswerList.Clear;
	tmpList := TStringList.Create;
	try
		tmpList.Text := dude.last_AnswerList;
		if tmpList.Count = 0 then ShowMessage('There no data into a last answer list.')
		else
			for i := 0 to tmpList.Count - 1 do mem_AnswerList.Lines.Add('[' + IntToStr(i)+ '] = ' + tmpList.Strings[i]);
	finally
		btn_Last_AnswerList.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_LoadScriptFromFileClick(Sender: TObject);
var
	iniDir: string;
begin
	iniDir := ExtractFileDir(Application.ExeName);
	if iniDir[Length(iniDir)] <> PathDelim then iniDir := iniDir + PathDelim;
	iniDir := iniDir + 'Scripturi de test\';

	if DirectoryExists(iniDir) then OpenDialog1.InitialDir := iniDir;
	if OpenDialog1.Execute then
	begin
		se_Script.Clear;
		se_Script.Lines.LoadFromFile(OpenDialog1.FileName);
	end;
end;

procedure Tfm_MainForm.dudeAfterChangeSettings(ASender: TObject; settings_Index: Integer);
var
	tmpMessage: string;
begin
	if fMyAfterCaseFlag then Exit;
	try
		// Event raised if:
		// - the server save settings after successful connection to the device;
		// - in "RAO mode" : if other client application change settings;

		tmpMessage := '[' + DateTimeToStr(Now) + ']: ';
		case settings_Index of
			0: tmpMessage := tmpMessage + 'Set_TrackingMode_FileName';
			1: tmpMessage := tmpMessage + 'Set_TrackingMode';
			2: tmpMessage := tmpMessage + 'Set_Download_Path';
			3: tmpMessage := tmpMessage + 'Set_TrackingMode_Path';
			4: tmpMessage := tmpMessage + 'Set_TrackingMode_RowLimit';
			5: tmpMessage := tmpMessage + 'Set_TransportType';
			6: tmpMessage := tmpMessage + 'Set_Language';
			7: tmpMessage := tmpMessage + 'Set_Read_TimeOutValue';
			8: tmpMessage := tmpMessage + 'Set_Exit_ByReadTimeOutIsOn';
			9: tmpMessage := tmpMessage + 'Set_RS232';
			10: tmpMessage := tmpMessage + 'Set_RS232_Timeouts';
			11: tmpMessage := tmpMessage + 'Set_TCPIP';
			12: tmpMessage := tmpMessage + 'Set_DateRange_EndValue';
			13: tmpMessage := tmpMessage + 'Set_DateRange_StartValue';
			14: tmpMessage := tmpMessage + 'Set_RS232_OnOpen_Set_DCB';
			15: tmpMessage := tmpMessage + 'Set_RS232_OnOpen_Set_DTR_ToFalse';
			16: tmpMessage := tmpMessage + 'Set_RS232_OnOpen_Set_RTS_ToFalse';
			17: tmpMessage := tmpMessage + 'Set_zRange_EndValue';
			18: tmpMessage := tmpMessage + 'Set_zRange_StartValue';
			19: tmpMessage := tmpMessage + 'Set_ScriptEvents';
			20: tmpMessage := tmpMessage + 'Set_FirstProgressEvents';
			21: tmpMessage := tmpMessage + 'Set_SecondProgressEvents';
			22: tmpMessage := tmpMessage + 'Set_CommunicationEvents';
			23: tmpMessage := tmpMessage + 'Set_DocumentNumber_StartValue';
			24: tmpMessage := tmpMessage + 'Set_DocumentNumber_EndValue';
			25: tmpMessage := tmpMessage + 'Set_JEDocumentType';
			26: tmpMessage := tmpMessage + 'Set_OpenCloseEvents';
		end;
		mem_Log.Lines.Add(tmpMessage);
		// your code
	finally
		afterCase := ac_AfterSettingsChange;
	end;
end;

procedure Tfm_MainForm.dudeAfterCloseConnection(Sender: TObject);
begin
	afterCase := ac_AfterCloseConnection;
end;

procedure Tfm_MainForm.dudeAfterOpenConnection(Sender: TObject);
begin
	afterCase := ac_AfterOpenConnection;
end;

procedure Tfm_MainForm.dudeAfterScriptExecute(Sender: TObject);
begin
	enableScriptBtns(True);
end;

procedure Tfm_MainForm.dudeBeforeScriptExecute(Sender: TObject);
begin
	enableScriptBtns(False);
	try
		scrollToEnd(reHumanLog);
		initForSniffer(reHumanLog);
		scrollToEnd(reHEXLog);
		initForSniffer(reHEXLog);
		case cbx_GoToPage.ItemIndex of
			0: pc_ScriptContainer.ActivePage := ts_HumanLog;
			1: pc_ScriptContainer.ActivePage := ts_HEXLog;
			else pc_ScriptContainer.ActivePage := ts_SimpleScript;
		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.dudeError(ASender: TObject; error_Code: Integer; var error_Message: WideString);
begin
	mem_Log.Lines.Add('[' + DateTimeToStr(Now) + '] ErrCode[' + IntToStr(error_Code) + ']: ' + error_Message);
	get_StatusState;
end;

procedure Tfm_MainForm.dudeFirstProgress_Complete(Sender: TObject);
begin
	gau_First.Progress := 0;
	gau_First.Update;
end;

procedure Tfm_MainForm.dudeFirstProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
begin
	gau_First.Progress := value_Position;
	gau_First.MinValue := value_Minimum;
	gau_First.MaxValue := value_Maximum;
	pnl_Progress.Visible := True;
end;

procedure Tfm_MainForm.dudeFirstProgress_Loop(ASender: TObject; value_Position: Integer);
begin
	gau_First.Progress := value_Position;
	Application.ProcessMessages;
end;

procedure Tfm_MainForm.dudeReceiveAnswer(ASender: TObject; var Command, DateAndTime, repeat_Value, hex_Header, hex_Data, hex_Footer, human_Data: WideString);

	procedure handle_dhtText;
	begin
		try
			try
				reHumanLog.SelAttributes.Color := $000080FF;
				reHumanLog.SelText := '[Answer ]';
				reHumanLog.SelAttributes.Color := clBlack;
				reHumanLog.SelText := ';';
				reHumanLog.SelAttributes.Color := clGreen;
				reHumanLog.SelText := '[' + DateAndTime + ']';
				reHumanLog.SelAttributes.Color := clBlack;
				reHumanLog.SelText := ';[' + repeat_Value + '];';
				reHumanLog.SelAttributes.Color := $00FF8080;
				reHumanLog.SelText := '[Command = ' + Command + ']' + #9;
				reHumanLog.SelAttributes.Color := $000080FF;
				reHumanLog.SelText := human_Data;
			except
				On E: Exception do mem_Log.Lines.Add(E.Message);
			end;

		finally
			scrollToEnd(reHumanLog);
			initForSniffer(reHumanLog);
			Self.Update;
		end;
	end;

	procedure handle_dhtHex;
	begin
		try
			try
				reHEXLog.SelAttributes.Color := $000080FF;
				reHEXLog.SelText := '[Answer ]';
				reHEXLog.SelAttributes.Color := clBlack;
				reHEXLog.SelText := ';';
				reHEXLog.SelAttributes.Color := clGreen;
				reHEXLog.SelText := '[' + DateAndTime + ']';
				reHEXLog.SelAttributes.Color := clBlack;
				reHEXLog.SelText := ';[' + repeat_Value + '];';
				reHEXLog.SelAttributes.Color := $00FF8080;
				reHEXLog.SelText := '[Command = ' + Command + ']' + #9;
				reHEXLog.SelAttributes.Color := clBlue;
				reHEXLog.SelText := hex_Header;
				reHEXLog.SelAttributes.Color := $000080FF;
				reHEXLog.SelText := hex_Data;
				reHEXLog.SelAttributes.Color := clBlue;
				reHEXLog.SelText := hex_Footer;
			except
				On E: Exception do mem_Log.Lines.Add(E.Message);
			end;
		finally
			scrollToEnd(reHEXLog);
			initForSniffer(reHEXLog);
			Self.Update;
		end;
	end;

begin
	if fWeHaveWaitEvent then
	begin
		initForSniffer(reHEXLog);
		fWeHaveWaitEvent := False;
	end;
	handle_dhtText;
	handle_dhtHex;
end;

procedure Tfm_MainForm.dudeScriptRowExecute(ASender: TObject; row_Index, error_Code: Integer; var input_Value, output_Value: WideString);
var
	tmp: string;
begin
	if error_Code <> 0 then
	begin
		tmp := '';
		tmp := tmp + ' row         [' + IntToStr(row_Index) + '] ' + sLineBreak;
		tmp := tmp + ' error code  [' + IntToStr(error_Code) + ']' + sLineBreak;
		tmp := tmp + ' input value [' + input_Value + ']' + sLineBreak;
		tmp := tmp + ' output value[' + output_Value + ']';
		mem_Log.Lines.Add(tmp);
	end;
end;

procedure Tfm_MainForm.dudeSecondProgress_Complete(Sender: TObject);
begin
	gau_Second.Progress := 0;
	gau_Second.Update;
end;

procedure Tfm_MainForm.dudeSecondProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
begin
	gau_Second.Progress := value_Position;
	gau_Second.MinValue := value_Minimum;
	gau_Second.MaxValue := value_Maximum;
	pnl_Progress.Visible := True;
end;

procedure Tfm_MainForm.dudeSecondProgress_Loop(ASender: TObject; value_Position: Integer);
begin
	gau_Second.Progress := value_Position;
	Application.ProcessMessages;
end;

procedure Tfm_MainForm.dudeSendCommand(ASender: TObject; var Command, DateAndTime, repeat_Value, hex_Header, hex_Data, hex_Footer, human_Data: WideString);

	procedure handle_dhtText;
	begin
		try
			try
				reHumanLog.SelAttributes.Color := clBlue;
				reHumanLog.SelText := '[Request]';
				reHumanLog.SelAttributes.Color := clBlack;
				reHumanLog.SelText := ';';
				reHumanLog.SelAttributes.Color := clGreen;
				reHumanLog.SelText := '[' + DateAndTime + ']';
				reHumanLog.SelAttributes.Color := clBlack;
				reHumanLog.SelText := ';[' + repeat_Value + '];';
				reHumanLog.SelAttributes.Color := $00FF8080;
				reHumanLog.SelText := '[Command = ' + Command + ']' + #9;
				reHumanLog.SelAttributes.Color := $000080FF;
				reHumanLog.SelText := human_Data;
			except
				On E: Exception do mem_Log.Lines.Add(E.Message);
			end;

		finally
			scrollToEnd(reHumanLog);
			initForSniffer(reHumanLog);
			Self.Update;
		end;
	end;

	procedure handle_dhtHex;
	begin
		try
			try
				reHEXLog.SelAttributes.Color := clBlue; // $000080FF;
				reHEXLog.SelText := '[Request]';
				reHEXLog.SelAttributes.Color := clBlack;
				reHEXLog.SelText := ';';
				reHEXLog.SelAttributes.Color := clGreen;
				reHEXLog.SelText := '[' + DateAndTime + ']';
				reHEXLog.SelAttributes.Color := clBlack;
				reHEXLog.SelText := ';[' + repeat_Value + '];';
				reHEXLog.SelAttributes.Color := $00FF8080;
				reHEXLog.SelText := '[Command = ' + Command + ']' + #9;
				reHEXLog.SelAttributes.Color := clBlue;
				reHEXLog.SelText := hex_Header;
				reHEXLog.SelAttributes.Color := $000080FF;
				reHEXLog.SelText := hex_Data;
				reHEXLog.SelAttributes.Color := clBlue;
				reHEXLog.SelText := hex_Footer;
			except
				On E: Exception do mem_Log.Lines.Add(E.Message);
			end;
		finally
			scrollToEnd(reHEXLog);
			initForSniffer(reHEXLog);
			Self.Update;
		end;
	end;

begin
	handle_dhtText;
	handle_dhtHex;
end;

procedure Tfm_MainForm.dudeStatusChange(Sender: TObject);
begin
	get_StatusState;
end;

procedure Tfm_MainForm.dudeWait(ASender: TObject; Value: Byte);
begin
	if fSYNCount >= 16 then
	begin
		fSYNCount := 0;
		reHEXLog.SelStart := reHEXLog.GetTextLen;
		reHEXLog.SelText := sLineBreak; // #13#10;
		reHEXLog.SelStart := reHEXLog.GetTextLen;
		if fAppMessCount >= 5 then
		begin
			fAppMessCount := 0;
			reHEXLog.SelStart := reHEXLog.GetTextLen;
			reHEXLog.SelText := sLineBreak;
			reHEXLog.SelStart := reHEXLog.GetTextLen;
			Application.ProcessMessages;
		end
		else Inc(fAppMessCount);
	end;
	reHEXLog.SelAttributes.Color := $00FF8080;
	reHEXLog.SelText := ' ' + byteToHex(Value);
	fWeHaveWaitEvent := True;
	Self.Update;
	Inc(fSYNCount);
end;

function Tfm_MainForm.execute_Command_ByName: Boolean;
begin
	Result := False;
	if not dude.connected_ToDevice then Exit;
	try
		try
			Result := (dude.execute_Command_ByName(command_Name) = 0);
		except
			Result := False;
		end;
	finally
		if not Result then ShowMessage(dude.lastError_Message);
	end;
end;

function Tfm_MainForm.find_ActiveObject(theName: string): Boolean;
begin
	Result := False;
	try
		try
			fOldDudeInstance := GetActiveOleObject(theName);
			Result := True;
		except
			Result := False;
		end;
	finally
		if Result then ShowMessage('An old instance of "dude.CFD DUDE" is found!');
	end;
end;

procedure Tfm_MainForm.FormCreate(Sender: TObject);
var
	HL: TSynDSTSyn;
begin
	fWeHaveWaitEvent := False;
	fTransportProtocol := ctc_RS232;
	fComPort := 1;
	fLastError_Code := 0;
	fLastError_Message := '';
	fMyAfterCaseFlag := False;

	set_FormatSettings;

	afterCase := ac_AfterStart_Program;

	// ********************************
	HL := TSynDSTSyn.Create(fm_MainForm);
	se_Script.Highlighter := HL;
	// se_Script.ClearAll;
	// ***************************************
end;

procedure Tfm_MainForm.FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
	tmpBValue: Boolean;
begin
	MousePos := ScreenToClient(MousePos);
	tmpBValue := (MousePos.X > (pnl_StatusBytes.Left + ScrollBox1.Left));
	tmpBValue := tmpBValue and (MousePos.Y > ScrollBox1.Top);
	tmpBValue := tmpBValue and (MousePos.X < (pnl_StatusBytes.Left + ScrollBox1.Left + ScrollBox1.Width));
	tmpBValue := tmpBValue and (MousePos.Y < ScrollBox1.Top + ScrollBox1.Height);
	If tmpBValue then ScrollBox1.Perform(WM_VSCROLL, 1, 0);
end;

procedure Tfm_MainForm.FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
	tmpBValue: Boolean;
begin
	MousePos := ScreenToClient(MousePos);
	tmpBValue := (MousePos.X > (pnl_StatusBytes.Left + ScrollBox1.Left));
	tmpBValue := tmpBValue and (MousePos.Y > ScrollBox1.Top);
	tmpBValue := tmpBValue and (MousePos.X < (pnl_StatusBytes.Left + ScrollBox1.Left + ScrollBox1.Width));
	tmpBValue := tmpBValue and (MousePos.Y < ScrollBox1.Top + ScrollBox1.Height);
	If tmpBValue then ScrollBox1.Perform(WM_VSCROLL, 0, 0);
end;

procedure Tfm_MainForm.get_CommandInfo;
var
	tmpS: WideString;
begin
	btn_ComandsList.Enabled := False;
	btn_GetComandInfo.Enabled := False;
	cbx_CommandsList.Enabled := False;
	try
		se_CmdInfo.Clear;
		if dude.get_CommandInfo(command_Name, tmpS) = 0 then se_CmdInfo.Text := tmpS;
	finally
		se_CmdInfo.SelStart := 0;
		btn_ComandsList.Enabled := True;
		btn_GetComandInfo.Enabled := True;
		cbx_CommandsList.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.get_InputParamsList;
var
	tmpList    : TStringList;
	InputParams: WideString;
	i          : Integer;
begin
	if dude.get_InputParams_Names(command_Name, InputParams) <> 0 then Exit;
	tmpList := TStringList.Create;
	try
		se_CmdInfo.Lines.Add('');
		se_CmdInfo.Lines.Add('Input params list:');
		tmpList.Text := InputParams;
		for i := 0 to tmpList.Count - 1 do se_CmdInfo.Lines.Add(tmpList.Strings[i]);
	finally
		tmpList.Clear;
		tmpList.Free;
	end;
end;

function Tfm_MainForm.get_OutputParamsCount(var oCount: Integer): Boolean;
begin
	Result := False;
	oCount := -1;
	try
		try
			if not dude.connected_ToDevice then Exit;
			Result := (dude.get_OutputParams_Count(command_Name, oCount) = 0);
		except
			Result := False;
		end;
	finally
		if not Result then ShowMessage(dude.lastError_Message);
	end;
end;

procedure Tfm_MainForm.get_OutputParamsList;
var
	tmpList     : TStringList;
	outputParams: WideString;
	i           : Integer;
begin
	if dude.get_OutputParams_Names(command_Name, outputParams) <> 0 then Exit;
	tmpList := TStringList.Create;
	try
		se_CmdInfo.Lines.Add('');
		se_CmdInfo.Lines.Add('Output params list:');
		tmpList.Text := outputParams;
		for i := 0 to tmpList.Count - 1 do se_CmdInfo.Lines.Add(tmpList.Strings[i]);
	finally
		tmpList.Clear;
		tmpList.Free;
	end;
end;

function Tfm_MainForm.get_OutputParams_Names(var Value: WideString): Boolean;
begin
	Result := False;
	Value := '';
	try
		try
			if not dude.connected_ToDevice then Exit;
			Result := (dude.get_OutputParams_Names(command_Name, Value) = 0);
		except
			Result := False;
		end;
	finally
		if not Result then ShowMessage(dude.lastError_Message);
	end;
end;

procedure Tfm_MainForm.enableScriptBtns(toValue: Boolean);
begin
	btn_ExecuteScrypt.Enabled := toValue;
	btn_ExecuteSelected.Enabled := toValue;
	btn_DelScriptIput.Enabled := toValue;
	btn_DeleteOutput.Enabled := toValue;
	btn_Cancel.Enabled := not toValue;
	Self.Update;
end;

procedure Tfm_MainForm.get_StatusDescriptions;
var
	i, j          : Integer;
	aComponent    : TComponent;
	tmpDescription: string;
	tmpCheckForErr: Boolean;
begin
	for i := 0 to 7 do
		for j := 0 to 7 do
		begin
			tmpDescription := dude.get_SBit_Description(i, j);
			tmpCheckForErr := dude.get_SBit_ErrorChecking(i, j);
			aComponent := fm_MainForm.FindComponent('chbx_S' + IntToStr(i) + '_' + IntToStr(j));
			if Assigned(aComponent) then
				if aComponent is TCheckBox then
				begin
					TCheckBox(aComponent).Caption := tmpDescription;
					if tmpCheckForErr then TCheckBox(aComponent).Font.Style := [fsBold]
					else TCheckBox(aComponent).Font.Style := [];
				end;
		end;
end;

procedure Tfm_MainForm.get_StatusState;
var
	i, j      : Integer;
	aComponent: TComponent;
	tmpState  : Boolean;
begin
	for i := 0 to 7 do
		for j := 0 to 7 do
		begin
			tmpState := dude.get_SBit_State(i, j);
			aComponent := fm_MainForm.FindComponent('chbx_S' + IntToStr(i)+ '_' + IntToStr(j));
			if Assigned(aComponent) then
				if aComponent is TCheckBox then
				begin
					TCheckBox(aComponent).Checked := tmpState;
				end;
		end;
end;

procedure Tfm_MainForm.ScrollBarMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
	i: Integer;
begin
	Handled := PtInRect(ScrollBox1.ClientRect, ScrollBox1.ScreenToClient(MousePos));
	if Handled then
		for i := 1 to Mouse.WheelScrollLines do
			try
				if WheelDelta > 0 then ScrollBox1.Perform(WM_VSCROLL, SB_LINEUP, 0)
				else ScrollBox1.Perform(WM_VSCROLL, SB_LINEDOWN, 0);
			finally
				ScrollBox1.Perform(WM_VSCROLL, SB_ENDSCROLL, 0);
			end;
end;

procedure Tfm_MainForm.scrollToEnd(targetEditor: TRichEdit);
var
	isSelectionHidden: Boolean;
begin
	with targetEditor do
	begin
		SelStart := Perform(EM_LINEINDEX, Lines.Count - 1, 0); // Set caret at end
		SelLength := 0;
		isSelectionHidden := HideSelection;
		try
			HideSelection := False;
			Perform(EM_SCROLLCARET, 0, 0); // Scroll to caret
		finally
			HideSelection := isSelectionHidden;
		end;
	end;
end;

procedure Tfm_MainForm.SetAfterCase(const Value: TAfterCase);
begin
	fAfterCase := Value;

	set_Other(Value);
	set_CheckBoxes(Value);
	set_LabelValues(Value);
	set_EditBoxes(Value);
	set_ComboBoxValues(Value);
	set_TabVisibility(Value);
	set_Buttons(Value);
end;

procedure Tfm_MainForm.SetBaudRate(const Value: Integer);
begin
	fBaudRate := Value;
end;

procedure Tfm_MainForm.set_CheckBoxes(afterCase: TAfterCase);
begin
	try
		case afterCase of
			ac_AfterStopServer, ac_AfterStart_Program:
				begin
					chbx_Active_OnBeforeScriptExecute.Checked := False;
					chbx_Active_OnScriptRowExecute.Checked := False;
					chbx_Active_OnAfterScriptExecute.Checked := False;
					chbx_Active_OnSendCommand.Checked := False;
					chbx_Active_OnWait.Checked := False;
					chbx_Active_OnReceiveAnswer.Checked := False;
					chbx_Active_OnStatusChange.Checked := False;
					chbx_Active_OnError.Checked := False;
					chbx_Active_OnFirstProgress_Init.Checked := False;
					chbx_Active_OnFirstProgress_Loop.Checked := False;
					chbx_Active_OnFirstProgress_Complete.Checked := False;
					chbx_Active_OnSecondProgress_Init.Checked := False;
					chbx_Active_OnSecondProgress_Loop.Checked := False;
					chbx_Active_OnSecondProgress_Complete.Checked := False;
					chbx_TrackingMode.Checked := False;
					chbx_Active_OnAfterOpenConnection.Checked := False;
					chbx_Active_OnAfterCloseConnection.Checked := False;
					chbx_RegisterActiveObject.Checked := False;
					chbx_Save_Settings_AfterOpenConnection.Checked := False;
					chbx_TrackingMode.Checked := False;
					chbx_Active_OnAfterSettingsChange.Checked := False;
					init_StatusState;
				end;
			ac_AfterSettingsChange, ac_AfterStart_Server:
				begin
					chbx_Active_OnBeforeScriptExecute.Checked := dude.Active_OnBeforeScriptExecute;
					chbx_Active_OnScriptRowExecute.Checked := dude.Active_OnScriptRowExecute;
					chbx_Active_OnAfterScriptExecute.Checked := dude.Active_OnAfterScriptExecute;
					chbx_Active_OnSendCommand.Checked := dude.active_OnSendCommand;
					chbx_Active_OnWait.Checked := dude.active_OnWait;
					chbx_Active_OnReceiveAnswer.Checked := dude.active_OnReceiveAnswer;
					chbx_Active_OnStatusChange.Checked := dude.active_OnStatusChange;
					chbx_Active_OnError.Checked := dude.active_OnError;
					chbx_Active_OnFirstProgress_Init.Checked := dude.active_OnFirstProgress_Init;
					chbx_Active_OnFirstProgress_Loop.Checked := dude.active_OnFirstProgress_Loop;
					chbx_Active_OnFirstProgress_Complete.Checked := dude.active_OnFirstProgress_Complete;
					chbx_Active_OnSecondProgress_Init.Checked := dude.active_OnSecondProgress_Init;
					chbx_Active_OnSecondProgress_Loop.Checked := dude.active_OnSecondProgress_Loop;
					chbx_Active_OnSecondProgress_Complete.Checked := dude.active_OnSecondProgress_Complete;
					chbx_Active_OnAfterOpenConnection.Checked := dude.Active_OnAfterOpenConnection;
					chbx_Active_OnAfterCloseConnection.Checked := dude.Active_OnAfterCloseConnection;
					chbx_RegisterActiveObject.Checked := dude.register_ActiveObject_OnStart;
					chbx_Save_Settings_AfterOpenConnection.Checked := dude.save_SettingsAfterOpenConnection;
					chbx_TrackingMode.Checked := dude.trackingMode;
					chbx_Active_OnAfterSettingsChange.Checked := dude.Active_OnAfterSettingsChange;
					chbx_CheckDeviceStatusOnCheckConnection.Checked := dude.checkDeviceStatusOnCheckConnection;

					if dude.connected_ToDevice then
					begin
						get_StatusDescriptions;
						get_StatusState;
					end;
				end;
			ac_AfterOpenConnection:
				begin
					get_StatusDescriptions;
					get_StatusState;
				end;
			ac_AfterCloseConnection: init_StatusState;
		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_ComboBoxValues(afterCase: TAfterCase);
begin
	try
		case afterCase of
			ac_AfterStopServer, ac_AfterStart_Program:
				begin
					cbx_DriverLanguage.Enabled := False;
					cbx_DriverLanguage.ItemIndex := -1;
					cbx_CommandsList.ItemIndex := -1;
					if afterCase = ac_AfterStart_Program then
					begin
						cbx_CommandList_NameIndex.ItemIndex := 0;
						cbx_GoToPage.ItemIndex := 0;
						cbx_CodeType.ItemIndex := 0;
						cbx_RangeType.ItemIndex := 1;
						set_ANAF_Ranges;
					end;
				end;
			ac_AfterSettingsChange:
				begin
					cbx_DriverLanguage.Enabled := True;
					case dude.language of
						dude_TLB.English: cbx_DriverLanguage.ItemIndex := cbx_DriverLanguage.Items.IndexOf('English');
						dude_TLB.Romanian: cbx_DriverLanguage.ItemIndex := cbx_DriverLanguage.Items.IndexOf('Romanian');
					end;
				end;
			ac_AfterStart_Server:
				begin
					cbx_DriverLanguage.Enabled := True;
					case dude.language of
						dude_TLB.English: cbx_DriverLanguage.ItemIndex := cbx_DriverLanguage.Items.IndexOf('English');
						dude_TLB.Romanian: cbx_DriverLanguage.ItemIndex := cbx_DriverLanguage.Items.IndexOf('Romanian');
					end;

					cbx_CommandsList.Items.Text := dude.get_ComandsList(cbx_CommandList_NameIndex.ItemIndex);
					if cbx_CommandsList.Items.Count > 0 then
					begin
						cbx_CommandsList.ItemIndex := 0;
						command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
						get_CommandInfo;
					end;
				end;
			ac_AfterOpenConnection:
				begin
					//
				end;
			ac_AfterCloseConnection:
				begin
					//
				end;

		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_EditBoxes(afterCase: TAfterCase);
begin
	try
		case afterCase of
			ac_AfterStart_Program:
				begin
					ed_TrackingModePath.Text := '';
					ed_TrackingModeFileName.Text := '';
					ed_TrackingModeRowLimit.Text := '0';

					ed_LANPort.Enabled := False;   //
					ed_IPAddress.Enabled := False; //
					ed_COMPort.Enabled := False;   //
					ed_BaudRate.Enabled := False;  //
				end;
			ac_AfterSettingsChange, ac_AfterStart_Server:
				begin
					ed_COMPort.Text := IntToStr(dude.rs232_ComPort);
					ed_BaudRate.Text := IntToStr(dude.rs232_BaudRate);
					ed_LANPort.Text := IntToStr(dude.tcpip_Port);
					ed_IPAddress.Text := dude.tcpip_Address;

					ed_TrackingModePath.Text := dude.trackingMode_Path;
					ed_TrackingModeFileName.Text := dude.trackingMode_FileName;
					ed_TrackingModeRowLimit.Text := IntToStr(dude.trackingMode_RowLimit);

					ed_LANPort.Enabled := (tsw_TransportType.ItemIndex = 1);   //
					ed_IPAddress.Enabled := (tsw_TransportType.ItemIndex = 1); //
					ed_COMPort.Enabled := (tsw_TransportType.ItemIndex = 0);    //
					ed_BaudRate.Enabled := (tsw_TransportType.ItemIndex = 0);   //
				end;
			ac_AfterOpenConnection:
				begin
					ed_LANPort.Enabled := False;
					ed_IPAddress.Enabled := False;
					ed_COMPort.Enabled := False;
					ed_BaudRate.Enabled := False;
				end;
			ac_AfterCloseConnection:
				begin
					ed_LANPort.Enabled := (tsw_TransportType.ItemIndex = 1);   //
					ed_IPAddress.Enabled := (tsw_TransportType.ItemIndex = 1); //
					ed_COMPort.Enabled := (tsw_TransportType.ItemIndex = 0);    //
					ed_BaudRate.Enabled := (tsw_TransportType.ItemIndex = 0);   //
				end;
			ac_AfterStopServer:
				begin
					ed_LANPort.Enabled := False;
					ed_IPAddress.Enabled := False;
					ed_COMPort.Enabled := False;
					ed_BaudRate.Enabled := False;
				end;

		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_FormatSettings;
begin
	DateSeparator := '.';
	TimeSeparator := ':';
	DecimalSeparator := '.';
	ShortDateFormat := 'dd.mm.yyyy';
	ShortTimeFormat := 'hh:mm:ss:zzz';
	LongDateFormat := 'dd.mm.yyyy';
	LongTimeFormat := 'hh:mm:ss:zzz';
end;

procedure Tfm_MainForm.SetComPort(const Value: Integer);
begin
	fComPort := Value;
end;

procedure Tfm_MainForm.set_ANAF_Ranges;

	procedure set_Visibility(to_Value: Boolean);
	begin
		lb_StartZReport.Enabled := not to_Value;
		ed_StartZReport.Enabled := not to_Value;
		lb_EndZReport.Enabled := not to_Value;
		ed_EndZReport.Enabled := not to_Value;

		lb_Start.Enabled := to_Value;
		dtp_StartDate.Enabled := to_Value;
		dtp_StartTime.Enabled := to_Value;
		lb_End.Enabled := to_Value;
		dtp_EndDate.Enabled := to_Value;
		dtp_EndTime.Enabled := to_Value;
		chbx_DST.Enabled := to_Value;
	end;

begin
	try
		try
			case cbx_RangeType.ItemIndex of
				0:
					begin
						set_Visibility(True);
						if (pc_Main.ActivePage = ts_ANAF_Download) then
							if (dtp_StartDate.Visible) and (dtp_StartDate.Enabled) then dtp_StartDate.SetFocus;
					end;
				1:
					begin
						set_Visibility(False);
						if (pc_Main.ActivePage = ts_ANAF_Download) then
							if (ed_StartZReport.Visible) and (ed_StartZReport.Enabled) then ed_StartZReport.SetFocus;
					end;
			end;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_Buttons(afterCase: TAfterCase);
var
	bv: Boolean;
begin
	try
		case afterCase of
			ac_AfterStopServer, ac_AfterStart_Program:
				begin
					btn_SearchAndDestroy.Enabled := True;
					btn_StartCOMServer.Enabled := True;
					btn_StopCOMServer.Enabled := False;

					btn_SaveEvents_ProgressBars.Enabled := False;
                         btn_SaveEvents_Commands.Enabled := False;
                         btn_SaveOtherSettings.Enabled := False;
                         btn_Set_RAO_Mode.Enabled := False;

					btn_OpenConnection.Enabled := False;
					btn_StopConnection.Enabled := False;
				end;
			ac_AfterOpenConnection, ac_AfterStart_Server, ac_AfterCloseConnection:
				begin
					btn_SearchAndDestroy.Enabled := False;
					btn_StartCOMServer.Enabled := False;
					btn_StopCOMServer.Enabled := True;
					btn_GetSystemInfo.Enabled := True;

					btn_SaveEvents_ProgressBars.Enabled := True;
                         btn_SaveEvents_Commands.Enabled := True;
                         btn_SaveOtherSettings.Enabled := True;
                         btn_Set_RAO_Mode.Enabled := True;

					btn_LoadScriptFromFile.Enabled := True;
					btn_DelScriptIput.Enabled := True;
					btn_DeleteOutput.Enabled := True;
					btn_ComandsList.Enabled := True;
					btn_GetComandInfo.Enabled := True;
					btn_GenerateCode.Enabled := True;

					bv := dude.connected_ToDevice;
					btn_OpenConnection.Enabled := (not bv);
					btn_StopConnection.Enabled := bv;
					btn_ExecuteCustomCommand.Enabled := bv;
					btn_Last_AnswerList.Enabled := bv;
					btn_ExecuteScrypt.Enabled := bv;
					btn_ExecuteSelected.Enabled := bv;
					btn_Download.Enabled := bv;
					btn_UploadLogo.Enabled := bv;
					btn_5Ah_1.Enabled := bv;
					btn_GeneratedCode.Enabled := bv;
				end;
			ac_AfterSettingsChange:;
		end;
	finally
		Self.Update;
	end;
end;

function Tfm_MainForm.set_InputParam_ByIndex(param_Index: Integer; const param_Value: string): Boolean;
begin
	Result := False;
	if not dude.connected_ToDevice then Exit;
	try
		try
			Result := (dude.set_InputParam_ByIndex(command_Name, 0, '1') = 0);
		except
			Result := False;
		end;
	finally
		if not Result then ShowMessage(dude.lastError_Message);
	end;
end;

function Tfm_MainForm.set_InputParam_ByName(const param_Name, param_Value: string): Boolean;
begin
	Result := False;
	if not dude.connected_ToDevice then Exit;
	try
		try
			Result := (dude.set_InputParam_ByName(command_Name, param_Name, param_Value) = 0);
		except
			Result := False;
		end;
	finally
		if not Result then ShowMessage(dude.lastError_Message);
	end;
end;

procedure Tfm_MainForm.set_LabelValues(afterCase: TAfterCase);

	procedure init_LabelCaptions;
	begin
		lb_Language_2.Caption := caption_None;
		lb_DeviceConnected_2.Caption := caption_None;
		lb_LANConnected_2.Caption := caption_None;
		lb_Device_Type_02.Caption := caption_None;
		lb_ModelName_2.Caption := caption_None;
		lb_SerialNumber_2.Caption := caption_None;
		lb_FM_Number_02.Caption := caption_None;
		lb_Firmware_Revision_02.Caption := caption_None;
		lb_Firmware_Date_02.Caption := caption_None;
		lb_Firmware_CheckSum_02.Caption := caption_None;
		lb_Firmware_CodePage_02.Caption := caption_None;
		lb_Distributor_02.Caption := caption_None;
		lb_DeviceConnected_2.Caption := 'Not connected';
	end;

	procedure change_SomeLabels(enableToValue: Boolean);
	begin
		lb_LANPort.Enabled := enableToValue;
		lb_IPAddress.Enabled := enableToValue;
		lb_COMPort.Enabled := enableToValue;
		lb_BaudRate.Enabled := enableToValue;
		case afterCase of
			ac_AfterStart_Program:;
			ac_AfterStart_Server:;
			ac_AfterOpenConnection:;
			ac_AfterCloseConnection:
				begin
					lb_LANPort.Enabled := not enableToValue;
					lb_IPAddress.Enabled := not enableToValue;
				end;
			ac_AfterStopServer:;
			ac_AfterSettingsChange:;
		end;
	end;

begin
	try
		case afterCase of
			ac_AfterStopServer:
				begin
					init_LabelCaptions;
					change_SomeLabels(False);
				end;
			ac_AfterStart_Program:
				begin
					init_LabelCaptions;
					change_SomeLabels(False);
				end;
			ac_AfterCloseConnection:
				begin
					init_LabelCaptions;
					change_SomeLabels(tsw_TransportType.ItemIndex = 0);
				end;
			ac_AfterOpenConnection:
				begin
					lb_ModelName_2.Caption := dude.device_Model_Name;
					lb_SerialNumber_2.Caption := dude.device_Number_Serial;
					lb_FM_Number_02.Caption := dude.device_Number_FMemory;
					lb_Firmware_Revision_02.Caption := dude.device_Firmware_Revision;
					lb_Firmware_Date_02.Caption := dude.device_Firmware_Date;
					lb_Firmware_CheckSum_02.Caption := dude.device_Firmware_CheckSum;
					lb_Firmware_CodePage_02.Caption := IntToStr(dude.codePage);
					lb_Distributor_02.Caption := dude.device_Distributor;

					change_SomeLabels(False);

					lb_DeviceConnected_2.Caption := 'Connected';
					case dude.device_Type of
						dt_FiscalPrinter: lb_Device_Type_02.Caption := 'Fiscal printer';
						dt_ECR: lb_Device_Type_02.Caption := 'Cash register';
					end;

					if dude.connected_ToLAN then lb_LANConnected_2.Caption := 'Available'
					else lb_LANConnected_2.Caption := 'Not available';
				end;
			ac_AfterStart_Server:
				begin
					init_LabelCaptions;

					case dude.language of
						dude_TLB.English: lb_Language_2.Caption := 'English';
						dude_TLB.Romanian: lb_Language_2.Caption := 'Romanian';
					end;

					if dude.connected_ToLAN then lb_LANConnected_2.Caption := 'Available'
					else lb_LANConnected_2.Caption := 'Not available';

					ed_LANPort.Enabled := (tsw_TransportType.ItemIndex = 1);   //
					ed_IPAddress.Enabled := (tsw_TransportType.ItemIndex = 1); //
					ed_COMPort.Enabled := (tsw_TransportType.ItemIndex = 0);    //
					ed_BaudRate.Enabled := (tsw_TransportType.ItemIndex = 0);   // 
					change_SomeLabels(tsw_TransportType.ItemIndex = 0);
				end;

			ac_AfterSettingsChange:
				begin
					case dude.language of
						dude_TLB.English: lb_Language_2.Caption := 'English';
						dude_TLB.Romanian: lb_Language_2.Caption := 'Romanian';
					end;
					if dude.connected_ToLAN then lb_LANConnected_2.Caption := 'Available'
					else lb_LANConnected_2.Caption := 'Not available';

					ed_LANPort.Enabled := (tsw_TransportType.ItemIndex = 1);   //
					ed_IPAddress.Enabled := (tsw_TransportType.ItemIndex = 1); //
					ed_COMPort.Enabled := (tsw_TransportType.ItemIndex = 0);    //
					ed_BaudRate.Enabled := (tsw_TransportType.ItemIndex = 0);   // 
					change_SomeLabels(tsw_TransportType.ItemIndex = 0);
				end;
		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_Other(afterCase: TAfterCase);
begin
	try
		case afterCase of
			ac_AfterStopServer, ac_AfterStart_Program:
				begin
					pnl_Btm.Visible := False;
					pnl_StatusBytes.Visible := False;
					tsw_TransportType.Enabled := False;
					reHumanLog.Clear;
					reHEXLog.Clear;
				end;
			ac_AfterCloseConnection, ac_AfterStart_Server:
				begin
					pnl_Btm.Visible := True;
					pnl_StatusBytes.Visible := True;
					tsw_TransportType.Enabled := True;
					case dude.protocol_TransportType of
						ctc_RS232: tsw_TransportType.ItemIndex := 0;
						ctc_TCPIP: tsw_TransportType.ItemIndex := 1;
					end;
					get_StatusDescriptions;
					get_StatusState;
				end;
			ac_AfterSettingsChange:
				begin
					tsw_TransportType.Enabled := not dude.connected_ToDevice;
					pnl_StatusBytes.Visible := True;
					pnl_Btm.Visible := True;
					get_StatusDescriptions;
					get_StatusState;
				end;
			ac_AfterOpenConnection:
				begin
					tsw_TransportType.Enabled := False;
					pnl_StatusBytes.Visible := True;
					pnl_Btm.Visible := True;
					reHumanLog.Clear;
					reHEXLog.Clear;
					get_StatusDescriptions;
					get_StatusState;
				end;
		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_TabVisibility(afterCase: TAfterCase);
var
	i: Integer;
begin
	try
		case afterCase of
			ac_AfterStopServer, ac_AfterStart_Program:
				begin
					for i := pc_Main.PageCount - 1 downto 0 do pc_Main.Pages[i].TabVisible := False;
					pc_Main.ActivePage := ts_Initialisation;
					pnl_StatusBytes.Visible := False;
					btn_OpenConnection.Enabled := False;
					btn_StopConnection.Enabled := False;
					if afterCase = ac_AfterStart_Program then pc_ScriptContainer.ActivePage := ts_SimpleScript;
                         pc_Behavior.ActivePage := ts_RAOMode;
				end;
			ac_AfterStart_Server:
				begin
					for i := pc_Main.PageCount - 1 downto 0 do pc_Main.Pages[i].TabVisible := False;
					ts_GetCommandsList.TabVisible := True;
					ts_SystemInfo.TabVisible := True;
					ts_Behavior.TabVisible := True;
					ts_Initialisation.TabVisible := True;
					pc_Main.ActivePage := ts_Initialisation;
                         pc_Behavior.ActivePage := ts_RAOMode;
				end;
			ac_AfterOpenConnection:
				begin
					for i := pc_Main.PageCount - 1 downto 0 do pc_Main.Pages[i].TabVisible := True;
					pc_Main.ActivePage := ts_Initialisation;
				end;
			ac_AfterCloseConnection:
				begin
					for i := pc_Main.PageCount - 1 downto 0 do pc_Main.Pages[i].TabVisible := False;
					ts_GetCommandsList.TabVisible := True;
					ts_SystemInfo.TabVisible := True;
					ts_Behavior.TabVisible := True;
					ts_Initialisation.TabVisible := True;
					pc_Main.ActivePage := ts_Initialisation;
				end;
		end;
	finally
		Self.Update;
	end;
end;

function Tfm_MainForm.set_TransportProtocol: Integer;
var
	lanPort: Word;
begin
	Result := -1;
	fMyAfterCaseFlag := True;
	try
		try
			case fTransportProtocol of
				ctc_RS232:
					begin
						Result := dude.set_TransportType(ctc_RS232);
						if Result <> 0 then Exit;

						Result := dude.set_RS232(StrToInt(ed_COMPort.Text), StrToInt(ed_BaudRate.Text));
						if Result <> 0 then Exit;
					end;
				ctc_TCPIP:
					begin
						// Result := dude.set_TransportType(ctc_TCPIP);
						Result := dude.set_TransportType(2);
						if Result <> 0 then Exit;

						lanPort := StrToInt(ed_LANPort.Text);
						Result := dude.set_TCPIP(ed_IPAddress.Text, lanPort);
						if Result <> 0 then Exit;
					end;
			end;
			Result := 0;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		fMyAfterCaseFlag := False;
		afterCase := ac_AfterSettingsChange;
	end;
end;

procedure Tfm_MainForm.show_DeviceModel;
begin
	case dude.device_Model of
		mc_Unknown: ShowMessage('Unknown model');
		mc_DP_05: ShowMessage('Device model: "DP-05"');
		mc_DP_25: ShowMessage('Device model: "DP-25"');
		mc_DP_35: ShowMessage('Device model: "DP-35"');
		mc_DP_150: ShowMessage('Device model: "DP-150"');
		mc_WP_50: ShowMessage('Device model: "WP-50"');
		mc_WP_500: ShowMessage('Device model: "WP-500"');
		mc_FP_650: ShowMessage('Device model: "FP-650"');
		mc_FP_700: ShowMessage('Device model: "FP-700"');
		mc_FP_800: ShowMessage('Device model: "FP-800"');
		mc_FMP_350: ShowMessage('Device model: "FMP-350"');
		mc_FP_650_V: ShowMessage('Device model: "FP-650V"');
		mc_FP_700_V: ShowMessage('Device model: "FP-700V"');
		mc_FP_800_V: ShowMessage('Device model: "FP-800V"');
	end;
end;

procedure Tfm_MainForm.initForSniffer(targetLogEditor: TRichEdit);
begin
	targetLogEditor.SelStart := targetLogEditor.GetTextLen;
	if Length(targetLogEditor.Lines.Strings[targetLogEditor.Lines.Count - 1]) > 0 then
	begin
		targetLogEditor.SelText := sLineBreak; // #13#10;
		targetLogEditor.SelStart := targetLogEditor.GetTextLen;
	end;
	targetLogEditor.SelAttributes.Size := 9;
	targetLogEditor.SelAttributes.Style := [fsBold];
end;

procedure Tfm_MainForm.init_StatusState;
var
	i, j      : Integer;
	aComponent: TComponent;
begin
	for i := 0 to 7 do
		for j := 0 to 7 do
		begin
			aComponent := fm_MainForm.FindComponent('chbx_S' + IntToStr(i)+ '_' + IntToStr(j));
			if Assigned(aComponent) then
				if aComponent is TCheckBox then
				begin
					TCheckBox(aComponent).Checked := False;
				end;
		end;
end;

function Tfm_MainForm.save_Language: Integer;
begin
	try
		case cbx_DriverLanguage.ItemIndex of
			0: dude.language := dude_TLB.English;
			1: dude.language := dude_TLB.Romanian;
		end;
		Result := dude.lastError_Code;
	except
		Result := -1;
	end
end;

function Tfm_MainForm.save_TrackingMode: Integer;
begin
	Result := -1;
	try
		Result := dude.set_TrackingMode(chbx_TrackingMode.Checked);
		if Result <> 0 then Exit;
		Result := dude.set_TrackingMode_Path(Trim(ed_TrackingModePath.Text));
		if Result <> 0 then Exit;
		Result := dude.set_TrackingMode_FileName(Trim(ed_TrackingModeFileName.Text));
		if Result <> 0 then Exit;
		Result := dude.set_TrackingMode_RowLimit(StrToInt(ed_TrackingModeRowLimit.Text));
	except
		Result := -1;
	end;
end;

function Tfm_MainForm.tryTo_COMServer_Start: Boolean;
begin
	try
		dude.RemoteMachineName := '';
		dude.Connect;
		Result := True;
	except
		Result := False;
	end;
end;

procedure Tfm_MainForm.tsw_TransportTypeClick(Sender: TObject);
begin
	try
		case tsw_TransportType.ItemIndex of
			0: fTransportProtocol := ctc_RS232;
			1: fTransportProtocol := ctc_TCPIP;
		end;
		set_LabelValues(ac_AfterStart_Server);
		set_EditBoxes(ac_AfterStart_Server);
	finally
		if ed_COMPort.Visible then
			if ed_COMPort.Enabled then ed_COMPort.SetFocus;
		if ed_IPAddress.Visible then
			if ed_IPAddress.Enabled then ed_IPAddress.SetFocus;
	end;
end;

end.
