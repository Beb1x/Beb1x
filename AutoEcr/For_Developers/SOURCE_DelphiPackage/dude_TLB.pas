unit dude_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 19.08.2018 г. 08:56:40 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\SOFT_SVN\PROJECTS\Romania\COM_SERVER\BIN\dude.exe (1)
// LIBID: {DD2D4A60-D3FE-491B-B297-D8DC2429730E}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  dudeMajorVersion = 1;
  dudeMinorVersion = 0;

  LIBID_dude: TGUID = '{DD2D4A60-D3FE-491B-B297-D8DC2429730E}';

  IID_ICFD_DUDE: TGUID = '{C504A4F5-D1F2-4A48-AFDC-BA65F8E36278}';
  DIID_ICFD_DUDEEvents: TGUID = '{67464AFE-6263-4D0B-AB8E-32F799CA517C}';
  CLASS_CFD_DUDE: TGUID = '{A5A6DCE0-449A-43FC-B31C-3CE5442B1CCF}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TDudeLanguage
type
  TDudeLanguage = TOleEnum;
const
  English = $00000000;
  Romanian = $00000001;

// Constants for enum TTransportProtocol
type
  TTransportProtocol = TOleEnum;
const
  ctc_RS232 = $00000001;
  ctc_TCPIP = $00000002;

// Constants for enum TDeviceType
type
  TDeviceType = TOleEnum;
const
  dt_FiscalPrinter = $00000000;
  dt_ECR = $00000001;

// Constants for enum TDeviceModel
type
  TDeviceModel = TOleEnum;
const
  mc_Unknown = $00000000;
  mc_DP_05 = $00000001;
  mc_DP_25 = $00000002;
  mc_DP_35 = $00000003;
  mc_DP_150 = $00000004;
  mc_WP_50 = $00000005;
  mc_WP_500 = $00000006;
  mc_FP_650 = $00000007;
  mc_FP_700 = $00000008;
  mc_FP_800 = $00000009;
  mc_FMP_350 = $0000000A;
  mc_FP_650_V = $0000000B;
  mc_FP_700_V = $0000000C;
  mc_FP_800_V = $0000000D;
  mc_FP_2000 = $0000000E;

// Constants for enum TScriptType
type
  TScriptType = TOleEnum;
const
  DS = $00000000;
  FPrint = $00000001;

// Constants for enum TCodeType
type
  TCodeType = TOleEnum;
const
  Delphi = $00000000;
  CSharp = $00000001;

// Constants for enum TDocumentTypes
type
  TDocumentTypes = TOleEnum;
const
  ejdt_All = $00000000;
  ejdt_FiscalReceipts = $00000001;
  ejdt_DailyZReports = $00000002;
  ejdt_InvoiceReceipts = $00000003;
  ejdt_NonFiscalReceipts = $00000004;
  ejdt_FullEJContent = $00000005;
  ejdt_LogFile = $00000006;
  ejdt_CashInOutReceipts = $00000009;
  ejdt_CurrencyBuying = $0000000A;
  ejdt_CurrencySelling = $0000000B;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICFD_DUDE = interface;
  ICFD_DUDEDisp = dispinterface;
  ICFD_DUDEEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CFD_DUDE = ICFD_DUDE;


// *********************************************************************//
// Interface: ICFD_DUDE
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C504A4F5-D1F2-4A48-AFDC-BA65F8E36278}
// *********************************************************************//
  ICFD_DUDE = interface(IDispatch)
    ['{C504A4F5-D1F2-4A48-AFDC-BA65F8E36278}']
    function Get_eSBit_GeneralError_Sharp: WordBool; safecall;
    function Get_eSBit_PrintingMechanism: WordBool; safecall;
    function Get_eSBit_ClockIsNotSynchronized: WordBool; safecall;
    function Get_eSBit_CommandCodeIsInvalid: WordBool; safecall;
    function Get_eSBit_SyntaxError: WordBool; safecall;
    function Get_eSBit_CommandNotPermitted: WordBool; safecall;
    function Get_eSBit_Overflow: WordBool; safecall;
    function Get_eSBit_EJIsFull: WordBool; safecall;
    function Get_eSBit_EndOfPaper: WordBool; safecall;
    function Get_eSBit_FM_NotFound: WordBool; safecall;
    function Get_eSBit_FM_NotAccess: WordBool; safecall;
    function Get_eSBit_FM_Full: WordBool; safecall;
    function Get_eSBit_GeneralError_Star: WordBool; safecall;
    function Get_iSBit_Cover_IsOpen: WordBool; safecall;
    function Get_iSBit_No_ClientDisplay: WordBool; safecall;
    function Get_iSBit_24h_AfterDayOpening: WordBool; safecall;
    function Get_iSBit_Receipt_Nonfiscal: WordBool; safecall;
    function Get_iSBit_EJ_NearlyFull: WordBool; safecall;
    function Get_iSBit_Receipt_Fiscal: WordBool; safecall;
    function Get_iSBit_Near_PaperEnd: WordBool; safecall;
    function Get_iSBit_LessThan_60_Reports: WordBool; safecall;
    function Get_iSBit_Number_SFM_Set: WordBool; safecall;
    function Get_iSBit_Number_Tax_Set: WordBool; safecall;
    function Get_iSBit_VAT_Set: WordBool; safecall;
    function Get_iSBit_Device_Fiscalized: WordBool; safecall;
    function Get_iSBit_FM_Formated: WordBool; safecall;
    function Get_language: TDudeLanguage; safecall;
    procedure Set_language(Value: TDudeLanguage); safecall;
    function Get_connected_ToDevice: WordBool; safecall;
    function Get_connected_ToLAN: WordBool; safecall;
    function Get_lastError_Code: Integer; safecall;
    function Get_lastError_Message: WideString; safecall;
    function Get_codePage: LongWord; safecall;
    function Get_support_RS232: WordBool; safecall;
    function Get_support_TCPIP: WordBool; safecall;
    function Get_rs232_ComPort: Integer; safecall;
    function Get_rs232_BaudRate: Integer; safecall;
    function Get_tcpip_Address: WideString; safecall;
    function Get_tcpip_Port: Integer; safecall;
    function Get_trackingMode: WordBool; safecall;
    function Get_trackingMode_Path: WideString; safecall;
    function Get_trackingMode_FileName: WideString; safecall;
    function Get_trackingMode_RowLimit: Integer; safecall;
    function Get_protocol_TransportType: TTransportProtocol; safecall;
    function set_TransportType(Value: TTransportProtocol): Integer; safecall;
    function set_TrackingMode_RowLimit(Value: Integer): Integer; safecall;
    function set_TrackingMode_FileName(const Value: WideString): Integer; safecall;
    function set_TrackingMode_Path(const Value: WideString): Integer; safecall;
    function set_TrackingMode(Value: WordBool): Integer; safecall;
    function set_TCPIP(const IPAddress: WideString; Port: Word): Integer; safecall;
    function set_RS232(ComPort: Integer; BaudRate: Integer): Integer; safecall;
    function get_ErrorMessageByCode(Value: Integer): WideString; safecall;
    function get_SBit_State(byteIndex: Byte; bitIndex: Byte): WordBool; safecall;
    function get_SBit_Description(byteIndex: Byte; bitIndex: Byte): WideString; safecall;
    function get_SBit_ErrorChecking(byteIndex: Byte; bitIndex: Byte): WordBool; safecall;
    function set_SBit_ErrorChecking(byteIndex: Byte; bitIndex: Byte; Value: WordBool): WordBool; safecall;
    function Get_device_Type: TDeviceType; safecall;
    function Get_device_Number_Serial: WideString; safecall;
    function Get_device_Number_FMemory: WideString; safecall;
    function Get_device_Distributor: WideString; safecall;
    function Get_device_Firmware_Revision: WideString; safecall;
    function Get_device_Firmware_Date: WideString; safecall;
    function Get_device_Firmware_CheckSum: WideString; safecall;
    function Get_device_Model: TDeviceModel; safecall;
    function Get_device_Model_Name: WideString; safecall;
    function open_Connection: Integer; safecall;
    function close_Connection: Integer; safecall;
    function execute_Command(Command: Integer; const input_Value: WideString; 
                             var output_Value: WideString): Integer; safecall;
    function execute_Script_V1(scriptType: TScriptType; const input_Value: WideString): Integer; safecall;
    function Get_last_AnswerList: WideString; safecall;
    function Get_download_Path: WideString; safecall;
    function set_Download_Path(const Value: WideString): Integer; safecall;
    function get_SystemInfo(const SearchValue: WideString): WideString; safecall;
    function get_SystemInfoSearchList: WideString; safecall;
    function download_ANAF_ZRange: Integer; safecall;
    function Get_zRange_StartValue: Integer; safecall;
    procedure Set_zRange_StartValue(Value: Integer); safecall;
    function Get_zRange_EndValue: Integer; safecall;
    procedure Set_zRange_EndValue(Value: Integer); safecall;
    function Get_DateRange_StartValue: WideString; safecall;
    procedure Set_DateRange_StartValue(const Value: WideString); safecall;
    function Get_DateRange_EndValue: WideString; safecall;
    procedure Set_DateRange_EndValue(const Value: WideString); safecall;
    function download_ANAF_DTRange: Integer; safecall;
    procedure cancel_Loop; safecall;
    function Get_rs232_ReadIntervalTimeout: LongWord; safecall;
    function Get_rs232_ReadTotalTimeoutMultiplier: LongWord; safecall;
    function Get_rs232_ReadTotalTimeoutConstant: LongWord; safecall;
    function Get_rs232_WriteTotalTimeoutMultiplier: LongWord; safecall;
    function Get_rs232_WriteTotalTimeoutConstant: LongWord; safecall;
    function set_RS232_Timeouts(ReadIntervalTimeout: LongWord; 
                                ReadTotalTimeoutMultiplier: LongWord; 
                                ReadTotalTimeoutConstant: LongWord; 
                                WriteTotalTimeoutMultiplier: LongWord; 
                                WriteTotalTimeoutConstant: LongWord): Integer; safecall;
    function Get_rs232_OnOpen_Set_DCB: WordBool; safecall;
    procedure Set_rs232_OnOpen_Set_DCB(Value: WordBool); safecall;
    function Get_rs232_OnOpen_Set_DTR_ToFalse: WordBool; safecall;
    procedure Set_rs232_OnOpen_Set_DTR_ToFalse(Value: WordBool); safecall;
    function Get_rs232_OnOpen_Set_RTS_ToFalse: WordBool; safecall;
    procedure Set_rs232_OnOpen_Set_RTS_ToFalse(Value: WordBool); safecall;
    function Get_exit_ByReadTimeOutIsOn: WordBool; safecall;
    procedure Set_exit_ByReadTimeOutIsOn(Value: WordBool); safecall;
    function Get_read_TimeOutValue: Word; safecall;
    procedure Set_read_TimeOutValue(Value: Word); safecall;
    function rs232_COMPortList: WideString; safecall;
    function upload_Logo(const FileName: WideString): Integer; safecall;
    function upload_Stamp(const FileName: WideString; const StampName: WideString): Integer; safecall;
    function upload_Certificate(const FileName: WideString): Integer; safecall;
    function upload_Profile(const FileName: WideString): Integer; safecall;
    function get_ComandsList(Index: Integer): WideString; safecall;
    function get_CommandInfo(const command_Name: WideString; var Value: WideString): Integer; safecall;
    function set_InputParam_ByIndex(const command_Name: WideString; param_Index: Integer; 
                                    const param_Value: WideString): Integer; safecall;
    function set_InputParam_ByName(const command_Name: WideString; const param_Name: WideString; 
                                   const param_Value: WideString): Integer; safecall;
    function execute_Command_ByName(const command_Name: WideString): Integer; safecall;
    function get_InputParams_Count(const command_Name: WideString; var Value: Integer): Integer; safecall;
    function get_InputParams_Names(const command_Name: WideString; var Value: WideString): Integer; safecall;
    function get_OutputParams_Count(const command_Name: WideString; var Value: Integer): Integer; safecall;
    function get_OutputParams_Names(const command_Name: WideString; var Value: WideString): Integer; safecall;
    function get_OutputParam_ByIndex(const command_Name: WideString; param_Index: Integer; 
                                     var param_Value: WideString): Integer; safecall;
    function get_OutputParam_ByName(const command_Name: WideString; const param_Name: WideString; 
                                    var param_Value: WideString): Integer; safecall;
    function generate_SourceCode(const command_Name: WideString; code_Type: TCodeType): WideString; safecall;
    function set_ScriptEvents(active_OnBeforeScriptExecute: WordBool; 
                              active_OnScriptRowExecute: WordBool; 
                              active_OnAfterScriptExecute: WordBool; save_ToSettings: WordBool): Integer; safecall;
    function Get_active_OnBeforeScriptExecute: WordBool; safecall;
    function Get_active_OnScriptRowExecute: WordBool; safecall;
    function Get_active_OnAfterScriptExecute: WordBool; safecall;
    function set_FirstProgressEvents(active_OnFirstProgress_Init: WordBool; 
                                     active_OnFirstProgress_Loop: WordBool; 
                                     active_OnFirstProgress_Complete: WordBool; 
                                     save_ToSettings: WordBool): Integer; safecall;
    function Get_active_OnFirstProgress_Init: WordBool; safecall;
    function Get_active_OnFirstProgress_Loop: WordBool; safecall;
    function Get_active_OnFirstProgress_Complete: WordBool; safecall;
    function set_SecondProgressEvents(active_OnSecondProgress_Init: WordBool; 
                                      active_OnSecondProgress_Loop: WordBool; 
                                      active_OnSecondProgress_Complete: WordBool; 
                                      save_ToSettings: WordBool): Integer; safecall;
    function Get_active_OnSecondProgress_Init: WordBool; safecall;
    function Get_active_OnSecondProgress_Loop: WordBool; safecall;
    function Get_active_OnSecondProgress_Complete: WordBool; safecall;
    function set_CommunicationEvents(active_OnSendCommand: WordBool; active_OnWait: WordBool; 
                                     active_OnReceiveAnswer: WordBool; 
                                     active_OnStatusChange: WordBool; active_OnError: WordBool; 
                                     save_ToSettings: WordBool): Integer; safecall;
    function Get_active_OnSendCommand: WordBool; safecall;
    function Get_active_OnWait: WordBool; safecall;
    function Get_active_OnReceiveAnswer: WordBool; safecall;
    function Get_active_OnStatusChange: WordBool; safecall;
    function Get_active_OnError: WordBool; safecall;
    function Get_DocumentNumber_StartValue: Integer; safecall;
    procedure Set_DocumentNumber_StartValue(Value: Integer); safecall;
    function Get_DocumentNumber_EndValue: Integer; safecall;
    procedure Set_DocumentNumber_EndValue(Value: Integer); safecall;
    function print_Documents_ByNumbersRange(var printedDocuments: Integer): Integer; safecall;
    function print_Documents_ByDateRange(var printedDocuments: Integer): Integer; safecall;
    function get_Documents_ByNumbersRange(var receivedDocuments: Integer): Integer; safecall;
    function Get_JEDocumentType: TDocumentTypes; safecall;
    procedure Set_JEDocumentType(Value: TDocumentTypes); safecall;
    function get_Documents_ByDateRange(var receivedDocuments: Integer): Integer; safecall;
    function Get_ExchangePrinter: WordBool; safecall;
    procedure DestroyInstance; safecall;
    function Get_active_OnAfterCloseConnection: WordBool; safecall;
    function Get_active_OnAfterOpenConnection: WordBool; safecall;
    function Get_register_ActiveObject_OnStart: WordBool; safecall;
    function Get_active_OnAfterSettingsChange: WordBool; safecall;
    function Get_save_SettingsAfterOpenConnection: WordBool; safecall;
    function set_BehaviorOnOpenClose(register_ActiveObjectOnStart: WordBool; 
                                     save_Settings_AfterOpenConnection: WordBool; 
                                     active_EventOnAfterOpenConnection: WordBool; 
                                     active_EventOnAfterCloseConnection: WordBool; 
                                     active_EventOnAfterSettingsChange: WordBool): Integer; safecall;
    function Get_checkDeviceStatusOnCheckConnection: WordBool; safecall;
    procedure Set_checkDeviceStatusOnCheckConnection(Value: WordBool); safecall;
    function tq_Add_Transaction(var HeaderID: WideString): Integer; safecall;
    function tq_Add_TrScriptItem(const HeaderID: WideString; var ScriptID: WideString): Integer; safecall;
    function tq_Delete_TrByHeader(const HeaderID: WideString): Integer; safecall;
    function tq_Delete_TrByIndex(Index: Integer): Integer; safecall;
    function tq_Delete_OldTransactions: Integer; safecall;
    function tq_Set_TrScriptItem(const HeaderID: WideString; const ScriptItemID: WideString; 
                                 const VariableName: WideString; const VariableValue: WideString): Integer; safecall;
    function tq_Clear_TrScript(const HeaderID: WideString): Integer; safecall;
    function tq_Execute_Transaction(const HeaderID: WideString): Integer; safecall;
    function tq_Execute_AllTransactions(OrderType: Integer): Integer; safecall;
    function tq_Get_Array_HeadersID(var HeadersIDArray: WideString): Integer; safecall;
    function tq_Get_Array_ScriptsID(const HeaderID: WideString; var ScriptsIDArray: WideString): Integer; safecall;
    function tq_Get_Array_ErrorsID(var ErrorsIDArray: WideString): Integer; safecall;
    function tq_Get_HeaderItem_Value(const HeaderID: WideString; const VariableName: WideString; 
                                     var VariableValue: WideString): Integer; safecall;
    function tq_Get_ScriptItem_Value(const HeaderID: WideString; const ScriptItemID: WideString; 
                                     const VariableName: WideString; var VariableValue: WideString): Integer; safecall;
    function tq_Get_ErrorsItem_Value(const ErrorsID: WideString; const VariableName: WideString; 
                                     var VariableValue: WideString): Integer; safecall;
    function tq_Get_LastErrorItem_ByHeaderID(const HeaderID: WideString; 
                                             const VariableName: WideString; 
                                             var VariableValue: WideString): Integer; safecall;
    function tq_Save_LastErrors(const FileName: WideString): Integer; safecall;
    property eSBit_GeneralError_Sharp: WordBool read Get_eSBit_GeneralError_Sharp;
    property eSBit_PrintingMechanism: WordBool read Get_eSBit_PrintingMechanism;
    property eSBit_ClockIsNotSynchronized: WordBool read Get_eSBit_ClockIsNotSynchronized;
    property eSBit_CommandCodeIsInvalid: WordBool read Get_eSBit_CommandCodeIsInvalid;
    property eSBit_SyntaxError: WordBool read Get_eSBit_SyntaxError;
    property eSBit_CommandNotPermitted: WordBool read Get_eSBit_CommandNotPermitted;
    property eSBit_Overflow: WordBool read Get_eSBit_Overflow;
    property eSBit_EJIsFull: WordBool read Get_eSBit_EJIsFull;
    property eSBit_EndOfPaper: WordBool read Get_eSBit_EndOfPaper;
    property eSBit_FM_NotFound: WordBool read Get_eSBit_FM_NotFound;
    property eSBit_FM_NotAccess: WordBool read Get_eSBit_FM_NotAccess;
    property eSBit_FM_Full: WordBool read Get_eSBit_FM_Full;
    property eSBit_GeneralError_Star: WordBool read Get_eSBit_GeneralError_Star;
    property iSBit_Cover_IsOpen: WordBool read Get_iSBit_Cover_IsOpen;
    property iSBit_No_ClientDisplay: WordBool read Get_iSBit_No_ClientDisplay;
    property iSBit_24h_AfterDayOpening: WordBool read Get_iSBit_24h_AfterDayOpening;
    property iSBit_Receipt_Nonfiscal: WordBool read Get_iSBit_Receipt_Nonfiscal;
    property iSBit_EJ_NearlyFull: WordBool read Get_iSBit_EJ_NearlyFull;
    property iSBit_Receipt_Fiscal: WordBool read Get_iSBit_Receipt_Fiscal;
    property iSBit_Near_PaperEnd: WordBool read Get_iSBit_Near_PaperEnd;
    property iSBit_LessThan_60_Reports: WordBool read Get_iSBit_LessThan_60_Reports;
    property iSBit_Number_SFM_Set: WordBool read Get_iSBit_Number_SFM_Set;
    property iSBit_Number_Tax_Set: WordBool read Get_iSBit_Number_Tax_Set;
    property iSBit_VAT_Set: WordBool read Get_iSBit_VAT_Set;
    property iSBit_Device_Fiscalized: WordBool read Get_iSBit_Device_Fiscalized;
    property iSBit_FM_Formated: WordBool read Get_iSBit_FM_Formated;
    property language: TDudeLanguage read Get_language write Set_language;
    property connected_ToDevice: WordBool read Get_connected_ToDevice;
    property connected_ToLAN: WordBool read Get_connected_ToLAN;
    property lastError_Code: Integer read Get_lastError_Code;
    property lastError_Message: WideString read Get_lastError_Message;
    property codePage: LongWord read Get_codePage;
    property support_RS232: WordBool read Get_support_RS232;
    property support_TCPIP: WordBool read Get_support_TCPIP;
    property rs232_ComPort: Integer read Get_rs232_ComPort;
    property rs232_BaudRate: Integer read Get_rs232_BaudRate;
    property tcpip_Address: WideString read Get_tcpip_Address;
    property tcpip_Port: Integer read Get_tcpip_Port;
    property trackingMode: WordBool read Get_trackingMode;
    property trackingMode_Path: WideString read Get_trackingMode_Path;
    property trackingMode_FileName: WideString read Get_trackingMode_FileName;
    property trackingMode_RowLimit: Integer read Get_trackingMode_RowLimit;
    property protocol_TransportType: TTransportProtocol read Get_protocol_TransportType;
    property device_Type: TDeviceType read Get_device_Type;
    property device_Number_Serial: WideString read Get_device_Number_Serial;
    property device_Number_FMemory: WideString read Get_device_Number_FMemory;
    property device_Distributor: WideString read Get_device_Distributor;
    property device_Firmware_Revision: WideString read Get_device_Firmware_Revision;
    property device_Firmware_Date: WideString read Get_device_Firmware_Date;
    property device_Firmware_CheckSum: WideString read Get_device_Firmware_CheckSum;
    property device_Model: TDeviceModel read Get_device_Model;
    property device_Model_Name: WideString read Get_device_Model_Name;
    property last_AnswerList: WideString read Get_last_AnswerList;
    property download_Path: WideString read Get_download_Path;
    property zRange_StartValue: Integer read Get_zRange_StartValue write Set_zRange_StartValue;
    property zRange_EndValue: Integer read Get_zRange_EndValue write Set_zRange_EndValue;
    property DateRange_StartValue: WideString read Get_DateRange_StartValue write Set_DateRange_StartValue;
    property DateRange_EndValue: WideString read Get_DateRange_EndValue write Set_DateRange_EndValue;
    property rs232_ReadIntervalTimeout: LongWord read Get_rs232_ReadIntervalTimeout;
    property rs232_ReadTotalTimeoutMultiplier: LongWord read Get_rs232_ReadTotalTimeoutMultiplier;
    property rs232_ReadTotalTimeoutConstant: LongWord read Get_rs232_ReadTotalTimeoutConstant;
    property rs232_WriteTotalTimeoutMultiplier: LongWord read Get_rs232_WriteTotalTimeoutMultiplier;
    property rs232_WriteTotalTimeoutConstant: LongWord read Get_rs232_WriteTotalTimeoutConstant;
    property rs232_OnOpen_Set_DCB: WordBool read Get_rs232_OnOpen_Set_DCB write Set_rs232_OnOpen_Set_DCB;
    property rs232_OnOpen_Set_DTR_ToFalse: WordBool read Get_rs232_OnOpen_Set_DTR_ToFalse write Set_rs232_OnOpen_Set_DTR_ToFalse;
    property rs232_OnOpen_Set_RTS_ToFalse: WordBool read Get_rs232_OnOpen_Set_RTS_ToFalse write Set_rs232_OnOpen_Set_RTS_ToFalse;
    property exit_ByReadTimeOutIsOn: WordBool read Get_exit_ByReadTimeOutIsOn write Set_exit_ByReadTimeOutIsOn;
    property read_TimeOutValue: Word read Get_read_TimeOutValue write Set_read_TimeOutValue;
    property active_OnBeforeScriptExecute: WordBool read Get_active_OnBeforeScriptExecute;
    property active_OnScriptRowExecute: WordBool read Get_active_OnScriptRowExecute;
    property active_OnAfterScriptExecute: WordBool read Get_active_OnAfterScriptExecute;
    property active_OnFirstProgress_Init: WordBool read Get_active_OnFirstProgress_Init;
    property active_OnFirstProgress_Loop: WordBool read Get_active_OnFirstProgress_Loop;
    property active_OnFirstProgress_Complete: WordBool read Get_active_OnFirstProgress_Complete;
    property active_OnSecondProgress_Init: WordBool read Get_active_OnSecondProgress_Init;
    property active_OnSecondProgress_Loop: WordBool read Get_active_OnSecondProgress_Loop;
    property active_OnSecondProgress_Complete: WordBool read Get_active_OnSecondProgress_Complete;
    property active_OnSendCommand: WordBool read Get_active_OnSendCommand;
    property active_OnWait: WordBool read Get_active_OnWait;
    property active_OnReceiveAnswer: WordBool read Get_active_OnReceiveAnswer;
    property active_OnStatusChange: WordBool read Get_active_OnStatusChange;
    property active_OnError: WordBool read Get_active_OnError;
    property DocumentNumber_StartValue: Integer read Get_DocumentNumber_StartValue write Set_DocumentNumber_StartValue;
    property DocumentNumber_EndValue: Integer read Get_DocumentNumber_EndValue write Set_DocumentNumber_EndValue;
    property JEDocumentType: TDocumentTypes read Get_JEDocumentType write Set_JEDocumentType;
    property ExchangePrinter: WordBool read Get_ExchangePrinter;
    property active_OnAfterCloseConnection: WordBool read Get_active_OnAfterCloseConnection;
    property active_OnAfterOpenConnection: WordBool read Get_active_OnAfterOpenConnection;
    property register_ActiveObject_OnStart: WordBool read Get_register_ActiveObject_OnStart;
    property active_OnAfterSettingsChange: WordBool read Get_active_OnAfterSettingsChange;
    property save_SettingsAfterOpenConnection: WordBool read Get_save_SettingsAfterOpenConnection;
    property checkDeviceStatusOnCheckConnection: WordBool read Get_checkDeviceStatusOnCheckConnection write Set_checkDeviceStatusOnCheckConnection;
  end;

// *********************************************************************//
// DispIntf:  ICFD_DUDEDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C504A4F5-D1F2-4A48-AFDC-BA65F8E36278}
// *********************************************************************//
  ICFD_DUDEDisp = dispinterface
    ['{C504A4F5-D1F2-4A48-AFDC-BA65F8E36278}']
    property eSBit_GeneralError_Sharp: WordBool readonly dispid 201;
    property eSBit_PrintingMechanism: WordBool readonly dispid 202;
    property eSBit_ClockIsNotSynchronized: WordBool readonly dispid 203;
    property eSBit_CommandCodeIsInvalid: WordBool readonly dispid 204;
    property eSBit_SyntaxError: WordBool readonly dispid 205;
    property eSBit_CommandNotPermitted: WordBool readonly dispid 206;
    property eSBit_Overflow: WordBool readonly dispid 207;
    property eSBit_EJIsFull: WordBool readonly dispid 208;
    property eSBit_EndOfPaper: WordBool readonly dispid 209;
    property eSBit_FM_NotFound: WordBool readonly dispid 210;
    property eSBit_FM_NotAccess: WordBool readonly dispid 211;
    property eSBit_FM_Full: WordBool readonly dispid 212;
    property eSBit_GeneralError_Star: WordBool readonly dispid 213;
    property iSBit_Cover_IsOpen: WordBool readonly dispid 214;
    property iSBit_No_ClientDisplay: WordBool readonly dispid 215;
    property iSBit_24h_AfterDayOpening: WordBool readonly dispid 216;
    property iSBit_Receipt_Nonfiscal: WordBool readonly dispid 217;
    property iSBit_EJ_NearlyFull: WordBool readonly dispid 218;
    property iSBit_Receipt_Fiscal: WordBool readonly dispid 219;
    property iSBit_Near_PaperEnd: WordBool readonly dispid 220;
    property iSBit_LessThan_60_Reports: WordBool readonly dispid 221;
    property iSBit_Number_SFM_Set: WordBool readonly dispid 222;
    property iSBit_Number_Tax_Set: WordBool readonly dispid 223;
    property iSBit_VAT_Set: WordBool readonly dispid 224;
    property iSBit_Device_Fiscalized: WordBool readonly dispid 225;
    property iSBit_FM_Formated: WordBool readonly dispid 226;
    property language: TDudeLanguage dispid 229;
    property connected_ToDevice: WordBool readonly dispid 230;
    property connected_ToLAN: WordBool readonly dispid 231;
    property lastError_Code: Integer readonly dispid 232;
    property lastError_Message: WideString readonly dispid 233;
    property codePage: LongWord readonly dispid 234;
    property support_RS232: WordBool readonly dispid 238;
    property support_TCPIP: WordBool readonly dispid 239;
    property rs232_ComPort: Integer readonly dispid 240;
    property rs232_BaudRate: Integer readonly dispid 241;
    property tcpip_Address: WideString readonly dispid 242;
    property tcpip_Port: Integer readonly dispid 243;
    property trackingMode: WordBool readonly dispid 237;
    property trackingMode_Path: WideString readonly dispid 244;
    property trackingMode_FileName: WideString readonly dispid 245;
    property trackingMode_RowLimit: Integer readonly dispid 246;
    property protocol_TransportType: TTransportProtocol readonly dispid 249;
    function set_TransportType(Value: TTransportProtocol): Integer; dispid 228;
    function set_TrackingMode_RowLimit(Value: Integer): Integer; dispid 235;
    function set_TrackingMode_FileName(const Value: WideString): Integer; dispid 250;
    function set_TrackingMode_Path(const Value: WideString): Integer; dispid 251;
    function set_TrackingMode(Value: WordBool): Integer; dispid 252;
    function set_TCPIP(const IPAddress: WideString; Port: Word): Integer; dispid 253;
    function set_RS232(ComPort: Integer; BaudRate: Integer): Integer; dispid 254;
    function get_ErrorMessageByCode(Value: Integer): WideString; dispid 256;
    function get_SBit_State(byteIndex: Byte; bitIndex: Byte): WordBool; dispid 257;
    function get_SBit_Description(byteIndex: Byte; bitIndex: Byte): WideString; dispid 258;
    function get_SBit_ErrorChecking(byteIndex: Byte; bitIndex: Byte): WordBool; dispid 259;
    function set_SBit_ErrorChecking(byteIndex: Byte; bitIndex: Byte; Value: WordBool): WordBool; dispid 260;
    property device_Type: TDeviceType readonly dispid 227;
    property device_Number_Serial: WideString readonly dispid 262;
    property device_Number_FMemory: WideString readonly dispid 263;
    property device_Distributor: WideString readonly dispid 265;
    property device_Firmware_Revision: WideString readonly dispid 267;
    property device_Firmware_Date: WideString readonly dispid 268;
    property device_Firmware_CheckSum: WideString readonly dispid 269;
    property device_Model: TDeviceModel readonly dispid 236;
    property device_Model_Name: WideString readonly dispid 261;
    function open_Connection: Integer; dispid 272;
    function close_Connection: Integer; dispid 273;
    function execute_Command(Command: Integer; const input_Value: WideString; 
                             var output_Value: WideString): Integer; dispid 274;
    function execute_Script_V1(scriptType: TScriptType; const input_Value: WideString): Integer; dispid 275;
    property last_AnswerList: WideString readonly dispid 276;
    property download_Path: WideString readonly dispid 277;
    function set_Download_Path(const Value: WideString): Integer; dispid 278;
    function get_SystemInfo(const SearchValue: WideString): WideString; dispid 279;
    function get_SystemInfoSearchList: WideString; dispid 280;
    function download_ANAF_ZRange: Integer; dispid 281;
    property zRange_StartValue: Integer dispid 282;
    property zRange_EndValue: Integer dispid 283;
    property DateRange_StartValue: WideString dispid 284;
    property DateRange_EndValue: WideString dispid 285;
    function download_ANAF_DTRange: Integer; dispid 286;
    procedure cancel_Loop; dispid 287;
    property rs232_ReadIntervalTimeout: LongWord readonly dispid 289;
    property rs232_ReadTotalTimeoutMultiplier: LongWord readonly dispid 290;
    property rs232_ReadTotalTimeoutConstant: LongWord readonly dispid 291;
    property rs232_WriteTotalTimeoutMultiplier: LongWord readonly dispid 292;
    property rs232_WriteTotalTimeoutConstant: LongWord readonly dispid 293;
    function set_RS232_Timeouts(ReadIntervalTimeout: LongWord; 
                                ReadTotalTimeoutMultiplier: LongWord; 
                                ReadTotalTimeoutConstant: LongWord; 
                                WriteTotalTimeoutMultiplier: LongWord; 
                                WriteTotalTimeoutConstant: LongWord): Integer; dispid 294;
    property rs232_OnOpen_Set_DCB: WordBool dispid 295;
    property rs232_OnOpen_Set_DTR_ToFalse: WordBool dispid 296;
    property rs232_OnOpen_Set_RTS_ToFalse: WordBool dispid 297;
    property exit_ByReadTimeOutIsOn: WordBool dispid 298;
    property read_TimeOutValue: Word dispid 299;
    function rs232_COMPortList: WideString; dispid 248;
    function upload_Logo(const FileName: WideString): Integer; dispid 300;
    function upload_Stamp(const FileName: WideString; const StampName: WideString): Integer; dispid 301;
    function upload_Certificate(const FileName: WideString): Integer; dispid 302;
    function upload_Profile(const FileName: WideString): Integer; dispid 303;
    function get_ComandsList(Index: Integer): WideString; dispid 304;
    function get_CommandInfo(const command_Name: WideString; var Value: WideString): Integer; dispid 305;
    function set_InputParam_ByIndex(const command_Name: WideString; param_Index: Integer; 
                                    const param_Value: WideString): Integer; dispid 306;
    function set_InputParam_ByName(const command_Name: WideString; const param_Name: WideString; 
                                   const param_Value: WideString): Integer; dispid 307;
    function execute_Command_ByName(const command_Name: WideString): Integer; dispid 308;
    function get_InputParams_Count(const command_Name: WideString; var Value: Integer): Integer; dispid 309;
    function get_InputParams_Names(const command_Name: WideString; var Value: WideString): Integer; dispid 310;
    function get_OutputParams_Count(const command_Name: WideString; var Value: Integer): Integer; dispid 311;
    function get_OutputParams_Names(const command_Name: WideString; var Value: WideString): Integer; dispid 312;
    function get_OutputParam_ByIndex(const command_Name: WideString; param_Index: Integer; 
                                     var param_Value: WideString): Integer; dispid 313;
    function get_OutputParam_ByName(const command_Name: WideString; const param_Name: WideString; 
                                    var param_Value: WideString): Integer; dispid 314;
    function generate_SourceCode(const command_Name: WideString; code_Type: TCodeType): WideString; dispid 315;
    function set_ScriptEvents(active_OnBeforeScriptExecute: WordBool; 
                              active_OnScriptRowExecute: WordBool; 
                              active_OnAfterScriptExecute: WordBool; save_ToSettings: WordBool): Integer; dispid 316;
    property active_OnBeforeScriptExecute: WordBool readonly dispid 317;
    property active_OnScriptRowExecute: WordBool readonly dispid 318;
    property active_OnAfterScriptExecute: WordBool readonly dispid 319;
    function set_FirstProgressEvents(active_OnFirstProgress_Init: WordBool; 
                                     active_OnFirstProgress_Loop: WordBool; 
                                     active_OnFirstProgress_Complete: WordBool; 
                                     save_ToSettings: WordBool): Integer; dispid 320;
    property active_OnFirstProgress_Init: WordBool readonly dispid 321;
    property active_OnFirstProgress_Loop: WordBool readonly dispid 322;
    property active_OnFirstProgress_Complete: WordBool readonly dispid 323;
    function set_SecondProgressEvents(active_OnSecondProgress_Init: WordBool; 
                                      active_OnSecondProgress_Loop: WordBool; 
                                      active_OnSecondProgress_Complete: WordBool; 
                                      save_ToSettings: WordBool): Integer; dispid 324;
    property active_OnSecondProgress_Init: WordBool readonly dispid 325;
    property active_OnSecondProgress_Loop: WordBool readonly dispid 326;
    property active_OnSecondProgress_Complete: WordBool readonly dispid 327;
    function set_CommunicationEvents(active_OnSendCommand: WordBool; active_OnWait: WordBool; 
                                     active_OnReceiveAnswer: WordBool; 
                                     active_OnStatusChange: WordBool; active_OnError: WordBool; 
                                     save_ToSettings: WordBool): Integer; dispid 328;
    property active_OnSendCommand: WordBool readonly dispid 329;
    property active_OnWait: WordBool readonly dispid 330;
    property active_OnReceiveAnswer: WordBool readonly dispid 331;
    property active_OnStatusChange: WordBool readonly dispid 332;
    property active_OnError: WordBool readonly dispid 333;
    property DocumentNumber_StartValue: Integer dispid 247;
    property DocumentNumber_EndValue: Integer dispid 255;
    function print_Documents_ByNumbersRange(var printedDocuments: Integer): Integer; dispid 264;
    function print_Documents_ByDateRange(var printedDocuments: Integer): Integer; dispid 266;
    function get_Documents_ByNumbersRange(var receivedDocuments: Integer): Integer; dispid 334;
    property JEDocumentType: TDocumentTypes dispid 288;
    function get_Documents_ByDateRange(var receivedDocuments: Integer): Integer; dispid 270;
    property ExchangePrinter: WordBool readonly dispid 271;
    procedure DestroyInstance; dispid 335;
    property active_OnAfterCloseConnection: WordBool readonly dispid 337;
    property active_OnAfterOpenConnection: WordBool readonly dispid 338;
    property register_ActiveObject_OnStart: WordBool readonly dispid 336;
    property active_OnAfterSettingsChange: WordBool readonly dispid 340;
    property save_SettingsAfterOpenConnection: WordBool readonly dispid 341;
    function set_BehaviorOnOpenClose(register_ActiveObjectOnStart: WordBool; 
                                     save_Settings_AfterOpenConnection: WordBool; 
                                     active_EventOnAfterOpenConnection: WordBool; 
                                     active_EventOnAfterCloseConnection: WordBool; 
                                     active_EventOnAfterSettingsChange: WordBool): Integer; dispid 343;
    property checkDeviceStatusOnCheckConnection: WordBool dispid 339;
    function tq_Add_Transaction(var HeaderID: WideString): Integer; dispid 342;
    function tq_Add_TrScriptItem(const HeaderID: WideString; var ScriptID: WideString): Integer; dispid 344;
    function tq_Delete_TrByHeader(const HeaderID: WideString): Integer; dispid 345;
    function tq_Delete_TrByIndex(Index: Integer): Integer; dispid 346;
    function tq_Delete_OldTransactions: Integer; dispid 347;
    function tq_Set_TrScriptItem(const HeaderID: WideString; const ScriptItemID: WideString; 
                                 const VariableName: WideString; const VariableValue: WideString): Integer; dispid 348;
    function tq_Clear_TrScript(const HeaderID: WideString): Integer; dispid 349;
    function tq_Execute_Transaction(const HeaderID: WideString): Integer; dispid 350;
    function tq_Execute_AllTransactions(OrderType: Integer): Integer; dispid 351;
    function tq_Get_Array_HeadersID(var HeadersIDArray: WideString): Integer; dispid 352;
    function tq_Get_Array_ScriptsID(const HeaderID: WideString; var ScriptsIDArray: WideString): Integer; dispid 353;
    function tq_Get_Array_ErrorsID(var ErrorsIDArray: WideString): Integer; dispid 354;
    function tq_Get_HeaderItem_Value(const HeaderID: WideString; const VariableName: WideString; 
                                     var VariableValue: WideString): Integer; dispid 355;
    function tq_Get_ScriptItem_Value(const HeaderID: WideString; const ScriptItemID: WideString; 
                                     const VariableName: WideString; var VariableValue: WideString): Integer; dispid 356;
    function tq_Get_ErrorsItem_Value(const ErrorsID: WideString; const VariableName: WideString; 
                                     var VariableValue: WideString): Integer; dispid 357;
    function tq_Get_LastErrorItem_ByHeaderID(const HeaderID: WideString; 
                                             const VariableName: WideString; 
                                             var VariableValue: WideString): Integer; dispid 358;
    function tq_Save_LastErrors(const FileName: WideString): Integer; dispid 359;
  end;

// *********************************************************************//
// DispIntf:  ICFD_DUDEEvents
// Flags:     (4096) Dispatchable
// GUID:      {67464AFE-6263-4D0B-AB8E-32F799CA517C}
// *********************************************************************//
  ICFD_DUDEEvents = dispinterface
    ['{67464AFE-6263-4D0B-AB8E-32F799CA517C}']
    function OnError(error_Code: Integer; var error_Message: WideString): HResult; dispid 201;
    function OnBeforeScriptExecute: HResult; dispid 203;
    function OnFirstProgress_Init(value_Minimum: Integer; value_Maximum: Integer; 
                                  value_Position: Integer): HResult; dispid 204;
    function OnSecondProgress_Init(value_Minimum: Integer; value_Maximum: Integer; 
                                   value_Position: Integer): HResult; dispid 205;
    function OnFirstProgress_Loop(value_Position: Integer): HResult; dispid 206;
    function OnSecondProgress_Loop(value_Position: Integer): HResult; dispid 207;
    function OnFirstProgress_Complete: HResult; dispid 208;
    function OnSecondProgress_Complete: HResult; dispid 209;
    function OnWait(Value: Byte): HResult; dispid 210;
    function OnStatusChange: HResult; dispid 211;
    function OnSendCommand(var Command: WideString; var DateAndTime: WideString; 
                           var repeat_Value: WideString; var hex_Header: WideString; 
                           var hex_Data: WideString; var hex_Footer: WideString; 
                           var human_Data: WideString): HResult; dispid 212;
    function OnReceiveAnswer(var Command: WideString; var DateAndTime: WideString; 
                             var repeat_Value: WideString; var hex_Header: WideString; 
                             var hex_Data: WideString; var hex_Footer: WideString; 
                             var human_Data: WideString): HResult; dispid 213;
    function OnAfterScriptExecute: HResult; dispid 214;
    function OnScriptRowExecute(row_Index: Integer; error_Code: Integer; 
                                var input_Value: WideString; var output_Value: WideString): HResult; dispid 202;
    function OnJETextData(var TextData: WideString): HResult; dispid 215;
    function OnAfterOpenConnection: HResult; dispid 216;
    function OnAfterCloseConnection: HResult; dispid 217;
    function OnAfterChangeSettings(settings_Index: Integer): HResult; dispid 218;
  end;

// *********************************************************************//
// The Class CoCFD_DUDE provides a Create and CreateRemote method to          
// create instances of the default interface ICFD_DUDE exposed by              
// the CoClass CFD_DUDE. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCFD_DUDE = class
    class function Create: ICFD_DUDE;
    class function CreateRemote(const MachineName: string): ICFD_DUDE;
  end;

  TCFD_DUDEOnError = procedure(ASender: TObject; error_Code: Integer; var error_Message: WideString) of object;
  TCFD_DUDEOnFirstProgress_Init = procedure(ASender: TObject; value_Minimum: Integer; 
                                                              value_Maximum: Integer; 
                                                              value_Position: Integer) of object;
  TCFD_DUDEOnSecondProgress_Init = procedure(ASender: TObject; value_Minimum: Integer; 
                                                               value_Maximum: Integer; 
                                                               value_Position: Integer) of object;
  TCFD_DUDEOnFirstProgress_Loop = procedure(ASender: TObject; value_Position: Integer) of object;
  TCFD_DUDEOnSecondProgress_Loop = procedure(ASender: TObject; value_Position: Integer) of object;
  TCFD_DUDEOnWait = procedure(ASender: TObject; Value: Byte) of object;
  TCFD_DUDEOnSendCommand = procedure(ASender: TObject; var Command: WideString; 
                                                       var DateAndTime: WideString; 
                                                       var repeat_Value: WideString; 
                                                       var hex_Header: WideString; 
                                                       var hex_Data: WideString; 
                                                       var hex_Footer: WideString; 
                                                       var human_Data: WideString) of object;
  TCFD_DUDEOnReceiveAnswer = procedure(ASender: TObject; var Command: WideString; 
                                                         var DateAndTime: WideString; 
                                                         var repeat_Value: WideString; 
                                                         var hex_Header: WideString; 
                                                         var hex_Data: WideString; 
                                                         var hex_Footer: WideString; 
                                                         var human_Data: WideString) of object;
  TCFD_DUDEOnScriptRowExecute = procedure(ASender: TObject; row_Index: Integer; 
                                                            error_Code: Integer; 
                                                            var input_Value: WideString; 
                                                            var output_Value: WideString) of object;
  TCFD_DUDEOnJETextData = procedure(ASender: TObject; var TextData: WideString) of object;
  TCFD_DUDEOnAfterChangeSettings = procedure(ASender: TObject; settings_Index: Integer) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCFD_DUDE
// Help String      : CFD_DUDE Object
// Default Interface: ICFD_DUDE
// Def. Intf. DISP? : No
// Event   Interface: ICFD_DUDEEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCFD_DUDE = class(TOleServer)
  private
    FOnError: TCFD_DUDEOnError;
    FOnBeforeScriptExecute: TNotifyEvent;
    FOnFirstProgress_Init: TCFD_DUDEOnFirstProgress_Init;
    FOnSecondProgress_Init: TCFD_DUDEOnSecondProgress_Init;
    FOnFirstProgress_Loop: TCFD_DUDEOnFirstProgress_Loop;
    FOnSecondProgress_Loop: TCFD_DUDEOnSecondProgress_Loop;
    FOnFirstProgress_Complete: TNotifyEvent;
    FOnSecondProgress_Complete: TNotifyEvent;
    FOnWait: TCFD_DUDEOnWait;
    FOnStatusChange: TNotifyEvent;
    FOnSendCommand: TCFD_DUDEOnSendCommand;
    FOnReceiveAnswer: TCFD_DUDEOnReceiveAnswer;
    FOnAfterScriptExecute: TNotifyEvent;
    FOnScriptRowExecute: TCFD_DUDEOnScriptRowExecute;
    FOnJETextData: TCFD_DUDEOnJETextData;
    FOnAfterOpenConnection: TNotifyEvent;
    FOnAfterCloseConnection: TNotifyEvent;
    FOnAfterChangeSettings: TCFD_DUDEOnAfterChangeSettings;
    FIntf: ICFD_DUDE;
    function GetDefaultInterface: ICFD_DUDE;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_eSBit_GeneralError_Sharp: WordBool;
    function Get_eSBit_PrintingMechanism: WordBool;
    function Get_eSBit_ClockIsNotSynchronized: WordBool;
    function Get_eSBit_CommandCodeIsInvalid: WordBool;
    function Get_eSBit_SyntaxError: WordBool;
    function Get_eSBit_CommandNotPermitted: WordBool;
    function Get_eSBit_Overflow: WordBool;
    function Get_eSBit_EJIsFull: WordBool;
    function Get_eSBit_EndOfPaper: WordBool;
    function Get_eSBit_FM_NotFound: WordBool;
    function Get_eSBit_FM_NotAccess: WordBool;
    function Get_eSBit_FM_Full: WordBool;
    function Get_eSBit_GeneralError_Star: WordBool;
    function Get_iSBit_Cover_IsOpen: WordBool;
    function Get_iSBit_No_ClientDisplay: WordBool;
    function Get_iSBit_24h_AfterDayOpening: WordBool;
    function Get_iSBit_Receipt_Nonfiscal: WordBool;
    function Get_iSBit_EJ_NearlyFull: WordBool;
    function Get_iSBit_Receipt_Fiscal: WordBool;
    function Get_iSBit_Near_PaperEnd: WordBool;
    function Get_iSBit_LessThan_60_Reports: WordBool;
    function Get_iSBit_Number_SFM_Set: WordBool;
    function Get_iSBit_Number_Tax_Set: WordBool;
    function Get_iSBit_VAT_Set: WordBool;
    function Get_iSBit_Device_Fiscalized: WordBool;
    function Get_iSBit_FM_Formated: WordBool;
    function Get_language: TDudeLanguage;
    procedure Set_language(Value: TDudeLanguage);
    function Get_connected_ToDevice: WordBool;
    function Get_connected_ToLAN: WordBool;
    function Get_lastError_Code: Integer;
    function Get_lastError_Message: WideString;
    function Get_codePage: LongWord;
    function Get_support_RS232: WordBool;
    function Get_support_TCPIP: WordBool;
    function Get_rs232_ComPort: Integer;
    function Get_rs232_BaudRate: Integer;
    function Get_tcpip_Address: WideString;
    function Get_tcpip_Port: Integer;
    function Get_trackingMode: WordBool;
    function Get_trackingMode_Path: WideString;
    function Get_trackingMode_FileName: WideString;
    function Get_trackingMode_RowLimit: Integer;
    function Get_protocol_TransportType: TTransportProtocol;
    function Get_device_Type: TDeviceType;
    function Get_device_Number_Serial: WideString;
    function Get_device_Number_FMemory: WideString;
    function Get_device_Distributor: WideString;
    function Get_device_Firmware_Revision: WideString;
    function Get_device_Firmware_Date: WideString;
    function Get_device_Firmware_CheckSum: WideString;
    function Get_device_Model: TDeviceModel;
    function Get_device_Model_Name: WideString;
    function Get_last_AnswerList: WideString;
    function Get_download_Path: WideString;
    function Get_zRange_StartValue: Integer;
    procedure Set_zRange_StartValue(Value: Integer);
    function Get_zRange_EndValue: Integer;
    procedure Set_zRange_EndValue(Value: Integer);
    function Get_DateRange_StartValue: WideString;
    procedure Set_DateRange_StartValue(const Value: WideString);
    function Get_DateRange_EndValue: WideString;
    procedure Set_DateRange_EndValue(const Value: WideString);
    function Get_rs232_ReadIntervalTimeout: LongWord;
    function Get_rs232_ReadTotalTimeoutMultiplier: LongWord;
    function Get_rs232_ReadTotalTimeoutConstant: LongWord;
    function Get_rs232_WriteTotalTimeoutMultiplier: LongWord;
    function Get_rs232_WriteTotalTimeoutConstant: LongWord;
    function Get_rs232_OnOpen_Set_DCB: WordBool;
    procedure Set_rs232_OnOpen_Set_DCB(Value: WordBool);
    function Get_rs232_OnOpen_Set_DTR_ToFalse: WordBool;
    procedure Set_rs232_OnOpen_Set_DTR_ToFalse(Value: WordBool);
    function Get_rs232_OnOpen_Set_RTS_ToFalse: WordBool;
    procedure Set_rs232_OnOpen_Set_RTS_ToFalse(Value: WordBool);
    function Get_exit_ByReadTimeOutIsOn: WordBool;
    procedure Set_exit_ByReadTimeOutIsOn(Value: WordBool);
    function Get_read_TimeOutValue: Word;
    procedure Set_read_TimeOutValue(Value: Word);
    function Get_active_OnBeforeScriptExecute: WordBool;
    function Get_active_OnScriptRowExecute: WordBool;
    function Get_active_OnAfterScriptExecute: WordBool;
    function Get_active_OnFirstProgress_Init: WordBool;
    function Get_active_OnFirstProgress_Loop: WordBool;
    function Get_active_OnFirstProgress_Complete: WordBool;
    function Get_active_OnSecondProgress_Init: WordBool;
    function Get_active_OnSecondProgress_Loop: WordBool;
    function Get_active_OnSecondProgress_Complete: WordBool;
    function Get_active_OnSendCommand: WordBool;
    function Get_active_OnWait: WordBool;
    function Get_active_OnReceiveAnswer: WordBool;
    function Get_active_OnStatusChange: WordBool;
    function Get_active_OnError: WordBool;
    function Get_DocumentNumber_StartValue: Integer;
    procedure Set_DocumentNumber_StartValue(Value: Integer);
    function Get_DocumentNumber_EndValue: Integer;
    procedure Set_DocumentNumber_EndValue(Value: Integer);
    function Get_JEDocumentType: TDocumentTypes;
    procedure Set_JEDocumentType(Value: TDocumentTypes);
    function Get_ExchangePrinter: WordBool;
    function Get_active_OnAfterCloseConnection: WordBool;
    function Get_active_OnAfterOpenConnection: WordBool;
    function Get_register_ActiveObject_OnStart: WordBool;
    function Get_active_OnAfterSettingsChange: WordBool;
    function Get_save_SettingsAfterOpenConnection: WordBool;
    function Get_checkDeviceStatusOnCheckConnection: WordBool;
    procedure Set_checkDeviceStatusOnCheckConnection(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICFD_DUDE);
    procedure Disconnect; override;
    function set_TransportType(Value: TTransportProtocol): Integer;
    function set_TrackingMode_RowLimit(Value: Integer): Integer;
    function set_TrackingMode_FileName(const Value: WideString): Integer;
    function set_TrackingMode_Path(const Value: WideString): Integer;
    function set_TrackingMode(Value: WordBool): Integer;
    function set_TCPIP(const IPAddress: WideString; Port: Word): Integer;
    function set_RS232(ComPort: Integer; BaudRate: Integer): Integer;
    function get_ErrorMessageByCode(Value: Integer): WideString;
    function get_SBit_State(byteIndex: Byte; bitIndex: Byte): WordBool;
    function get_SBit_Description(byteIndex: Byte; bitIndex: Byte): WideString;
    function get_SBit_ErrorChecking(byteIndex: Byte; bitIndex: Byte): WordBool;
    function set_SBit_ErrorChecking(byteIndex: Byte; bitIndex: Byte; Value: WordBool): WordBool;
    function open_Connection: Integer;
    function close_Connection: Integer;
    function execute_Command(Command: Integer; const input_Value: WideString; 
                             var output_Value: WideString): Integer;
    function execute_Script_V1(scriptType: TScriptType; const input_Value: WideString): Integer;
    function set_Download_Path(const Value: WideString): Integer;
    function get_SystemInfo(const SearchValue: WideString): WideString;
    function get_SystemInfoSearchList: WideString;
    function download_ANAF_ZRange: Integer;
    function download_ANAF_DTRange: Integer;
    procedure cancel_Loop;
    function set_RS232_Timeouts(ReadIntervalTimeout: LongWord; 
                                ReadTotalTimeoutMultiplier: LongWord; 
                                ReadTotalTimeoutConstant: LongWord; 
                                WriteTotalTimeoutMultiplier: LongWord; 
                                WriteTotalTimeoutConstant: LongWord): Integer;
    function rs232_COMPortList: WideString;
    function upload_Logo(const FileName: WideString): Integer;
    function upload_Stamp(const FileName: WideString; const StampName: WideString): Integer;
    function upload_Certificate(const FileName: WideString): Integer;
    function upload_Profile(const FileName: WideString): Integer;
    function get_ComandsList(Index: Integer): WideString;
    function get_CommandInfo(const command_Name: WideString; var Value: WideString): Integer;
    function set_InputParam_ByIndex(const command_Name: WideString; param_Index: Integer; 
                                    const param_Value: WideString): Integer;
    function set_InputParam_ByName(const command_Name: WideString; const param_Name: WideString; 
                                   const param_Value: WideString): Integer;
    function execute_Command_ByName(const command_Name: WideString): Integer;
    function get_InputParams_Count(const command_Name: WideString; var Value: Integer): Integer;
    function get_InputParams_Names(const command_Name: WideString; var Value: WideString): Integer;
    function get_OutputParams_Count(const command_Name: WideString; var Value: Integer): Integer;
    function get_OutputParams_Names(const command_Name: WideString; var Value: WideString): Integer;
    function get_OutputParam_ByIndex(const command_Name: WideString; param_Index: Integer; 
                                     var param_Value: WideString): Integer;
    function get_OutputParam_ByName(const command_Name: WideString; const param_Name: WideString; 
                                    var param_Value: WideString): Integer;
    function generate_SourceCode(const command_Name: WideString; code_Type: TCodeType): WideString;
    function set_ScriptEvents(active_OnBeforeScriptExecute: WordBool; 
                              active_OnScriptRowExecute: WordBool; 
                              active_OnAfterScriptExecute: WordBool; save_ToSettings: WordBool): Integer;
    function set_FirstProgressEvents(active_OnFirstProgress_Init: WordBool; 
                                     active_OnFirstProgress_Loop: WordBool; 
                                     active_OnFirstProgress_Complete: WordBool; 
                                     save_ToSettings: WordBool): Integer;
    function set_SecondProgressEvents(active_OnSecondProgress_Init: WordBool; 
                                      active_OnSecondProgress_Loop: WordBool; 
                                      active_OnSecondProgress_Complete: WordBool; 
                                      save_ToSettings: WordBool): Integer;
    function set_CommunicationEvents(active_OnSendCommand: WordBool; active_OnWait: WordBool; 
                                     active_OnReceiveAnswer: WordBool; 
                                     active_OnStatusChange: WordBool; active_OnError: WordBool; 
                                     save_ToSettings: WordBool): Integer;
    function print_Documents_ByNumbersRange(var printedDocuments: Integer): Integer;
    function print_Documents_ByDateRange(var printedDocuments: Integer): Integer;
    function get_Documents_ByNumbersRange(var receivedDocuments: Integer): Integer;
    function get_Documents_ByDateRange(var receivedDocuments: Integer): Integer;
    procedure DestroyInstance;
    function set_BehaviorOnOpenClose(register_ActiveObjectOnStart: WordBool; 
                                     save_Settings_AfterOpenConnection: WordBool; 
                                     active_EventOnAfterOpenConnection: WordBool; 
                                     active_EventOnAfterCloseConnection: WordBool; 
                                     active_EventOnAfterSettingsChange: WordBool): Integer;
    function tq_Add_Transaction(var HeaderID: WideString): Integer;
    function tq_Add_TrScriptItem(const HeaderID: WideString; var ScriptID: WideString): Integer;
    function tq_Delete_TrByHeader(const HeaderID: WideString): Integer;
    function tq_Delete_TrByIndex(Index: Integer): Integer;
    function tq_Delete_OldTransactions: Integer;
    function tq_Set_TrScriptItem(const HeaderID: WideString; const ScriptItemID: WideString; 
                                 const VariableName: WideString; const VariableValue: WideString): Integer;
    function tq_Clear_TrScript(const HeaderID: WideString): Integer;
    function tq_Execute_Transaction(const HeaderID: WideString): Integer;
    function tq_Execute_AllTransactions(OrderType: Integer): Integer;
    function tq_Get_Array_HeadersID(var HeadersIDArray: WideString): Integer;
    function tq_Get_Array_ScriptsID(const HeaderID: WideString; var ScriptsIDArray: WideString): Integer;
    function tq_Get_Array_ErrorsID(var ErrorsIDArray: WideString): Integer;
    function tq_Get_HeaderItem_Value(const HeaderID: WideString; const VariableName: WideString; 
                                     var VariableValue: WideString): Integer;
    function tq_Get_ScriptItem_Value(const HeaderID: WideString; const ScriptItemID: WideString; 
                                     const VariableName: WideString; var VariableValue: WideString): Integer;
    function tq_Get_ErrorsItem_Value(const ErrorsID: WideString; const VariableName: WideString; 
                                     var VariableValue: WideString): Integer;
    function tq_Get_LastErrorItem_ByHeaderID(const HeaderID: WideString; 
                                             const VariableName: WideString; 
                                             var VariableValue: WideString): Integer;
    function tq_Save_LastErrors(const FileName: WideString): Integer;
    property DefaultInterface: ICFD_DUDE read GetDefaultInterface;
    property eSBit_GeneralError_Sharp: WordBool read Get_eSBit_GeneralError_Sharp;
    property eSBit_PrintingMechanism: WordBool read Get_eSBit_PrintingMechanism;
    property eSBit_ClockIsNotSynchronized: WordBool read Get_eSBit_ClockIsNotSynchronized;
    property eSBit_CommandCodeIsInvalid: WordBool read Get_eSBit_CommandCodeIsInvalid;
    property eSBit_SyntaxError: WordBool read Get_eSBit_SyntaxError;
    property eSBit_CommandNotPermitted: WordBool read Get_eSBit_CommandNotPermitted;
    property eSBit_Overflow: WordBool read Get_eSBit_Overflow;
    property eSBit_EJIsFull: WordBool read Get_eSBit_EJIsFull;
    property eSBit_EndOfPaper: WordBool read Get_eSBit_EndOfPaper;
    property eSBit_FM_NotFound: WordBool read Get_eSBit_FM_NotFound;
    property eSBit_FM_NotAccess: WordBool read Get_eSBit_FM_NotAccess;
    property eSBit_FM_Full: WordBool read Get_eSBit_FM_Full;
    property eSBit_GeneralError_Star: WordBool read Get_eSBit_GeneralError_Star;
    property iSBit_Cover_IsOpen: WordBool read Get_iSBit_Cover_IsOpen;
    property iSBit_No_ClientDisplay: WordBool read Get_iSBit_No_ClientDisplay;
    property iSBit_24h_AfterDayOpening: WordBool read Get_iSBit_24h_AfterDayOpening;
    property iSBit_Receipt_Nonfiscal: WordBool read Get_iSBit_Receipt_Nonfiscal;
    property iSBit_EJ_NearlyFull: WordBool read Get_iSBit_EJ_NearlyFull;
    property iSBit_Receipt_Fiscal: WordBool read Get_iSBit_Receipt_Fiscal;
    property iSBit_Near_PaperEnd: WordBool read Get_iSBit_Near_PaperEnd;
    property iSBit_LessThan_60_Reports: WordBool read Get_iSBit_LessThan_60_Reports;
    property iSBit_Number_SFM_Set: WordBool read Get_iSBit_Number_SFM_Set;
    property iSBit_Number_Tax_Set: WordBool read Get_iSBit_Number_Tax_Set;
    property iSBit_VAT_Set: WordBool read Get_iSBit_VAT_Set;
    property iSBit_Device_Fiscalized: WordBool read Get_iSBit_Device_Fiscalized;
    property iSBit_FM_Formated: WordBool read Get_iSBit_FM_Formated;
    property connected_ToDevice: WordBool read Get_connected_ToDevice;
    property connected_ToLAN: WordBool read Get_connected_ToLAN;
    property lastError_Code: Integer read Get_lastError_Code;
    property lastError_Message: WideString read Get_lastError_Message;
    property codePage: LongWord read Get_codePage;
    property support_RS232: WordBool read Get_support_RS232;
    property support_TCPIP: WordBool read Get_support_TCPIP;
    property rs232_ComPort: Integer read Get_rs232_ComPort;
    property rs232_BaudRate: Integer read Get_rs232_BaudRate;
    property tcpip_Address: WideString read Get_tcpip_Address;
    property tcpip_Port: Integer read Get_tcpip_Port;
    property trackingMode: WordBool read Get_trackingMode;
    property trackingMode_Path: WideString read Get_trackingMode_Path;
    property trackingMode_FileName: WideString read Get_trackingMode_FileName;
    property trackingMode_RowLimit: Integer read Get_trackingMode_RowLimit;
    property protocol_TransportType: TTransportProtocol read Get_protocol_TransportType;
    property device_Type: TDeviceType read Get_device_Type;
    property device_Number_Serial: WideString read Get_device_Number_Serial;
    property device_Number_FMemory: WideString read Get_device_Number_FMemory;
    property device_Distributor: WideString read Get_device_Distributor;
    property device_Firmware_Revision: WideString read Get_device_Firmware_Revision;
    property device_Firmware_Date: WideString read Get_device_Firmware_Date;
    property device_Firmware_CheckSum: WideString read Get_device_Firmware_CheckSum;
    property device_Model: TDeviceModel read Get_device_Model;
    property device_Model_Name: WideString read Get_device_Model_Name;
    property last_AnswerList: WideString read Get_last_AnswerList;
    property download_Path: WideString read Get_download_Path;
    property rs232_ReadIntervalTimeout: LongWord read Get_rs232_ReadIntervalTimeout;
    property rs232_ReadTotalTimeoutMultiplier: LongWord read Get_rs232_ReadTotalTimeoutMultiplier;
    property rs232_ReadTotalTimeoutConstant: LongWord read Get_rs232_ReadTotalTimeoutConstant;
    property rs232_WriteTotalTimeoutMultiplier: LongWord read Get_rs232_WriteTotalTimeoutMultiplier;
    property rs232_WriteTotalTimeoutConstant: LongWord read Get_rs232_WriteTotalTimeoutConstant;
    property active_OnBeforeScriptExecute: WordBool read Get_active_OnBeforeScriptExecute;
    property active_OnScriptRowExecute: WordBool read Get_active_OnScriptRowExecute;
    property active_OnAfterScriptExecute: WordBool read Get_active_OnAfterScriptExecute;
    property active_OnFirstProgress_Init: WordBool read Get_active_OnFirstProgress_Init;
    property active_OnFirstProgress_Loop: WordBool read Get_active_OnFirstProgress_Loop;
    property active_OnFirstProgress_Complete: WordBool read Get_active_OnFirstProgress_Complete;
    property active_OnSecondProgress_Init: WordBool read Get_active_OnSecondProgress_Init;
    property active_OnSecondProgress_Loop: WordBool read Get_active_OnSecondProgress_Loop;
    property active_OnSecondProgress_Complete: WordBool read Get_active_OnSecondProgress_Complete;
    property active_OnSendCommand: WordBool read Get_active_OnSendCommand;
    property active_OnWait: WordBool read Get_active_OnWait;
    property active_OnReceiveAnswer: WordBool read Get_active_OnReceiveAnswer;
    property active_OnStatusChange: WordBool read Get_active_OnStatusChange;
    property active_OnError: WordBool read Get_active_OnError;
    property ExchangePrinter: WordBool read Get_ExchangePrinter;
    property active_OnAfterCloseConnection: WordBool read Get_active_OnAfterCloseConnection;
    property active_OnAfterOpenConnection: WordBool read Get_active_OnAfterOpenConnection;
    property register_ActiveObject_OnStart: WordBool read Get_register_ActiveObject_OnStart;
    property active_OnAfterSettingsChange: WordBool read Get_active_OnAfterSettingsChange;
    property save_SettingsAfterOpenConnection: WordBool read Get_save_SettingsAfterOpenConnection;
    property language: TDudeLanguage read Get_language write Set_language;
    property zRange_StartValue: Integer read Get_zRange_StartValue write Set_zRange_StartValue;
    property zRange_EndValue: Integer read Get_zRange_EndValue write Set_zRange_EndValue;
    property DateRange_StartValue: WideString read Get_DateRange_StartValue write Set_DateRange_StartValue;
    property DateRange_EndValue: WideString read Get_DateRange_EndValue write Set_DateRange_EndValue;
    property rs232_OnOpen_Set_DCB: WordBool read Get_rs232_OnOpen_Set_DCB write Set_rs232_OnOpen_Set_DCB;
    property rs232_OnOpen_Set_DTR_ToFalse: WordBool read Get_rs232_OnOpen_Set_DTR_ToFalse write Set_rs232_OnOpen_Set_DTR_ToFalse;
    property rs232_OnOpen_Set_RTS_ToFalse: WordBool read Get_rs232_OnOpen_Set_RTS_ToFalse write Set_rs232_OnOpen_Set_RTS_ToFalse;
    property exit_ByReadTimeOutIsOn: WordBool read Get_exit_ByReadTimeOutIsOn write Set_exit_ByReadTimeOutIsOn;
    property read_TimeOutValue: Word read Get_read_TimeOutValue write Set_read_TimeOutValue;
    property DocumentNumber_StartValue: Integer read Get_DocumentNumber_StartValue write Set_DocumentNumber_StartValue;
    property DocumentNumber_EndValue: Integer read Get_DocumentNumber_EndValue write Set_DocumentNumber_EndValue;
    property JEDocumentType: TDocumentTypes read Get_JEDocumentType write Set_JEDocumentType;
    property checkDeviceStatusOnCheckConnection: WordBool read Get_checkDeviceStatusOnCheckConnection write Set_checkDeviceStatusOnCheckConnection;
  published
    property OnError: TCFD_DUDEOnError read FOnError write FOnError;
    property OnBeforeScriptExecute: TNotifyEvent read FOnBeforeScriptExecute write FOnBeforeScriptExecute;
    property OnFirstProgress_Init: TCFD_DUDEOnFirstProgress_Init read FOnFirstProgress_Init write FOnFirstProgress_Init;
    property OnSecondProgress_Init: TCFD_DUDEOnSecondProgress_Init read FOnSecondProgress_Init write FOnSecondProgress_Init;
    property OnFirstProgress_Loop: TCFD_DUDEOnFirstProgress_Loop read FOnFirstProgress_Loop write FOnFirstProgress_Loop;
    property OnSecondProgress_Loop: TCFD_DUDEOnSecondProgress_Loop read FOnSecondProgress_Loop write FOnSecondProgress_Loop;
    property OnFirstProgress_Complete: TNotifyEvent read FOnFirstProgress_Complete write FOnFirstProgress_Complete;
    property OnSecondProgress_Complete: TNotifyEvent read FOnSecondProgress_Complete write FOnSecondProgress_Complete;
    property OnWait: TCFD_DUDEOnWait read FOnWait write FOnWait;
    property OnStatusChange: TNotifyEvent read FOnStatusChange write FOnStatusChange;
    property OnSendCommand: TCFD_DUDEOnSendCommand read FOnSendCommand write FOnSendCommand;
    property OnReceiveAnswer: TCFD_DUDEOnReceiveAnswer read FOnReceiveAnswer write FOnReceiveAnswer;
    property OnAfterScriptExecute: TNotifyEvent read FOnAfterScriptExecute write FOnAfterScriptExecute;
    property OnScriptRowExecute: TCFD_DUDEOnScriptRowExecute read FOnScriptRowExecute write FOnScriptRowExecute;
    property OnJETextData: TCFD_DUDEOnJETextData read FOnJETextData write FOnJETextData;
    property OnAfterOpenConnection: TNotifyEvent read FOnAfterOpenConnection write FOnAfterOpenConnection;
    property OnAfterCloseConnection: TNotifyEvent read FOnAfterCloseConnection write FOnAfterCloseConnection;
    property OnAfterChangeSettings: TCFD_DUDEOnAfterChangeSettings read FOnAfterChangeSettings write FOnAfterChangeSettings;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

class function CoCFD_DUDE.Create: ICFD_DUDE;
begin
  Result := CreateComObject(CLASS_CFD_DUDE) as ICFD_DUDE;
end;

class function CoCFD_DUDE.CreateRemote(const MachineName: string): ICFD_DUDE;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CFD_DUDE) as ICFD_DUDE;
end;

procedure TCFD_DUDE.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A5A6DCE0-449A-43FC-B31C-3CE5442B1CCF}';
    IntfIID:   '{C504A4F5-D1F2-4A48-AFDC-BA65F8E36278}';
    EventIID:  '{67464AFE-6263-4D0B-AB8E-32F799CA517C}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCFD_DUDE.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as ICFD_DUDE;
  end;
end;

procedure TCFD_DUDE.ConnectTo(svrIntf: ICFD_DUDE);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TCFD_DUDE.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TCFD_DUDE.GetDefaultInterface: ICFD_DUDE;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCFD_DUDE.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCFD_DUDE.Destroy;
begin
  inherited Destroy;
end;

procedure TCFD_DUDE.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    201: if Assigned(FOnError) then
         FOnError(Self,
                  Params[0] {Integer},
                  WideString((TVarData(Params[1]).VPointer)^) {var WideString});
    203: if Assigned(FOnBeforeScriptExecute) then
         FOnBeforeScriptExecute(Self);
    204: if Assigned(FOnFirstProgress_Init) then
         FOnFirstProgress_Init(Self,
                               Params[0] {Integer},
                               Params[1] {Integer},
                               Params[2] {Integer});
    205: if Assigned(FOnSecondProgress_Init) then
         FOnSecondProgress_Init(Self,
                                Params[0] {Integer},
                                Params[1] {Integer},
                                Params[2] {Integer});
    206: if Assigned(FOnFirstProgress_Loop) then
         FOnFirstProgress_Loop(Self, Params[0] {Integer});
    207: if Assigned(FOnSecondProgress_Loop) then
         FOnSecondProgress_Loop(Self, Params[0] {Integer});
    208: if Assigned(FOnFirstProgress_Complete) then
         FOnFirstProgress_Complete(Self);
    209: if Assigned(FOnSecondProgress_Complete) then
         FOnSecondProgress_Complete(Self);
    210: if Assigned(FOnWait) then
         FOnWait(Self, Params[0] {Byte});
    211: if Assigned(FOnStatusChange) then
         FOnStatusChange(Self);
    212: if Assigned(FOnSendCommand) then
         FOnSendCommand(Self,
                        WideString((TVarData(Params[0]).VPointer)^) {var WideString},
                        WideString((TVarData(Params[1]).VPointer)^) {var WideString},
                        WideString((TVarData(Params[2]).VPointer)^) {var WideString},
                        WideString((TVarData(Params[3]).VPointer)^) {var WideString},
                        WideString((TVarData(Params[4]).VPointer)^) {var WideString},
                        WideString((TVarData(Params[5]).VPointer)^) {var WideString},
                        WideString((TVarData(Params[6]).VPointer)^) {var WideString});
    213: if Assigned(FOnReceiveAnswer) then
         FOnReceiveAnswer(Self,
                          WideString((TVarData(Params[0]).VPointer)^) {var WideString},
                          WideString((TVarData(Params[1]).VPointer)^) {var WideString},
                          WideString((TVarData(Params[2]).VPointer)^) {var WideString},
                          WideString((TVarData(Params[3]).VPointer)^) {var WideString},
                          WideString((TVarData(Params[4]).VPointer)^) {var WideString},
                          WideString((TVarData(Params[5]).VPointer)^) {var WideString},
                          WideString((TVarData(Params[6]).VPointer)^) {var WideString});
    214: if Assigned(FOnAfterScriptExecute) then
         FOnAfterScriptExecute(Self);
    202: if Assigned(FOnScriptRowExecute) then
         FOnScriptRowExecute(Self,
                             Params[0] {Integer},
                             Params[1] {Integer},
                             WideString((TVarData(Params[2]).VPointer)^) {var WideString},
                             WideString((TVarData(Params[3]).VPointer)^) {var WideString});
    215: if Assigned(FOnJETextData) then
         FOnJETextData(Self, WideString((TVarData(Params[0]).VPointer)^) {var WideString});
    216: if Assigned(FOnAfterOpenConnection) then
         FOnAfterOpenConnection(Self);
    217: if Assigned(FOnAfterCloseConnection) then
         FOnAfterCloseConnection(Self);
    218: if Assigned(FOnAfterChangeSettings) then
         FOnAfterChangeSettings(Self, Params[0] {Integer});
  end; {case DispID}
end;

function TCFD_DUDE.Get_eSBit_GeneralError_Sharp: WordBool;
begin
  Result := DefaultInterface.eSBit_GeneralError_Sharp;
end;

function TCFD_DUDE.Get_eSBit_PrintingMechanism: WordBool;
begin
  Result := DefaultInterface.eSBit_PrintingMechanism;
end;

function TCFD_DUDE.Get_eSBit_ClockIsNotSynchronized: WordBool;
begin
  Result := DefaultInterface.eSBit_ClockIsNotSynchronized;
end;

function TCFD_DUDE.Get_eSBit_CommandCodeIsInvalid: WordBool;
begin
  Result := DefaultInterface.eSBit_CommandCodeIsInvalid;
end;

function TCFD_DUDE.Get_eSBit_SyntaxError: WordBool;
begin
  Result := DefaultInterface.eSBit_SyntaxError;
end;

function TCFD_DUDE.Get_eSBit_CommandNotPermitted: WordBool;
begin
  Result := DefaultInterface.eSBit_CommandNotPermitted;
end;

function TCFD_DUDE.Get_eSBit_Overflow: WordBool;
begin
  Result := DefaultInterface.eSBit_Overflow;
end;

function TCFD_DUDE.Get_eSBit_EJIsFull: WordBool;
begin
  Result := DefaultInterface.eSBit_EJIsFull;
end;

function TCFD_DUDE.Get_eSBit_EndOfPaper: WordBool;
begin
  Result := DefaultInterface.eSBit_EndOfPaper;
end;

function TCFD_DUDE.Get_eSBit_FM_NotFound: WordBool;
begin
  Result := DefaultInterface.eSBit_FM_NotFound;
end;

function TCFD_DUDE.Get_eSBit_FM_NotAccess: WordBool;
begin
  Result := DefaultInterface.eSBit_FM_NotAccess;
end;

function TCFD_DUDE.Get_eSBit_FM_Full: WordBool;
begin
  Result := DefaultInterface.eSBit_FM_Full;
end;

function TCFD_DUDE.Get_eSBit_GeneralError_Star: WordBool;
begin
  Result := DefaultInterface.eSBit_GeneralError_Star;
end;

function TCFD_DUDE.Get_iSBit_Cover_IsOpen: WordBool;
begin
  Result := DefaultInterface.iSBit_Cover_IsOpen;
end;

function TCFD_DUDE.Get_iSBit_No_ClientDisplay: WordBool;
begin
  Result := DefaultInterface.iSBit_No_ClientDisplay;
end;

function TCFD_DUDE.Get_iSBit_24h_AfterDayOpening: WordBool;
begin
  Result := DefaultInterface.iSBit_24h_AfterDayOpening;
end;

function TCFD_DUDE.Get_iSBit_Receipt_Nonfiscal: WordBool;
begin
  Result := DefaultInterface.iSBit_Receipt_Nonfiscal;
end;

function TCFD_DUDE.Get_iSBit_EJ_NearlyFull: WordBool;
begin
  Result := DefaultInterface.iSBit_EJ_NearlyFull;
end;

function TCFD_DUDE.Get_iSBit_Receipt_Fiscal: WordBool;
begin
  Result := DefaultInterface.iSBit_Receipt_Fiscal;
end;

function TCFD_DUDE.Get_iSBit_Near_PaperEnd: WordBool;
begin
  Result := DefaultInterface.iSBit_Near_PaperEnd;
end;

function TCFD_DUDE.Get_iSBit_LessThan_60_Reports: WordBool;
begin
  Result := DefaultInterface.iSBit_LessThan_60_Reports;
end;

function TCFD_DUDE.Get_iSBit_Number_SFM_Set: WordBool;
begin
  Result := DefaultInterface.iSBit_Number_SFM_Set;
end;

function TCFD_DUDE.Get_iSBit_Number_Tax_Set: WordBool;
begin
  Result := DefaultInterface.iSBit_Number_Tax_Set;
end;

function TCFD_DUDE.Get_iSBit_VAT_Set: WordBool;
begin
  Result := DefaultInterface.iSBit_VAT_Set;
end;

function TCFD_DUDE.Get_iSBit_Device_Fiscalized: WordBool;
begin
  Result := DefaultInterface.iSBit_Device_Fiscalized;
end;

function TCFD_DUDE.Get_iSBit_FM_Formated: WordBool;
begin
  Result := DefaultInterface.iSBit_FM_Formated;
end;

function TCFD_DUDE.Get_language: TDudeLanguage;
begin
  Result := DefaultInterface.language;
end;

procedure TCFD_DUDE.Set_language(Value: TDudeLanguage);
begin
  DefaultInterface.language := Value;
end;

function TCFD_DUDE.Get_connected_ToDevice: WordBool;
begin
  Result := DefaultInterface.connected_ToDevice;
end;

function TCFD_DUDE.Get_connected_ToLAN: WordBool;
begin
  Result := DefaultInterface.connected_ToLAN;
end;

function TCFD_DUDE.Get_lastError_Code: Integer;
begin
  Result := DefaultInterface.lastError_Code;
end;

function TCFD_DUDE.Get_lastError_Message: WideString;
begin
  Result := DefaultInterface.lastError_Message;
end;

function TCFD_DUDE.Get_codePage: LongWord;
begin
  Result := DefaultInterface.codePage;
end;

function TCFD_DUDE.Get_support_RS232: WordBool;
begin
  Result := DefaultInterface.support_RS232;
end;

function TCFD_DUDE.Get_support_TCPIP: WordBool;
begin
  Result := DefaultInterface.support_TCPIP;
end;

function TCFD_DUDE.Get_rs232_ComPort: Integer;
begin
  Result := DefaultInterface.rs232_ComPort;
end;

function TCFD_DUDE.Get_rs232_BaudRate: Integer;
begin
  Result := DefaultInterface.rs232_BaudRate;
end;

function TCFD_DUDE.Get_tcpip_Address: WideString;
begin
  Result := DefaultInterface.tcpip_Address;
end;

function TCFD_DUDE.Get_tcpip_Port: Integer;
begin
  Result := DefaultInterface.tcpip_Port;
end;

function TCFD_DUDE.Get_trackingMode: WordBool;
begin
  Result := DefaultInterface.trackingMode;
end;

function TCFD_DUDE.Get_trackingMode_Path: WideString;
begin
  Result := DefaultInterface.trackingMode_Path;
end;

function TCFD_DUDE.Get_trackingMode_FileName: WideString;
begin
  Result := DefaultInterface.trackingMode_FileName;
end;

function TCFD_DUDE.Get_trackingMode_RowLimit: Integer;
begin
  Result := DefaultInterface.trackingMode_RowLimit;
end;

function TCFD_DUDE.Get_protocol_TransportType: TTransportProtocol;
begin
  Result := DefaultInterface.protocol_TransportType;
end;

function TCFD_DUDE.Get_device_Type: TDeviceType;
begin
  Result := DefaultInterface.device_Type;
end;

function TCFD_DUDE.Get_device_Number_Serial: WideString;
begin
  Result := DefaultInterface.device_Number_Serial;
end;

function TCFD_DUDE.Get_device_Number_FMemory: WideString;
begin
  Result := DefaultInterface.device_Number_FMemory;
end;

function TCFD_DUDE.Get_device_Distributor: WideString;
begin
  Result := DefaultInterface.device_Distributor;
end;

function TCFD_DUDE.Get_device_Firmware_Revision: WideString;
begin
  Result := DefaultInterface.device_Firmware_Revision;
end;

function TCFD_DUDE.Get_device_Firmware_Date: WideString;
begin
  Result := DefaultInterface.device_Firmware_Date;
end;

function TCFD_DUDE.Get_device_Firmware_CheckSum: WideString;
begin
  Result := DefaultInterface.device_Firmware_CheckSum;
end;

function TCFD_DUDE.Get_device_Model: TDeviceModel;
begin
  Result := DefaultInterface.device_Model;
end;

function TCFD_DUDE.Get_device_Model_Name: WideString;
begin
  Result := DefaultInterface.device_Model_Name;
end;

function TCFD_DUDE.Get_last_AnswerList: WideString;
begin
  Result := DefaultInterface.last_AnswerList;
end;

function TCFD_DUDE.Get_download_Path: WideString;
begin
  Result := DefaultInterface.download_Path;
end;

function TCFD_DUDE.Get_zRange_StartValue: Integer;
begin
  Result := DefaultInterface.zRange_StartValue;
end;

procedure TCFD_DUDE.Set_zRange_StartValue(Value: Integer);
begin
  DefaultInterface.zRange_StartValue := Value;
end;

function TCFD_DUDE.Get_zRange_EndValue: Integer;
begin
  Result := DefaultInterface.zRange_EndValue;
end;

procedure TCFD_DUDE.Set_zRange_EndValue(Value: Integer);
begin
  DefaultInterface.zRange_EndValue := Value;
end;

function TCFD_DUDE.Get_DateRange_StartValue: WideString;
begin
  Result := DefaultInterface.DateRange_StartValue;
end;

procedure TCFD_DUDE.Set_DateRange_StartValue(const Value: WideString);
begin
  DefaultInterface.DateRange_StartValue := Value;
end;

function TCFD_DUDE.Get_DateRange_EndValue: WideString;
begin
  Result := DefaultInterface.DateRange_EndValue;
end;

procedure TCFD_DUDE.Set_DateRange_EndValue(const Value: WideString);
begin
  DefaultInterface.DateRange_EndValue := Value;
end;

function TCFD_DUDE.Get_rs232_ReadIntervalTimeout: LongWord;
begin
  Result := DefaultInterface.rs232_ReadIntervalTimeout;
end;

function TCFD_DUDE.Get_rs232_ReadTotalTimeoutMultiplier: LongWord;
begin
  Result := DefaultInterface.rs232_ReadTotalTimeoutMultiplier;
end;

function TCFD_DUDE.Get_rs232_ReadTotalTimeoutConstant: LongWord;
begin
  Result := DefaultInterface.rs232_ReadTotalTimeoutConstant;
end;

function TCFD_DUDE.Get_rs232_WriteTotalTimeoutMultiplier: LongWord;
begin
  Result := DefaultInterface.rs232_WriteTotalTimeoutMultiplier;
end;

function TCFD_DUDE.Get_rs232_WriteTotalTimeoutConstant: LongWord;
begin
  Result := DefaultInterface.rs232_WriteTotalTimeoutConstant;
end;

function TCFD_DUDE.Get_rs232_OnOpen_Set_DCB: WordBool;
begin
  Result := DefaultInterface.rs232_OnOpen_Set_DCB;
end;

procedure TCFD_DUDE.Set_rs232_OnOpen_Set_DCB(Value: WordBool);
begin
  DefaultInterface.rs232_OnOpen_Set_DCB := Value;
end;

function TCFD_DUDE.Get_rs232_OnOpen_Set_DTR_ToFalse: WordBool;
begin
  Result := DefaultInterface.rs232_OnOpen_Set_DTR_ToFalse;
end;

procedure TCFD_DUDE.Set_rs232_OnOpen_Set_DTR_ToFalse(Value: WordBool);
begin
  DefaultInterface.rs232_OnOpen_Set_DTR_ToFalse := Value;
end;

function TCFD_DUDE.Get_rs232_OnOpen_Set_RTS_ToFalse: WordBool;
begin
  Result := DefaultInterface.rs232_OnOpen_Set_RTS_ToFalse;
end;

procedure TCFD_DUDE.Set_rs232_OnOpen_Set_RTS_ToFalse(Value: WordBool);
begin
  DefaultInterface.rs232_OnOpen_Set_RTS_ToFalse := Value;
end;

function TCFD_DUDE.Get_exit_ByReadTimeOutIsOn: WordBool;
begin
  Result := DefaultInterface.exit_ByReadTimeOutIsOn;
end;

procedure TCFD_DUDE.Set_exit_ByReadTimeOutIsOn(Value: WordBool);
begin
  DefaultInterface.exit_ByReadTimeOutIsOn := Value;
end;

function TCFD_DUDE.Get_read_TimeOutValue: Word;
begin
  Result := DefaultInterface.read_TimeOutValue;
end;

procedure TCFD_DUDE.Set_read_TimeOutValue(Value: Word);
begin
  DefaultInterface.read_TimeOutValue := Value;
end;

function TCFD_DUDE.Get_active_OnBeforeScriptExecute: WordBool;
begin
  Result := DefaultInterface.active_OnBeforeScriptExecute;
end;

function TCFD_DUDE.Get_active_OnScriptRowExecute: WordBool;
begin
  Result := DefaultInterface.active_OnScriptRowExecute;
end;

function TCFD_DUDE.Get_active_OnAfterScriptExecute: WordBool;
begin
  Result := DefaultInterface.active_OnAfterScriptExecute;
end;

function TCFD_DUDE.Get_active_OnFirstProgress_Init: WordBool;
begin
  Result := DefaultInterface.active_OnFirstProgress_Init;
end;

function TCFD_DUDE.Get_active_OnFirstProgress_Loop: WordBool;
begin
  Result := DefaultInterface.active_OnFirstProgress_Loop;
end;

function TCFD_DUDE.Get_active_OnFirstProgress_Complete: WordBool;
begin
  Result := DefaultInterface.active_OnFirstProgress_Complete;
end;

function TCFD_DUDE.Get_active_OnSecondProgress_Init: WordBool;
begin
  Result := DefaultInterface.active_OnSecondProgress_Init;
end;

function TCFD_DUDE.Get_active_OnSecondProgress_Loop: WordBool;
begin
  Result := DefaultInterface.active_OnSecondProgress_Loop;
end;

function TCFD_DUDE.Get_active_OnSecondProgress_Complete: WordBool;
begin
  Result := DefaultInterface.active_OnSecondProgress_Complete;
end;

function TCFD_DUDE.Get_active_OnSendCommand: WordBool;
begin
  Result := DefaultInterface.active_OnSendCommand;
end;

function TCFD_DUDE.Get_active_OnWait: WordBool;
begin
  Result := DefaultInterface.active_OnWait;
end;

function TCFD_DUDE.Get_active_OnReceiveAnswer: WordBool;
begin
  Result := DefaultInterface.active_OnReceiveAnswer;
end;

function TCFD_DUDE.Get_active_OnStatusChange: WordBool;
begin
  Result := DefaultInterface.active_OnStatusChange;
end;

function TCFD_DUDE.Get_active_OnError: WordBool;
begin
  Result := DefaultInterface.active_OnError;
end;

function TCFD_DUDE.Get_DocumentNumber_StartValue: Integer;
begin
  Result := DefaultInterface.DocumentNumber_StartValue;
end;

procedure TCFD_DUDE.Set_DocumentNumber_StartValue(Value: Integer);
begin
  DefaultInterface.DocumentNumber_StartValue := Value;
end;

function TCFD_DUDE.Get_DocumentNumber_EndValue: Integer;
begin
  Result := DefaultInterface.DocumentNumber_EndValue;
end;

procedure TCFD_DUDE.Set_DocumentNumber_EndValue(Value: Integer);
begin
  DefaultInterface.DocumentNumber_EndValue := Value;
end;

function TCFD_DUDE.Get_JEDocumentType: TDocumentTypes;
begin
  Result := DefaultInterface.JEDocumentType;
end;

procedure TCFD_DUDE.Set_JEDocumentType(Value: TDocumentTypes);
begin
  DefaultInterface.JEDocumentType := Value;
end;

function TCFD_DUDE.Get_ExchangePrinter: WordBool;
begin
  Result := DefaultInterface.ExchangePrinter;
end;

function TCFD_DUDE.Get_active_OnAfterCloseConnection: WordBool;
begin
  Result := DefaultInterface.active_OnAfterCloseConnection;
end;

function TCFD_DUDE.Get_active_OnAfterOpenConnection: WordBool;
begin
  Result := DefaultInterface.active_OnAfterOpenConnection;
end;

function TCFD_DUDE.Get_register_ActiveObject_OnStart: WordBool;
begin
  Result := DefaultInterface.register_ActiveObject_OnStart;
end;

function TCFD_DUDE.Get_active_OnAfterSettingsChange: WordBool;
begin
  Result := DefaultInterface.active_OnAfterSettingsChange;
end;

function TCFD_DUDE.Get_save_SettingsAfterOpenConnection: WordBool;
begin
  Result := DefaultInterface.save_SettingsAfterOpenConnection;
end;

function TCFD_DUDE.Get_checkDeviceStatusOnCheckConnection: WordBool;
begin
  Result := DefaultInterface.checkDeviceStatusOnCheckConnection;
end;

procedure TCFD_DUDE.Set_checkDeviceStatusOnCheckConnection(Value: WordBool);
begin
  DefaultInterface.checkDeviceStatusOnCheckConnection := Value;
end;

function TCFD_DUDE.set_TransportType(Value: TTransportProtocol): Integer;
begin
  Result := DefaultInterface.set_TransportType(Value);
end;

function TCFD_DUDE.set_TrackingMode_RowLimit(Value: Integer): Integer;
begin
  Result := DefaultInterface.set_TrackingMode_RowLimit(Value);
end;

function TCFD_DUDE.set_TrackingMode_FileName(const Value: WideString): Integer;
begin
  Result := DefaultInterface.set_TrackingMode_FileName(Value);
end;

function TCFD_DUDE.set_TrackingMode_Path(const Value: WideString): Integer;
begin
  Result := DefaultInterface.set_TrackingMode_Path(Value);
end;

function TCFD_DUDE.set_TrackingMode(Value: WordBool): Integer;
begin
  Result := DefaultInterface.set_TrackingMode(Value);
end;

function TCFD_DUDE.set_TCPIP(const IPAddress: WideString; Port: Word): Integer;
begin
  Result := DefaultInterface.set_TCPIP(IPAddress, Port);
end;

function TCFD_DUDE.set_RS232(ComPort: Integer; BaudRate: Integer): Integer;
begin
  Result := DefaultInterface.set_RS232(ComPort, BaudRate);
end;

function TCFD_DUDE.get_ErrorMessageByCode(Value: Integer): WideString;
begin
  Result := DefaultInterface.get_ErrorMessageByCode(Value);
end;

function TCFD_DUDE.get_SBit_State(byteIndex: Byte; bitIndex: Byte): WordBool;
begin
  Result := DefaultInterface.get_SBit_State(byteIndex, bitIndex);
end;

function TCFD_DUDE.get_SBit_Description(byteIndex: Byte; bitIndex: Byte): WideString;
begin
  Result := DefaultInterface.get_SBit_Description(byteIndex, bitIndex);
end;

function TCFD_DUDE.get_SBit_ErrorChecking(byteIndex: Byte; bitIndex: Byte): WordBool;
begin
  Result := DefaultInterface.get_SBit_ErrorChecking(byteIndex, bitIndex);
end;

function TCFD_DUDE.set_SBit_ErrorChecking(byteIndex: Byte; bitIndex: Byte; Value: WordBool): WordBool;
begin
  Result := DefaultInterface.set_SBit_ErrorChecking(byteIndex, bitIndex, Value);
end;

function TCFD_DUDE.open_Connection: Integer;
begin
  Result := DefaultInterface.open_Connection;
end;

function TCFD_DUDE.close_Connection: Integer;
begin
  Result := DefaultInterface.close_Connection;
end;

function TCFD_DUDE.execute_Command(Command: Integer; const input_Value: WideString; 
                                   var output_Value: WideString): Integer;
begin
  Result := DefaultInterface.execute_Command(Command, input_Value, output_Value);
end;

function TCFD_DUDE.execute_Script_V1(scriptType: TScriptType; const input_Value: WideString): Integer;
begin
  Result := DefaultInterface.execute_Script_V1(scriptType, input_Value);
end;

function TCFD_DUDE.set_Download_Path(const Value: WideString): Integer;
begin
  Result := DefaultInterface.set_Download_Path(Value);
end;

function TCFD_DUDE.get_SystemInfo(const SearchValue: WideString): WideString;
begin
  Result := DefaultInterface.get_SystemInfo(SearchValue);
end;

function TCFD_DUDE.get_SystemInfoSearchList: WideString;
begin
  Result := DefaultInterface.get_SystemInfoSearchList;
end;

function TCFD_DUDE.download_ANAF_ZRange: Integer;
begin
  Result := DefaultInterface.download_ANAF_ZRange;
end;

function TCFD_DUDE.download_ANAF_DTRange: Integer;
begin
  Result := DefaultInterface.download_ANAF_DTRange;
end;

procedure TCFD_DUDE.cancel_Loop;
begin
  DefaultInterface.cancel_Loop;
end;

function TCFD_DUDE.set_RS232_Timeouts(ReadIntervalTimeout: LongWord; 
                                      ReadTotalTimeoutMultiplier: LongWord; 
                                      ReadTotalTimeoutConstant: LongWord; 
                                      WriteTotalTimeoutMultiplier: LongWord; 
                                      WriteTotalTimeoutConstant: LongWord): Integer;
begin
  Result := DefaultInterface.set_RS232_Timeouts(ReadIntervalTimeout, ReadTotalTimeoutMultiplier, 
                                                ReadTotalTimeoutConstant, 
                                                WriteTotalTimeoutMultiplier, 
                                                WriteTotalTimeoutConstant);
end;

function TCFD_DUDE.rs232_COMPortList: WideString;
begin
  Result := DefaultInterface.rs232_COMPortList;
end;

function TCFD_DUDE.upload_Logo(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.upload_Logo(FileName);
end;

function TCFD_DUDE.upload_Stamp(const FileName: WideString; const StampName: WideString): Integer;
begin
  Result := DefaultInterface.upload_Stamp(FileName, StampName);
end;

function TCFD_DUDE.upload_Certificate(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.upload_Certificate(FileName);
end;

function TCFD_DUDE.upload_Profile(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.upload_Profile(FileName);
end;

function TCFD_DUDE.get_ComandsList(Index: Integer): WideString;
begin
  Result := DefaultInterface.get_ComandsList(Index);
end;

function TCFD_DUDE.get_CommandInfo(const command_Name: WideString; var Value: WideString): Integer;
begin
  Result := DefaultInterface.get_CommandInfo(command_Name, Value);
end;

function TCFD_DUDE.set_InputParam_ByIndex(const command_Name: WideString; param_Index: Integer; 
                                          const param_Value: WideString): Integer;
begin
  Result := DefaultInterface.set_InputParam_ByIndex(command_Name, param_Index, param_Value);
end;

function TCFD_DUDE.set_InputParam_ByName(const command_Name: WideString; 
                                         const param_Name: WideString; const param_Value: WideString): Integer;
begin
  Result := DefaultInterface.set_InputParam_ByName(command_Name, param_Name, param_Value);
end;

function TCFD_DUDE.execute_Command_ByName(const command_Name: WideString): Integer;
begin
  Result := DefaultInterface.execute_Command_ByName(command_Name);
end;

function TCFD_DUDE.get_InputParams_Count(const command_Name: WideString; var Value: Integer): Integer;
begin
  Result := DefaultInterface.get_InputParams_Count(command_Name, Value);
end;

function TCFD_DUDE.get_InputParams_Names(const command_Name: WideString; var Value: WideString): Integer;
begin
  Result := DefaultInterface.get_InputParams_Names(command_Name, Value);
end;

function TCFD_DUDE.get_OutputParams_Count(const command_Name: WideString; var Value: Integer): Integer;
begin
  Result := DefaultInterface.get_OutputParams_Count(command_Name, Value);
end;

function TCFD_DUDE.get_OutputParams_Names(const command_Name: WideString; var Value: WideString): Integer;
begin
  Result := DefaultInterface.get_OutputParams_Names(command_Name, Value);
end;

function TCFD_DUDE.get_OutputParam_ByIndex(const command_Name: WideString; param_Index: Integer; 
                                           var param_Value: WideString): Integer;
begin
  Result := DefaultInterface.get_OutputParam_ByIndex(command_Name, param_Index, param_Value);
end;

function TCFD_DUDE.get_OutputParam_ByName(const command_Name: WideString; 
                                          const param_Name: WideString; var param_Value: WideString): Integer;
begin
  Result := DefaultInterface.get_OutputParam_ByName(command_Name, param_Name, param_Value);
end;

function TCFD_DUDE.generate_SourceCode(const command_Name: WideString; code_Type: TCodeType): WideString;
begin
  Result := DefaultInterface.generate_SourceCode(command_Name, code_Type);
end;

function TCFD_DUDE.set_ScriptEvents(active_OnBeforeScriptExecute: WordBool; 
                                    active_OnScriptRowExecute: WordBool; 
                                    active_OnAfterScriptExecute: WordBool; save_ToSettings: WordBool): Integer;
begin
  Result := DefaultInterface.set_ScriptEvents(active_OnBeforeScriptExecute, 
                                              active_OnScriptRowExecute, 
                                              active_OnAfterScriptExecute, save_ToSettings);
end;

function TCFD_DUDE.set_FirstProgressEvents(active_OnFirstProgress_Init: WordBool; 
                                           active_OnFirstProgress_Loop: WordBool; 
                                           active_OnFirstProgress_Complete: WordBool; 
                                           save_ToSettings: WordBool): Integer;
begin
  Result := DefaultInterface.set_FirstProgressEvents(active_OnFirstProgress_Init, 
                                                     active_OnFirstProgress_Loop, 
                                                     active_OnFirstProgress_Complete, 
                                                     save_ToSettings);
end;

function TCFD_DUDE.set_SecondProgressEvents(active_OnSecondProgress_Init: WordBool; 
                                            active_OnSecondProgress_Loop: WordBool; 
                                            active_OnSecondProgress_Complete: WordBool; 
                                            save_ToSettings: WordBool): Integer;
begin
  Result := DefaultInterface.set_SecondProgressEvents(active_OnSecondProgress_Init, 
                                                      active_OnSecondProgress_Loop, 
                                                      active_OnSecondProgress_Complete, 
                                                      save_ToSettings);
end;

function TCFD_DUDE.set_CommunicationEvents(active_OnSendCommand: WordBool; active_OnWait: WordBool; 
                                           active_OnReceiveAnswer: WordBool; 
                                           active_OnStatusChange: WordBool; 
                                           active_OnError: WordBool; save_ToSettings: WordBool): Integer;
begin
  Result := DefaultInterface.set_CommunicationEvents(active_OnSendCommand, active_OnWait, 
                                                     active_OnReceiveAnswer, active_OnStatusChange, 
                                                     active_OnError, save_ToSettings);
end;

function TCFD_DUDE.print_Documents_ByNumbersRange(var printedDocuments: Integer): Integer;
begin
  Result := DefaultInterface.print_Documents_ByNumbersRange(printedDocuments);
end;

function TCFD_DUDE.print_Documents_ByDateRange(var printedDocuments: Integer): Integer;
begin
  Result := DefaultInterface.print_Documents_ByDateRange(printedDocuments);
end;

function TCFD_DUDE.get_Documents_ByNumbersRange(var receivedDocuments: Integer): Integer;
begin
  Result := DefaultInterface.get_Documents_ByNumbersRange(receivedDocuments);
end;

function TCFD_DUDE.get_Documents_ByDateRange(var receivedDocuments: Integer): Integer;
begin
  Result := DefaultInterface.get_Documents_ByDateRange(receivedDocuments);
end;

procedure TCFD_DUDE.DestroyInstance;
begin
  DefaultInterface.DestroyInstance;
end;

function TCFD_DUDE.set_BehaviorOnOpenClose(register_ActiveObjectOnStart: WordBool; 
                                           save_Settings_AfterOpenConnection: WordBool; 
                                           active_EventOnAfterOpenConnection: WordBool; 
                                           active_EventOnAfterCloseConnection: WordBool; 
                                           active_EventOnAfterSettingsChange: WordBool): Integer;
begin
  Result := DefaultInterface.set_BehaviorOnOpenClose(register_ActiveObjectOnStart, 
                                                     save_Settings_AfterOpenConnection, 
                                                     active_EventOnAfterOpenConnection, 
                                                     active_EventOnAfterCloseConnection, 
                                                     active_EventOnAfterSettingsChange);
end;

function TCFD_DUDE.tq_Add_Transaction(var HeaderID: WideString): Integer;
begin
  Result := DefaultInterface.tq_Add_Transaction(HeaderID);
end;

function TCFD_DUDE.tq_Add_TrScriptItem(const HeaderID: WideString; var ScriptID: WideString): Integer;
begin
  Result := DefaultInterface.tq_Add_TrScriptItem(HeaderID, ScriptID);
end;

function TCFD_DUDE.tq_Delete_TrByHeader(const HeaderID: WideString): Integer;
begin
  Result := DefaultInterface.tq_Delete_TrByHeader(HeaderID);
end;

function TCFD_DUDE.tq_Delete_TrByIndex(Index: Integer): Integer;
begin
  Result := DefaultInterface.tq_Delete_TrByIndex(Index);
end;

function TCFD_DUDE.tq_Delete_OldTransactions: Integer;
begin
  Result := DefaultInterface.tq_Delete_OldTransactions;
end;

function TCFD_DUDE.tq_Set_TrScriptItem(const HeaderID: WideString; const ScriptItemID: WideString; 
                                       const VariableName: WideString; 
                                       const VariableValue: WideString): Integer;
begin
  Result := DefaultInterface.tq_Set_TrScriptItem(HeaderID, ScriptItemID, VariableName, VariableValue);
end;

function TCFD_DUDE.tq_Clear_TrScript(const HeaderID: WideString): Integer;
begin
  Result := DefaultInterface.tq_Clear_TrScript(HeaderID);
end;

function TCFD_DUDE.tq_Execute_Transaction(const HeaderID: WideString): Integer;
begin
  Result := DefaultInterface.tq_Execute_Transaction(HeaderID);
end;

function TCFD_DUDE.tq_Execute_AllTransactions(OrderType: Integer): Integer;
begin
  Result := DefaultInterface.tq_Execute_AllTransactions(OrderType);
end;

function TCFD_DUDE.tq_Get_Array_HeadersID(var HeadersIDArray: WideString): Integer;
begin
  Result := DefaultInterface.tq_Get_Array_HeadersID(HeadersIDArray);
end;

function TCFD_DUDE.tq_Get_Array_ScriptsID(const HeaderID: WideString; var ScriptsIDArray: WideString): Integer;
begin
  Result := DefaultInterface.tq_Get_Array_ScriptsID(HeaderID, ScriptsIDArray);
end;

function TCFD_DUDE.tq_Get_Array_ErrorsID(var ErrorsIDArray: WideString): Integer;
begin
  Result := DefaultInterface.tq_Get_Array_ErrorsID(ErrorsIDArray);
end;

function TCFD_DUDE.tq_Get_HeaderItem_Value(const HeaderID: WideString; 
                                           const VariableName: WideString; 
                                           var VariableValue: WideString): Integer;
begin
  Result := DefaultInterface.tq_Get_HeaderItem_Value(HeaderID, VariableName, VariableValue);
end;

function TCFD_DUDE.tq_Get_ScriptItem_Value(const HeaderID: WideString; 
                                           const ScriptItemID: WideString; 
                                           const VariableName: WideString; 
                                           var VariableValue: WideString): Integer;
begin
  Result := DefaultInterface.tq_Get_ScriptItem_Value(HeaderID, ScriptItemID, VariableName, 
                                                     VariableValue);
end;

function TCFD_DUDE.tq_Get_ErrorsItem_Value(const ErrorsID: WideString; 
                                           const VariableName: WideString; 
                                           var VariableValue: WideString): Integer;
begin
  Result := DefaultInterface.tq_Get_ErrorsItem_Value(ErrorsID, VariableName, VariableValue);
end;

function TCFD_DUDE.tq_Get_LastErrorItem_ByHeaderID(const HeaderID: WideString; 
                                                   const VariableName: WideString; 
                                                   var VariableValue: WideString): Integer;
begin
  Result := DefaultInterface.tq_Get_LastErrorItem_ByHeaderID(HeaderID, VariableName, VariableValue);
end;

function TCFD_DUDE.tq_Save_LastErrors(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.tq_Save_LastErrors(FileName);
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TCFD_DUDE]);
end;

end.
