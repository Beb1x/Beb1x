unit u_Generated;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	Winapi.ShellAPI,
	System.SysUtils,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.OleServer,
	Vcl.StdCtrls,
	Vcl.ComCtrls,
	Vcl.WinXCtrls,
	Vcl.ExtCtrls,
	Vcl.Buttons,
	Vcl.AppEvnts,
	Vcl.Samples.Gauges,
	Vcl.FileCtrl,
	Vcl.ExtDlgs,
	dude_TLB;

implementation

function execute_038_receipt_NonFiscal_Open //
  (myFP: TCFD_DUDE;                         //
  var ErrorCode: WideString;                //
  var SlipNumber: WideString                //
  ): Integer;                               //

const
	cmd = '038_receipt_NonFiscal_Open';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'SlipNumber', SlipNumber);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_039_receipt_NonFiscal_Close //
  (myFP: TCFD_DUDE;                          //
  var ErrorCode: WideString;                 //
  var SlipNumber: WideString                 //
  ): Integer;                                //

const
	cmd = '039_receipt_NonFiscal_Close';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'SlipNumber', SlipNumber);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_044_receipt_Paper_Feed //
  (myFP: TCFD_DUDE;                     //
  const Lines: WideString;              //
  var ErrorCode: WideString             //
  ): Integer;                           //

const
	cmd = '044_receipt_Paper_Feed';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Lines', Lines) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_046_receipt_Paper_Cutting //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '046_receipt_Paper_Cutting';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_048_receipt_Fiscal_Open //
  (myFP: TCFD_DUDE;                      //
  const OpCode: WideString;              //
  const OpPwd: WideString;               //
  const TillNumber: WideString;          //
  const Invoice: WideString;             //
  const ClientTAXN: WideString;          //
  var ErrorCode: WideString;             //
  var SlipNumber: WideString;            //
  var nZReport: WideString;              //
  var nFMnumber: WideString              //
  ): Integer;                            //

const
	cmd = '048_receipt_Fiscal_Open';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'OpCode', OpCode) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'OpPwd', OpPwd) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'TillNumber', TillNumber) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Invoice', Invoice) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'ClientTAXN', ClientTAXN) <> 0 then Exit;
		Result := True;
	end;

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'SlipNumber', SlipNumber);
		myFP.get_OutputParam_ByName(cmd, 'nZReport', nZReport);
		myFP.get_OutputParam_ByName(cmd, 'nFMnumber', nFMnumber);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
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

function execute_049_receipt_Fiscal_Sale //
  (myFP: TCFD_DUDE;                      //
  const PluName: WideString;             //
  const TaxCd: WideString;               //
  const Price: WideString;               //
  const Quantity: WideString;            //
  const Discount_Type: WideString;       //
  const Discount_Value: WideString;      //
  const Department: WideString;          //
  const MeasureUnit: WideString;         //
  var ErrorCode: WideString;             //
  var SlipNumber: WideString;            //
  var nZReport: WideString;              //
  var nFMnumber: WideString              //
  ): Integer;                            //

const
	cmd = '049_receipt_Fiscal_Sale';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'PluName', PluName) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'TaxCd', TaxCd) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Price', Price) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Quantity', Quantity) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Discount_Type', Discount_Type) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Discount_Value', Discount_Value) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Department', Department) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'MeasureUnit', MeasureUnit) <> 0 then Exit;
		Result := True;
	end;

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'SlipNumber', SlipNumber);
		myFP.get_OutputParam_ByName(cmd, 'nZReport', nZReport);
		myFP.get_OutputParam_ByName(cmd, 'nFMnumber', nFMnumber);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
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

function execute_051_receipt_Fiscal_Subtotal //
  (myFP: TCFD_DUDE;                          //
  const Print: WideString;                   //
  const Display: WideString;                 //
  const DiscountType: WideString;            //
  const DiscountValue: WideString;           //
  var ErrorCode: WideString;                 //
  var SlipNumber: WideString;                //
  var Subtotal: WideString;                  //
  var TaxA: WideString;                      //
  var TaxB: WideString;                      //
  var TaxC: WideString;                      //
  var TaxD: WideString;                      //
  var TaxE: WideString;                      //
  var TaxF: WideString;                      //
  var TaxG: WideString                       //
  ): Integer;                                //

const
	cmd = '051_receipt_Fiscal_Subtotal';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Print', Print) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Display', Display) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'DiscountType', DiscountType) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'DiscountValue', DiscountValue) <> 0 then Exit;
		Result := True;
	end;

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'SlipNumber', SlipNumber);
		myFP.get_OutputParam_ByName(cmd, 'Subtotal', Subtotal);
		myFP.get_OutputParam_ByName(cmd, 'TaxA', TaxA);
		myFP.get_OutputParam_ByName(cmd, 'TaxB', TaxB);
		myFP.get_OutputParam_ByName(cmd, 'TaxC', TaxC);
		myFP.get_OutputParam_ByName(cmd, 'TaxD', TaxD);
		myFP.get_OutputParam_ByName(cmd, 'TaxE', TaxE);
		myFP.get_OutputParam_ByName(cmd, 'TaxF', TaxF);
		myFP.get_OutputParam_ByName(cmd, 'TaxG', TaxG);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
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

function execute_053_receipt_Fiscal_Total //
  (myFP: TCFD_DUDE;                       //
  const PaidMode: WideString;             //
  const input_Amount: WideString;         //
  var ErrorCode: WideString;              //
  var Status: WideString;                 //
  var Amount: WideString                  //
  ): Integer;                             //

const
	cmd = '053_receipt_Fiscal_Total';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'Status', Status);
		myFP.get_OutputParam_ByName(cmd, 'Amount', Amount);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'PaidMode', PaidMode) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'input_Amount', input_Amount) <> 0 then Exit;
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

function execute_053_receipt_Fiscal_Total_FCurrency //
  (myFP: TCFD_DUDE;                                 //
  const PaidMode: WideString;                       //
  const input_Amount: WideString;                   //
  const Change: WideString;                         //
  var ErrorCode: WideString;                        //
  var Status: WideString;                           //
  var Amount: WideString                            //
  ): Integer;                                       //

const
	cmd = '053_receipt_Fiscal_Total_FCurrency';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'PaidMode', PaidMode) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'input_Amount', input_Amount) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Change', Change) <> 0 then Exit;
		Result := True;
	end;

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'Status', Status);
		myFP.get_OutputParam_ByName(cmd, 'Amount', Amount);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
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

function execute_056_receipt_Fiscal_Close //
  (myFP: TCFD_DUDE;                       //
  var ErrorCode: WideString;              //
  var SlipNumber: WideString;             //
  var nZReport: WideString;               //
  var nFMnumber: WideString               //
  ): Integer;                             //

const
	cmd = '056_receipt_Fiscal_Close';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'SlipNumber', SlipNumber);
		myFP.get_OutputParam_ByName(cmd, 'nZReport', nZReport);
		myFP.get_OutputParam_ByName(cmd, 'nFMnumber', nFMnumber);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
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

function execute_058_receipt_Fiscal_ItemSale //
  (myFP: TCFD_DUDE;                          //
  const PluCode: WideString;                 //
  const Quantity: WideString;                //
  const Price: WideString;                   //
  const Discount_Type: WideString;           //
  const Discount_Value: WideString;          //
  var ErrorCode: WideString;                 //
  var SlipNumber: WideString;                //
  var nZrep: WideString;                     //
  var nFMnumber: WideString                  //
  ): Integer;                                //

const
	cmd = '058_receipt_Fiscal_ItemSale';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'PluCode', PluCode) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Quantity', Quantity) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Price', Price) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Discount_Type', Discount_Type) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Discount_Value', Discount_Value) <> 0 then Exit;
		Result := True;
	end;

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'SlipNumber', SlipNumber);
		myFP.get_OutputParam_ByName(cmd, 'nZrep', nZrep);
		myFP.get_OutputParam_ByName(cmd, 'nFMnumber', nFMnumber);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
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

function execute_060_receipt_Fiscal_Cancel //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '060_receipt_Fiscal_Cancel';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_070_receipt_CashIn_CashOut //
  (myFP: TCFD_DUDE;                         //
  const OperationType: WideString;          //
  const Amount: WideString;                 //
  var ErrorCode: WideString;                //
  var CashSum: WideString;                  //
  var CashIn: WideString;                   //
  var CashOut: WideString                   //
  ): Integer;                               //

const
	cmd = '070_receipt_CashIn_CashOut';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'CashSum', CashSum);
		myFP.get_OutputParam_ByName(cmd, 'CashIn', CashIn);
		myFP.get_OutputParam_ByName(cmd, 'CashOut', CashOut);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'OperationType', OperationType) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Amount', Amount) <> 0 then Exit;
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

function execute_084_receipt_Print_Barcode //
  (myFP: TCFD_DUDE;                        //
  const BarcodeType: WideString;           //
  const Data: WideString;                  //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '084_receipt_Print_Barcode';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'BarcodeType', BarcodeType) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Data', Data) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_084_receipt_Print_QRBarcode //
  (myFP: TCFD_DUDE;                          //
  const BarcodeType: WideString;             //
  const Data: WideString;                    //
  const QRCodeSize: WideString;              //
  var ErrorCode: WideString                  //
  ): Integer;                                //

const
	cmd = '084_receipt_Print_QRBarcode';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'BarcodeType', BarcodeType) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Data', Data) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'QRCodeSize', QRCodeSize) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_042_receipt_Print_NonFiscal_Text //
  (myFP: TCFD_DUDE;                               //
  const TextData: WideString;                     //
  const cBold: WideString;                        //
  const cItalic: WideString;                      //
  const cDoubleH: WideString;                     //
  const cUnderline: WideString;                   //
  const cAlignment: WideString;                   //
  var ErrorCode: WideString                       //
  ): Integer;                                     //

const
	cmd = '042_receipt_Print_NonFiscal_Text';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'TextData', TextData) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'cBold', cBold) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'cItalic', cItalic) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'cDoubleH', cDoubleH) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'cUnderline', cUnderline) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'cAlignment', cAlignment) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_054_receipt_Print_Fiscal_Text //
  (myFP: TCFD_DUDE;                            //
  const TextData: WideString;                  //
  const cBold: WideString;                     //
  const cItalic: WideString;                   //
  const cDoubleH: WideString;                  //
  const cUnderline: WideString;                //
  const cAlignment: WideString;                //
  var ErrorCode: WideString                    //
  ): Integer;                                  //

const
	cmd = '054_receipt_Print_Fiscal_Text';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'TextData', TextData) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'cBold', cBold) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'cItalic', cItalic) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'cDoubleH', cDoubleH) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'cUnderline', cUnderline) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'cAlignment', cAlignment) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_092_receipt_Print_SeparatingLine //
  (myFP: TCFD_DUDE;                               //
  const LineType: WideString;                     //
  var ErrorCode: WideString                       //
  ): Integer;                                     //

const
	cmd = '092_receipt_Print_SeparatingLine';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'LineType', LineType) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_106_receipt_Drawer_KickOut //
  (myFP: TCFD_DUDE;                         //
  const mSec: WideString;                   //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '106_receipt_Drawer_KickOut';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'mSec', mSec) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_PrnQuality //
  (myFP: TCFD_DUDE;                         //
  const Name: WideString;                   //
  const Index: WideString;                  //
  const Value: WideString;                  //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '255_receipt_Set_PrnQuality';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_PrnQuality //
  (myFP: TCFD_DUDE;                         //
  var ErrorCode: WideString;                //
  var output_Value: WideString              //
  ): Integer;                               //

const
	cmd = '255_receipt_Get_PrnQuality';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_BarcodePrint //
  (myFP: TCFD_DUDE;                           //
  const Name: WideString;                     //
  const Index: WideString;                    //
  const Value: WideString;                    //
  var ErrorCode: WideString                   //
  ): Integer;                                 //

const
	cmd = '255_receipt_Set_BarcodePrint';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_BarcodePrint //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_receipt_Get_BarcodePrint';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_LogoPrint //
  (myFP: TCFD_DUDE;                        //
  const Name: WideString;                  //
  const Index: WideString;                 //
  const Value: WideString;                 //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '255_receipt_Set_LogoPrint';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_LogoPrint //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_receipt_Get_LogoPrint';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_IntUseReceipts //
  (myFP: TCFD_DUDE;                             //
  const Name: WideString;                       //
  const Index: WideString;                      //
  const Value: WideString;                      //
  var ErrorCode: WideString                     //
  ): Integer;                                   //

const
	cmd = '255_receipt_Set_IntUseReceipts';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_IntUseReceipts //
  (myFP: TCFD_DUDE;                             //
  var ErrorCode: WideString;                    //
  var output_Value: WideString                  //
  ): Integer;                                   //

const
	cmd = '255_receipt_Get_IntUseReceipts';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_ForeignPrint //
  (myFP: TCFD_DUDE;                           //
  const Name: WideString;                     //
  const Index: WideString;                    //
  const Value: WideString;                    //
  var ErrorCode: WideString                   //
  ): Integer;                                 //

const
	cmd = '255_receipt_Set_ForeignPrint';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_ForeignPrint //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_receipt_Get_ForeignPrint';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_PrintColumns //
  (myFP: TCFD_DUDE;                           //
  const Name: WideString;                     //
  const Index: WideString;                    //
  const Value: WideString;                    //
  var ErrorCode: WideString                   //
  ): Integer;                                 //

const
	cmd = '255_receipt_Set_PrintColumns';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_PrintColumns //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_receipt_Get_PrintColumns';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_EmptyLineAfterTotal //
  (myFP: TCFD_DUDE;                                  //
  const Name: WideString;                            //
  const Index: WideString;                           //
  const Value: WideString;                           //
  var ErrorCode: WideString                          //
  ): Integer;                                        //

const
	cmd = '255_receipt_Set_EmptyLineAfterTotal';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_EmptyLineAfterTotal //
  (myFP: TCFD_DUDE;                                  //
  var ErrorCode: WideString;                         //
  var output_Value: WideString                       //
  ): Integer;                                        //

const
	cmd = '255_receipt_Get_EmptyLineAfterTotal';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_DblHeigh_totalinreg //
  (myFP: TCFD_DUDE;                                  //
  const Name: WideString;                            //
  const Index: WideString;                           //
  const Value: WideString;                           //
  var ErrorCode: WideString                          //
  ): Integer;                                        //

const
	cmd = '255_receipt_Set_DblHeigh_totalinreg';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_DblHeigh_totalinreg //
  (myFP: TCFD_DUDE;                                  //
  var ErrorCode: WideString;                         //
  var output_Value: WideString                       //
  ): Integer;                                        //

const
	cmd = '255_receipt_Get_DblHeigh_totalinreg';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_Bold_payments //
  (myFP: TCFD_DUDE;                            //
  const Name: WideString;                      //
  const Index: WideString;                     //
  const Value: WideString;                     //
  var ErrorCode: WideString                    //
  ): Integer;                                  //

const
	cmd = '255_receipt_Set_Bold_payments';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_Bold_payments //
  (myFP: TCFD_DUDE;                            //
  var ErrorCode: WideString;                   //
  var output_Value: WideString                 //
  ): Integer;                                  //

const
	cmd = '255_receipt_Get_Bold_payments';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_ItemsCount //
  (myFP: TCFD_DUDE;                         //
  const Name: WideString;                   //
  const Index: WideString;                  //
  const Value: WideString;                  //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '255_receipt_Set_ItemsCount';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_ItemsCount //
  (myFP: TCFD_DUDE;                         //
  var ErrorCode: WideString;                //
  var output_Value: WideString              //
  ): Integer;                               //

const
	cmd = '255_receipt_Get_ItemsCount';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_Header //
  (myFP: TCFD_DUDE;                     //
  var ErrorCode: WideString;            //
  var output_Value: WideString          //
  ): Integer;                           //

const
	cmd = '255_receipt_Get_Header';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Set_Footer //
  (myFP: TCFD_DUDE;                     //
  const Name: WideString;               //
  const Index: WideString;              //
  const Value: WideString;              //
  var ErrorCode: WideString             //
  ): Integer;                           //

const
	cmd = '255_receipt_Set_Footer';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_receipt_Get_Footer //
  (myFP: TCFD_DUDE;                     //
  var ErrorCode: WideString;            //
  var output_Value: WideString          //
  ): Integer;                           //

const
	cmd = '255_receipt_Get_Footer';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_069_report_Daily_Closure //
  (myFP: TCFD_DUDE;                       //
  const ReportType: WideString;           //
  var ErrorCode: WideString;              //
  var nRep: WideString;                   //
  var TotA: WideString;                   //
  var TotB: WideString;                   //
  var TotC: WideString;                   //
  var TotD: WideString;                   //
  var TotE: WideString;                   //
  var TotF: WideString;                   //
  var TotEXEPTAT: WideString;             //
  var TotSInv: WideString;                //
  var VatSInv: WideString                 //
  ): Integer;                             //

const
	cmd = '069_report_Daily_Closure';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'nRep', nRep);
		myFP.get_OutputParam_ByName(cmd, 'TotA', TotA);
		myFP.get_OutputParam_ByName(cmd, 'TotB', TotB);
		myFP.get_OutputParam_ByName(cmd, 'TotC', TotC);
		myFP.get_OutputParam_ByName(cmd, 'TotD', TotD);
		myFP.get_OutputParam_ByName(cmd, 'TotE', TotE);
		myFP.get_OutputParam_ByName(cmd, 'TotF', TotF);
		myFP.get_OutputParam_ByName(cmd, 'TotEXEPTAT', TotEXEPTAT);
		myFP.get_OutputParam_ByName(cmd, 'TotSInv', TotSInv);
		myFP.get_OutputParam_ByName(cmd, 'VatSInv', VatSInv);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
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

function execute_069_report_ECR //
  (myFP: TCFD_DUDE;             //
  const ReportType: WideString; //
  var ErrorCode: WideString     //
  ): Integer;                   //

const
	cmd = '069_report_ECR';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_069_report_Departments //
  (myFP: TCFD_DUDE;                     //
  const ReportType: WideString;         //
  var ErrorCode: WideString             //
  ): Integer;                           //

const
	cmd = '069_report_Departments';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_069_report_ItemGroups //
  (myFP: TCFD_DUDE;                    //
  const ReportType: WideString;        //
  var ErrorCode: WideString            //
  ): Integer;                          //

const
	cmd = '069_report_ItemGroups';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_094_report_FM_ByDates //
  (myFP: TCFD_DUDE;                    //
  const ReportType: WideString;        //
  const StartDate: WideString;         //
  const EndDate: WideString;           //
  var ErrorCode: WideString            //
  ): Integer;                          //

const
	cmd = '094_report_FM_ByDates';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'StartDate', StartDate) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'EndDate', EndDate) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_094_report_FM_ByDates_NextLine //
  (myFP: TCFD_DUDE;                             //
  const ReportType: WideString;                 //
  var ErrorCode: WideString;                    //
  var TextData: WideString                      //
  ): Integer;                                   //

const
	cmd = '094_report_FM_ByDates_NextLine';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'TextData', TextData);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_095_report_FM_ByZReports //
  (myFP: TCFD_DUDE;                       //
  const ReportType: WideString;           //
  const StartNumber: WideString;          //
  const EndNumber: WideString;            //
  var ErrorCode: WideString               //
  ): Integer;                             //

const
	cmd = '095_report_FM_ByZReports';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'StartNumber', StartNumber) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'EndNumber', EndNumber) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_095_report_FM_ByZReports_NextLine //
  (myFP: TCFD_DUDE;                                //
  const ReportType: WideString;                    //
  var ErrorCode: WideString;                       //
  var TextData: WideString                         //
  ): Integer;                                      //

const
	cmd = '095_report_FM_ByZReports_NextLine';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'TextData', TextData);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_105_report_Operators //
  (myFP: TCFD_DUDE;                   //
  const FirstOperator: WideString;    //
  const LastOperator: WideString;     //
  const ClearType: WideString;        //
  var ErrorCode: WideString           //
  ): Integer;                         //

const
	cmd = '105_report_Operators';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'FirstOperator', FirstOperator) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'LastOperator', LastOperator) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'ClearType', ClearType) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_111_report_PLU //
  (myFP: TCFD_DUDE;             //
  const ReportType: WideString; //
  const FirstPLU: WideString;   //
  const LastPLU: WideString;    //
  var ErrorCode: WideString     //
  ): Integer;                   //

const
	cmd = '111_report_PLU';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'FirstPLU', FirstPLU) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'LastPLU', LastPLU) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_033_display_Clear //
  (myFP: TCFD_DUDE;                //
  var ErrorCode: WideString        //
  ): Integer;                      //

const
	cmd = '033_display_Clear';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_035_display_LowerLine //
  (myFP: TCFD_DUDE;                    //
  const Text: WideString;              //
  var ErrorCode: WideString            //
  ): Integer;                          //

const
	cmd = '035_display_LowerLine';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Text', Text) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_047_display_UpperLine //
  (myFP: TCFD_DUDE;                    //
  const Text: WideString;              //
  var ErrorCode: WideString            //
  ): Integer;                          //

const
	cmd = '047_display_UpperLine';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Text', Text) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_display_Get_BkLight_AutoOff //
  (myFP: TCFD_DUDE;                              //
  var ErrorCode: WideString;                     //
  var output_Value: WideString                   //
  ): Integer;                                    //

const
	cmd = '255_display_Get_BkLight_AutoOff';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_display_Set_BkLight_AutoOff //
  (myFP: TCFD_DUDE;                              //
  const Name: WideString;                        //
  const Index: WideString;                       //
  const Value: WideString;                       //
  var ErrorCode: WideString                      //
  ): Integer;                                    //

const
	cmd = '255_display_Set_BkLight_AutoOff';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_107_items_Get_ItemsInformation //
  (myFP: TCFD_DUDE;                             //
  const Option: WideString;                     //
  var ErrorCode: WideString;                    //
  var Total: WideString;                        //
  var Prog: WideString;                         //
  var NameLen: WideString                       //
  ): Integer;                                   //

const
	cmd = '107_items_Get_ItemsInformation';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'Total', Total);
		myFP.get_OutputParam_ByName(cmd, 'Prog', Prog);
		myFP.get_OutputParam_ByName(cmd, 'NameLen', NameLen);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
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

function execute_107_items_Set_Item //
  (myFP: TCFD_DUDE;                 //
  const Option: WideString;         //
  const input_PLU: WideString;      //
  const TaxGr: WideString;          //
  const Dep: WideString;            //
  const Group: WideString;          //
  const PriceType: WideString;      //
  const Price: WideString;          //
  const AddQty: WideString;         //
  const Quantity: WideString;       //
  const Bar1: WideString;           //
  const Bar2: WideString;           //
  const Bar3: WideString;           //
  const Bar4: WideString;           //
  const Name: WideString;           //
  const mUnit: WideString;          //
  var ErrorCode: WideString         //
  ): Integer;                       //

const
	cmd = '107_items_Set_Item';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'input_PLU', input_PLU) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'TaxGr', TaxGr) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Dep', Dep) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Group', Group) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'PriceType', PriceType) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Price', Price) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'AddQty', AddQty) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Quantity', Quantity) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Bar1', Bar1) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Bar2', Bar2) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Bar3', Bar3) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Bar4', Bar4) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'mUnit', mUnit) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_107_items_Set_ItemQuantity //
  (myFP: TCFD_DUDE;                         //
  const Option: WideString;                 //
  const input_PLU: WideString;              //
  const Quantity: WideString;               //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '107_items_Set_ItemQuantity';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'input_PLU', input_PLU) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Quantity', Quantity) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_107_items_Del_ItemsInRange //
  (myFP: TCFD_DUDE;                         //
  const Option: WideString;                 //
  const First_PLU: WideString;              //
  const Last_PLU: WideString;               //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '107_items_Del_ItemsInRange';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'First_PLU', First_PLU) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Last_PLU', Last_PLU) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_107_items_Get_ItemData //
  (myFP: TCFD_DUDE;                     //
  const Option: WideString;             //
  const input_PLU: WideString;          //
  var ErrorCode: WideString;            //
  var PLU: WideString;                  //
  var TaxGr: WideString;                //
  var Department: WideString;           //
  var Group: WideString;                //
  var PriceType: WideString;            //
  var Price: WideString;                //
  var Turnover: WideString;             //
  var SoldQty: WideString;              //
  var StockQty: WideString;             //
  var Bar1: WideString;                 //
  var Bar2: WideString;                 //
  var Bar3: WideString;                 //
  var Bar4: WideString;                 //
  var Name: WideString;                 //
  var mUnit: WideString                 //
  ): Integer;                           //

const
	cmd = '107_items_Get_ItemData';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'PLU', PLU);
		myFP.get_OutputParam_ByName(cmd, 'TaxGr', TaxGr);
		myFP.get_OutputParam_ByName(cmd, 'Department', Department);
		myFP.get_OutputParam_ByName(cmd, 'Group', Group);
		myFP.get_OutputParam_ByName(cmd, 'PriceType', PriceType);
		myFP.get_OutputParam_ByName(cmd, 'Price', Price);
		myFP.get_OutputParam_ByName(cmd, 'Turnover', Turnover);
		myFP.get_OutputParam_ByName(cmd, 'SoldQty', SoldQty);
		myFP.get_OutputParam_ByName(cmd, 'StockQty', StockQty);
		myFP.get_OutputParam_ByName(cmd, 'Bar1', Bar1);
		myFP.get_OutputParam_ByName(cmd, 'Bar2', Bar2);
		myFP.get_OutputParam_ByName(cmd, 'Bar3', Bar3);
		myFP.get_OutputParam_ByName(cmd, 'Bar4', Bar4);
		myFP.get_OutputParam_ByName(cmd, 'Name', Name);
		myFP.get_OutputParam_ByName(cmd, 'mUnit', mUnit);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'input_PLU', input_PLU) <> 0 then Exit;
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

function execute_107_items_Get_FirstFoundProgrammed //
  (myFP: TCFD_DUDE;                                 //
  const Option: WideString;                         //
  const input_PLU: WideString;                      //
  var ErrorCode: WideString;                        //
  var PLU: WideString;                              //
  var TaxGr: WideString;                            //
  var Department: WideString;                       //
  var Group: WideString;                            //
  var PriceType: WideString;                        //
  var Price: WideString;                            //
  var Turnover: WideString;                         //
  var SoldQty: WideString;                          //
  var StockQty: WideString;                         //
  var Bar1: WideString;                             //
  var Bar2: WideString;                             //
  var Bar3: WideString;                             //
  var Bar4: WideString;                             //
  var Name: WideString;                             //
  var mUnit: WideString                             //
  ): Integer;                                       //

const
	cmd = '107_items_Get_FirstFoundProgrammed';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'PLU', PLU);
		myFP.get_OutputParam_ByName(cmd, 'TaxGr', TaxGr);
		myFP.get_OutputParam_ByName(cmd, 'Department', Department);
		myFP.get_OutputParam_ByName(cmd, 'Group', Group);
		myFP.get_OutputParam_ByName(cmd, 'PriceType', PriceType);
		myFP.get_OutputParam_ByName(cmd, 'Price', Price);
		myFP.get_OutputParam_ByName(cmd, 'Turnover', Turnover);
		myFP.get_OutputParam_ByName(cmd, 'SoldQty', SoldQty);
		myFP.get_OutputParam_ByName(cmd, 'StockQty', StockQty);
		myFP.get_OutputParam_ByName(cmd, 'Bar1', Bar1);
		myFP.get_OutputParam_ByName(cmd, 'Bar2', Bar2);
		myFP.get_OutputParam_ByName(cmd, 'Bar3', Bar3);
		myFP.get_OutputParam_ByName(cmd, 'Bar4', Bar4);
		myFP.get_OutputParam_ByName(cmd, 'Name', Name);
		myFP.get_OutputParam_ByName(cmd, 'mUnit', mUnit);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'input_PLU', input_PLU) <> 0 then Exit;
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

function execute_107_items_Get_LastFoundProgrammed //
  (myFP: TCFD_DUDE;                                //
  const Option: WideString;                        //
  const input_PLU: WideString;                     //
  var ErrorCode: WideString;                       //
  var PLU: WideString;                             //
  var TaxGr: WideString;                           //
  var Department: WideString;                      //
  var Group: WideString;                           //
  var PriceType: WideString;                       //
  var Price: WideString;                           //
  var Turnover: WideString;                        //
  var SoldQty: WideString;                         //
  var StockQty: WideString;                        //
  var Bar1: WideString;                            //
  var Bar2: WideString;                            //
  var Bar3: WideString;                            //
  var Bar4: WideString;                            //
  var Name: WideString;                            //
  var mUnit: WideString                            //
  ): Integer;                                      //

const
	cmd = '107_items_Get_LastFoundProgrammed';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'PLU', PLU);
		myFP.get_OutputParam_ByName(cmd, 'TaxGr', TaxGr);
		myFP.get_OutputParam_ByName(cmd, 'Department', Department);
		myFP.get_OutputParam_ByName(cmd, 'Group', Group);
		myFP.get_OutputParam_ByName(cmd, 'PriceType', PriceType);
		myFP.get_OutputParam_ByName(cmd, 'Price', Price);
		myFP.get_OutputParam_ByName(cmd, 'Turnover', Turnover);
		myFP.get_OutputParam_ByName(cmd, 'SoldQty', SoldQty);
		myFP.get_OutputParam_ByName(cmd, 'StockQty', StockQty);
		myFP.get_OutputParam_ByName(cmd, 'Bar1', Bar1);
		myFP.get_OutputParam_ByName(cmd, 'Bar2', Bar2);
		myFP.get_OutputParam_ByName(cmd, 'Bar3', Bar3);
		myFP.get_OutputParam_ByName(cmd, 'Bar4', Bar4);
		myFP.get_OutputParam_ByName(cmd, 'Name', Name);
		myFP.get_OutputParam_ByName(cmd, 'mUnit', mUnit);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'input_PLU', input_PLU) <> 0 then Exit;
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

function execute_107_items_Get_NextProgrammed //
  (myFP: TCFD_DUDE;                           //
  const Option: WideString;                   //
  var ErrorCode: WideString;                  //
  var PLU: WideString;                        //
  var TaxGr: WideString;                      //
  var Department: WideString;                 //
  var Group: WideString;                      //
  var PriceType: WideString;                  //
  var Price: WideString;                      //
  var Turnover: WideString;                   //
  var SoldQty: WideString;                    //
  var StockQty: WideString;                   //
  var Bar1: WideString;                       //
  var Bar2: WideString;                       //
  var Bar3: WideString;                       //
  var Bar4: WideString;                       //
  var Name: WideString;                       //
  var mUnit: WideString                       //
  ): Integer;                                 //

const
	cmd = '107_items_Get_NextProgrammed';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'PLU', PLU);
		myFP.get_OutputParam_ByName(cmd, 'TaxGr', TaxGr);
		myFP.get_OutputParam_ByName(cmd, 'Department', Department);
		myFP.get_OutputParam_ByName(cmd, 'Group', Group);
		myFP.get_OutputParam_ByName(cmd, 'PriceType', PriceType);
		myFP.get_OutputParam_ByName(cmd, 'Price', Price);
		myFP.get_OutputParam_ByName(cmd, 'Turnover', Turnover);
		myFP.get_OutputParam_ByName(cmd, 'SoldQty', SoldQty);
		myFP.get_OutputParam_ByName(cmd, 'StockQty', StockQty);
		myFP.get_OutputParam_ByName(cmd, 'Bar1', Bar1);
		myFP.get_OutputParam_ByName(cmd, 'Bar2', Bar2);
		myFP.get_OutputParam_ByName(cmd, 'Bar3', Bar3);
		myFP.get_OutputParam_ByName(cmd, 'Bar4', Bar4);
		myFP.get_OutputParam_ByName(cmd, 'Name', Name);
		myFP.get_OutputParam_ByName(cmd, 'mUnit', mUnit);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
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

function execute_107_items_Get_FirstFoundWithSales //
  (myFP: TCFD_DUDE;                                //
  const Option: WideString;                        //
  const input_PLU: WideString;                     //
  var ErrorCode: WideString;                       //
  var PLU: WideString;                             //
  var TaxGr: WideString;                           //
  var Department: WideString;                      //
  var Group: WideString;                           //
  var PriceType: WideString;                       //
  var Price: WideString;                           //
  var Turnover: WideString;                        //
  var SoldQty: WideString;                         //
  var StockQty: WideString;                        //
  var Bar1: WideString;                            //
  var Bar2: WideString;                            //
  var Bar3: WideString;                            //
  var Bar4: WideString;                            //
  var Name: WideString;                            //
  var mUnit: WideString                            //
  ): Integer;                                      //

const
	cmd = '107_items_Get_FirstFoundWithSales';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'PLU', PLU);
		myFP.get_OutputParam_ByName(cmd, 'TaxGr', TaxGr);
		myFP.get_OutputParam_ByName(cmd, 'Department', Department);
		myFP.get_OutputParam_ByName(cmd, 'Group', Group);
		myFP.get_OutputParam_ByName(cmd, 'PriceType', PriceType);
		myFP.get_OutputParam_ByName(cmd, 'Price', Price);
		myFP.get_OutputParam_ByName(cmd, 'Turnover', Turnover);
		myFP.get_OutputParam_ByName(cmd, 'SoldQty', SoldQty);
		myFP.get_OutputParam_ByName(cmd, 'StockQty', StockQty);
		myFP.get_OutputParam_ByName(cmd, 'Bar1', Bar1);
		myFP.get_OutputParam_ByName(cmd, 'Bar2', Bar2);
		myFP.get_OutputParam_ByName(cmd, 'Bar3', Bar3);
		myFP.get_OutputParam_ByName(cmd, 'Bar4', Bar4);
		myFP.get_OutputParam_ByName(cmd, 'Name', Name);
		myFP.get_OutputParam_ByName(cmd, 'mUnit', mUnit);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'input_PLU', input_PLU) <> 0 then Exit;
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

function execute_107_items_Get_LastFoundWithSales //
  (myFP: TCFD_DUDE;                               //
  const Option: WideString;                       //
  const input_PLU: WideString;                    //
  var ErrorCode: WideString;                      //
  var PLU: WideString;                            //
  var TaxGr: WideString;                          //
  var Department: WideString;                     //
  var Group: WideString;                          //
  var PriceType: WideString;                      //
  var Price: WideString;                          //
  var Turnover: WideString;                       //
  var SoldQty: WideString;                        //
  var StockQty: WideString;                       //
  var Bar1: WideString;                           //
  var Bar2: WideString;                           //
  var Bar3: WideString;                           //
  var Bar4: WideString;                           //
  var Name: WideString;                           //
  var mUnit: WideString                           //
  ): Integer;                                     //

const
	cmd = '107_items_Get_LastFoundWithSales';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'PLU', PLU);
		myFP.get_OutputParam_ByName(cmd, 'TaxGr', TaxGr);
		myFP.get_OutputParam_ByName(cmd, 'Department', Department);
		myFP.get_OutputParam_ByName(cmd, 'Group', Group);
		myFP.get_OutputParam_ByName(cmd, 'PriceType', PriceType);
		myFP.get_OutputParam_ByName(cmd, 'Price', Price);
		myFP.get_OutputParam_ByName(cmd, 'Turnover', Turnover);
		myFP.get_OutputParam_ByName(cmd, 'SoldQty', SoldQty);
		myFP.get_OutputParam_ByName(cmd, 'StockQty', StockQty);
		myFP.get_OutputParam_ByName(cmd, 'Bar1', Bar1);
		myFP.get_OutputParam_ByName(cmd, 'Bar2', Bar2);
		myFP.get_OutputParam_ByName(cmd, 'Bar3', Bar3);
		myFP.get_OutputParam_ByName(cmd, 'Bar4', Bar4);
		myFP.get_OutputParam_ByName(cmd, 'Name', Name);
		myFP.get_OutputParam_ByName(cmd, 'mUnit', mUnit);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'input_PLU', input_PLU) <> 0 then Exit;
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

function execute_107_items_Get_NextFoundWithSales //
  (myFP: TCFD_DUDE;                               //
  const Option: WideString;                       //
  var ErrorCode: WideString;                      //
  var PLU: WideString;                            //
  var TaxGr: WideString;                          //
  var Department: WideString;                     //
  var Group: WideString;                          //
  var PriceType: WideString;                      //
  var Price: WideString;                          //
  var Turnover: WideString;                       //
  var SoldQty: WideString;                        //
  var StockQty: WideString;                       //
  var Bar1: WideString;                           //
  var Bar2: WideString;                           //
  var Bar3: WideString;                           //
  var Bar4: WideString;                           //
  var Name: WideString;                           //
  var mUnit: WideString                           //
  ): Integer;                                     //

const
	cmd = '107_items_Get_NextFoundWithSales';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'PLU', PLU);
		myFP.get_OutputParam_ByName(cmd, 'TaxGr', TaxGr);
		myFP.get_OutputParam_ByName(cmd, 'Department', Department);
		myFP.get_OutputParam_ByName(cmd, 'Group', Group);
		myFP.get_OutputParam_ByName(cmd, 'PriceType', PriceType);
		myFP.get_OutputParam_ByName(cmd, 'Price', Price);
		myFP.get_OutputParam_ByName(cmd, 'Turnover', Turnover);
		myFP.get_OutputParam_ByName(cmd, 'SoldQty', SoldQty);
		myFP.get_OutputParam_ByName(cmd, 'StockQty', StockQty);
		myFP.get_OutputParam_ByName(cmd, 'Bar1', Bar1);
		myFP.get_OutputParam_ByName(cmd, 'Bar2', Bar2);
		myFP.get_OutputParam_ByName(cmd, 'Bar3', Bar3);
		myFP.get_OutputParam_ByName(cmd, 'Bar4', Bar4);
		myFP.get_OutputParam_ByName(cmd, 'Name', Name);
		myFP.get_OutputParam_ByName(cmd, 'mUnit', mUnit);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
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

function execute_107_items_Get_FirstNotProgrammed //
  (myFP: TCFD_DUDE;                               //
  const Option: WideString;                       //
  const input_PLU: WideString;                    //
  var ErrorCode: WideString;                      //
  var PLU: WideString                             //
  ): Integer;                                     //

const
	cmd = '107_items_Get_FirstNotProgrammed';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'input_PLU', input_PLU) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'PLU', PLU);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_107_items_Get_LastNotProgrammed //
  (myFP: TCFD_DUDE;                              //
  const Option: WideString;                      //
  const input_PLU: WideString;                   //
  var ErrorCode: WideString;                     //
  var PLU: WideString                            //
  ): Integer;                                    //

const
	cmd = '107_items_Get_LastNotProgrammed';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'input_PLU', input_PLU) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'PLU', PLU);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_items_Set_ItemGroups_name //
  (myFP: TCFD_DUDE;                            //
  const Name: WideString;                      //
  const Index: WideString;                     //
  const Value: WideString;                     //
  var ErrorCode: WideString                    //
  ): Integer;                                  //

const
	cmd = '255_items_Set_ItemGroups_name';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_items_Get_ItemGroups_name //
  (myFP: TCFD_DUDE;                            //
  var ErrorCode: WideString;                   //
  var output_Value: WideString                 //
  ): Integer;                                  //

const
	cmd = '255_items_Get_ItemGroups_name';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_124_ej_Search_Documents_ByDate //
  (myFP: TCFD_DUDE;                             //
  const input_StartDate: WideString;            //
  const input_EndDate: WideString;              //
  const DocumentType: WideString;               //
  var ErrorCode: WideString;                    //
  var StartDate: WideString;                    //
  var EndDate: WideString;                      //
  var RepFirstDoc: WideString;                  //
  var FirstDoc: WideString;                     //
  var RepLastDoc: WideString;                   //
  var LastDoc: WideString                       //
  ): Integer;                                   //

const
	cmd = '124_ej_Search_Documents_ByDate';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'input_StartDate', input_StartDate) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'input_EndDate', input_EndDate) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'DocumentType', DocumentType) <> 0 then Exit;
		Result := True;
	end;

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'StartDate', StartDate);
		myFP.get_OutputParam_ByName(cmd, 'EndDate', EndDate);
		myFP.get_OutputParam_ByName(cmd, 'RepFirstDoc', RepFirstDoc);
		myFP.get_OutputParam_ByName(cmd, 'FirstDoc', FirstDoc);
		myFP.get_OutputParam_ByName(cmd, 'RepLastDoc', RepLastDoc);
		myFP.get_OutputParam_ByName(cmd, 'LastDoc', LastDoc);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
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

function execute_125_ej_Set_Document_For_Reading //
  (myFP: TCFD_DUDE;                              //
  const Option: WideString;                      //
  const input_DocNumber: WideString;             //
  const input_DocType: WideString;               //
  var ErrorCode: WideString;                     //
  var DocNumber: WideString;                     //
  var RecReport: WideString;                     //
  var RecNumber: WideString;                     //
  var Date: WideString;                          //
  var DocType: WideString;                       //
  var ZNumber: WideString                        //
  ): Integer;                                    //

const
	cmd = '125_ej_Set_Document_For_Reading';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'input_DocNumber', input_DocNumber) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'input_DocType', input_DocType) <> 0 then Exit;
		Result := True;
	end;

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'DocNumber', DocNumber);
		myFP.get_OutputParam_ByName(cmd, 'RecReport', RecReport);
		myFP.get_OutputParam_ByName(cmd, 'RecNumber', RecNumber);
		myFP.get_OutputParam_ByName(cmd, 'Date', Date);
		myFP.get_OutputParam_ByName(cmd, 'DocType', DocType);
		myFP.get_OutputParam_ByName(cmd, 'ZNumber', ZNumber);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
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

function execute_125_ej_Get_LineAsText //
  (myFP: TCFD_DUDE;                    //
  const Option: WideString;            //
  var ErrorCode: WideString;           //
  var TextData: WideString             //
  ): Integer;                          //

const
	cmd = '125_ej_Get_LineAsText';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'TextData', TextData);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_125_ej_Get_LineAsData //
  (myFP: TCFD_DUDE;                    //
  const Option: WideString;            //
  var ErrorCode: WideString;           //
  var Data: WideString                 //
  ): Integer;                          //

const
	cmd = '125_ej_Get_LineAsData';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'Data', Data);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_125_ej_Print_Document //
  (myFP: TCFD_DUDE;                    //
  const Option: WideString;            //
  const DocNum: WideString;            //
  const RecType: WideString;           //
  var ErrorCode: WideString            //
  ): Integer;                          //

const
	cmd = '125_ej_Print_Document';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'DocNum', DocNum) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'RecType', RecType) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_125_ej_Set_LOGFiles_For_Reading //
  (myFP: TCFD_DUDE;                              //
  const Option: WideString;                      //
  const FirstLOG: WideString;                    //
  const LastLOG: WideString;                     //
  var ErrorCode: WideString                      //
  ): Integer;                                    //

const
	cmd = '125_ej_Set_LOGFiles_For_Reading';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'FirstLOG', FirstLOG) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'LastLOG', LastLOG) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_125_ej_Get_LiineFromLOGFile //
  (myFP: TCFD_DUDE;                          //
  const Option: WideString;                  //
  var ErrorCode: WideString;                 //
  var TextData: WideString                   //
  ): Integer;                                //

const
	cmd = '125_ej_Get_LiineFromLOGFile';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'TextData', TextData);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_125_ej_Print_LogFiles //
  (myFP: TCFD_DUDE;                    //
  const Option: WideString;            //
  const FirstLOG: WideString;          //
  const LastLOG: WideString;           //
  var ErrorCode: WideString            //
  ): Integer;                          //

const
	cmd = '125_ej_Print_LogFiles';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'FirstLOG', FirstLOG) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'LastLOG', LastLOG) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_043_info_Get_HeaderLines //
  (myFP: TCFD_DUDE;                       //
  const OperationType: WideString;        //
  var ErrorCode: WideString;              //
  var HdrChanges: WideString;             //
  var MaxHdrChanges: WideString;          //
  var MaxHdrLines: WideString             //
  ): Integer;                             //

const
	cmd = '043_info_Get_HeaderLines';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'HdrChanges', HdrChanges);
		myFP.get_OutputParam_ByName(cmd, 'MaxHdrChanges', MaxHdrChanges);
		myFP.get_OutputParam_ByName(cmd, 'MaxHdrLines', MaxHdrLines);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'OperationType', OperationType) <> 0 then Exit;
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

function execute_043_info_Get_HeaderLines_Buffer //
  (myFP: TCFD_DUDE;                              //
  const OperationType: WideString;               //
  const LineIndex: WideString;                   //
  var ErrorCode: WideString;                     //
  var Data: WideString                           //
  ): Integer;                                    //

const
	cmd = '043_info_Get_HeaderLines_Buffer';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'OperationType', OperationType) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'LineIndex', LineIndex) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'Data', Data);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_043_info_Get_HeaderLines_RecordData //
  (myFP: TCFD_DUDE;                                  //
  const OperationType: WideString;                   //
  const LineIndex: WideString;                       //
  const RecordNum: WideString;                       //
  var ErrorCode: WideString;                         //
  var Data: WideString;                              //
  var nZrep: WideString;                             //
  var DateTime: WideString                           //
  ): Integer;                                        //

const
	cmd = '043_info_Get_HeaderLines_RecordData';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'OperationType', OperationType) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'LineIndex', LineIndex) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'RecordNum', RecordNum) <> 0 then Exit;
		Result := True;
	end;

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'Data', Data);
		myFP.get_OutputParam_ByName(cmd, 'nZRep', nZrep);
		myFP.get_OutputParam_ByName(cmd, 'DateTime', DateTime);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
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

function execute_045_info_Get_ModeConnectionWithPC //
  (myFP: TCFD_DUDE;                                //
  var ErrorCode: WideString                        //
  ): Integer;                                      //

const
	cmd = '045_info_Get_ModeConnectionWithPC';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_050_info_Get_ActiveTaxRates //
  (myFP: TCFD_DUDE;                          //
  var ErrorCode: WideString;                 //
  var nZReport: WideString;                  //
  var TaxA: WideString;                      //
  var TaxB: WideString;                      //
  var TaxC: WideString;                      //
  var TaxD: WideString;                      //
  var TaxE: WideString;                      //
  var TaxF: WideString;                      //
  var TaxG: WideString;                      //
  var DateTime: WideString                   //
  ): Integer;                                //

const
	cmd = '050_info_Get_ActiveTaxRates';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'nZreport', nZReport);
		myFP.get_OutputParam_ByName(cmd, 'TaxA', TaxA);
		myFP.get_OutputParam_ByName(cmd, 'TaxB', TaxB);
		myFP.get_OutputParam_ByName(cmd, 'TaxC', TaxC);
		myFP.get_OutputParam_ByName(cmd, 'TaxD', TaxD);
		myFP.get_OutputParam_ByName(cmd, 'TaxE', TaxE);
		myFP.get_OutputParam_ByName(cmd, 'TaxF', TaxF);
		myFP.get_OutputParam_ByName(cmd, 'TaxG', TaxG);
		myFP.get_OutputParam_ByName(cmd, 'DateTime', DateTime);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
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

function execute_062_info_Get_DateTime //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var DateTime: WideString             //
  ): Integer;                          //

const
	cmd = '062_info_Get_DateTime';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'DateTime', DateTime);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_064_info_Get_LastFiscEntry //
  (myFP: TCFD_DUDE;                         //
  const dataType: WideString;               //
  var ErrorCode: WideString;                //
  var nRep: WideString;                     //
  var SumA: WideString;                     //
  var SumB: WideString;                     //
  var SumC: WideString;                     //
  var SumD: WideString;                     //
  var SumE: WideString;                     //
  var SumF: WideString;                     //
  var SumG: WideString;                     //
  var SumSInv: WideString;                  //
  var fiscalRecordDate: WideString          //
  ): Integer;                               //

const
	cmd = '064_info_Get_LastFiscEntry';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'nRep', nRep);
		myFP.get_OutputParam_ByName(cmd, 'SumA', SumA);
		myFP.get_OutputParam_ByName(cmd, 'SumB', SumB);
		myFP.get_OutputParam_ByName(cmd, 'SumC', SumC);
		myFP.get_OutputParam_ByName(cmd, 'SumD', SumD);
		myFP.get_OutputParam_ByName(cmd, 'SumE', SumE);
		myFP.get_OutputParam_ByName(cmd, 'SumF', SumF);
		myFP.get_OutputParam_ByName(cmd, 'SumG', SumG);
		myFP.get_OutputParam_ByName(cmd, 'SumSInv', SumSInv);
		myFP.get_OutputParam_ByName(cmd, 'fiscalRecordDate', fiscalRecordDate);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'dataType', dataType) <> 0 then Exit;
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

function execute_065_info_Get_DailyTaxation //
  (myFP: TCFD_DUDE;                         //
  const dataType: WideString;               //
  var ErrorCode: WideString;                //
  var nRep: WideString;                     //
  var SumA: WideString;                     //
  var SumB: WideString;                     //
  var SumC: WideString;                     //
  var SumD: WideString;                     //
  var SumE: WideString;                     //
  var SumF: WideString;                     //
  var SumG: WideString                      //
  ): Integer;                               //

const
	cmd = '065_info_Get_DailyTaxation';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'nRep', nRep);
		myFP.get_OutputParam_ByName(cmd, 'SumA', SumA);
		myFP.get_OutputParam_ByName(cmd, 'SumB', SumB);
		myFP.get_OutputParam_ByName(cmd, 'SumC', SumC);
		myFP.get_OutputParam_ByName(cmd, 'SumD', SumD);
		myFP.get_OutputParam_ByName(cmd, 'SumE', SumE);
		myFP.get_OutputParam_ByName(cmd, 'SumF', SumF);
		myFP.get_OutputParam_ByName(cmd, 'SumG', SumG);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'dataType', dataType) <> 0 then Exit;
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

function execute_068_info_Get_Remaining_ZReportEntries //
  (myFP: TCFD_DUDE;                                    //
  var ErrorCode: WideString;                           //
  var ReportsLeft: WideString                          //
  ): Integer;                                          //

const
	cmd = '068_info_Get_Remaining_ZReportEntries';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'ReportsLeft', ReportsLeft);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_071_info_Print_Diagnostic //
  (myFP: TCFD_DUDE;                        //
  const InfoType: WideString;              //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '071_info_Print_Diagnostic';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'InfoType', InfoType) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_074_info_Get_Status //
  (myFP: TCFD_DUDE;                  //
  var ErrorCode: WideString;         //
  var StatusBytes: WideString        //
  ): Integer;                        //

const
	cmd = '074_info_Get_Status';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'StatusBytes', StatusBytes);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_076_info_Get_FiscalTransaction //
  (myFP: TCFD_DUDE;                             //
  var ErrorCode: WideString;                    //
  var IsOpen: WideString;                       //
  var Number: WideString;                       //
  var FMNumberRep: WideString;                  //
  var FMNumber: WideString;                     //
  var Items: WideString;                        //
  var Amount: WideString;                       //
  var Payed: WideString                         //
  ): Integer;                                   //

const
	cmd = '076_info_Get_FiscalTransaction';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'IsOpen', IsOpen);
		myFP.get_OutputParam_ByName(cmd, 'Number', Number);
		myFP.get_OutputParam_ByName(cmd, 'FMNumberRep', FMNumberRep);
		myFP.get_OutputParam_ByName(cmd, 'FMNumber', FMNumber);
		myFP.get_OutputParam_ByName(cmd, 'Items', Items);
		myFP.get_OutputParam_ByName(cmd, 'Amount', Amount);
		myFP.get_OutputParam_ByName(cmd, 'Payed', Payed);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
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

function execute_086_info_Get_LastFiscalRecord_Date //
  (myFP: TCFD_DUDE;                                 //
  var ErrorCode: WideString;                        //
  var DateTime: WideString                          //
  ): Integer;                                       //

const
	cmd = '086_info_Get_LastFiscalRecord_Date';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'DateTime', DateTime);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_087_info_Get_ItemGroup //
  (myFP: TCFD_DUDE;                     //
  const ItemGroup: WideString;          //
  var ErrorCode: WideString;            //
  var TotSales: WideString;             //
  var TotSum: WideString;               //
  var Name: WideString                  //
  ): Integer;                           //

const
	cmd = '087_info_Get_ItemGroup';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'TotSales', TotSales);
		myFP.get_OutputParam_ByName(cmd, 'TotSum', TotSum);
		myFP.get_OutputParam_ByName(cmd, 'Name', Name);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ItemGroup', ItemGroup) <> 0 then Exit;
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

function execute_088_info_Get_Department //
  (myFP: TCFD_DUDE;                      //
  const Department: WideString;          //
  var ErrorCode: WideString;             //
  var TotSales: WideString;              //
  var TotSum: WideString;                //
  var Name: WideString                   //
  ): Integer;                            //

const
	cmd = '088_info_Get_Department';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'TotSales', TotSales);
		myFP.get_OutputParam_ByName(cmd, 'TotSum', TotSum);
		myFP.get_OutputParam_ByName(cmd, 'Name', Name);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Department', Department) <> 0 then Exit;
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
	cmd = '090_info_Get_Diagnostic';

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

function execute_099_info_Get_TaxNumber //
  (myFP: TCFD_DUDE;                     //
  var ErrorCode: WideString;            //
  var TAXNumber: WideString             //
  ): Integer;                           //

const
	cmd = '099_info_Get_TaxNumber';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'TAXNumber', TAXNumber);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_100_info_Get_Error //
  (myFP: TCFD_DUDE;                 //
  const input_Code: WideString;     //
  var ErrorCode: WideString;        //
  var Code: WideString;             //
  var ErrorMessage: WideString      //
  ): Integer;                       //

const
	cmd = '100_info_Get_Error';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'Code', Code);
		myFP.get_OutputParam_ByName(cmd, 'ErrorMessage', ErrorMessage);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'input_Code', input_Code) <> 0 then Exit;
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

function execute_103_info_Get_CurrentReceipt //
  (myFP: TCFD_DUDE;                          //
  var ErrorCode: WideString;                 //
  var SumVatA: WideString;                   //
  var SumVatB: WideString;                   //
  var SumVatC: WideString;                   //
  var SumVatD: WideString;                   //
  var SumVatE: WideString;                   //
  var SumVatF: WideString;                   //
  var SumEXCEPTAT: WideString;               //
  var Inv: WideString                        //
  ): Integer;                                //

const
	cmd = '103_info_Get_CurrentReceipt';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'SumVatA', SumVatA);
		myFP.get_OutputParam_ByName(cmd, 'SumVatB', SumVatB);
		myFP.get_OutputParam_ByName(cmd, 'SumVatC', SumVatC);
		myFP.get_OutputParam_ByName(cmd, 'SumVatD', SumVatD);
		myFP.get_OutputParam_ByName(cmd, 'SumVatE', SumVatE);
		myFP.get_OutputParam_ByName(cmd, 'SumVatF', SumVatF);
		myFP.get_OutputParam_ByName(cmd, 'SumEXCEPTAT', SumEXCEPTAT);
		myFP.get_OutputParam_ByName(cmd, 'Inv', Inv);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
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

function execute_110_info_Get_Daily_Payments //
  (myFP: TCFD_DUDE;                          //
  const ReportType: WideString;              //
  var ErrorCode: WideString;                 //
  var Pay0: WideString;                      //
  var Pay1: WideString;                      //
  var Pay2: WideString;                      //
  var Pay3: WideString;                      //
  var Pay4: WideString;                      //
  var Pay5: WideString;                      //
  var Pay6: WideString;                      //
  var ForeignPay: WideString                 //
  ): Integer;                                //

const
	cmd = '110_info_Get_Daily_Payments';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'Pay0', Pay0);
		myFP.get_OutputParam_ByName(cmd, 'Pay1', Pay1);
		myFP.get_OutputParam_ByName(cmd, 'Pay2', Pay2);
		myFP.get_OutputParam_ByName(cmd, 'Pay3', Pay3);
		myFP.get_OutputParam_ByName(cmd, 'Pay4', Pay4);
		myFP.get_OutputParam_ByName(cmd, 'Pay5', Pay5);
		myFP.get_OutputParam_ByName(cmd, 'Pay6', Pay6);
		myFP.get_OutputParam_ByName(cmd, 'ForeignPay', ForeignPay);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
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

function execute_110_info_Get_Daily_NumAndSumsOfSells //
  (myFP: TCFD_DUDE;                                   //
  const ReportType: WideString;                       //
  var ErrorCode: WideString;                          //
  var Num: WideString;                                //
  var Sum: WideString                                 //
  ): Integer;                                         //

const
	cmd = '110_info_Get_Daily_NumAndSumsOfSells';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'Num', Num);
		myFP.get_OutputParam_ByName(cmd, 'Sum', Sum);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
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

function execute_110_info_Get_Daily_NumAndSumsOfDiscounts //
  (myFP: TCFD_DUDE;                                       //
  const ReportType: WideString;                           //
  var ErrorCode: WideString;                              //
  var qSur: WideString;                                   //
  var sSur: WideString;                                   //
  var qDis: WideString;                                   //
  var sDis: WideString;                                   //
  var qDisPlu: WideString;                                //
  var sDisPlu: WideString;                                //
  var qDisStl: WideString;                                //
  var sDisStl: WideString                                 //
  ): Integer;                                             //

const
	cmd = '110_info_Get_Daily_NumAndSumsOfDiscounts';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'qSur', qSur);
		myFP.get_OutputParam_ByName(cmd, 'sSur', sSur);
		myFP.get_OutputParam_ByName(cmd, 'qDis', qDis);
		myFP.get_OutputParam_ByName(cmd, 'sDis', sDis);
		myFP.get_OutputParam_ByName(cmd, 'qDisPlu', qDisPlu);
		myFP.get_OutputParam_ByName(cmd, 'sDisPlu', sDisPlu);
		myFP.get_OutputParam_ByName(cmd, 'qDisStl', qDisStl);
		myFP.get_OutputParam_ByName(cmd, 'sDisStl', sDisStl);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
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

function execute_110_info_Get_Daily_NumAndSumsOfCorrections //
  (myFP: TCFD_DUDE;                                         //
  const ReportType: WideString;                             //
  var ErrorCode: WideString;                                //
  var qVoid: WideString;                                    //
  var sVoid: WideString;                                    //
  var qAnul: WideString;                                    //
  var sAnul: WideString                                     //
  ): Integer;                                               //

const
	cmd = '110_info_Get_Daily_NumAndSumsOfCorrections';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'qVoid', qVoid);
		myFP.get_OutputParam_ByName(cmd, 'sVoid', sVoid);
		myFP.get_OutputParam_ByName(cmd, 'qAnul', qAnul);
		myFP.get_OutputParam_ByName(cmd, 'sAnul', sAnul);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
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

function execute_110_info_Get_Daily_CashInCashOut //
  (myFP: TCFD_DUDE;                               //
  const ReportType: WideString;                   //
  var ErrorCode: WideString;                      //
  var qCashIn1: WideString;                       //
  var sCashIn1: WideString;                       //
  var qCashOut1: WideString;                      //
  var sCashOut1: WideString;                      //
  var qCashIn2: WideString;                       //
  var sCashIn2: WideString;                       //
  var qCashOut2: WideString;                      //
  var sCashOut2: WideString                       //
  ): Integer;                                     //

const
	cmd = '110_info_Get_Daily_CashInCashOut';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'qCashIn1', qCashIn1);
		myFP.get_OutputParam_ByName(cmd, 'sCashIn1', sCashIn1);
		myFP.get_OutputParam_ByName(cmd, 'qCashOut1', qCashOut1);
		myFP.get_OutputParam_ByName(cmd, 'sCashOut1', sCashOut1);
		myFP.get_OutputParam_ByName(cmd, 'qCashIn2', qCashIn2);
		myFP.get_OutputParam_ByName(cmd, 'sCashIn2', sCashIn2);
		myFP.get_OutputParam_ByName(cmd, 'qCashOut2', qCashOut2);
		myFP.get_OutputParam_ByName(cmd, 'sCashOut2', sCashOut2);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'ReportType', ReportType) <> 0 then Exit;
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

function execute_112_info_Get_Operator //
  (myFP: TCFD_DUDE;                    //
  const Operator: WideString;          //
  var ErrorCode: WideString;           //
  var Receipts: WideString;            //
  var Total: WideString;               //
  var nDiscount: WideString;           //
  var Discount: WideString;            //
  var nDiscPlu: WideString;            //
  var DiscPlu: WideString;             //
  var nDiscStl: WideString;            //
  var DiscStl: WideString;             //
  var nSurcharge: WideString;          //
  var Surcharge: WideString;           //
  var nVoid: WideString;               //
  var Void: WideString                 //
  ): Integer;                          //

const
	cmd = '112_info_Get_Operator';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'Receipts', Receipts);
		myFP.get_OutputParam_ByName(cmd, 'Total', Total);
		myFP.get_OutputParam_ByName(cmd, 'nDiscount', nDiscount);
		myFP.get_OutputParam_ByName(cmd, 'Discount', Discount);
		myFP.get_OutputParam_ByName(cmd, 'nDiscPlu', nDiscPlu);
		myFP.get_OutputParam_ByName(cmd, 'DiscPlu', DiscPlu);
		myFP.get_OutputParam_ByName(cmd, 'nDiscStl', nDiscStl);
		myFP.get_OutputParam_ByName(cmd, 'DiscStl', DiscStl);
		myFP.get_OutputParam_ByName(cmd, 'nSurcharge', nSurcharge);
		myFP.get_OutputParam_ByName(cmd, 'Surcharge', Surcharge);
		myFP.get_OutputParam_ByName(cmd, 'nVoid', nVoid);
		myFP.get_OutputParam_ByName(cmd, 'Void', Void);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Operator', Operator) <> 0 then Exit;
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

function execute_123_info_Get_Device //
  (myFP: TCFD_DUDE;                  //
  const Option: WideString;          //
  var ErrorCode: WideString;         //
  var SerialNumber: WideString;      //
  var FMNumber: WideString;          //
  var Headerline1: WideString;       //
  var Headerline2: WideString;       //
  var TAXNumber: WideString          //
  ): Integer;                        //

const
	cmd = '123_info_Get_Device';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'SerialNumber', SerialNumber);
		myFP.get_OutputParam_ByName(cmd, 'FMnumber', FMNumber);
		myFP.get_OutputParam_ByName(cmd, 'Headerline1', Headerline1);
		myFP.get_OutputParam_ByName(cmd, 'Headerline2', Headerline2);
		myFP.get_OutputParam_ByName(cmd, 'TAXnumber', TAXNumber);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
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

function execute_123_info_Get_Last_FiscalReceipt //
  (myFP: TCFD_DUDE;                              //
  const Option: WideString;                      //
  var ErrorCode: WideString;                     //
  var BonFiscal: WideString;                     //
  var DateBonFiscal: WideString;                 //
  var ZNumber: WideString;                       //
  var ZDate: WideString                          //
  ): Integer;                                    //

const
	cmd = '123_info_Get_Last_FiscalReceipt';

	procedure set_Output;
	begin
		myFP.get_OutputParam_ByName(cmd, 'BonFiscal', BonFiscal);
		myFP.get_OutputParam_ByName(cmd, 'DateBonFiscal ', DateBonFiscal);
		myFP.get_OutputParam_ByName(cmd, 'Znumber', ZNumber);
		myFP.get_OutputParam_ByName(cmd, 'ZDate', ZDate);
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
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

function execute_255_info_Get_FpComBaudRate //
  (myFP: TCFD_DUDE;                         //
  var ErrorCode: WideString;                //
  var output_Value: WideString              //
  ): Integer;                               //

const
	cmd = '255_info_Get_FpComBaudRate';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_BthEnable //
  (myFP: TCFD_DUDE;                     //
  var ErrorCode: WideString;            //
  var output_Value: WideString          //
  ): Integer;                           //

const
	cmd = '255_info_Get_BthEnable';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_BthDiscoverability //
  (myFP: TCFD_DUDE;                              //
  var ErrorCode: WideString;                     //
  var output_Value: WideString                   //
  ): Integer;                                    //

const
	cmd = '255_info_Get_BthDiscoverability';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_BthPairing //
  (myFP: TCFD_DUDE;                      //
  var ErrorCode: WideString;             //
  var output_Value: WideString           //
  ): Integer;                            //

const
	cmd = '255_info_Get_BthPairing';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_BthPinCode //
  (myFP: TCFD_DUDE;                      //
  var ErrorCode: WideString;             //
  var output_Value: WideString           //
  ): Integer;                            //

const
	cmd = '255_info_Get_BthPinCode';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_BthVersion //
  (myFP: TCFD_DUDE;                      //
  var ErrorCode: WideString;             //
  var output_Value: WideString           //
  ): Integer;                            //

const
	cmd = '255_info_Get_BthVersion';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_BthAddress //
  (myFP: TCFD_DUDE;                      //
  var ErrorCode: WideString;             //
  var output_Value: WideString           //
  ): Integer;                            //

const
	cmd = '255_info_Get_BthAddress';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_BarCodeHeight //
  (myFP: TCFD_DUDE;                         //
  var ErrorCode: WideString;                //
  var output_Value: WideString              //
  ): Integer;                               //

const
	cmd = '255_info_Get_BarCodeHeight';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_BarcodeName //
  (myFP: TCFD_DUDE;                       //
  var ErrorCode: WideString;              //
  var output_Value: WideString            //
  ): Integer;                             //

const
	cmd = '255_info_Get_BarcodeName';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_AutoPaperCutting //
  (myFP: TCFD_DUDE;                            //
  var ErrorCode: WideString;                   //
  var output_Value: WideString                 //
  ): Integer;                                  //

const
	cmd = '255_info_Get_AutoPaperCutting';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_PaperCuttingType //
  (myFP: TCFD_DUDE;                            //
  var ErrorCode: WideString;                   //
  var output_Value: WideString                 //
  ): Integer;                                  //

const
	cmd = '255_info_Get_PaperCuttingType';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_TimeOutBeforePrintFlush //
  (myFP: TCFD_DUDE;                                   //
  var ErrorCode: WideString;                          //
  var output_Value: WideString                        //
  ): Integer;                                         //

const
	cmd = '255_info_Get_TimeOutBeforePrintFlush';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_NetInterfaceToUse //
  (myFP: TCFD_DUDE;                             //
  var ErrorCode: WideString;                    //
  var output_Value: WideString                  //
  ): Integer;                                   //

const
	cmd = '255_info_Get_NetInterfaceToUse';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_MainInterfaceType //
  (myFP: TCFD_DUDE;                             //
  var ErrorCode: WideString;                    //
  var output_Value: WideString                  //
  ): Integer;                                   //

const
	cmd = '255_info_Get_MainInterfaceType';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_FlushAtEndOnly //
  (myFP: TCFD_DUDE;                          //
  var ErrorCode: WideString;                 //
  var output_Value: WideString               //
  ): Integer;                                //

const
	cmd = '255_info_Get_FlushAtEndOnly';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_Line_spacing //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_info_Get_Line_spacing';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrLogNumber //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_info_Get_EcrLogNumber';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrAskForPassword //
  (myFP: TCFD_DUDE;                             //
  var ErrorCode: WideString;                    //
  var output_Value: WideString                  //
  ): Integer;                                   //

const
	cmd = '255_info_Get_EcrAskForPassword';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrAskForVoidPassword //
  (myFP: TCFD_DUDE;                                 //
  var ErrorCode: WideString;                        //
  var output_Value: WideString                      //
  ): Integer;                                       //

const
	cmd = '255_info_Get_EcrAskForVoidPassword';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrSafeOpening //
  (myFP: TCFD_DUDE;                          //
  var ErrorCode: WideString;                 //
  var output_Value: WideString               //
  ): Integer;                                //

const
	cmd = '255_info_Get_EcrSafeOpening';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrConnectedOperReport //
  (myFP: TCFD_DUDE;                                  //
  var ErrorCode: WideString;                         //
  var output_Value: WideString                       //
  ): Integer;                                        //

const
	cmd = '255_info_Get_EcrConnectedOperReport';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrConnectedGroupsReport //
  (myFP: TCFD_DUDE;                                    //
  var ErrorCode: WideString;                           //
  var output_Value: WideString                         //
  ): Integer;                                          //

const
	cmd = '255_info_Get_EcrConnectedGroupsReport';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrConnectedDeptReport //
  (myFP: TCFD_DUDE;                                  //
  var ErrorCode: WideString;                         //
  var output_Value: WideString                       //
  ): Integer;                                        //

const
	cmd = '255_info_Get_EcrConnectedDeptReport';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrConnectedPluSalesReport //
  (myFP: TCFD_DUDE;                                      //
  var ErrorCode: WideString;                             //
  var output_Value: WideString                           //
  ): Integer;                                            //

const
	cmd = '255_info_Get_EcrConnectedPluSalesReport';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrConnectedCashReport //
  (myFP: TCFD_DUDE;                                  //
  var ErrorCode: WideString;                         //
  var output_Value: WideString                       //
  ): Integer;                                        //

const
	cmd = '255_info_Get_EcrConnectedCashReport ';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrLogReport //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_info_Get_EcrLogReport';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrPluDailyClearing //
  (myFP: TCFD_DUDE;                               //
  var ErrorCode: WideString;                      //
  var output_Value: WideString                    //
  ): Integer;                                     //

const
	cmd = '255_info_Get_EcrPluDailyClearing';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrNumberBarcode //
  (myFP: TCFD_DUDE;                            //
  var ErrorCode: WideString;                   //
  var output_Value: WideString                 //
  ): Integer;                                  //

const
	cmd = '255_info_Get_EcrNumberBarcode';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrOnlyAdminOpenShift //
  (myFP: TCFD_DUDE;                                 //
  var ErrorCode: WideString;                        //
  var output_Value: WideString                      //
  ): Integer;                                       //

const
	cmd = '255_info_Get_EcrOnlyAdminOpenShift';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrScaleBarMask //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_info_Get_EcrScaleBarMask';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_AutoPowerOff //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_info_Get_AutoPowerOff';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrMode //
  (myFP: TCFD_DUDE;                   //
  var ErrorCode: WideString;          //
  var output_Value: WideString        //
  ): Integer;                         //

const
	cmd = '255_info_Get_EcrMode';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EcrMidnightWarning //
  (myFP: TCFD_DUDE;                              //
  var ErrorCode: WideString;                     //
  var output_Value: WideString                   //
  ): Integer;                                    //

const
	cmd = '255_info_Get_EcrMidnightWarning';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_CurrNameLocal //
  (myFP: TCFD_DUDE;                         //
  var ErrorCode: WideString;                //
  var output_Value: WideString              //
  ): Integer;                               //

const
	cmd = '255_info_Get_CurrNameLocal';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_CurrNameForeign //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_info_Get_CurrNameForeign';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_ExchangeRate //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_info_Get_ExchangeRate';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_Unit_name //
  (myFP: TCFD_DUDE;                     //
  var ErrorCode: WideString;            //
  var output_Value: WideString          //
  ): Integer;                           //

const
	cmd = '255_info_Get_Unit_name';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_OperName //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_OperName';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_OperPasw //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_OperPasw';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_Dept_name //
  (myFP: TCFD_DUDE;                     //
  var ErrorCode: WideString;            //
  var output_Value: WideString          //
  ): Integer;                           //

const
	cmd = '255_info_Get_Dept_name';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_Payment_forbidden //
  (myFP: TCFD_DUDE;                             //
  var ErrorCode: WideString;                    //
  var output_Value: WideString                  //
  ): Integer;                                   //

const
	cmd = '255_info_Get_Payment_forbidden';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_PayNamePgmbl //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_info_Get_PayNamePgmbl';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_PYxx_Pgm //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_PYxx_Pgm';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DPxx_PluCode //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_info_Get_DPxx_PluCode';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_KeyNDB_value //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_info_Get_KeyNDB_value';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_KeyNDB_percentage //
  (myFP: TCFD_DUDE;                             //
  var ErrorCode: WideString;                    //
  var output_Value: WideString                  //
  ): Integer;                                   //

const
	cmd = '255_info_Get_KeyNDB_percentage';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_KeyOTS_value //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_info_Get_KeyOTS_value';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_KeyOTS_percentage //
  (myFP: TCFD_DUDE;                             //
  var ErrorCode: WideString;                    //
  var output_Value: WideString                  //
  ): Integer;                                   //

const
	cmd = '255_info_Get_KeyOTS_percentage';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_KeyNDB_forbidden //
  (myFP: TCFD_DUDE;                            //
  var ErrorCode: WideString;                   //
  var output_Value: WideString                 //
  ): Integer;                                  //

const
	cmd = '255_info_Get_KeyNDB_forbidden';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_KeyOTS_forbidden //
  (myFP: TCFD_DUDE;                            //
  var ErrorCode: WideString;                   //
  var output_Value: WideString                 //
  ): Integer;                                  //

const
	cmd = '255_info_Get_KeyOTS_forbidden';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_PluDiscountName //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_info_Get_PluDiscountName';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_StlDiscountName //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_info_Get_StlDiscountName';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_ServMessage //
  (myFP: TCFD_DUDE;                       //
  var ErrorCode: WideString;              //
  var output_Value: WideString            //
  ): Integer;                             //

const
	cmd = '255_info_Get_ServMessage';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_ServiceDate //
  (myFP: TCFD_DUDE;                       //
  var ErrorCode: WideString;              //
  var output_Value: WideString            //
  ): Integer;                             //

const
	cmd = '255_info_Get_ServiceDate';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_IMEI //
  (myFP: TCFD_DUDE;                //
  var ErrorCode: WideString;       //
  var output_Value: WideString     //
  ): Integer;                      //

const
	cmd = '255_info_Get_IMEI';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_APN //
  (myFP: TCFD_DUDE;               //
  var ErrorCode: WideString;      //
  var output_Value: WideString    //
  ): Integer;                     //

const
	cmd = '255_info_Get_APN';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_APN_User //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_APN_User';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_APN_Pass //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_APN_Pass';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_SimPin //
  (myFP: TCFD_DUDE;                  //
  var ErrorCode: WideString;         //
  var output_Value: WideString       //
  ): Integer;                        //

const
	cmd = '255_info_Get_SimPin';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_SimICCID //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_SimICCID';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_SimIMSI //
  (myFP: TCFD_DUDE;                   //
  var ErrorCode: WideString;          //
  var output_Value: WideString        //
  ): Integer;                         //

const
	cmd = '255_info_Get_SimIMSI';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_SimTelNumber //
  (myFP: TCFD_DUDE;                        //
  var ErrorCode: WideString;               //
  var output_Value: WideString             //
  ): Integer;                              //

const
	cmd = '255_info_Get_SimTelNumber';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_LanMAC //
  (myFP: TCFD_DUDE;                  //
  var ErrorCode: WideString;         //
  var output_Value: WideString       //
  ): Integer;                        //

const
	cmd = '255_info_Get_LanMAC';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DHCPenable //
  (myFP: TCFD_DUDE;                      //
  var ErrorCode: WideString;             //
  var output_Value: WideString           //
  ): Integer;                            //

const
	cmd = '255_info_Get_DHCPenable';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_LAN_IP //
  (myFP: TCFD_DUDE;                  //
  var ErrorCode: WideString;         //
  var output_Value: WideString       //
  ): Integer;                        //

const
	cmd = '255_info_Get_LAN_IP';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_LAN_NetMask //
  (myFP: TCFD_DUDE;                       //
  var ErrorCode: WideString;              //
  var output_Value: WideString            //
  ): Integer;                             //

const
	cmd = '255_info_Get_LAN_NetMask';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_LAN_Gateway //
  (myFP: TCFD_DUDE;                       //
  var ErrorCode: WideString;              //
  var output_Value: WideString            //
  ): Integer;                             //

const
	cmd = '255_info_Get_LAN_Gateway';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_LAN_PriDNS //
  (myFP: TCFD_DUDE;                      //
  var ErrorCode: WideString;             //
  var output_Value: WideString           //
  ): Integer;                            //

const
	cmd = '255_info_Get_LAN_PriDNS';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_LAN_SecDNS //
  (myFP: TCFD_DUDE;                      //
  var ErrorCode: WideString;             //
  var output_Value: WideString           //
  ): Integer;                            //

const
	cmd = '255_info_Get_LAN_SecDNS';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_LANport_fpCommands //
  (myFP: TCFD_DUDE;                              //
  var ErrorCode: WideString;                     //
  var output_Value: WideString                   //
  ): Integer;                                    //

const
	cmd = '255_info_Get_LANport_fpCommands';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nZreport //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_nZreport';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nReset //
  (myFP: TCFD_DUDE;                  //
  var ErrorCode: WideString;         //
  var output_Value: WideString       //
  ): Integer;                        //

const
	cmd = '255_info_Get_nReset';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nVatChanges //
  (myFP: TCFD_DUDE;                       //
  var ErrorCode: WideString;              //
  var output_Value: WideString            //
  ): Integer;                             //

const
	cmd = '255_info_Get_nVatChanges';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nIDnumberChanges //
  (myFP: TCFD_DUDE;                            //
  var ErrorCode: WideString;                   //
  var output_Value: WideString                 //
  ): Integer;                                  //

const
	cmd = '255_info_Get_nIDnumberChanges';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nFMnumberChanges //
  (myFP: TCFD_DUDE;                            //
  var ErrorCode: WideString;                   //
  var output_Value: WideString                 //
  ): Integer;                                  //

const
	cmd = '255_info_Get_nFMnumberChanges';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nTAXnumberChanges //
  (myFP: TCFD_DUDE;                             //
  var ErrorCode: WideString;                    //
  var output_Value: WideString                  //
  ): Integer;                                   //

const
	cmd = '255_info_Get_nTAXnumberChanges';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nHeaderChanges //
  (myFP: TCFD_DUDE;                          //
  var ErrorCode: WideString;                 //
  var output_Value: WideString               //
  ): Integer;                                //

const
	cmd = '255_info_Get_nHeaderChanges';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_valVat //
  (myFP: TCFD_DUDE;                  //
  var ErrorCode: WideString;         //
  var output_Value: WideString       //
  ): Integer;                        //

const
	cmd = '255_info_Get_valVat';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_IDnumber //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_IDnumber';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_FMnumber //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_FMnumber';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_TAXnumber //
  (myFP: TCFD_DUDE;                     //
  var ErrorCode: WideString;            //
  var output_Value: WideString          //
  ): Integer;                           //

const
	cmd = '255_info_Get_TAXnumber';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_UserIsVatRegistered //
  (myFP: TCFD_DUDE;                               //
  var ErrorCode: WideString;                      //
  var output_Value: WideString                    //
  ): Integer;                                     //

const
	cmd = '255_info_Get_UserIsVatRegistered';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_FmWriteDateTime //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_info_Get_FmWriteDateTime';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_LastValiddate //
  (myFP: TCFD_DUDE;                         //
  var ErrorCode: WideString;                //
  var output_Value: WideString              //
  ): Integer;                               //

const
	cmd = '255_info_Get_LastValiddate';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_Fiscalized //
  (myFP: TCFD_DUDE;                      //
  var ErrorCode: WideString;             //
  var output_Value: WideString           //
  ): Integer;                            //

const
	cmd = '255_info_Get_Fiscalized';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DFR_needed //
  (myFP: TCFD_DUDE;                      //
  var ErrorCode: WideString;             //
  var output_Value: WideString           //
  ): Integer;                            //

const
	cmd = '255_info_Get_DFR_needed';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nBon //
  (myFP: TCFD_DUDE;                //
  var ErrorCode: WideString;       //
  var output_Value: WideString     //
  ): Integer;                      //

const
	cmd = '255_info_Get_nBon';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nFBon //
  (myFP: TCFD_DUDE;                 //
  var ErrorCode: WideString;        //
  var output_Value: WideString      //
  ): Integer;                       //

const
	cmd = '255_info_Get_nFBon';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nFBonDailyCount //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_info_Get_nFBonDailyCount  ';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_nRBonDailyCount //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_info_Get_nRBonDailyCount';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_Block24h //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_Block24h';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_CurrClerk //
  (myFP: TCFD_DUDE;                     //
  var ErrorCode: WideString;            //
  var output_Value: WideString          //
  ): Integer;                           //

const
	cmd = '255_info_Get_CurrClerk';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_EJNumber //
  (myFP: TCFD_DUDE;                    //
  var ErrorCode: WideString;           //
  var output_Value: WideString         //
  ): Integer;                          //

const
	cmd = '255_info_Get_EJNumber';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DsblKeyZreport //
  (myFP: TCFD_DUDE;                          //
  var ErrorCode: WideString;                 //
  var output_Value: WideString               //
  ): Integer;                                //

const
	cmd = '255_info_Get_DsblKeyZreport';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DsblKeyXreport //
  (myFP: TCFD_DUDE;                          //
  var ErrorCode: WideString;                 //
  var output_Value: WideString               //
  ): Integer;                                //

const
	cmd = '255_info_Get_DsblKeyXreport';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DsblKeyDiagnostics //
  (myFP: TCFD_DUDE;                              //
  var ErrorCode: WideString;                     //
  var output_Value: WideString                   //
  ): Integer;                                    //

const
	cmd = '255_info_Get_DsblKeyDiagnostics';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DsblKeyFmReports //
  (myFP: TCFD_DUDE;                            //
  var ErrorCode: WideString;                   //
  var output_Value: WideString                 //
  ): Integer;                                  //

const
	cmd = '255_info_Get_DsblKeyFmReports';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DsblKeyOperatorsReports //
  (myFP: TCFD_DUDE;                                   //
  var ErrorCode: WideString;                          //
  var output_Value: WideString                        //
  ): Integer;                                         //

const
	cmd = '255_info_Get_DsblKeyOperatorsReports';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DsblKeyJournal //
  (myFP: TCFD_DUDE;                          //
  var ErrorCode: WideString;                 //
  var output_Value: WideString               //
  ): Integer;                                //

const
	cmd = '255_info_Get_DsblKeyJournal';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DsblKeyDateTime //
  (myFP: TCFD_DUDE;                           //
  var ErrorCode: WideString;                  //
  var output_Value: WideString                //
  ): Integer;                                 //

const
	cmd = '255_info_Get_DsblKeyDateTime';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DsblKeyCloseReceipt //
  (myFP: TCFD_DUDE;                               //
  var ErrorCode: WideString;                      //
  var output_Value: WideString                    //
  ): Integer;                                     //

const
	cmd = '255_info_Get_DsblKeyCloseReceipt';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_info_Get_DsblKeyCancelReceipt //
  (myFP: TCFD_DUDE;                                //
  var ErrorCode: WideString;                       //
  var output_Value: WideString                     //
  ): Integer;                                      //

const
	cmd = '255_info_Get_DsblKeyCancelReceipt';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'output_Value', output_Value);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_043_config_Set_HeaderLines_FM //
  (myFP: TCFD_DUDE;                            //
  const OperationType: WideString;             //
  var ErrorCode: WideString                    //
  ): Integer;                                  //

const
	cmd = '043_config_Set_HeaderLines_FM';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'OperationType', OperationType) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_043_config_Set_HeaderLines_Buffer //
  (myFP: TCFD_DUDE;                                //
  const OperationType: WideString;                 //
  const LineIndex: WideString;                     //
  const Data: WideString;                          //
  var ErrorCode: WideString                        //
  ): Integer;                                      //

const
	cmd = '043_config_Set_HeaderLines_Buffer';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'OperationType', OperationType) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'LineIndex', LineIndex) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Data', Data) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_061_config_Set_DateTime //
  (myFP: TCFD_DUDE;                      //
  const DateTime: WideString;            //
  var ErrorCode: WideString              //
  ): Integer;                            //

const
	cmd = '061_config_Set_DateTime';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'DateTime', DateTime) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_101_config_Set_OperatorPassword //
  (myFP: TCFD_DUDE;                              //
  const OperatorCode: WideString;                //
  const OldPassword: WideString;                 //
  const NewPassword: WideString;                 //
  var ErrorCode: WideString                      //
  ): Integer;                                    //

const
	cmd = '101_config_Set_OperatorPassword';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'OperatorCode', OperatorCode) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'OldPassword', OldPassword) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'NewPassword', NewPassword) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_FpComBaudRate //
  (myFP: TCFD_DUDE;                           //
  const Name: WideString;                     //
  const Index: WideString;                    //
  const Value: WideString;                    //
  var ErrorCode: WideString                   //
  ): Integer;                                 //

const
	cmd = '255_config_Set_FpComBaudRate';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_BthEnable //
  (myFP: TCFD_DUDE;                       //
  const Name: WideString;                 //
  const Index: WideString;                //
  const Value: WideString;                //
  var ErrorCode: WideString               //
  ): Integer;                             //

const
	cmd = '255_config_Set_BthEnable';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_BthDiscoverability //
  (myFP: TCFD_DUDE;                                //
  const Name: WideString;                          //
  const Index: WideString;                         //
  const Value: WideString;                         //
  var ErrorCode: WideString                        //
  ): Integer;                                      //

const
	cmd = '255_config_Set_BthDiscoverability';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_BthPairing //
  (myFP: TCFD_DUDE;                        //
  const Name: WideString;                  //
  const Index: WideString;                 //
  const Value: WideString;                 //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '255_config_Set_BthPairing';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_BthPinCode //
  (myFP: TCFD_DUDE;                        //
  const Name: WideString;                  //
  const Index: WideString;                 //
  const Value: WideString;                 //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '255_config_Set_BthPinCode';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_BthVersion //
  (myFP: TCFD_DUDE;                        //
  const Name: WideString;                  //
  const Index: WideString;                 //
  const Value: WideString;                 //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '255_config_Set_BthVersion';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_BthAddress //
  (myFP: TCFD_DUDE;                        //
  const Name: WideString;                  //
  const Index: WideString;                 //
  const Value: WideString;                 //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '255_config_Set_BthAddress';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_BarCodeHeight //
  (myFP: TCFD_DUDE;                           //
  const Name: WideString;                     //
  const Index: WideString;                    //
  const Value: WideString;                    //
  var ErrorCode: WideString                   //
  ): Integer;                                 //

const
	cmd = '255_config_Set_BarCodeHeight';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_BarcodeName //
  (myFP: TCFD_DUDE;                         //
  const Name: WideString;                   //
  const Index: WideString;                  //
  const Value: WideString;                  //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '255_config_Set_BarcodeName';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_AutoPaperCutting //
  (myFP: TCFD_DUDE;                              //
  const Name: WideString;                        //
  const Index: WideString;                       //
  const Value: WideString;                       //
  var ErrorCode: WideString                      //
  ): Integer;                                    //

const
	cmd = '255_config_Set_AutoPaperCutting';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_PaperCuttingType //
  (myFP: TCFD_DUDE;                              //
  const Name: WideString;                        //
  const Index: WideString;                       //
  const Value: WideString;                       //
  var ErrorCode: WideString                      //
  ): Integer;                                    //

const
	cmd = '255_config_Set_PaperCuttingType';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_TimeOutBeforePrintFlush //
  (myFP: TCFD_DUDE;                                     //
  const Name: WideString;                               //
  const Index: WideString;                              //
  const Value: WideString;                              //
  var ErrorCode: WideString                             //
  ): Integer;                                           //

const
	cmd = '255_config_Set_TimeOutBeforePrintFlush';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_NetInterfaceToUse //
  (myFP: TCFD_DUDE;                               //
  const Name: WideString;                         //
  const Index: WideString;                        //
  const Value: WideString;                        //
  var ErrorCode: WideString                       //
  ): Integer;                                     //

const
	cmd = '255_config_Set_NetInterfaceToUse';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_MainInterfaceType //
  (myFP: TCFD_DUDE;                               //
  const Name: WideString;                         //
  const Index: WideString;                        //
  const Value: WideString;                        //
  var ErrorCode: WideString                       //
  ): Integer;                                     //

const
	cmd = '255_config_Set_MainInterfaceType';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_FlushAtEndOnly //
  (myFP: TCFD_DUDE;                            //
  const Name: WideString;                      //
  const Index: WideString;                     //
  const Value: WideString;                     //
  var ErrorCode: WideString                    //
  ): Integer;                                  //

const
	cmd = '255_config_Set_FlushAtEndOnly';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_Line_spacing //
  (myFP: TCFD_DUDE;                          //
  const Name: WideString;                    //
  const Index: WideString;                   //
  const Value: WideString;                   //
  var ErrorCode: WideString                  //
  ): Integer;                                //

const
	cmd = '255_config_Set_Line_spacing';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrLogNumber //
  (myFP: TCFD_DUDE;                          //
  const Name: WideString;                    //
  const Index: WideString;                   //
  const Value: WideString;                   //
  var ErrorCode: WideString                  //
  ): Integer;                                //

const
	cmd = '255_config_Set_EcrLogNumber';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrAskForPassword //
  (myFP: TCFD_DUDE;                               //
  const Name: WideString;                         //
  const Index: WideString;                        //
  const Value: WideString;                        //
  var ErrorCode: WideString                       //
  ): Integer;                                     //

const
	cmd = '255_config_Set_EcrAskForPassword';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrAskForVoidPassword //
  (myFP: TCFD_DUDE;                                   //
  const Name: WideString;                             //
  const Index: WideString;                            //
  const Value: WideString;                            //
  var ErrorCode: WideString                           //
  ): Integer;                                         //

const
	cmd = '255_config_Set_EcrAskForVoidPassword';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrSafeOpening //
  (myFP: TCFD_DUDE;                            //
  const Name: WideString;                      //
  const Index: WideString;                     //
  const Value: WideString;                     //
  var ErrorCode: WideString                    //
  ): Integer;                                  //

const
	cmd = '255_config_Set_EcrSafeOpening';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrConnectedOperReport //
  (myFP: TCFD_DUDE;                                    //
  const Name: WideString;                              //
  const Index: WideString;                             //
  const Value: WideString;                             //
  var ErrorCode: WideString                            //
  ): Integer;                                          //

const
	cmd = '255_config_Set_EcrConnectedOperReport';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrConnectedGroupsReport //
  (myFP: TCFD_DUDE;                                      //
  const Name: WideString;                                //
  const Index: WideString;                               //
  const Value: WideString;                               //
  var ErrorCode: WideString                              //
  ): Integer;                                            //

const
	cmd = '255_config_Set_EcrConnectedGroupsReport';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrConnectedDeptReport //
  (myFP: TCFD_DUDE;                                    //
  const Name: WideString;                              //
  const Index: WideString;                             //
  const Value: WideString;                             //
  var ErrorCode: WideString                            //
  ): Integer;                                          //

const
	cmd = '255_config_Set_EcrConnectedDeptReport';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrConnectedPluSalesReport //
  (myFP: TCFD_DUDE;                                        //
  const Name: WideString;                                  //
  const Index: WideString;                                 //
  const Value: WideString;                                 //
  var ErrorCode: WideString                                //
  ): Integer;                                              //

const
	cmd = '255_config_Set_EcrConnectedPluSalesReport';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrConnectedCashReport //
  (myFP: TCFD_DUDE;                                    //
  const Name: WideString;                              //
  const Index: WideString;                             //
  const Value: WideString;                             //
  var ErrorCode: WideString                            //
  ): Integer;                                          //

const
	cmd = '255_config_Set_EcrConnectedCashReport ';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrLogReport //
  (myFP: TCFD_DUDE;                          //
  const Name: WideString;                    //
  const Index: WideString;                   //
  const Value: WideString;                   //
  var ErrorCode: WideString                  //
  ): Integer;                                //

const
	cmd = '255_config_Set_EcrLogReport';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrPluDailyClearing //
  (myFP: TCFD_DUDE;                                 //
  const Name: WideString;                           //
  const Index: WideString;                          //
  const Value: WideString;                          //
  var ErrorCode: WideString                         //
  ): Integer;                                       //

const
	cmd = '255_config_Set_EcrPluDailyClearing';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrNumberBarcode //
  (myFP: TCFD_DUDE;                              //
  const Name: WideString;                        //
  const Index: WideString;                       //
  const Value: WideString;                       //
  var ErrorCode: WideString                      //
  ): Integer;                                    //

const
	cmd = '255_config_Set_EcrNumberBarcode';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrOnlyAdminOpenShift //
  (myFP: TCFD_DUDE;                                   //
  const Name: WideString;                             //
  const Index: WideString;                            //
  const Value: WideString;                            //
  var ErrorCode: WideString                           //
  ): Integer;                                         //

const
	cmd = '255_config_Set_EcrOnlyAdminOpenShift';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrScaleBarMask //
  (myFP: TCFD_DUDE;                             //
  const Name: WideString;                       //
  const Index: WideString;                      //
  const Value: WideString;                      //
  var ErrorCode: WideString                     //
  ): Integer;                                   //

const
	cmd = '255_config_Set_EcrScaleBarMask';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_AutoPowerOff //
  (myFP: TCFD_DUDE;                          //
  const Name: WideString;                    //
  const Index: WideString;                   //
  const Value: WideString;                   //
  var ErrorCode: WideString                  //
  ): Integer;                                //

const
	cmd = '255_config_Set_AutoPowerOff';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_EcrMidnightWarning //
  (myFP: TCFD_DUDE;                                //
  const Name: WideString;                          //
  const Index: WideString;                         //
  const Value: WideString;                         //
  var ErrorCode: WideString                        //
  ): Integer;                                      //

const
	cmd = '255_config_Set_EcrMidnightWarning';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_CurrNameLocal //
  (myFP: TCFD_DUDE;                           //
  const Name: WideString;                     //
  const Index: WideString;                    //
  const Value: WideString;                    //
  var ErrorCode: WideString                   //
  ): Integer;                                 //

const
	cmd = '255_config_Set_CurrNameLocal';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_CurrNameForeign //
  (myFP: TCFD_DUDE;                             //
  const Name: WideString;                       //
  const Index: WideString;                      //
  const Value: WideString;                      //
  var ErrorCode: WideString                     //
  ): Integer;                                   //

const
	cmd = '255_config_Set_CurrNameForeign';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_ExchangeRate //
  (myFP: TCFD_DUDE;                          //
  const Name: WideString;                    //
  const Index: WideString;                   //
  const Value: WideString;                   //
  var ErrorCode: WideString                  //
  ): Integer;                                //

const
	cmd = '255_config_Set_ExchangeRate';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_Unit_name //
  (myFP: TCFD_DUDE;                       //
  const Name: WideString;                 //
  const Index: WideString;                //
  const Value: WideString;                //
  var ErrorCode: WideString               //
  ): Integer;                             //

const
	cmd = '255_config_Set_Unit_name';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_OperName //
  (myFP: TCFD_DUDE;                      //
  const Name: WideString;                //
  const Index: WideString;               //
  const Value: WideString;               //
  var ErrorCode: WideString              //
  ): Integer;                            //

const
	cmd = '255_config_Set_OperName';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_OperPasw //
  (myFP: TCFD_DUDE;                      //
  const Name: WideString;                //
  const Index: WideString;               //
  const Value: WideString;               //
  var ErrorCode: WideString              //
  ): Integer;                            //

const
	cmd = '255_config_Set_OperPasw';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_Dept_name //
  (myFP: TCFD_DUDE;                       //
  const Name: WideString;                 //
  const Index: WideString;                //
  const Value: WideString;                //
  var ErrorCode: WideString               //
  ): Integer;                             //

const
	cmd = '255_config_Set_Dept_name';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_Payment_forbidden //
  (myFP: TCFD_DUDE;                               //
  const Name: WideString;                         //
  const Index: WideString;                        //
  const Value: WideString;                        //
  var ErrorCode: WideString                       //
  ): Integer;                                     //

const
	cmd = '255_config_Set_Payment_forbidden';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_PayNamePgmbl //
  (myFP: TCFD_DUDE;                          //
  const Name: WideString;                    //
  const Index: WideString;                   //
  const Value: WideString;                   //
  var ErrorCode: WideString                  //
  ): Integer;                                //

const
	cmd = '255_config_Set_PayNamePgmbl';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_DPxx_PluCode //
  (myFP: TCFD_DUDE;                          //
  const Name: WideString;                    //
  const Index: WideString;                   //
  const Value: WideString;                   //
  var ErrorCode: WideString                  //
  ): Integer;                                //

const
	cmd = '255_config_Set_DPxx_PluCode';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_KeyNDB_value //
  (myFP: TCFD_DUDE;                          //
  const Name: WideString;                    //
  const Index: WideString;                   //
  const Value: WideString;                   //
  var ErrorCode: WideString                  //
  ): Integer;                                //

const
	cmd = '255_config_Set_KeyNDB_value';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_KeyNDB_percentage //
  (myFP: TCFD_DUDE;                               //
  const Name: WideString;                         //
  const Index: WideString;                        //
  const Value: WideString;                        //
  var ErrorCode: WideString                       //
  ): Integer;                                     //

const
	cmd = '255_config_Set_KeyNDB_percentage';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_KeyOTS_value //
  (myFP: TCFD_DUDE;                          //
  const Name: WideString;                    //
  const Index: WideString;                   //
  const Value: WideString;                   //
  var ErrorCode: WideString                  //
  ): Integer;                                //

const
	cmd = '255_config_Set_KeyOTS_value';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_KeyOTS_percentage //
  (myFP: TCFD_DUDE;                               //
  const Name: WideString;                         //
  const Index: WideString;                        //
  const Value: WideString;                        //
  var ErrorCode: WideString                       //
  ): Integer;                                     //

const
	cmd = '255_config_Set_KeyOTS_percentage';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_KeyNDB_forbidden //
  (myFP: TCFD_DUDE;                              //
  const Name: WideString;                        //
  const Index: WideString;                       //
  const Value: WideString;                       //
  var ErrorCode: WideString                      //
  ): Integer;                                    //

const
	cmd = '255_config_Set_KeyNDB_forbidden';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_KeyOTS_forbidden //
  (myFP: TCFD_DUDE;                              //
  const Name: WideString;                        //
  const Index: WideString;                       //
  const Value: WideString;                       //
  var ErrorCode: WideString                      //
  ): Integer;                                    //

const
	cmd = '255_config_Set_KeyOTS_forbidden';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_PluDiscountName //
  (myFP: TCFD_DUDE;                             //
  const Name: WideString;                       //
  const Index: WideString;                      //
  const Value: WideString;                      //
  var ErrorCode: WideString                     //
  ): Integer;                                   //

const
	cmd = '255_config_Set_PluDiscountName';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_StlDiscountName //
  (myFP: TCFD_DUDE;                             //
  const Name: WideString;                       //
  const Index: WideString;                      //
  const Value: WideString;                      //
  var ErrorCode: WideString                     //
  ): Integer;                                   //

const
	cmd = '255_config_Set_StlDiscountName';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_ServMessage //
  (myFP: TCFD_DUDE;                         //
  const Name: WideString;                   //
  const Index: WideString;                  //
  const Value: WideString;                  //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '255_config_Set_ServMessage';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_ServiceDate //
  (myFP: TCFD_DUDE;                         //
  const Name: WideString;                   //
  const Index: WideString;                  //
  const Value: WideString;                  //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '255_config_Set_ServiceDate';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_LanMAC //
  (myFP: TCFD_DUDE;                    //
  const Name: WideString;              //
  const Index: WideString;             //
  const Value: WideString;             //
  var ErrorCode: WideString            //
  ): Integer;                          //

const
	cmd = '255_config_Set_LanMAC';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_DHCPenable //
  (myFP: TCFD_DUDE;                        //
  const Name: WideString;                  //
  const Index: WideString;                 //
  const Value: WideString;                 //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '255_config_Set_DHCPenable';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_LAN_IP //
  (myFP: TCFD_DUDE;                    //
  const Name: WideString;              //
  const Index: WideString;             //
  const Value: WideString;             //
  var ErrorCode: WideString            //
  ): Integer;                          //

const
	cmd = '255_config_Set_LAN_IP';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_LAN_NetMask //
  (myFP: TCFD_DUDE;                         //
  const Name: WideString;                   //
  const Index: WideString;                  //
  const Value: WideString;                  //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '255_config_Set_LAN_NetMask';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_LAN_Gateway //
  (myFP: TCFD_DUDE;                         //
  const Name: WideString;                   //
  const Index: WideString;                  //
  const Value: WideString;                  //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '255_config_Set_LAN_Gateway';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_LAN_PriDNS //
  (myFP: TCFD_DUDE;                        //
  const Name: WideString;                  //
  const Index: WideString;                 //
  const Value: WideString;                 //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '255_config_Set_LAN_PriDNS';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_255_config_Set_LAN_SecDNS //
  (myFP: TCFD_DUDE;                        //
  const Name: WideString;                  //
  const Index: WideString;                 //
  const Value: WideString;                 //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '255_config_Set_LAN_SecDNS';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Name', Name) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Index', Index) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_080_other_VoiceSignal //
  (myFP: TCFD_DUDE;                    //
  const Hz: WideString;                //
  const mSec: WideString;              //
  var ErrorCode: WideString            //
  ): Integer;                          //

const
	cmd = '080_other_VoiceSignal';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Hz', Hz) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'mSec', mSec) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_127_other_Stamp_Operations //
  (myFP: TCFD_DUDE;                         //
  const OperationType: WideString;          //
  const StampName: WideString;              //
  var ErrorCode: WideString                 //
  ): Integer;                               //

const
	cmd = '127_other_Stamp_Operations';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'OperationType', OperationType) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'StampName', StampName) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_149_other_Switching_Modes //
  (myFP: TCFD_DUDE;                        //
  const Mode: WideString;                  //
  var ErrorCode: WideString;               //
  var CurrentMode: WideString              //
  ): Integer;                              //

const
	cmd = '149_other_Switching_Modes';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Mode', Mode) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'CurrentMode', CurrentMode);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_072_service_Fiscalization //
  (myFP: TCFD_DUDE;                        //
  const FMNumber: WideString;              //
  const TAXNumber: WideString;             //
  const VATregistered: WideString;         //
  var ErrorCode: WideString                //
  ): Integer;                              //

const
	cmd = '072_service_Fiscalization';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'FMNumber', FMNumber) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'TAXnumber', TAXNumber) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'VATregistered', VATregistered) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_083_service_Set_VATRates //
  (myFP: TCFD_DUDE;                       //
  const TaxA: WideString;                 //
  const TaxB: WideString;                 //
  const TaxC: WideString;                 //
  const TaxD: WideString;                 //
  const TaxE: WideString;                 //
  var ErrorCode: WideString;              //
  var RemainingChanges: WideString        //
  ): Integer;                             //

const
	cmd = '083_service_Set_VATRates';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'TaxA', TaxA) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'TaxB', TaxB) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'TaxC', TaxC) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'TaxD', TaxD) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'TaxE', TaxE) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'RemainingChanges', RemainingChanges);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_089_service_FiscalMemoryTest //
  (myFP: TCFD_DUDE;                           //
  const Write: WideString;                    //
  var ErrorCode: WideString;                  //
  var Records: WideString                     //
  ): Integer;                                 //

const
	cmd = '089_service_FiscalMemoryTest';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Write', Write) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'Records', Records);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_091_service_Set_SerialNumber //
  (myFP: TCFD_DUDE;                           //
  const SerialNumber: WideString;             //
  var ErrorCode: WideString;                  //
  var Country: WideString                     //
  ): Integer;                                 //

const
	cmd = '091_service_Set_SerialNumber';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'SerialNumber', SerialNumber) <> 0 then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'Country', Country);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_101_service_Set_OperatorPassword_Jumper //
  (myFP: TCFD_DUDE;                                      //
  const OperatorCode: WideString;                        //
  const NewPassword: WideString;                         //
  var ErrorCode: WideString                              //
  ): Integer;                                            //

const
	cmd = '101_service_Set_OperatorPassword_Jumper';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'OperatorCode', OperatorCode) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'NewPassword', NewPassword) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_116_service_Get_FiscalMemory //
  (myFP: TCFD_DUDE;                           //
  const Operation: WideString;                //
  const Address: WideString;                  //
  const nBytes: WideString;                   //
  var ErrorCode: WideString;                  //
  var Data: WideString                        //
  ): Integer;                                 //

const
	cmd = '116_service_Get_FiscalMemory';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Operation', Operation) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'Address', Address) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'nBytes', nBytes) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			if myFP.execute_Command_ByName(cmd) <> 0 then Exit;
			myFP.get_OutputParam_ByName(cmd, 'Data', Data);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_253_service_Operations //
  (myFP: TCFD_DUDE;                     //
  const Option: WideString;             //
  const Value: WideString;              //
  var ErrorCode: WideString             //
  ): Integer;                           //

const
	cmd = '253_service_Operations';

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
			if myFP.set_InputParam_ByName(cmd, 'Value', Value) <> 0 then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);
	end;
end;

function execute_253_service_Set_Password //
  (myFP: TCFD_DUDE;                       //
  const Option: WideString;               //
  const OldPasw: WideString;              //
  const NewPasw: WideString;              //
  var ErrorCode: WideString               //
  ): Integer;                             //

const
	cmd = '253_service_Set_Password';

	function set_Input: Boolean;
	begin
		Result := False;
		if myFP.set_InputParam_ByName(cmd, 'Option', Option) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'OldPasw', OldPasw) <> 0 then Exit;
		if myFP.set_InputParam_ByName(cmd, 'NewPasw ', NewPasw) <> 0 then Exit;
		Result := True;
	end;

begin
	Result := -1;
	ErrorCode := '-1';
	if not Assigned(myFP) then Exit;
	try
		try
			if not myFP.connected_ToDevice then Exit;
			if not set_Input then Exit;
			myFP.execute_Command_ByName(cmd);
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		Result := myFP.lastError_Code;
		myFP.get_OutputParam_ByName(cmd, 'ErrorCode', ErrorCode);

	end;

end;

end.
