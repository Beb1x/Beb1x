unit u_ServerMethods;

interface

uses
	System.SysUtils,
	System.Classes,
	System.Json,
	Datasnap.DSServer,
	Datasnap.DSAuth,
	Vcl.OleServer,
	dude_TLB;

type
{$METHODINFO ON}
	TSM = class(TDataModule)
		CSFP_ROU1: TCFD_DUDE;
		procedure DataModuleCreate(Sender: TObject);
	private
		fCOMServer_Started: Boolean;
	public
		{ Public declarations }
		function add_Transaction(var HeaderID: WideString): Integer;
		function add_TrScriptItem(HeaderID: WideString; var ScriptID: WideString): Integer;
		function clear_TrScript(HeaderID: WideString): Integer;
		function delete_TrByHeader(HeaderID: WideString): Integer;
		function delete_TrByIndex(Index: Integer): Integer;
		function delete_OldTransactions: Integer;
		function execute_Command(command_Value: Integer; const inputText: string; var outputText: string): Integer;
		function execute_Transaction(HeaderID: WideString): Integer;
		function execute_AllTransactions(OrderType: Integer): Integer;
		function get_Array_HeadersID(var HeaderIDArray: WideString): Integer;
		function get_Array_ScriptsID(HeaderID: WideString; var ScriptIDArray: WideString): Integer;
		function get_Array_ErrorsID(var ErrorsIDArray: WideString): Integer;
		function get_HeaderItem_Value(HeaderID, VariableName: WideString; var VariableValue: WideString): Integer;
		function get_ScriptItem_Value(HeaderID, ScriptItemID, VariableName: WideString; var VariableValue: WideString): Integer;
		function get_ErrorsItem_Value(ErrorsID, VariableName: WideString; var VariableValue: WideString): Integer;
		function get_LastErrorItem_ByHeaderID(HeaderID, VariableName: WideString; var VariableValue: WideString): Integer;
		function get_SystemInfo: string;
		function set_TrScriptItem(HeaderID, ScriptItemID, VariableName: WideString; VariableValue: WideString): Integer;
		function save_LastErrors(FileName: WideString): Integer;
	end;
{$METHODINFO OFF}

implementation

{$R *.dfm}

uses
	System.StrUtils;

function TSM.add_Transaction(var HeaderID: WideString): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	HeaderID := '';
	tmpOut := '';
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Add_Transaction(tmpOut);
		except
			Result := -1;
		end;
	finally
		HeaderID := tmpOut;
	end;
end;

function TSM.add_TrScriptItem(HeaderID: WideString; var ScriptID: WideString): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	ScriptID := '';
	tmpOut := '';
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Add_TrScriptItem(HeaderID, tmpOut);
		except
			Result := -1;
		end;
	finally
		ScriptID := tmpOut;
	end;
end;

function TSM.clear_TrScript(HeaderID: WideString): Integer;
begin
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Clear_TrScript(HeaderID);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

procedure TSM.DataModuleCreate(Sender: TObject);
begin
	fCOMServer_Started := False;
end;

function TSM.delete_OldTransactions: Integer;
begin
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Delete_OldTransactions;
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.delete_TrByHeader(HeaderID: WideString): Integer;
begin
	// Result := -1;
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Delete_TrByHeader(HeaderID);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.delete_TrByIndex(Index: Integer): Integer;
begin
	// Result := -1;
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Delete_TrByIndex(Index);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.execute_AllTransactions(OrderType: Integer): Integer;
begin
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Execute_AllTransactions(OrderType);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.execute_Command(command_Value: Integer; const inputText: string; var outputText: string): Integer;
var
	tmpOut: WideString;
begin
	//Result := -1;
     outputText := '';
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.execute_Command(command_Value, inputText, tmpOut);
		except
			Result := -1;
		end;
	finally
		outputText := tmpOut;
		// CSFP_ROU1.close_Connection;
		// CSFP_ROU1.Disconnect;
	end;
end;

function TSM.execute_Transaction(HeaderID: WideString): Integer;
begin
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Execute_Transaction(HeaderID);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.get_Array_ErrorsID(var ErrorsIDArray: WideString): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	ErrorsIDArray := '';
	tmpOut := '';
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Get_Array_ErrorsID(tmpOut);
		except
			Result := -1;
		end;
	finally
		ErrorsIDArray := tmpOut;
	end;
end;

function TSM.get_Array_HeadersID(var HeaderIDArray: WideString): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	HeaderIDArray := '';
	tmpOut := '';
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Get_Array_HeadersID(tmpOut);
		except
			Result := -1;
		end;
	finally
		HeaderIDArray := tmpOut;
	end;
end;

function TSM.get_Array_ScriptsID(HeaderID: WideString; var ScriptIDArray: WideString): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	ScriptIDArray := '';
	tmpOut := '';
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Get_Array_ScriptsID(HeaderID, tmpOut);
		except
			Result := -1;
		end;
	finally
		ScriptIDArray := tmpOut;
	end;
end;

function TSM.get_ErrorsItem_Value(ErrorsID, VariableName: WideString; var VariableValue: WideString): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	VariableValue := '';
	tmpOut := '';
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Get_ErrorsItem_Value(ErrorsID, VariableName, tmpOut);
		except
			Result := -1;
		end;
	finally
		VariableValue := tmpOut;
	end;
end;

function TSM.get_HeaderItem_Value(HeaderID, VariableName: WideString; var VariableValue: WideString): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	VariableValue := '';
	tmpOut := '';
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Get_HeaderItem_Value(HeaderID, VariableName, tmpOut);
		except
			Result := -1;
		end;
	finally
		VariableValue := tmpOut;
	end;
end;

function TSM.get_LastErrorItem_ByHeaderID(HeaderID, VariableName: WideString; var VariableValue: WideString): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	VariableValue := '';
	tmpOut := '';
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Get_LastErrorItem_ByHeaderID(HeaderID, VariableName, tmpOut);
		except
			Result := -1;
		end;
	finally
		VariableValue := tmpOut;
	end;
end;

function TSM.get_ScriptItem_Value(HeaderID, ScriptItemID, VariableName: WideString; var VariableValue: WideString): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	VariableValue := '';
	tmpOut := '';
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Get_ScriptItem_Value(HeaderID, ScriptItemID, VariableName, tmpOut);
		except
			Result := -1;
		end;
	finally
		VariableValue := tmpOut;
	end;
end;

function TSM.get_SystemInfo: string;
var
	tmpString: string;
	tmpList  : TStringList;
	i        : Integer;
begin

	Result := '';
	tmpList := TStringList.Create;
	try
		try
			CSFP_ROU1.Connect;

			// outputText := 'Connected to LAN: ';
			// if CSFP_ROU1.connected_ToLAN then outputText:=outputText+'True'
			// else outputText:=outputText+'false';
			// CSFP_ROU1.get
			tmpList.Text := CSFP_ROU1.get_SystemInfoSearchList;
			if tmpList.Count = 0 then Exit;
			for i := 0 to tmpList.Count - 1 do
			begin
				tmpString := tmpList.Strings[i] + ':';
				tmpString := tmpString.PadRight(42, ' ') + CSFP_ROU1.get_SystemInfo(tmpList.Strings[i]);
				// mem_SystemInfo.Lines.Add(tmpString);
				Result := Result + tmpString;
			end;

		except
			Result := '';
		end;
	finally
		// CSFP_ROU1.Disconnect;
		if tmpList.Count > 0 then tmpList.Clear;
		tmpList.Free;
	end;
end;

function TSM.save_LastErrors(FileName: WideString): Integer;
begin
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Save_LastErrors(FileName);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.set_TrScriptItem(HeaderID, ScriptItemID, VariableName, VariableValue: WideString): Integer;
begin
	try
		try
			CSFP_ROU1.Connect;
			CSFP_ROU1.open_Connection;

			Result := CSFP_ROU1.tq_Set_TrScriptItem(HeaderID, ScriptItemID, VariableName, VariableValue);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

end.
