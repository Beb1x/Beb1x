unit u_MainForm;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	System.SysUtils,
	System.Variants,
	System.Classes,
	System.DateUtils,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.StdCtrls,
	dude_TLB,
	Vcl.ComCtrls,
	Vcl.ExtCtrls,
	Vcl.OleServer,
	Vcl.Samples.Gauges;

type
	TfmMain = class(TForm)
		mem_JETextData: TMemo;
		btn_ReadDocuments: TButton;
		lb_ComPort: TLabel;
		ed_ComPort: TEdit;
		btn_StopReading: TButton;
		lb_BaudRate: TLabel;
		ed_BaudRate: TEdit;
		lb_DocumentTypes: TLabel;
		cbx_DocumentTypes: TComboBox;
		lb_StartingDT: TLabel;
		dtp_StartDate: TDateTimePicker;
		dtp_StartTime: TDateTimePicker;
		lb_EndingDT: TLabel;
		dtp_EndDate: TDateTimePicker;
		dtp_EndTime: TDateTimePicker;
		grbx_Docs: TGroupBox;
		pnl_Answer: TPanel;
		pnl_Buttons: TPanel;
		pnl_Settings: TPanel;
		chbx_RangeByNum: TCheckBox;
		lb_FromNumber: TLabel;
		ed_FromNum: TEdit;
		lb_ToNumber: TLabel;
		ed_ToNum: TEdit;
		lbFromZrep: TLabel;
		ed_FromZRep: TEdit;
		lbToZrep: TLabel;
		ed_ToZRep: TEdit;
		btn_PrintDocs: TButton;
		dude: TCFD_DUDE;
		pnl_Progress: TPanel;
		gau_Second: TGauge;
		gau_First: TGauge;
		procedure btn_ReadDocumentsClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure btn_StopReadingClick(Sender: TObject);
		procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
		procedure chbx_RangeByNumClick(Sender: TObject);
		procedure cbx_DocumentTypesChange(Sender: TObject);
		procedure FormShow(Sender: TObject);
		procedure btn_PrintDocsClick(Sender: TObject);
		procedure dudeJETextData(ASender: TObject; var TextData: WideString);
		procedure dudeFirstProgress_Complete(Sender: TObject);
		procedure dudeFirstProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
		procedure dudeFirstProgress_Loop(ASender: TObject; value_Position: Integer);
		procedure dudeWait(ASender: TObject; Value: Byte);
		procedure dudeSecondProgress_Complete(Sender: TObject);
		procedure dudeSecondProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
		procedure dudeSecondProgress_Loop(ASender: TObject; value_Position: Integer);
	private
		fSYNCount    : Byte;
		fAppMessCount: Byte;
		function device_Connected: Integer;
		procedure calculate_VCL;
		procedure set_DateTimeFormat;
		procedure init_DateTimePickers;
		procedure calculate_DocumentType;
		function check_DateTimeIntegrity: Integer;
		function check_NumbersIntegrity: Integer;
		function check_EditBox(targetEditBox: TEdit): Boolean;
	public
		error_Code: Integer;
		//
		function tryToStartComServer: Boolean;
		function calculate_DateTime(date_Picker, time_Picker: TDateTimePicker): TDateTime;
		procedure ManageControls(Value: Boolean);
	end;

var
	fmMain: TfmMain;
	// dudeI : ICFD_DUDE;

implementation

{$R *.dfm}

procedure TfmMain.btn_StopReadingClick(Sender: TObject);
begin
	dude.cancel_Loop;
end;

procedure TfmMain.cbx_DocumentTypesChange(Sender: TObject);
begin
	calculate_DocumentType;
	calculate_VCL;
end;

procedure TfmMain.chbx_RangeByNumClick(Sender: TObject);
begin
	if not chbx_RangeByNum.Enabled then Exit;
	calculate_VCL;
end;

function TfmMain.check_DateTimeIntegrity: Integer;
var
	start_Date, end_Date: TDateTime;
begin
	Result := -9;
	try
		start_Date := calculate_DateTime(dtp_StartDate, dtp_StartTime);
		end_Date := calculate_DateTime(dtp_EndDate, dtp_EndTime);
		if (System.DateUtils.CompareDateTime(end_Date, start_Date) <= 0) then
		begin
			ShowMessage('Please set the correct datetime period!');
			if (dtp_EndDate.Visible) and (dtp_EndDate.Enabled) then dtp_EndDate.SetFocus;
			Exit;
		end;

		dude.DateRange_StartValue := DateToStr(dtp_StartDate.Date) + ' ' + TimeToStr(dtp_StartTime.Time); // start datetime in format "dd-mm-yy hh:mm:ss"
		dude.DateRange_EndValue := DateToStr(dtp_EndDate.Date) + ' ' + TimeToStr(dtp_EndTime.Time);       // end datetime in format "dd-mm-yy hh:mm:ss"

		Result := 0;
	except
		Result := -1;
	end;
end;

function TfmMain.check_EditBox(targetEditBox: TEdit): Boolean;
var
	tmpInt: Integer;
begin
	Result := False;
	try
		if not TryStrToInt(targetEditBox.Text, tmpInt) then Exit;
		if tmpInt <= 0 then Exit;
		Result := True;
	finally
		if not Result then
		begin
			ShowMessage('Please, check the input values!');
			if (targetEditBox.Visible) and (targetEditBox.Enabled) then targetEditBox.SetFocus;
		end;
	end;
end;

function TfmMain.check_NumbersIntegrity: Integer;
begin
	Result := -9;
	try
		case dude.JEDocumentType of
			ejdt_FiscalReceipts:
				begin
					if not check_EditBox(ed_FromNum) then Exit;
					if not check_EditBox(ed_ToNum) then Exit;
					dude.DocumentNumber_StartValue := StrToInt(ed_FromNum.Text);
					dude.DocumentNumber_EndValue := StrToInt(ed_ToNum.Text);

					if not check_EditBox(ed_FromZRep) then Exit;
					if not check_EditBox(ed_ToZRep) then Exit;
					dude.zRange_StartValue := StrToInt(ed_FromZRep.Text);
					dude.zRange_EndValue := StrToInt(ed_ToZRep.Text);
				end;
			ejdt_FullEJContent, ejdt_DailyZReports, ejdt_LogFile:
				begin
					if not check_EditBox(ed_FromZRep) then Exit;
					if not check_EditBox(ed_ToZRep) then Exit;
					dude.zRange_StartValue := StrToInt(ed_FromZRep.Text);
					dude.zRange_EndValue := StrToInt(ed_ToZRep.Text);
				end;
			else
				begin
					if not check_EditBox(ed_FromNum) then Exit;
					if not check_EditBox(ed_ToNum) then Exit;
					dude.DocumentNumber_StartValue := StrToInt(ed_FromNum.Text);
					dude.DocumentNumber_EndValue := StrToInt(ed_ToNum.Text);
				end;
		end;
		Result := 0;
	except
		Result := -1;
	end;

end;

procedure TfmMain.btn_ReadDocumentsClick(Sender: TObject);
var
	receivedDocuments: Integer;
begin
	try
		mem_JETextData.Clear;
		ManageControls(False); // Enable/Disable controls
		if device_Connected <> 0 then Exit;
		calculate_DocumentType;
		if chbx_RangeByNum.Checked then
		begin
			error_Code := check_NumbersIntegrity;
			if error_Code <> 0 then Exit;
			error_Code := dude.get_Documents_ByNumbersRange(receivedDocuments);
		end
		else
		begin
			error_Code := check_DateTimeIntegrity;
			if error_Code <> 0 then Exit;
			error_Code := dude.get_Documents_ByDateRange(receivedDocuments);
		end;
		ShowMessage('Received documents: ' + receivedDocuments.ToString);
	finally
		if (error_Code <> 0) then ShowMessage(dude.get_ErrorMessageByCode(error_Code));
		ManageControls(True);
		calculate_VCL;
	end;
end;

procedure TfmMain.btn_PrintDocsClick(Sender: TObject);
var
	errCode              : Integer;
	printedDocumentsCount: Integer;
begin
	if device_Connected <> 0 then Exit;
	calculate_DocumentType;
	ManageControls(False);
	try
		if chbx_RangeByNum.Checked then
		begin
			errCode := check_NumbersIntegrity;
			if (errCode <> 0) then Exit;
			errCode := dude.print_Documents_ByNumbersRange(printedDocumentsCount);
		end
		else
		begin
			errCode := check_DateTimeIntegrity;
			if (errCode <> 0) then Exit;
			errCode := dude.print_Documents_ByDateRange(printedDocumentsCount);
		end;
		ShowMessage('Printed documents count: ' + printedDocumentsCount.ToString);
	finally
		if (errCode <> 0) then ShowMessage(dude.get_ErrorMessageByCode(errCode));
		ManageControls(True);
		calculate_VCL;
	end;
end;

procedure TfmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
	try
		error_Code := dude.close_Connection;
		if error_Code <> 0 then ShowMessage(dude.lastError_Message);
	finally
		dude.Disconnect;
		CanClose := True;
	end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
	btn_StopReading.Enabled := False;

	set_DateTimeFormat;
	init_DateTimePickers;

	if not tryToStartComServer then
	begin
		ShowMessage('The program cannot start DUDE. ' + sLineBreak + 'Please, check if it is installed!');
		Exit;
	end
	else
	begin
		if dude.connected_ToDevice then dude.close_Connection;
		dude.Disconnect;
	end;
end;

procedure TfmMain.FormShow(Sender: TObject);
begin

	calculate_VCL;
end;

procedure TfmMain.ManageControls(Value: Boolean);
begin
	try
		btn_StopReading.Enabled := not Value;

		btn_ReadDocuments.Enabled := Value;
		btn_PrintDocs.Enabled := Value;

		dtp_StartDate.Enabled := Value;
		dtp_StartTime.Enabled := Value;
		dtp_EndDate.Enabled := Value;
		dtp_EndTime.Enabled := Value;
		chbx_RangeByNum.Enabled := Value;
		lb_BaudRate.Enabled := Value;
		ed_BaudRate.Enabled := Value;
		lb_ComPort.Enabled := Value;
		ed_ComPort.Enabled := Value;
		grbx_Docs.Enabled := Value;
		lb_DocumentTypes.Enabled := Value;
		cbx_DocumentTypes.Enabled := Value;
		lb_StartingDT.Enabled := Value;
		lb_EndingDT.Enabled := Value;
		ed_FromNum.Enabled := Value;
		ed_ToNum.Enabled := Value;
		ed_FromZRep.Enabled := Value;
		ed_ToZRep.Enabled := Value;
	finally
		Self.Update;
	end;
end;

procedure TfmMain.calculate_DocumentType;
begin
	case cbx_DocumentTypes.ItemIndex of
		0: dude.JEDocumentType := ejdt_All;               // '0' - all types;
		1: dude.JEDocumentType := ejdt_FiscalReceipts;    // '1' - fiscal receipts;
		2: dude.JEDocumentType := ejdt_DailyZReports;     // '2' - daily z reports;
		3: dude.JEDocumentType := ejdt_InvoiceReceipts;   // '3' - invoice receipts;
		4: dude.JEDocumentType := ejdt_NonFiscalReceipts; // '4' - nonfiscal receipts;
		5: dude.JEDocumentType := ejdt_FullEJContent;     // "20" - full EJ content for Z report specified in {DocNum};
		6: dude.JEDocumentType := ejdt_LogFile;           // LOG file(s)
		7: dude.JEDocumentType := ejdt_CashInOutReceipts; //
		8: dude.JEDocumentType := ejdt_CurrencyBuying;    //
		9: dude.JEDocumentType := ejdt_CurrencySelling;   //
	end;
end;

procedure TfmMain.init_DateTimePickers;
var
	Year, Month, Day: Word;
begin
	dtp_StartDate.DateTime := IncDay(Now, -1);
	DecodeDate(dtp_StartDate.DateTime, Year, Month, Day);
	dtp_StartTime.DateTime := EncodeDateTime(Year, Month, Day, 23, 59, 59, 0);

	dtp_EndDate.DateTime := Now;
	DecodeDate(dtp_EndDate.DateTime, Year, Month, Day);
	dtp_EndTime.DateTime := EncodeDateTime(Year, Month, Day, 23, 59, 59, 0);
end;

procedure TfmMain.set_DateTimeFormat;
begin
	FormatSettings.ShortDateFormat := 'dd-mm-yy';
	FormatSettings.LongDateFormat := 'dd-mm-yy';
	FormatSettings.ShortTimeFormat := 'hh:mm:ss';
	FormatSettings.LongTimeFormat := 'hh:mm:ss';
end;

function TfmMain.calculate_DateTime(date_Picker, time_Picker: TDateTimePicker): TDateTime;
var
	Hour, Min, Sec, MSec: Word;
	Year, Month, Day    : Word;
begin
	Result := Now;
	if not Assigned(date_Picker) then Exit;
	if not Assigned(time_Picker) then Exit;
	DecodeDate(date_Picker.DateTime, Year, Month, Day);
	DecodeTime(time_Picker.DateTime, Hour, Min, Sec, MSec);
	Result := EncodeDateTime(Year, Month, Day, Hour, Min, Sec, MSec);
end;

procedure TfmMain.calculate_VCL;

	procedure set_DTRangeVCL(toValue: Boolean);
	begin
		lb_StartingDT.Enabled := toValue;
		dtp_StartDate.Enabled := toValue;
		dtp_StartTime.Enabled := toValue;
		lb_EndingDT.Enabled := toValue;
		dtp_EndDate.Enabled := toValue;
		dtp_EndTime.Enabled := toValue;
	end;

	procedure set_NumRangeVCL(toValue: Boolean);
	begin
		lb_FromNumber.Enabled := toValue;
		ed_FromNum.Enabled := toValue;
		lb_ToNumber.Enabled := toValue;
		ed_ToNum.Enabled := toValue;
	end;

	procedure set_ZNumRangeVCL(toValue: Boolean);
	begin
		lbFromZrep.Enabled := toValue;
		ed_FromZRep.Enabled := toValue;
		lbToZrep.Enabled := toValue;
		ed_ToZRep.Enabled := toValue;
	end;

begin
	if chbx_RangeByNum.Checked then
	begin
		set_DTRangeVCL(False);
		set_NumRangeVCL(False);
		set_ZNumRangeVCL(False);
		case dude.JEDocumentType of
			ejdt_All: set_NumRangeVCL(True);
			ejdt_DailyZReports: set_ZNumRangeVCL(True);
			ejdt_InvoiceReceipts: set_NumRangeVCL(True);
			ejdt_NonFiscalReceipts: set_NumRangeVCL(True);
			ejdt_CurrencyBuying,    //
			  ejdt_CurrencySelling, //
			  ejdt_FiscalReceipts:
				begin
					set_NumRangeVCL(True);
					set_ZNumRangeVCL(True);
				end;
			ejdt_FullEJContent: set_ZNumRangeVCL(True);
			ejdt_LogFile: set_ZNumRangeVCL(True); // LOG file(s)
			ejdt_CashInOutReceipts: set_NumRangeVCL(True);
		end;
	end
	else
	begin
		set_DTRangeVCL(True);
		set_NumRangeVCL(False);
		set_ZNumRangeVCL(False);
	end;
end;

function TfmMain.device_Connected: Integer;
begin
	Result := -1;
	try
		dude.Connect;
		if not dude.connected_ToDevice then
		begin
			dude.set_TransportType(ctc_RS232);
			dude.set_RS232(StrToInt(ed_ComPort.Text), StrToInt(ed_BaudRate.Text));
			Result := dude.open_Connection;
		end
		else Result := 0;
	finally
		if Result <> 0 then ShowMessage(dude.lastError_Message);
	end;
end;

procedure TfmMain.dudeFirstProgress_Complete(Sender: TObject);
begin
	gau_First.Progress := 0;
	gau_First.Update;
end;

procedure TfmMain.dudeFirstProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
begin
	gau_First.Progress := value_Position;
	gau_First.MinValue := value_Minimum;
	gau_First.MaxValue := value_Maximum;
	pnl_Progress.Visible := True;
end;

procedure TfmMain.dudeFirstProgress_Loop(ASender: TObject; value_Position: Integer);
begin
	gau_First.Progress := value_Position;
	Application.ProcessMessages;
end;

procedure TfmMain.dudeJETextData(ASender: TObject; var TextData: WideString);
begin
	mem_JETextData.Lines.Add(TextData);
end;

procedure TfmMain.dudeSecondProgress_Complete(Sender: TObject);
begin
	gau_Second.Progress := 0;
	gau_Second.Update;
end;

procedure TfmMain.dudeSecondProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
begin
	gau_Second.Progress := value_Position;
	gau_Second.MinValue := value_Minimum;
	gau_Second.MaxValue := value_Maximum;
	pnl_Progress.Visible := True;
end;

procedure TfmMain.dudeSecondProgress_Loop(ASender: TObject; value_Position: Integer);
begin
	gau_Second.Progress := value_Position;
	Application.ProcessMessages;
end;

procedure TfmMain.dudeWait(ASender: TObject; Value: Byte);
begin
	if fSYNCount >= 16 then
	begin
		fSYNCount := 0;
		if fAppMessCount >= 5 then
		begin
			fAppMessCount := 0;
			Application.ProcessMessages;
		end
		else Inc(fAppMessCount);
	end;
	Inc(fSYNCount);
end;

function TfmMain.tryToStartComServer: Boolean;
begin
	try
		dude.Connect;
		ed_ComPort.Text := dude.rs232_ComPort.ToString;
		ed_BaudRate.Text := dude.rs232_BaudRate.ToString;
		dude.JEDocumentType := ejdt_All; // calculate_DocumentType;
		Result := True;
	except
		Result := False;
	end;
end;

end.
