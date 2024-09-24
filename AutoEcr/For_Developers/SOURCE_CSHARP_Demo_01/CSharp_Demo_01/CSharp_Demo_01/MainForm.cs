using System;
using System.Drawing;
using System.Text;
using System.IO;
using System.Reflection;
using System.Collections.Generic;
using System.Windows.Forms;
using dude;
using System.Threading;
using System.Globalization;
using System.Diagnostics;
using System.Runtime.InteropServices;


namespace CSharp_Demo_01
{


    public partial class fm : Form
    {
        private bool inCommand = false;
        private bool invalidCharacter1;
        private string command_Name = "";
        private bool fWeHaveWaitEvent;
        private byte fSYNCount;
        private byte fAppMessCount;
        private dude.CFD_DUDE serv;
        private bool fComServer_Started;
        private TDudeLanguage fLanguage;
        private bool fDevice_Connected;
        private int fComPort;
        private bool fLAN_Connected;
        private int fBaudRate;
        private int fLastError_Code;
        private string fLastError_Message;
        private bool fMyAfterCaseFlag;
        private EAfterCase fAfterCase;        
        private bool active_OnAfterCloseConnection;
        private bool active_OnAfterOpenConnection;
        private bool active_OnAfterSettingsChange;
        private bool registerActiveObject;
        private bool save_Settings_AfterOpenConnection;

        public int error_Code;

        enum TransportProtocol
        {
            RS232 = 0,
            TCPIP
        }

        public enum EAfterCase              //
        {
            ac_AfterStart_Program,   // After start of the program
            ac_AfterStart_Server,    //
            ac_AfterOpenConnection,  // After open connection to the device
            ac_AfterCloseConnection, // After close connection to the device
            ac_AfterStopServer,      //
            ac_AfterSettingsChange   // After changes from other client application
        }

        public EAfterCase afterCase
        {
            get { return fAfterCase; }
            set { SetAfterCase(value); }
        }

        public TDudeLanguage language
        {
            get { return fLanguage; }
            set { fLanguage = value; SetLanguage(); }
        }

        public bool lan_Connected
        {
            get { return fLAN_Connected; }
            set { fLAN_Connected = value; SetLAN_Connected(); }
        }
        public bool comServer_Started
        {
            get { return fComServer_Started; }
            set { fComServer_Started = value; SetComServerStarted(); }
        }

        public int comPort
        {
            get { return fComPort; }
            set { fComPort = value; }
        }

        public int BaudRate
        {
            get { return fBaudRate; }
            set { fBaudRate = value; }
        }

        public int lastError_Code
        {
            get { return fLastError_Code; }
        }
        public string LastError_Message
        {
            get { return fLastError_Message; }
        }

        public bool device_Connected
        {
            get { return fDevice_Connected; }
            set { fDevice_Connected = value; SetDevice_Connected(); }
        }
        public fm()
        {
            InitializeComponent();
        }

        private void Serv_OnScriptRowExecute(int row_Index, int error_Code, ref string input_Value, ref string output_Value)
        {
            // string tmp_input_Value = input_Value != null ? input_Value : "";
            string tmp_output_Value = output_Value != null ? output_Value : "";

            this.BeginInvoke((MethodInvoker)(() =>
            {
                lbx_Errors.Items.Clear();
                if (error_Code != 0)
                {
                    DateTime date = DateTime.Now;
                    lbx_Errors.Items.Add("Line[" + row_Index.ToString() + "] [" + date.ToString("dd-MM-yy HH:mm:ss") + "] ErrCode[" + error_Code.ToString() + "]: " + tmp_output_Value);
                    get_StatusState();
                }

            }));


        }

        private void SetAfterCase(EAfterCase value)
        {
            fAfterCase = value;

            Set_Other(value);
            Set_CheckBoxes(value);            
        }

        private void Set_CheckBoxes(EAfterCase afterCase)
        {
            try
            {
                switch (afterCase)
                {
                    case EAfterCase.ac_AfterStopServer:
                    case EAfterCase.ac_AfterStart_Program:
                        {
                            chbx_Active_OnBeforeScriptExecute.Checked = false;
                            chbx_Active_OnScriptRowExecute.Checked = false;
                            chbx_Active_OnAfterScriptExecute.Checked = false;
                            chbx_Active_OnSendCommand.Checked = false;
                            chbx_Active_OnWait.Checked = false;
                            chbx_Active_OnReceiveAnswer.Checked = false;
                            chbx_Active_OnStatusChange.Checked = false;
                            chbx_Active_OnError.Checked = false;
                            chbx_Active_OnFirstProgress_Init.Checked = false;
                            chbx_Active_OnFirstProgress_Loop.Checked = false;
                            chbx_Active_OnFirstProgress_Complete.Checked = false;
                            chbx_Active_OnSecondProgress_Init.Checked = false;
                            chbx_Active_OnSecondProgress_Loop.Checked = false;
                            chbx_Active_OnSecondProgress_Complete.Checked = false;
                            chbx_TrackingMode.Checked = false;
                            chkActive_OnAfterOpenConnection.Checked = false;
                            chkActive_OnAfterCloseConnection.Checked = false;
                            chkRegisterActiveObject.Checked = false;
                            chkSave_Settings_AfterOpenConnection.Checked = false;
                            chk_CheckDeviceStatus.Checked = false;
                            chbx_TrackingMode.Checked = false;
                            chkActive_OnAfterSettingsChange.Checked = false;
                            pnl_Progress.Visible = false;
                            pnl_Errors.Visible = false;
                            pnl_StatusBytes.Visible = false;                           
                            break;
                        }
                   
                    case EAfterCase.ac_AfterStart_Server:
                    case EAfterCase.ac_AfterSettingsChange:
                        {
                            get_ActiveEvents();
                            if (serv.connected_ToDevice)
                            {
                                pnl_StatusBytes.Visible = true;
                                pnl_Progress.Visible = true;
                                pnl_Errors.Visible = true;
                            }                            
                            break;

                        }
                    case EAfterCase.ac_AfterCloseConnection:
                        {
                            pnl_StatusBytes.Visible = false;
                            pnl_Progress.Visible = false;
                            pnl_Errors.Visible = false;
                            break;
                        }
                    case EAfterCase.ac_AfterOpenConnection:
                        {
                            get_StatusState();
                            pnl_StatusBytes.Visible = true;
                            pnl_Progress.Visible = true;
                            pnl_Errors.Visible = true;
                            break;
                        }
                }
            }

            finally
            {
                //this.Refresh();
            }
        }

        private void Set_Other(EAfterCase afterCase)
        {
            try
            {
                switch (afterCase)
                {
                    case EAfterCase.ac_AfterStopServer:
                    case EAfterCase.ac_AfterStart_Program:
                        {

                            pnl_Errors.Visible = false;
                            pnl_Progress.Visible = false;
                            pnl_StatusBytes.Visible = false;
                            cbx_ToggleSwitch.Enabled = false;
                            rtbx_HumanLog.Clear();
                            rtbx_HEXLog.Clear();
                            break;
                        }
                    case EAfterCase.ac_AfterCloseConnection:
                    case EAfterCase.ac_AfterStart_Server:
                        {

                            pnl_Errors.Visible = false;
                            pnl_Progress.Visible = false;
                            pnl_StatusBytes.Visible = false;
                            cbx_ToggleSwitch.Enabled = true;

                            if (comServer_Started)
                            {
                                switch (serv.protocol_TransportType)
                                {

                                    case TTransportProtocol.ctc_RS232: { cbx_ToggleSwitch.SelectedIndex = 0; break; }
                                    case TTransportProtocol.ctc_TCPIP: { cbx_ToggleSwitch.SelectedIndex = 1; break; }
                                }
                                get_StatusState();
                                btn_OpenConnection.Enabled = !serv.connected_ToDevice;
                                btn_StopConnection.Enabled = serv.connected_ToDevice;
                                tc_Main.TabPages.Remove(tp_CustomCmds);
                                //this.tp_CustomScript.Hide();
                                tc_Main.TabPages.Remove(tp_CustomScript);
                                this.tp_ANAF.Hide();
                                tc_Main.TabPages.Remove(tp_ANAF);
                                this.tp_SystemInfo.Hide();
                                tc_Main.TabPages.Remove(tp_SystemInfo);
                                this.tp_GetCommandList.Hide();
                                tc_Main.TabPages.Remove(tp_GetCommandList);
                                this.tp_Properties.Hide();
                                tc_Main.TabPages.Remove(tp_Properties);
                                this.tp_Behaviour.Hide();
                                tc_Main.TabPages.Remove(tp_Behaviour);
                                tc_Main.SelectedTab = tp_InitConnect;
                            }
                            break;

                        }
                    case EAfterCase.ac_AfterSettingsChange:
                        {
                            cbx_ToggleSwitch.Enabled = !serv.connected_ToDevice;
                            if (serv.connected_ToDevice)
                            {
                                pnl_Errors.Visible = true;
                                pnl_Progress.Visible = true;
                                pnl_StatusBytes.Visible = true;
                                //get_StatusState();
                            }
                            else
                            {
                                pnl_Errors.Visible = false;
                                pnl_Progress.Visible = false;
                                pnl_StatusBytes.Visible = false;
                                cbx_ToggleSwitch.Enabled = true;
                                btn_OpenConnection.Enabled = !serv.connected_ToDevice;
                                btn_StopConnection.Enabled = serv.connected_ToDevice;
                                tc_Main.TabPages.Remove(tp_CustomCmds);
                                this.tp_CustomScript.Hide();
                                tc_Main.TabPages.Remove(tp_CustomScript);
                                this.tp_ANAF.Hide();
                                tc_Main.TabPages.Remove(tp_ANAF);
                                this.tp_SystemInfo.Hide();
                                tc_Main.TabPages.Remove(tp_SystemInfo);
                                this.tp_GetCommandList.Hide();
                                tc_Main.TabPages.Remove(tp_GetCommandList);
                                this.tp_Properties.Hide();
                                tc_Main.TabPages.Remove(tp_Properties);
                                this.tp_Behaviour.Hide();
                                tc_Main.TabPages.Remove(tp_Behaviour);
                                tc_Main.SelectedTab = tp_InitConnect;
                            }
                            break;
                        }
                    case EAfterCase.ac_AfterOpenConnection:
                        {
                            cbx_ToggleSwitch.Enabled = false;
                            pnl_Errors.Visible = true;
                            pnl_Progress.Visible = true;
                            pnl_StatusBytes.Visible = true;
                            btn_OpenConnection.Enabled = !serv.connected_ToDevice;
                            btn_StopConnection.Enabled = serv.connected_ToDevice;
                            
                            tc_Main.TabPages.Add(tp_Properties);
                            this.tp_Properties.Show();
                            
                            tc_Main.TabPages.Add(tp_Behaviour);
                            this.tp_Behaviour.Show();
                            tc_Main.TabPages.Add(tp_SystemInfo);
                            this.tp_SystemInfo.Show();                           
                            tc_Main.TabPages.Add(tp_CustomCmds);
                            this.tp_CustomCmds.Show();
                            tc_Main.TabPages.Add(tp_CustomScript);
                            this.tp_CustomScript.Show();                            
                            tc_Main.TabPages.Add(tp_ANAF);
                            this.tp_ANAF.Show();
                            tc_Main.TabPages.Add(tp_GetCommandList);
                            this.tp_GetCommandList.Show();
                           
                            
                            tc_Main.SelectedTab = tp_Properties;
                            rtbx_HumanLog.Clear();
                            rtbx_HEXLog.Clear();
                            get_StatusState();
                            break;
                        }
                }
            }

            finally
            {
                //this.Refresh();
            }
        }

        private void Serv_OnBeforeScriptExecute()
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                enableScriptBtns(false);
                try
                {

                    scrollToEnd(rtbx_HumanLog);
                    initForSniffer(rtbx_HumanLog);
                    scrollToEnd(rtbx_HEXLog);
                    initForSniffer(rtbx_HEXLog);

                    switch (cbx_PageChoice.SelectedIndex)
                    {

                        case 0:
                            {
                                tc_ScriptContainer.SelectedTab = tp_HumanLog;
                                break;
                            }
                        case 1:
                            {
                                tc_ScriptContainer.SelectedTab = tp_HEX;
                                break;
                            }
                        default:
                            {
                                tc_ScriptContainer.SelectedTab = tp_SimpleScript;
                                break;
                            }
                    }
                }

                finally
                {

                }
            }));
        }

        private bool SetLAN_Connected()
        {
            if (fLAN_Connected)
            {
                lb_AnswerLANConnected.Text = "Available";
                return true;
            }
            else
            {
                lb_AnswerLANConnected.Text = "Not available";
                return false;
            }

        }

        private void initForSniffer(RichTextBox targetLogEditor)
        {
            targetLogEditor.SelectionStart = targetLogEditor.TextLength;

            if (targetLogEditor.Lines.Length > 0)

            {

                targetLogEditor.SelectedText = "\r\n"; // #13#10;
                targetLogEditor.SelectionStart = targetLogEditor.TextLength;
            }
            targetLogEditor.SelectionLength = 9;
            targetLogEditor.SelectionFont = new Font(targetLogEditor.Font, FontStyle.Bold);
        }

        private void scrollToEnd(RichTextBox targetEditor)
        {
            bool isSelectionHidden;

            targetEditor.Select(0, targetEditor.Text.Length - 1); // set caret to end
            targetEditor.SelectionLength = 0;
            isSelectionHidden = targetEditor.HideSelection;
            try
            {
                targetEditor.HideSelection = false;
                targetEditor.ScrollToCaret(); // scroll to caret
            }
            finally
            {
                targetEditor.HideSelection = isSelectionHidden;
            }
        }

        private void Serv_OnError(int error_Code, ref string error_Message)
        {
            string tmp_error_Message = error_Message != null ? error_Message : "";

            this.BeginInvoke((MethodInvoker)(() =>
            {
                DateTime date = DateTime.Now;
                lbx_Errors.Items.Add("[" + date.ToString("dd-MM-yy HH:mm:ss") + "] ErrCode[" + error_Code.ToString() + "]: " + tmp_error_Message);
                get_StatusState();
            }));
        }

        private TDudeLanguage SetLanguage()
        {
            if (fLanguage == TDudeLanguage.English)
            {
                lb_AnswerDriverLanguage.Text = "English";
                cbx_Language.SelectedIndex = 0;
                fLanguage = TDudeLanguage.English;
                return TDudeLanguage.English;
            }
            else
            {
                lb_AnswerDriverLanguage.Text = "Romanian";
                cbx_Language.SelectedIndex = 1;
                fLanguage = TDudeLanguage.Romanian;
                return TDudeLanguage.Romanian;
            }
        }
        private void set_ANAF_Ranges()
        {
            void set_Visibility(bool to_Value)
            {
                lb_StartZNum.Enabled = !to_Value;
                tbx_StartZNum.Enabled = !to_Value;
                lb_EndZNum.Enabled = !to_Value;
                tbx_EndZNum.Enabled = !to_Value;

                lb_StartDate.Enabled = to_Value;
                dtp_StartDate.Enabled = to_Value;
                dtp_StartTime.Enabled = to_Value;
                lb_EndDate.Enabled = to_Value;
                dtp_EndDate.Enabled = to_Value;
                dtp_EndTime.Enabled = to_Value;
                chbx_DST.Enabled = to_Value;
            }

            try
            {
                switch (cbx_RangeType.SelectedIndex)
                {

                    case 0:
                        {

                            set_Visibility(true);
                            if ((tc_Main.SelectedTab == tp_ANAF) && (dtp_StartDate.Enabled)) dtp_StartDate.Focus();
                            break;
                        }
                    case 1:
                        {

                            set_Visibility(false);
                            if ((tc_Main.SelectedTab == tp_ANAF) && (tbx_StartZNum.Enabled)) tbx_StartZNum.Focus();
                            break;
                        }
                }
            }
            finally
            {
                this.Refresh();
            }

        }


        private void init_Labels()
        {
            string textNone = "...";

            lb_AnswerDriverLanguage.Text = textNone;
            lb_AnswerDeviceConnected.Text = textNone;
            lb_AnswerLANConnected.Text = textNone;
            lb_AnswerDeviceType.Text = textNone;
            lb_AnswerModelName.Text = textNone;
            lb_AnswerSerialNum.Text = textNone;
            lb_AnswerFirmwareRevision.Text = textNone;
            lb_AnswerFirmwareDate.Text = textNone;
            lb_AnswerFirmwareCheckSum.Text = textNone;
            lb_AnswerCodePage.Text = textNone;
            lb_AnswerDistributor.Text = textNone;
            chbx_Active_OnBeforeScriptExecute.Checked = false;
            chbx_Active_OnScriptRowExecute.Checked = false;
            chbx_Active_OnAfterScriptExecute.Checked = false;
            chbx_Active_OnSendCommand.Checked = false;
            chbx_Active_OnWait.Checked = false;
            chbx_Active_OnReceiveAnswer.Checked = false;
            chbx_Active_OnStatusChange.Checked = false;
            chbx_Active_OnError.Checked = false;
            chbx_Active_OnFirstProgress_Init.Checked = false;
            chbx_Active_OnFirstProgress_Loop.Checked = false;
            chbx_Active_OnFirstProgress_Complete.Checked = false;
            chbx_Active_OnSecondProgress_Init.Checked = false;
            chbx_Active_OnSecondProgress_Loop.Checked = false;
            chbx_Active_OnSecondProgress_Complete.Checked = false;
            chbx_TrackingMode.Checked = false;
            tbx_TrackingModePath.Text = "";
            tbx_TrackingModeFileName.Text = "";
            tbx_TrackingModeRowLimit.Text = "0";
            btn_SetTrackingMode.Enabled = false;
        }

        private void enableScriptBtns(bool toValue)
        {
            btn_ExecuteSimpleScript.Enabled = toValue;
            btn_ExecuteSelected.Enabled = toValue;
            btn_DeleteScript.Enabled = toValue;
            btn_DeleteOutput.Enabled = toValue;
            btn_Cancel.Enabled = !toValue;
        }

        private void get_StatusState()
        {
            get_Statuses();
            display_StatusState(get_Statuses());
        }

        private void display_StatusState(bool[,] state)
        {
            byte i, j;
            CheckBox ch;
            string name = "";
            bool tmpState;


            if (!(comServer_Started)) return;
            for (i = 0; i <= 7; i++)
            {
                for (j = 0; j <= 7; j++)
                {
                    tmpState = state[i, j];
                    name = "chbx_S" + i.ToString() + "_" + j.ToString();
                    ch = checkboxes[i, j];
                    if (ch != null)
                    {
                        ch.Checked = tmpState;
                    }
                }
            }
        }

        private void get_StatusDescriptions()
        {
            byte i, j;
            Control ch;
            Panel pnl;
            string tmpDescription, name;
            bool tmpCheckForErr;
            if (!(comServer_Started)) return;
            pnl = (Panel)this.Controls["pnl_StatusBytes"];
            if (this.Controls["pnl_StatusBytes"] != null)
            {

                for (i = 0; i <= 7; i++)
                {
                    for (j = 0; j <= 7; j++)
                    {
                        tmpDescription = serv.get_SBit_Description(i, j);
                        tmpCheckForErr = serv.get_SBit_ErrorChecking(i, j);
                        name = "chbx_S" + i.ToString() + "_" + j.ToString();
                        ch = this.Controls["pnl_StatusBytes"].Controls["grbx_StatusByte_" + i.ToString()].Controls[name];
                        if (ch != null)
                        {
                            ch.Text = tmpDescription;
                            if (tmpCheckForErr)
                            {
                                ch.Font = new Font(ch.Font, FontStyle.Bold);
                            }
                            else
                            {
                                ch.Font = new Font(ch.Font, FontStyle.Regular);
                            }

                        }
                    }
                }
            }
        }

        private bool SetDevice_Connected()
        {
            lb_Port.Enabled = (fComServer_Started) && (!(fDevice_Connected)) && (cbx_ToggleSwitch.SelectedIndex == 1);
            tbx_LANPort.Enabled = (fComServer_Started) && (!(fDevice_Connected)) && (cbx_ToggleSwitch.SelectedIndex == 1);
            lb_IPAddress.Enabled = (fComServer_Started) && (!(fDevice_Connected)) && (cbx_ToggleSwitch.SelectedIndex == 1);
            tbx_IPAddress.Enabled = (fComServer_Started) && (!(fDevice_Connected)) && (cbx_ToggleSwitch.SelectedIndex == 1);
            lb_ComPort.Enabled = (fComServer_Started) && (!(fDevice_Connected)) && (cbx_ToggleSwitch.SelectedIndex == 0);
            tbx_ComPort.Enabled = (fComServer_Started) && (!(fDevice_Connected)) && (cbx_ToggleSwitch.SelectedIndex == 0);
            lb_BaudRate.Enabled = (fComServer_Started) && (!(fDevice_Connected)) && (cbx_ToggleSwitch.SelectedIndex == 0);
            tbx_BaudRate.Enabled = (fComServer_Started) && (!(fDevice_Connected)) && (cbx_ToggleSwitch.SelectedIndex == 0);

            cbx_ToggleSwitch.Enabled = (fComServer_Started) && (!(fDevice_Connected));
            btn_OpenConnection.Enabled = (fComServer_Started) && (!(fDevice_Connected));
            btn_StopConnection.Enabled = (fComServer_Started) && ((fDevice_Connected));

            if (fDevice_Connected)
            {

                lb_AnswerDeviceConnected.Text = "Connected";
                switch (serv.device_Type)
                {
                    case TDeviceType.dt_FiscalPrinter:
                        {
                            lb_AnswerDeviceType.Text = "Fiscal printer";
                            break;
                        }
                    case TDeviceType.dt_ECR:
                        {
                            lb_AnswerDeviceType.Text = "Cash register";
                            break;
                        }
                }
                lb_AnswerModelName.Text = serv.device_Model_Name;
                lb_AnswerSerialNum.Text = serv.device_Number_Serial;
                lb_AnswerFirmwareRevision.Text = serv.device_Firmware_Revision;
                lb_AnswerFirmwareDate.Text = serv.device_Firmware_Date;
                lb_AnswerFirmwareCheckSum.Text = serv.device_Firmware_CheckSum;
                lb_AnswerCodePage.Text = serv.codePage.ToString();
                lb_AnswerDistributor.Text = serv.device_Distributor;
                chbx_TrackingMode.Checked = serv.trackingMode;
                tbx_TrackingModePath.Text = serv.trackingMode_Path;
                tbx_TrackingModeFileName.Text = serv.trackingMode_FileName;
                tbx_TrackingModeRowLimit.Text = serv.trackingMode_RowLimit.ToString();
                btn_SetTrackingMode.Enabled = true;               
                tc_Main.SelectedTab = tp_Properties;
                pnl_StatusBytes.Visible = fDevice_Connected;
                pnl_Errors.Visible = fDevice_Connected;
                pnl_Progress.Visible = fDevice_Connected;
                get_StatusDescriptions();
                get_StatusState();
                get_ActiveEvents();
                return true;
            }
            else
            {
                init_Labels();
                if (fComServer_Started)
                {
                    if (serv != null)
                    {

                        lb_AnswerDeviceConnected.Text = "Not connected";
                        fLanguage = serv.language;
                        SetLanguage();
                        fLAN_Connected = serv.connected_ToLAN;
                        SetLAN_Connected();
                    }
                }
                //this.tp_CustomCmds.Hide();
                tc_Main.TabPages.Remove(tp_CustomCmds);
                //this.tp_CustomScript.Hide();
                tc_Main.TabPages.Remove(tp_CustomScript);
                this.tp_ANAF.Hide();
                tc_Main.TabPages.Remove(tp_ANAF);
                this.tp_SystemInfo.Hide();
                tc_Main.TabPages.Remove(tp_SystemInfo);
                this.tp_GetCommandList.Hide();
                tc_Main.TabPages.Remove(tp_GetCommandList);
                this.tp_Properties.Hide();
                tc_Main.TabPages.Remove(tp_Properties);
                this.tp_Behaviour.Hide();
                tc_Main.TabPages.Remove(tp_Behaviour);
                tc_Main.SelectedTab = tp_InitConnect;
                pnl_StatusBytes.Visible = fDevice_Connected;
                pnl_Errors.Visible = fDevice_Connected;
                pnl_Progress.Visible = fDevice_Connected;
                return false;
            }


        }

        private bool SetComServerStarted()
        {
            btn_StartComServer.Enabled = !(fComServer_Started);
            btn_StopComServer.Enabled = fComServer_Started;

            lb_ComPort.Enabled = fComServer_Started;
            tbx_ComPort.Enabled = fComServer_Started;
            lb_BaudRate.Enabled = fComServer_Started;
            tbx_BaudRate.Enabled = fComServer_Started;

            lb_IPAddress.Enabled = fComServer_Started;
            tbx_IPAddress.Enabled = fComServer_Started;
            lb_Port.Enabled = fComServer_Started;
            tbx_LANPort.Enabled = fComServer_Started;

            btn_OpenConnection.Enabled = (fComServer_Started) && (!(fDevice_Connected));
            btn_StopConnection.Enabled = (fComServer_Started) && (fDevice_Connected);
            btn_SetDriverLanguage.Enabled = (fComServer_Started);
            cbx_Language.Enabled = (fComServer_Started);

            if (fComServer_Started)
            {
                switch (serv.protocol_TransportType)
                {

                    case TTransportProtocol.ctc_RS232: { cbx_ToggleSwitch.SelectedIndex = 0; break; }
                    case TTransportProtocol.ctc_TCPIP: { cbx_ToggleSwitch.SelectedIndex = 1; break; }
                }
                tbx_ComPort.Text = serv.rs232_ComPort.ToString();
                tbx_BaudRate.Text = serv.rs232_BaudRate.ToString();
                tbx_LANPort.Text = serv.tcpip_Port.ToString();
                tbx_IPAddress.Text = serv.tcpip_Address;
                fLanguage = serv.language;
                SetLanguage();
                fDevice_Connected = serv.connected_ToDevice;
                SetDevice_Connected();
                fLAN_Connected = serv.connected_ToLAN;
                SetLAN_Connected();
                get_ActiveEvents();
                return true;
            }
            else
            {
                init_Labels();
                return false;
            }
        }

        private CheckBox[,] checkboxes = new CheckBox[8, 8];

        private void fm_Load(object sender, EventArgs e)
        {
            for (int i = 0; i <= 7; i++)
            {
                for (int j = 0; j <= 7; j++)
                {
                    var name = "chbx_S" + i.ToString() + "_" + j.ToString();
                    checkboxes[i, j] = (CheckBox)this.Controls["pnl_StatusBytes"].Controls["grbx_StatusByte_" + i.ToString()].Controls[name];
                }
            }

            this.DoubleBuffered = true;
            backgroundWorker1.RunWorkerAsync();
            fWeHaveWaitEvent = false;
            fMyAfterCaseFlag = false;
            cbx_CodeType.SelectedIndex = 0;
            cbx_HumanNames.SelectedIndex = 0;
            cbx_PageChoice.SelectedIndex = 0;
            cbx_ToggleSwitch.SelectedIndex = 0;
            cbx_RangeType.SelectedIndex = 1;
            comServer_Started = false;
            device_Connected = false;
            comPort = 1;
            fLastError_Code = 0;
            fLastError_Message = "";
            invalidCharacter1 = false;
            this.tp_CustomCmds.Hide();
            tc_Main.TabPages.Remove(tp_CustomCmds);
            this.tp_SystemInfo.Hide();
            tc_Main.TabPages.Remove(tp_SystemInfo);
            this.tp_ANAF.Hide();
            tc_Main.TabPages.Remove(tp_ANAF);
            this.tp_GetCommandList.Hide();
            tc_Main.TabPages.Remove(tp_GetCommandList);
            this.tp_Properties.Hide();
            tc_Main.TabPages.Remove(tp_Properties);
            this.tp_Behaviour.Hide();
            tc_Main.TabPages.Remove(tp_Behaviour);

            pnl_StatusBytes.Visible = false;
            pnl_Errors.Visible = false;
            pnl_Progress.Visible = false;
            btn_OpenConnection.Enabled = false;
            btn_SetDriverLanguage.Enabled = false;
            cbx_Language.Enabled = false;
            btn_StopComServer.Enabled = false;
            btn_StopConnection.Enabled = false;
            lb_Port.Enabled = false;
            tbx_LANPort.Enabled = false;
            lb_IPAddress.Enabled = false;
            tbx_IPAddress.Enabled = false;
            lb_ComPort.Enabled = false;
            tbx_ComPort.Enabled = false;
            lb_BaudRate.Enabled = false;
            tbx_BaudRate.Enabled = false;
            cbx_Language.SelectedIndex = 0;
        }

        private void tbx_BaudRate_KeyDown(object sender, KeyEventArgs e)
        {
            int key = e.KeyValue;

            if ((key <= 57 && key >= 48) || e.KeyData == Keys.Back || (e.KeyData >= Keys.NumPad0 && e.KeyData <= Keys.NumPad9))
            {
                invalidCharacter1 = false;
            }
            else
            {
                invalidCharacter1 = true;
            }
        }

        private void tbx_BaudRate_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }

        private void tbx_ComPort_KeyDown(object sender, KeyEventArgs e)
        {
            int key = e.KeyValue;

            if ((key <= 57 && key >= 48) || e.KeyData == Keys.Back || (e.KeyData >= Keys.NumPad0 && e.KeyData <= Keys.NumPad9))
            {
                invalidCharacter1 = false;
            }
            else
            {
                invalidCharacter1 = true;
            }
        }

        private void tbx_ComPort_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }

        private void tbx_LANPort_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }

        private void tbx_LANPort_KeyDown(object sender, KeyEventArgs e)
        {
            int key = e.KeyValue;

            if ((key <= 57 && key >= 48) || e.KeyData == Keys.Back || (e.KeyData >= Keys.NumPad0 && e.KeyData <= Keys.NumPad9))
            {
                invalidCharacter1 = false;
            }
            else
            {
                invalidCharacter1 = true;
            }
        }

        private void tbx_IPAddress_KeyDown(object sender, KeyEventArgs e)
        {
            int key = e.KeyValue;

            if ((key <= 57 && key >= 48) || (e.KeyData == Keys.Back) || (e.KeyData == Keys.OemPeriod) || (e.KeyData == Keys.Decimal) || (e.KeyData >= Keys.NumPad0 && e.KeyData <= Keys.NumPad9))
            {
                invalidCharacter1 = false;
            }
            else
            {
                invalidCharacter1 = true;
            }
        }

        private void tbx_IPAddress_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }
        private bool try_ToStartCOMServer()
        {
            Object running_obj = null;
            try
            {
                try
                {
                    // Check if another instance of COM server is running
                    running_obj = System.Runtime.InteropServices.Marshal.GetActiveObject("dude.CFD_DUDE");
                }
                catch (System.Exception)
                {
                    //failed to find the object;
                }
                if (running_obj != null) serv = (CFD_DUDE)System.Runtime.InteropServices.Marshal.GetActiveObject("dude.CFD_DUDE");
                else serv = new CFD_DUDE();
                return true;
            }
            catch
            {
                MessageBox.Show("The program cannot detect driver!" + "\r\n" + "Please install 'Datecs Universal Driver Engine - COMServer' or call the support team!");
                return false;
                
            }
        }

        private void btn_StartComServer_Click(object sender, EventArgs e)
        {
            try
            {

                if (try_ToStartCOMServer())
                {
                    pnl_Settings.Enabled = true;
                    this.serv.OnError += Serv_OnError;
                    this.serv.OnBeforeScriptExecute += Serv_OnBeforeScriptExecute;
                    this.serv.OnScriptRowExecute += Serv_OnScriptRowExecute;
                    this.serv.OnFirstProgress_Complete += Serv_OnFirstProgress_Complete;
                    this.serv.OnFirstProgress_Init += Serv_OnFirstProgress_Init;
                    this.serv.OnFirstProgress_Loop += Serv_OnFirstProgress_Loop;
                    this.serv.OnSecondProgress_Complete += Serv_OnSecondProgress_Complete;
                    this.serv.OnSecondProgress_Init += Serv_OnSecondProgress_Init;
                    this.serv.OnSecondProgress_Loop += Serv_OnSecondProgress_Loop;
                    this.serv.OnAfterScriptExecute += Serv_OnAfterScriptExecute;
                    this.serv.OnReceiveAnswer += Serv_OnReceiveAnswer;
                    this.serv.OnSendCommand += Serv_OnSendCommand;
                    this.serv.OnStatusChange += Serv_OnStatusChange;
                    this.serv.OnWait += Serv_OnWait;
                    //
                    this.serv.OnAfterChangeSettings += Serv_OnAfterChangeSettings;
                    this.serv.OnAfterCloseConnection += Serv_OnAfterCloseConnection;
                    this.serv.OnAfterOpenConnection += Serv_OnAfterOpenConnection;
                    
                    //fLanguage = serv.language;
                    //SetLanguage();
                    fComServer_Started = true;
                    SetComServerStarted();
                    switch (serv.protocol_TransportType)
                    {
                        case TTransportProtocol.ctc_RS232:
                        default:
                            cbx_ToggleSwitch.SelectedIndex = (int)TransportProtocol.RS232;
                            break;
                        case TTransportProtocol.ctc_TCPIP:
                            cbx_ToggleSwitch.SelectedIndex = (int)TransportProtocol.TCPIP;
                            break;
                    }

                    lan_Connected = serv.connected_ToLAN;
                    SetLAN_Connected();
                    if (serv.connected_ToDevice)
                    {
                        btn_OpenConnection.Enabled = false;
                        tc_Main.SelectedTab = tp_Properties;
                        pnl_StatusBytes.Visible = true;
                        afterCase = EAfterCase.ac_AfterOpenConnection;
                        return;
                    }
                    
                    //fDevice_Connected = serv.connected_ToDevice;
                    //SetDevice_Connected();
                    btn_StopComServer.Enabled = true;
                    btn_StartComServer.Enabled = false;
                    btn_OpenConnection.Enabled = true;
                    btn_StopConnection.Enabled = false;
                    btn_SetDriverLanguage.Enabled = true;
                   
                    
                    afterCase = EAfterCase.ac_AfterStart_Server;
                    tc_Main.SelectedTab = tp_InitConnect;
                    pnl_StatusBytes.Visible = false;
                }
            }
            catch (Exception t)
            {
                MessageBox.Show(t.Message);
                comServer_Started = false;
            }
        }

        // Event if RAO mode is active
        private void Serv_OnAfterOpenConnection()
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                afterCase = EAfterCase.ac_AfterOpenConnection;
            }));
        }
      
        private void Serv_OnAfterCloseConnection()
        {
                this.BeginInvoke((MethodInvoker)(() =>
                {
                    afterCase = EAfterCase.ac_AfterCloseConnection;
                }));
            }

        // After changes from other client application
        private void Serv_OnAfterChangeSettings(int settings_Index)
        {
            string tmpMessage = "";


            if (fMyAfterCaseFlag) return;
            this.BeginInvoke((MethodInvoker)(() =>
        {
            try
            {
                    // Event raised if:
                    // - the server save settings after successful connection to the device;
                    // - in "RAO mode" : if other client application change settings;

                    tmpMessage = "[" + DateTime.UtcNow.ToString("dd-MM-yyyy HH:mm:ss.fff", CultureInfo.InvariantCulture) + "]: ";
                switch (settings_Index)
                {
                    case 0:
                        tmpMessage = tmpMessage + "Set_TrackingMode_FileName";
                        break;
                    case 1:
                        tmpMessage = tmpMessage + "Set_TrackingMode";
                        break;
                    case 2:
                        tmpMessage = tmpMessage + "Set_Download_Path";
                        break;
                    case 3:
                        tmpMessage = tmpMessage + "Set_TrackingMode_Path";

                        break;
                    case 4:
                        tmpMessage = tmpMessage + "Set_TrackingMode_RowLimit";
                        break;
                    case 5:
                        tmpMessage = tmpMessage + "Set_TransportType";
                        break;
                    case 6:
                        tmpMessage = tmpMessage + "Set_Language";
                        break;
                    case 7:
                        tmpMessage = tmpMessage + "Set_Read_TimeOutValue";
                        break;
                    case 8:
                        tmpMessage = tmpMessage + "Set_Exit_ByReadTimeOutIsOn";
                        break;
                    case 9:
                        tmpMessage = tmpMessage + "Set_RS232";
                        break;
                    case 10:
                        tmpMessage = tmpMessage + "Set_RS232_Timeouts";
                        break;
                    case 11:
                        tmpMessage = tmpMessage + "Set_TCPIP";
                        break;
                    case 12:
                        tmpMessage = tmpMessage + "Set_DateRange_EndValue";
                        break;
                    case 13:
                        tmpMessage = tmpMessage + "Set_DateRange_StartValue";
                        break;
                    case 14:
                        tmpMessage = tmpMessage + "Set_RS232_OnOpen_Set_DCB";
                        break;
                    case 15:
                        tmpMessage = tmpMessage + "Set_RS232_OnOpen_Set_DTR_ToFalse";
                        break;
                    case 16:
                        tmpMessage = tmpMessage + "Set_RS232_OnOpen_Set_RTS_ToFalse";
                        break;
                    case 17:
                        tmpMessage = tmpMessage + "Set_zRange_EndValue";
                        break;
                    case 18:
                        tmpMessage = tmpMessage + "Set_zRange_StartValue";
                        break;
                    case 19:
                        tmpMessage = tmpMessage + "Set_ScriptEvents";
                        break;
                    case 20:
                        tmpMessage = tmpMessage + "Set_FirstProgressEvents";
                        break;
                    case 21:
                        tmpMessage = tmpMessage + "Set_SecondProgressEvents";
                        break;
                    case 22:
                        tmpMessage = tmpMessage + "Set_CommunicationEvents";
                        break;
                    case 23:
                        tmpMessage = tmpMessage + "Set_DocumentNumber_StartValue";
                        break;
                    case 24:
                        tmpMessage = tmpMessage + "Set_DocumentNumber_EndValue";
                        break;
                    case 25:
                        tmpMessage = tmpMessage + "Set_JEDocumentType";
                        break;
                    case 26:
                        tmpMessage = tmpMessage + "Set_OpenCloseEvents";
                        break;
                }
                lbx_Errors.Items.Add(tmpMessage);
            }
            finally
            {
                afterCase = EAfterCase.ac_AfterSettingsChange;
            }
        }));
        }

        private void Serv_OnWait(byte Value)
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                if (fSYNCount >= 16)
                {

                    fSYNCount = 0;
                    rtbx_HEXLog.SelectionStart = rtbx_HEXLog.TextLength;
                    rtbx_HEXLog.SelectedText = "\r\n"; // #13#10;
                    rtbx_HEXLog.SelectionStart = rtbx_HEXLog.TextLength;
                    if (fAppMessCount >= 5)
                    {

                        fAppMessCount = 0;
                        rtbx_HEXLog.SelectionStart = rtbx_HEXLog.TextLength;
                        rtbx_HEXLog.SelectedText = "\r\n";
                        rtbx_HEXLog.SelectionStart = rtbx_HEXLog.TextLength;
                    }
                    else fAppMessCount++;
                }
                rtbx_HEXLog.SelectionColor = System.Drawing.ColorTranslator.FromHtml("#00FF8080");
                rtbx_HEXLog.SelectedText = " " + String.Format("{0:X}", Value); // byte to HEX string
                fWeHaveWaitEvent = true;
                fSYNCount++;

            }));
        }

        bool[,] get_Statuses()
        {
            bool[,] state = new bool[8, 8];
            for (byte i = 0; i <= 7; i++)
            {
                for (byte j = 0; j <= 7; j++)
                {
                    state[i, j] = serv.get_SBit_State(i, j);
                }
            }

            return state;
        }

        private void Serv_OnStatusChange()
        {
            var state = get_Statuses();
            this.BeginInvoke((MethodInvoker)(() =>
            {
                display_StatusState(state);
            }));
        }

        private void Serv_OnSendCommand(ref string Command, ref string DateAndTime, ref string repeat_Value, ref string hex_Header, ref string hex_Data, ref string hex_Footer, ref string human_Data)
        {
            string tmp_Command = Command != null ? Command : "";
            string tmp_DateAndTime = DateAndTime != null ? DateAndTime : "";
            string tmp_repeat_Value = repeat_Value != null ? repeat_Value : "";
            string tmp_hex_Header = hex_Header != null ? hex_Header : "";
            string tmp_hex_Data = hex_Data != null ? hex_Data : "";
            string tmp_hex_Footer = hex_Footer != null ? hex_Footer : "";
            string tmp_human_Data = human_Data != null ? human_Data : "";

            this.BeginInvoke((MethodInvoker)(() =>
            {
                void handle_dhtText()
                {
                    try
                    {
                        try
                        {
                            rtbx_HumanLog.SelectionColor = Color.DarkOrange;
                            rtbx_HumanLog.AppendText("[Request]");
                            rtbx_HumanLog.SelectionColor = Color.Black;
                            rtbx_HumanLog.AppendText(";");
                            rtbx_HumanLog.SelectionColor = Color.Green;
                            rtbx_HumanLog.AppendText("[" + tmp_DateAndTime + "]");
                            rtbx_HumanLog.SelectionColor = Color.Black;
                            rtbx_HumanLog.AppendText(";[" + tmp_repeat_Value + "];");
                            rtbx_HumanLog.SelectionColor = Color.Violet;
                            rtbx_HumanLog.AppendText("[Command = " + tmp_Command + "]" + "\t");     // "\t" Tabulation
                            rtbx_HumanLog.SelectionColor = Color.DarkOrange;
                            rtbx_HumanLog.AppendText(tmp_human_Data);

                        }
                        catch (Exception e)
                        {

                            lbx_Errors.Items.Add(e.Message);
                        }
                    }
                    finally
                    {
                        scrollToEnd(rtbx_HumanLog);
                        initForSniffer(rtbx_HumanLog);
                    }
                }

                void handle_dhtHex()
                {
                    try
                    {
                        try
                        {
                            rtbx_HEXLog.SelectionColor = Color.DarkOrange;                            
                            rtbx_HEXLog.AppendText("[Request]");
                            rtbx_HEXLog.SelectionColor = Color.Black;
                            rtbx_HEXLog.AppendText(";");
                            rtbx_HEXLog.SelectionColor = Color.Green;
                            rtbx_HEXLog.AppendText("[" + tmp_DateAndTime + "]");
                            rtbx_HEXLog.SelectionColor = Color.Black;
                            rtbx_HEXLog.AppendText(";[" + tmp_repeat_Value + "];");
                            rtbx_HEXLog.SelectionColor = Color.Violet;
                            rtbx_HEXLog.AppendText("[Command = " + tmp_Command + "]" + "\t");
                            rtbx_HEXLog.SelectionColor = Color.Blue;
                            rtbx_HEXLog.AppendText(tmp_hex_Header);
                            rtbx_HEXLog.SelectionColor = Color.DarkOrange;
                            rtbx_HEXLog.AppendText(tmp_hex_Data);
                            rtbx_HEXLog.SelectionColor = Color.Blue;
                            rtbx_HEXLog.AppendText(tmp_hex_Footer);

                        }
                        catch (Exception e)
                        {

                            lbx_Errors.Items.Add(e.Message);
                        }
                    }
                    finally
                    {
                        scrollToEnd(rtbx_HEXLog);
                        initForSniffer(rtbx_HEXLog);
                    }

                }

                handle_dhtText();
                handle_dhtHex();

            }));

        }

        private void Serv_OnReceiveAnswer(ref string Command, ref string DateAndTime, ref string repeat_Value, ref string hex_Header, ref string hex_Data, ref string hex_Footer, ref string human_Data)
        {
            string tmp_Command = Command != null ? Command : "";
            string tmp_DateAndTime = DateAndTime != null ? DateAndTime : "";
            string tmp_repeat_Value = repeat_Value != null ? repeat_Value : "";
            string tmp_hex_Header = hex_Header != null ? hex_Header : "";
            string tmp_hex_Data = hex_Data != null ? hex_Data : "";
            string tmp_hex_Footer = hex_Footer != null ? hex_Footer : "";
            string tmp_human_Data = human_Data != null ? human_Data : "";

            this.BeginInvoke((MethodInvoker)(() =>
            {
                void handle_dhtText()
                {
                    try
                    {
                        try
                        {
                            rtbx_HumanLog.SelectionColor = Color.Blue;
                            rtbx_HumanLog.AppendText("[Answer ]");
                            rtbx_HumanLog.SelectionColor = Color.Black;
                            rtbx_HumanLog.AppendText(";");
                            rtbx_HumanLog.SelectionColor = Color.Green;
                            rtbx_HumanLog.AppendText("[" + tmp_DateAndTime + "]");
                            rtbx_HumanLog.SelectionColor = Color.Black;
                            rtbx_HumanLog.AppendText(";[" + tmp_repeat_Value + "];");
                            rtbx_HumanLog.SelectionColor = Color.Violet;
                            rtbx_HumanLog.AppendText("[Command = " + tmp_Command + "]" + "\t");
                            rtbx_HumanLog.SelectionColor = Color.Blue;
                            rtbx_HumanLog.AppendText(tmp_human_Data);

                        }
                        catch (Exception e)
                        {
                            lbx_Errors.Items.Add(e.Message);
                        }
                    }
                    finally
                    {
                        scrollToEnd(rtbx_HumanLog);
                        initForSniffer(rtbx_HumanLog);
                    }
                }

                void handle_dhtHex()
                {
                    try
                    {
                        try
                        {

                            rtbx_HEXLog.SelectionColor = Color.Fuchsia;
                            rtbx_HEXLog.AppendText("[Answer ]");
                            rtbx_HEXLog.SelectionColor = Color.Black;
                            rtbx_HEXLog.AppendText(";");
                            rtbx_HEXLog.SelectionColor = Color.Green;
                            rtbx_HEXLog.AppendText("[" + tmp_DateAndTime + "]");
                            rtbx_HEXLog.SelectionColor = Color.Black;
                            rtbx_HEXLog.AppendText(";[" + tmp_repeat_Value + "];");
                            rtbx_HEXLog.SelectionColor = Color.Violet;
                            rtbx_HEXLog.AppendText("[Command = " + tmp_Command + "]" + "\t");
                            rtbx_HEXLog.SelectionColor = Color.Blue;
                            rtbx_HEXLog.AppendText(tmp_hex_Header);
                            rtbx_HEXLog.SelectionColor = Color.Fuchsia;
                            rtbx_HEXLog.AppendText(tmp_hex_Data);
                            rtbx_HEXLog.SelectionColor = Color.Blue;
                            rtbx_HEXLog.AppendText(tmp_hex_Footer);

                        }
                        catch (Exception e)
                        {

                            lbx_Errors.Items.Add(e.Message);
                        }
                    }
                    finally
                    {
                        scrollToEnd(rtbx_HEXLog);
                        initForSniffer(rtbx_HEXLog);
                    }

                }

                if (fWeHaveWaitEvent)
                {

                    initForSniffer(rtbx_HEXLog);
                    fWeHaveWaitEvent = false;
                }
                handle_dhtText();
                handle_dhtHex();

            }));
        }

        private void Serv_OnAfterScriptExecute()
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                //    serv.OnReceiveAnswer -= Serv_OnReceiveAnswer;
                //    serv.OnSendCommand -= Serv_OnSendCommand;
                //    serv.OnStatusChange -= Serv_OnStatusChange;
                //    serv.OnWait -= Serv_OnWait;
                enableScriptBtns(true);
            }));
        }

        private void Serv_OnSecondProgress_Loop(int value_Position)
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                if (value_Position < pb_2.Maximum)
                    pb_2.Value = value_Position;
            }));
        }

        private void Serv_OnSecondProgress_Init(int value_Minimum, int value_Maximum, int value_Position)
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                pb_2.Minimum = value_Minimum;
                pb_2.Maximum = value_Maximum;
                pb_2.Value = value_Position;
            }));
        }

        private void Serv_OnSecondProgress_Complete()
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                pb_2.Value = pb_2.Maximum;
            }));
        }

        private void Serv_OnFirstProgress_Loop(int value_Position)
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                if (value_Position < pb_1.Maximum)
                    pb_1.Value = value_Position;
            }));
        }

        private void Serv_OnFirstProgress_Init(int value_Minimum, int value_Maximum, int value_Position)
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                pb_1.Value = value_Position;
                pb_1.Minimum = value_Minimum;
                pb_1.Maximum = value_Maximum;
            }));
        }

        private void Serv_OnFirstProgress_Complete()
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                pb_1.Value = pb_1.Maximum;
            }));
        }

        private int stop_COMServer()
        {
            try
            {

                try
                {
                    if (serv.connected_ToDevice) return serv.close_Connection();
                    else return 0;
                }
                catch (Exception)
                {
                    return -1;
                }
            }

            finally
            {
                while (System.Runtime.InteropServices.Marshal.ReleaseComObject(serv) > 0) ;
                //technically the final release and GC. calls are neither needed nor recommended, the framework will dispose the instances when needed,
                //but leaving here for the sake of showing how to release the com server right away (for example when update is required)
                while (System.Runtime.InteropServices.Marshal.FinalReleaseComObject(serv) > 0) ;
                serv = null;
                GC.Collect();
                GC.WaitForPendingFinalizers();
                this.tp_CustomCmds.Hide();
                tc_Main.TabPages.Remove(tp_CustomCmds);
                this.tp_SystemInfo.Hide();
                tc_Main.TabPages.Remove(tp_SystemInfo);
                this.tp_ANAF.Hide();
                tc_Main.TabPages.Remove(tp_ANAF);
                this.tp_GetCommandList.Hide();
                tc_Main.TabPages.Remove(tp_GetCommandList);
            }
        }

        private void btn_StopComServer_Click(object sender, EventArgs e)
        {
            btn_StopComServer.Enabled = false;
            lbx_Errors.Items.Clear();
            try
            {
                if (stop_COMServer() == 0)
                {
                    fDevice_Connected = false;
                    fComServer_Started = false;

                    SetDevice_Connected();
                    SetComServerStarted();
                    pnl_Settings.Enabled = false;
                    afterCase = EAfterCase.ac_AfterStopServer;
                }
                else
                {
                    btn_StopComServer.Enabled = true;
                }
            }
            catch (Exception t)

            {
                MessageBox.Show(t.Message);
            }
        }


        private void btn_OpenConnection_Click(object sender, EventArgs e)
        {
            int lanPort;

            if (!(comServer_Started)) return;
            btn_OpenConnection.Enabled = false;
            if (serv.connected_ToDevice)
            {
                if (serv.close_Connection() != 0)
                {

                    MessageBox.Show(serv.lastError_Message);
                    return;
                }
            }
            try
            {
                 switch ((TransportProtocol)cbx_ToggleSwitch.SelectedIndex)
                {
                    case TransportProtocol.RS232:
                        error_Code = serv.set_TransportType(TTransportProtocol.ctc_RS232);
                        if (error_Code != 0) return;

                        error_Code = serv.set_RS232(Int32.Parse(tbx_ComPort.Text), Int32.Parse(tbx_BaudRate.Text));
                        if (error_Code != 0) return;
                        break;
                    case TransportProtocol.TCPIP:
                        error_Code = serv.set_TransportType(TTransportProtocol.ctc_TCPIP);
                        if (error_Code != 0) return;

                        lanPort = Int32.Parse(tbx_LANPort.Text);
                        error_Code = serv.set_TCPIP(tbx_IPAddress.Text, (ushort)lanPort);
                        if (error_Code != 0) return;
                        break;
                }

                error_Code = serv.open_Connection();
                if (error_Code != 0) return;
                //afterCase = EAfterCase.ac_AfterSettingsChange;
                set_ANAF_Ranges();
                fDevice_Connected = true;
                SetDevice_Connected();
                if (!(device_Connected)) return;                
            }
            catch (Exception ex)
            {
                MessageBox.Show("Operation failed: " + ex.Message);
                btn_OpenConnection.Enabled = true;
            }

            finally
            {
                if (error_Code != 0)
                {
                    MessageBox.Show(serv.lastError_Message);
                    btn_OpenConnection.Enabled = true;
                }

                if (serv.connected_ToDevice)
                {
                    if (!serv.active_OnAfterOpenConnection)
                    {
                        afterCase = EAfterCase.ac_AfterOpenConnection;
                    }
                }

            }
        }

        private void btn_StopConnection_Click(object sender, EventArgs e)
        {
            lbx_Errors.Items.Clear();
            error_Code = serv.close_Connection();
            if (error_Code != 0)
                MessageBox.Show(serv.lastError_Message);

            fDevice_Connected = false;
            SetDevice_Connected();
            if (!serv.active_OnAfterCloseConnection)
            {
                afterCase = EAfterCase.ac_AfterCloseConnection;
            }
        }

        private void btn_SetDriverLanguage_Click(object sender, EventArgs e)
        {
            btn_SetDriverLanguage.Enabled = false;
            try
            {
                switch (cbx_Language.SelectedIndex)
                {
                    case 0:
                        serv.language = TDudeLanguage.English;
                        break;
                    case 1:
                        serv.language = TDudeLanguage.Romanian;
                        break;

                }
            }
            finally
            {
                fLanguage = serv.language;
                SetLanguage();
                get_StatusDescriptions();
                get_StatusState();
                btn_SetDriverLanguage.Enabled = true;
            }
        }

        private void tbx_Cmd_KeyDown(object sender, KeyEventArgs e)
        {
            int key = e.KeyValue;

            if ((key <= 57 && key >= 48) || e.KeyData == Keys.Back || (e.KeyData >= Keys.NumPad0 && e.KeyData <= Keys.NumPad9))
            {
                invalidCharacter1 = false;
            }
            else
            {
                invalidCharacter1 = true;
            }
        }

        private void tbx_Cmd_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }

        private void btn_ExecuteCmd_Click(object sender, EventArgs e)
        {
            if (inCommand)
                return;

            int cmd;
            string inputValue = "", outputValue = "";

            btn_ExecuteCmd.Enabled = false;
            lbx_ScriptOutput.Items.Clear();
            lbx_Errors.Items.Clear();
            tbx_OutputValue.Clear();
            try
            {
                if (!(Int32.TryParse(tbx_Cmd.Text, out cmd)))
                {
                    MessageBox.Show("Invalid value");
                    return;
                }
                inputValue = tbx_InputValue.Text;
                outputValue = "";
                tbx_OutputValue.Clear();

                if (serv.execute_Command(cmd, inputValue, ref outputValue) != 0)
                {
                    MessageBox.Show(serv.lastError_Message);
                    return;
                }

                tbx_OutputValue.Text = outputValue;

                string[] rows = serv.last_AnswerList.Split(new string[] { "\r\n" }, StringSplitOptions.None);
                if (rows.Length == 0)
                {
                    MessageBox.Show("There no data into a last answer list.");
                    return;
                }

                for (int i = 0; i < rows.Length - 1; i++)
                {
                    string tmp = rows[i];
                    lbx_ScriptOutput.Items.Add(tmp);
                }
            }
            finally
            {
                tbx_OutputValue.Text = outputValue;
                btn_ExecuteCmd.Enabled = true;
                this.Refresh();
            }
        }


        private void cbx_ToggleSwitch_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbx_ToggleSwitch.SelectedIndex == 0)
            {
                lb_Port.Enabled = false;
                tbx_LANPort.Enabled = false;
                lb_IPAddress.Enabled = false;
                tbx_IPAddress.Enabled = false;
                lb_ComPort.Enabled = true;
                tbx_ComPort.Enabled = true;
                lb_BaudRate.Enabled = true;
                tbx_BaudRate.Enabled = true;
            }
            else
            {
                lb_Port.Enabled = true;
                tbx_LANPort.Enabled = true;
                lb_IPAddress.Enabled = true;
                tbx_IPAddress.Enabled = true;
                lb_ComPort.Enabled = false;
                tbx_ComPort.Enabled = false;
                lb_BaudRate.Enabled = false;
                tbx_BaudRate.Enabled = false;
            }
        }

        private void btn_GetLastAnswerList_Click(object sender, EventArgs e)
        {
            btn_GetLastAnswerList.Enabled = false;
            lbx_ScriptOutput.Items.Clear();
            try
            {
                string[] rows = serv.last_AnswerList.Split(new string[] { "\r\n" }, StringSplitOptions.None);
                if (rows.Length == 0)
                {
                    MessageBox.Show("There no data into a last answer list.");
                    return;
                }

                for (int i = 0; i < rows.Length - 1; i++)
                {
                    string tmp = "[" + i + "]=" + rows[i];
                    lbx_ScriptOutput.Items.Add(tmp);
                }

            }
            finally
            {
                btn_GetLastAnswerList.Enabled = true;
            }
        }

        private void btn_GetSystemInfo_Click(object sender, EventArgs e)
        {
            string tmpString = "";
            btn_GetSystemInfo.Enabled = false;
            lbx_SystemInfo.Items.Clear();
            string[] list1 = serv.get_SystemInfoSearchList().Split(new string[] { "\r\n" }, StringSplitOptions.None);
            try
            {
                if (list1.Length == 0) return;
                StringBuilder sb = new StringBuilder();

                for (int i = 0; i < list1.Length - 1; i++)
                {
                    tmpString = list1[i] + ":";
                    tmpString = tmpString.PadRight(42) + serv.get_SystemInfo(list1[i]);
                    lbx_SystemInfo.Items.Add(tmpString);
                }

            }
            finally
            {
                btn_GetSystemInfo.Enabled = true;
                this.Refresh();
            }
        }

        private void tbx_StartZNum_KeyDown(object sender, KeyEventArgs e)
        {
            int key = e.KeyValue;

            if ((key <= 57 && key >= 48) || e.KeyData == Keys.Back || (e.KeyData >= Keys.NumPad0 && e.KeyData <= Keys.NumPad9))
            {
                invalidCharacter1 = false;
            }
            else
            {
                invalidCharacter1 = true;
            }
        }

        private void tbx_EndZNum_KeyDown(object sender, KeyEventArgs e)
        {
            int key = e.KeyValue;

            if ((key <= 57 && key >= 48) || e.KeyData == Keys.Back || (e.KeyData >= Keys.NumPad0 && e.KeyData <= Keys.NumPad9))
            {
                invalidCharacter1 = false;
            }
            else
            {
                invalidCharacter1 = true;
            }
        }

        private void tbx_StartZNum_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }

        private void tbx_EndZNum_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }

        private void btn_Download_Click(object sender, EventArgs e)
        {
            if (inCommand)
                return;
            bool Old_Active_OnSendCommand;
            bool Old_Active_OnReceiveAnswer;
            bool Old_Active_OnWait;
            bool Old_Active_OnStatusChange;
            bool Old_Active_OnError;
            bool Old_Active_OnFirstProgress_Init;
            bool Old_Active_OnFirstProgress_Loop;
            bool Old_Active_OnFirstProgress_Complete;
            bool Old_Active_OnSecondProgress_Init;
            bool Old_Active_OnSecondProgress_Loop;
            bool Old_Active_OnSecondProgress_Complete;


            Old_Active_OnSendCommand = serv.active_OnSendCommand;
            Old_Active_OnReceiveAnswer = serv.active_OnReceiveAnswer;
            Old_Active_OnWait = serv.active_OnWait;
            Old_Active_OnStatusChange = serv.active_OnStatusChange;
            Old_Active_OnError = serv.active_OnError;
            //
            Old_Active_OnFirstProgress_Init = serv.active_OnFirstProgress_Init;
            Old_Active_OnFirstProgress_Loop = serv.active_OnFirstProgress_Loop;
            Old_Active_OnFirstProgress_Complete = serv.active_OnFirstProgress_Complete;
            Old_Active_OnSecondProgress_Init = serv.active_OnSecondProgress_Init;
            Old_Active_OnSecondProgress_Loop = serv.active_OnSecondProgress_Loop;
            Old_Active_OnSecondProgress_Complete = serv.active_OnSecondProgress_Complete;


            string chosenDirectory = "";
            string startDate = dtp_StartDate.Value.ToString("dd-MM-yy");
            string startTime = dtp_StartTime.Value.ToString("HH:mm:ss");
            string endDate = dtp_EndDate.Value.ToString("dd-MM-yy");
            string endTime = dtp_EndTime.Value.ToString("HH:mm:ss");
            string startDT = startDate + " " + startTime;
            string endDT = endDate + " " + endTime;

            try
            {
                chosenDirectory = serv.download_Path;
                DialogResult result = folderBrowserDialog1.ShowDialog();

                if (result == DialogResult.OK)
                {
                    chosenDirectory = folderBrowserDialog1.SelectedPath;
                    error_Code = serv.set_Download_Path(chosenDirectory);
                    if (error_Code != 0) return;
                    int method = cbx_RangeType.SelectedIndex;

                    switch (cbx_RangeType.SelectedIndex)
                    {
                        case 0:
                            {
                                if (chbx_DST.Checked) startDT = startDT + " DST";
                                if (chbx_DST.Checked) endDT = endDT + " DST";
                                serv.DateRange_StartValue = startDT;
                                serv.DateRange_EndValue = endDT;
                                break;
                            }

                        case 1:
                        default:
                            {
                                serv.zRange_StartValue = Int32.Parse(tbx_StartZNum.Text);
                                serv.zRange_EndValue = Int32.Parse(tbx_EndZNum.Text);
                                break;
                            }

                    }

                    btn_Download.Enabled = false;
                    btn_UploadLogo.Enabled = false;
                    btn_CancelDownload.Enabled = true;

                    inCommand = true;
                    
                    ThreadPool.QueueUserWorkItem(delegate
                    {
                        try
                        {
                            serv.set_CommunicationEvents(false, false, false, false, true, false);
                            error_Code = serv.set_FirstProgressEvents(true, true, true, false);
                            if (error_Code != 0) return;
                            error_Code = serv.set_SecondProgressEvents(true, true, true, false);
                            if (error_Code != 0) return;

                            if (method == 0)  error_Code = serv.download_ANAF_DTRange(); 
                            else error_Code = serv.download_ANAF_ZRange();

                        }
                        finally
                        {
                            inCommand = false;
                            this.BeginInvoke((MethodInvoker)(() =>
                            {
                                btn_Download.Enabled = true;
                                btn_UploadLogo.Enabled = true;
                                btn_CancelDownload.Enabled = false;
                                if (error_Code != 0) MessageBox.Show(serv.lastError_Message);
                                else
                                {
                                    if (chbx_OpenFolderAfterDwnl.Checked) System.Diagnostics.Process.Start(chosenDirectory);
                                }

                                serv.set_CommunicationEvents(Old_Active_OnSendCommand, Old_Active_OnWait, Old_Active_OnReceiveAnswer, Old_Active_OnStatusChange, Old_Active_OnError, false);
                                serv.set_FirstProgressEvents(Old_Active_OnFirstProgress_Init, Old_Active_OnFirstProgress_Loop, Old_Active_OnFirstProgress_Complete, false);
                                serv.set_SecondProgressEvents(Old_Active_OnSecondProgress_Init, Old_Active_OnSecondProgress_Loop, Old_Active_OnSecondProgress_Complete, false);
                            }));
                        }
                        
                    }, null);
                    
                }

            }
            finally
            {
                //
                
            }
        }

        private void btn_UploadLogo_Click(object sender, EventArgs e)
        {
            if (inCommand)
                return;

            OpenFileDialog dlg = new OpenFileDialog();
            bool Old_Active_OnSendCommand;
            bool Old_Active_OnReceiveAnswer;
            bool Old_Active_OnWait;
            bool Old_Active_OnStatusChange;
            bool Old_Active_OnError;

            Old_Active_OnSendCommand = serv.active_OnSendCommand;
            Old_Active_OnReceiveAnswer = serv.active_OnReceiveAnswer;
            Old_Active_OnWait = serv.active_OnWait;
            Old_Active_OnStatusChange = serv.active_OnStatusChange;
            Old_Active_OnError = serv.active_OnError;

            dlg.Filter = "Image Files(*.bmp)|*.bmp";
            dlg.FileName = "";
            if (dlg.ShowDialog() != DialogResult.OK) return;
            btn_CancelDownload.Enabled = true;

            inCommand = true;

            ThreadPool.QueueUserWorkItem(delegate
            {
                try
                {
                    if (serv.set_CommunicationEvents(false, false, false, false, true, false) != 0) MessageBox.Show(serv.lastError_Message);

                    serv.upload_Logo(dlg.FileName);
                }
                finally
                {
                    inCommand = false;

                    this.BeginInvoke((MethodInvoker)(() =>
                    {
                        btn_CancelDownload.Enabled = false;
                    }));
                    serv.set_CommunicationEvents(Old_Active_OnSendCommand, Old_Active_OnWait, Old_Active_OnReceiveAnswer, Old_Active_OnStatusChange, Old_Active_OnError, false);
                }
            }, null);
        }

        private void btn_CancelDownload_Click(object sender, EventArgs e)
        {
                serv.cancel_Loop();
        }

        private void cbx_RangeType_SelectedIndexChanged(object sender, EventArgs e)
        {
            set_ANAF_Ranges();
        }

        private void btGetCommandList_Click(object sender, EventArgs e)
        {
            cbCommands.Items.Clear();
            tbResult.Clear();

            try
            {
                cbCommands.Items.AddRange(serv.get_ComandsList(cbx_HumanNames.SelectedIndex).Split(new string[] { "\r\n" }, StringSplitOptions.None));
            }
            catch
            {

            }
            if (cbCommands.Items.Count > 0)
                if (cbCommands.Sorted == true)
                {
                    cbCommands.SelectedIndex = 1;
                }
                else
                {
                    cbCommands.SelectedIndex = 0;
                }
            for (int i = 0; i < cbCommands.Items.Count; i++)
            {
                string value = cbCommands.GetItemText(cbCommands.Items[i]);
                tbResult.Text = tbResult.Text + value + "\r\n";
            }

        }

        private void btGetCommandInfo_Click(object sender, EventArgs e)
        {
            if (cbCommands.SelectedIndex != -1)
            {
                try
                {
                    string info = "";
                    if (serv.get_CommandInfo((string)cbCommands.SelectedItem, ref info) == 0)
                        tbResult.Text = info;
                    else
                        tbResult.Text = "Error: " + serv.lastError_Message;
                }
                catch
                {
                }
            }
        }

        private void btn_GenerateCode_Click(object sender, EventArgs e)
        {
            if (cbCommands.SelectedIndex != -1)
            {
                tbResult.Clear();
                try
                {

                    switch (cbx_CodeType.SelectedIndex)
                    {
                        case 0:
                            tbResult.Text = serv.generate_SourceCode((string)cbCommands.SelectedItem, TCodeType.CSharp);
                            break;
                        case 1:
                            tbResult.Text = serv.generate_SourceCode((string)cbCommands.SelectedItem, TCodeType.Delphi);
                            break;
                    }
                }
                catch
                {
                }
            }
        }

        private void get_CommandInfo()
        {
            string tmpS = "";
            btGetCommandInfo.Enabled = false;
            btGetCommandList.Enabled = false;
            cbCommands.Enabled = false;
            try
            {
                tbResult.Clear();
                if (serv.get_CommandInfo(command_Name, ref tmpS) == 0) tbResult.Text = tmpS;

            }
            finally
            {
                tbResult.SelectionStart = 0;
                btGetCommandInfo.Enabled = true;
                btGetCommandList.Enabled = true;
                cbCommands.Enabled = true;

            }
        }

        private void chbx_Sorted_Click(object sender, EventArgs e)
        {
            chbx_Sorted.Checked = !cbCommands.Sorted;
            cbCommands.Sorted = chbx_Sorted.Checked;
            tbResult.Clear();
            cbCommands.Items.Clear();
            //cbCommands.Enabled = false;
            cbCommands.Items.AddRange(serv.get_ComandsList(cbx_HumanNames.SelectedIndex).Split(new string[] { "\r\n" }, StringSplitOptions.None));
            string[] rows = serv.get_ComandsList(cbx_HumanNames.SelectedIndex).Split(new string[] { "\r\n" }, StringSplitOptions.None);

            if (cbCommands.Items.Count > 0)
            {

                if (cbCommands.Sorted == true)
                {
                    Array.Sort(rows, StringComparer.InvariantCulture);
                    cbCommands.SelectedIndex = 1;
                }
                else
                {
                    cbCommands.SelectedIndex = 0;
                }
                command_Name = rows[cbCommands.SelectedIndex];
                get_CommandInfo();
                //this.Refresh();

            }
        }

        private void btn_LoadScriptFromFile_Click(object sender, EventArgs e)
        {

            string path = Directory.GetCurrentDirectory();
            path += @"\Scripturi de test";

            if (Directory.Exists(path))
            {
                openFileDialog1.InitialDirectory = path;
                openFileDialog1.RestoreDirectory = true;
            }

            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                string selectedFileName = openFileDialog1.FileName;
                rtbx_SimpleScript.Text = File.ReadAllText(selectedFileName);
            }

        }

        //private void ExecuteScriptInit()
        //{
        //    serv.OnReceiveAnswer += Serv_OnReceiveAnswer;
        //    serv.OnSendCommand += Serv_OnSendCommand;
        //    serv.OnStatusChange += Serv_OnStatusChange;
        //    serv.OnWait += Serv_OnWait;

        //}

        private void ExecuteScript(string cmd_Script)
        {
            if (inCommand)
                return;

            if (chbx_ShowLastOutput.Checked)
            {
                rtbx_HEXLog.Clear();
                rtbx_HumanLog.Clear();
            }
            btn_ExecuteSimpleScript.Enabled = false;
            btn_ExecuteSelected.Enabled = false;
            btn_Cancel.Enabled = true;

            inCommand = true;

            ThreadPool.QueueUserWorkItem(delegate
            {
                try
                {

                    serv.execute_Script_V1(TScriptType.DS, cmd_Script);

                }
                finally
                {
                    inCommand = false;

                    this.BeginInvoke((MethodInvoker)(() =>
                    {
                        btn_ExecuteSimpleScript.Enabled = true;
                        btn_ExecuteSelected.Enabled = true;
                        btn_Cancel.Enabled = false;
                    }));

                }
            }, null);
        }

        private void btn_ExecuteSimpleScript_Click(object sender, EventArgs e)
        {
            ExecuteScript(rtbx_SimpleScript.Text);
        }

        private void btn_ExecuteSelected_Click(object sender, EventArgs e)
        {
            ExecuteScript(rtbx_SimpleScript.SelectedText);
        }

        private void btn_Cancel_Click(object sender, EventArgs e)
        {
            serv.cancel_Loop();
        }

        private void btn_DeleteScript_Click(object sender, EventArgs e)
        {
            rtbx_SimpleScript.Clear();
        }

        private void btn_DeleteOutput_Click(object sender, EventArgs e)
        {
            rtbx_HEXLog.Clear();
            rtbx_HumanLog.Clear();
        }

        private void btn_SetTrackingMode_Click(object sender, EventArgs e)
        {
            int tmp;
            if (!serv.connected_ToDevice) return;
            btn_SetTrackingMode.Enabled = false;
            try
            {
                tmp = serv.set_TrackingMode(chbx_TrackingMode.Checked);
                if (tmp != 0)
                {
                    MessageBox.Show(serv.get_ErrorMessageByCode(tmp));
                    return;
                }
                tmp = serv.set_TrackingMode_Path(tbx_TrackingModePath.Text.Trim());
                if (tmp != 0)
                {
                    MessageBox.Show(serv.get_ErrorMessageByCode(tmp));
                    return;
                }
                tmp = serv.set_TrackingMode_FileName(tbx_TrackingModeFileName.Text.Trim());
                if (tmp != 0)
                {
                    MessageBox.Show(serv.get_ErrorMessageByCode(tmp));
                    return;
                }
                tmp = serv.set_TrackingMode_RowLimit(Int32.Parse(tbx_TrackingModeRowLimit.Text));
                {
                    MessageBox.Show(serv.get_ErrorMessageByCode(tmp));
                    return;
                }
            }
            finally
            {
                chbx_TrackingMode.Checked = serv.trackingMode;
                tbx_TrackingModePath.Text = serv.trackingMode_Path;
                tbx_TrackingModeFileName.Text = serv.trackingMode_FileName;
                tbx_TrackingModeRowLimit.Text = serv.trackingMode_RowLimit.ToString();
                btn_SetTrackingMode.Enabled = true;
            }
        }

        private void get_ActiveEvents()
        {
            chbx_Active_OnBeforeScriptExecute.Checked = serv.active_OnBeforeScriptExecute;
            chbx_Active_OnScriptRowExecute.Checked = serv.active_OnScriptRowExecute;
            chbx_Active_OnAfterScriptExecute.Checked = serv.active_OnAfterScriptExecute;
            chbx_Active_OnSendCommand.Checked = serv.active_OnSendCommand;
            chbx_Active_OnWait.Checked = serv.active_OnWait;
            chbx_Active_OnReceiveAnswer.Checked = serv.active_OnReceiveAnswer;
            chbx_Active_OnStatusChange.Checked = serv.active_OnStatusChange;
            chbx_Active_OnError.Checked = serv.active_OnError;
            chbx_Active_OnFirstProgress_Init.Checked = serv.active_OnFirstProgress_Init;
            chbx_Active_OnFirstProgress_Loop.Checked = serv.active_OnFirstProgress_Loop;
            chbx_Active_OnFirstProgress_Complete.Checked = serv.active_OnFirstProgress_Complete;
            chbx_Active_OnSecondProgress_Init.Checked = serv.active_OnSecondProgress_Init;
            chbx_Active_OnSecondProgress_Loop.Checked = serv.active_OnSecondProgress_Loop;
            chbx_Active_OnSecondProgress_Complete.Checked = serv.active_OnSecondProgress_Complete;
            chkActive_OnAfterOpenConnection.Checked = serv.active_OnAfterOpenConnection;
            chkActive_OnAfterCloseConnection.Checked = serv.active_OnAfterCloseConnection;
            chkRegisterActiveObject.Checked = serv.register_ActiveObject_OnStart;
            chkSave_Settings_AfterOpenConnection.Checked = serv.save_SettingsAfterOpenConnection;
            chbx_TrackingMode.Checked = serv.trackingMode;
            chkActive_OnAfterSettingsChange.Checked = serv.active_OnAfterSettingsChange;
            chk_CheckDeviceStatus.Checked = serv.checkDeviceStatusOnCheckConnection;
        }

        private void btn_SetEventsMode_Click(object sender, EventArgs e)
        {
            int tmpResult = 0;
            if (!serv.connected_ToDevice) return;
            btn_SetEventsMode.Enabled = false;
            try
            {
                fMyAfterCaseFlag = true;
                tmpResult = serv.set_ScriptEvents(         //
                chbx_Active_OnBeforeScriptExecute.Checked, //
                chbx_Active_OnScriptRowExecute.Checked,    //
                chbx_Active_OnAfterScriptExecute.Checked,  //
                true);                                     //
                if (tmpResult != 0) return;

                tmpResult = serv.set_CommunicationEvents( //
                 chbx_Active_OnSendCommand.Checked,       //
                 chbx_Active_OnWait.Checked,              //
                 chbx_Active_OnReceiveAnswer.Checked,     //
                 chbx_Active_OnStatusChange.Checked,      //
                 chbx_Active_OnError.Checked,             //
                 true);                                   //
                if (tmpResult != 0) return;

                tmpResult = serv.set_FirstProgressEvents(      //
                 chbx_Active_OnFirstProgress_Init.Checked,     //
                 chbx_Active_OnFirstProgress_Loop.Checked,     //
                 chbx_Active_OnFirstProgress_Complete.Checked, //
                 true);                                        //
                if (tmpResult != 0) return;

                tmpResult = serv.set_SecondProgressEvents(      //
                 chbx_Active_OnSecondProgress_Init.Checked,     //
                 chbx_Active_OnSecondProgress_Loop.Checked,     //
                 chbx_Active_OnSecondProgress_Complete.Checked, //
                 true);
            }
            finally
            {

                if (tmpResult != 0) MessageBox.Show(serv.lastError_Message);
                fMyAfterCaseFlag = false;
                btn_SetEventsMode.Enabled = true;
                get_ActiveEvents();
            }

        }

        private void fm_FormClosing(object sender, FormClosingEventArgs e)
        {
            try
            {
                if (serv != null)
                {
                    if (serv.close_Connection() != 0) MessageBox.Show(serv.lastError_Message);
                }
            }
            finally
            {
                if (serv != null)
                {
                    while (System.Runtime.InteropServices.Marshal.ReleaseComObject(serv) > 0) ;
                    //technically the final release and GC. calls are neither needed nor recommended, the framework will dispose the instances when needed,
                    //but leaving here for the sake of showing how to release the com server right away (for example when update is required)
                    while (System.Runtime.InteropServices.Marshal.FinalReleaseComObject(serv) > 0) ;
                    serv = null;
                    GC.Collect();
                    GC.WaitForPendingFinalizers();
                    serv = null;
                }
            }
        }

        private void btnSetRAOMode_Click(object sender, EventArgs e)
        {
            int tmpResult;
            string tmpMessage;
            bool tmpBoolean;

            btnSetRAOMode.Enabled = false;
            fMyAfterCaseFlag = true;
            tmpResult = -1;
            try
            {
                serv.checkDeviceStatusOnCheckConnection = chk_CheckDeviceStatus.Checked;

                active_OnAfterCloseConnection = serv.active_OnAfterCloseConnection;
                active_OnAfterOpenConnection = serv.active_OnAfterOpenConnection;
                active_OnAfterSettingsChange = serv.active_OnAfterSettingsChange;
                registerActiveObject = serv.register_ActiveObject_OnStart;
                save_Settings_AfterOpenConnection = serv.save_SettingsAfterOpenConnection;

                tmpResult = serv.set_BehaviorOnOpenClose(        //
                 chkRegisterActiveObject.Checked,              //
                 chkSave_Settings_AfterOpenConnection.Checked, //
                 chkActive_OnAfterOpenConnection.Checked,      //
                 chkActive_OnAfterCloseConnection.Checked,     //
                 chkActive_OnAfterSettingsChange.Checked       //
                 );                                              //
            }
            finally
            { 
        if (tmpResult != 0)  MessageBox.Show(serv.lastError_Message);
            tmpBoolean = (active_OnAfterCloseConnection != chkActive_OnAfterCloseConnection.Checked);
            tmpBoolean = (tmpBoolean ||(active_OnAfterOpenConnection != chkActive_OnAfterOpenConnection.Checked));
            tmpBoolean = tmpBoolean ||(active_OnAfterSettingsChange != chkActive_OnAfterSettingsChange.Checked);
            tmpBoolean = tmpBoolean || (registerActiveObject != chkRegisterActiveObject.Checked);
            tmpBoolean = tmpBoolean || (save_Settings_AfterOpenConnection != chkSave_Settings_AfterOpenConnection.Checked);

                if (tmpBoolean)
                {

                    tmpMessage = "Important!" + "\r\n" + "\r\n";
                    tmpMessage = tmpMessage + " 1. Changing of the 'Register ActiveX Object on start'";
                    tmpMessage = tmpMessage + " will change the behavior of the COM server after the";
                    tmpMessage = tmpMessage + " restart of the COM server." + "\r\n" + "\r\n";

                    tmpMessage = tmpMessage + " 2. Please switch off the connection to the COM server";
                    tmpMessage = tmpMessage + " for all currently connected client applications (including";
                    tmpMessage = tmpMessage + " this application) !" + "\r\n" + "\r\n";

                    tmpMessage = tmpMessage + " 3. If all client applications are switched off from the COM";
                    tmpMessage = tmpMessage + " server and the tray icon of the 'DUDE' is still visible:" + "\r\n";
                    tmpMessage = tmpMessage + "  - please switch off the 'DUDE' manually from the popup menu;" + "\r\n";
                    tmpMessage = tmpMessage + "  - you can start to use the 'DUDE' with all new settings." + "\r\n" + "\r\n";

                    tmpMessage = tmpMessage + " 4. If you use 'Register Activex Object on start':" + "\r\n";
                    tmpMessage = tmpMessage + "  - the instance and connection to the device will be 'shared'";
                    tmpMessage = tmpMessage + " between all connected client applications;" + "\r\n";
                    tmpMessage = tmpMessage + "  - the software must be designed for such behavior;" + "\r\n" + "\r\n";

                    tmpMessage = tmpMessage + " 5. If you don't know anything for this settings and for this behavior mode:" + "\r\n";
                    tmpMessage = tmpMessage + "   - please call the support team;" + "\r\n";
                    tmpMessage = tmpMessage + "   - please call the manufacturers of your client application;" + "\r\n";
                    MessageBox.Show(tmpMessage);
                }
                fMyAfterCaseFlag = false;
                afterCase = EAfterCase.ac_AfterSettingsChange;
            btnSetRAOMode.Enabled = true;
           
               
            }
        }
    }
}


