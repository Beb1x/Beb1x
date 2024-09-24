namespace CSharp_Demo_01
{
    partial class fm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btn_StartComServer = new System.Windows.Forms.Button();
            this.btn_StopComServer = new System.Windows.Forms.Button();
            this.lb_ComPort = new System.Windows.Forms.Label();
            this.lb_BaudRate = new System.Windows.Forms.Label();
            this.tc_Main = new System.Windows.Forms.TabControl();
            this.tp_InitConnect = new System.Windows.Forms.TabPage();
            this.pnl_Settings = new System.Windows.Forms.Panel();
            this.cbx_ToggleSwitch = new System.Windows.Forms.ComboBox();
            this.tbx_ComPort = new System.Windows.Forms.TextBox();
            this.tbx_BaudRate = new System.Windows.Forms.TextBox();
            this.lb_IPAddress = new System.Windows.Forms.Label();
            this.lb_Port = new System.Windows.Forms.Label();
            this.tbx_IPAddress = new System.Windows.Forms.TextBox();
            this.tbx_LANPort = new System.Windows.Forms.TextBox();
            this.btn_OpenConnection = new System.Windows.Forms.Button();
            this.btn_StopConnection = new System.Windows.Forms.Button();
            this.tp_Properties = new System.Windows.Forms.TabPage();
            this.lb_AnswerDistributor = new System.Windows.Forms.Label();
            this.lb_AnswerCodePage = new System.Windows.Forms.Label();
            this.lb_AnswerFirmwareCheckSum = new System.Windows.Forms.Label();
            this.lb_AnswerFirmwareDate = new System.Windows.Forms.Label();
            this.lb_AnswerFirmwareRevision = new System.Windows.Forms.Label();
            this.lb_AnswerSerialNum = new System.Windows.Forms.Label();
            this.lb_AnswerModelName = new System.Windows.Forms.Label();
            this.lb_AnswerDeviceType = new System.Windows.Forms.Label();
            this.lb_AnswerLANConnected = new System.Windows.Forms.Label();
            this.lb_AnswerDeviceConnected = new System.Windows.Forms.Label();
            this.lb_AnswerDriverLanguage = new System.Windows.Forms.Label();
            this.lb_Distributor = new System.Windows.Forms.Label();
            this.lb_CodePage = new System.Windows.Forms.Label();
            this.lb_FirmwareChecksum = new System.Windows.Forms.Label();
            this.lb_FirmwareDate = new System.Windows.Forms.Label();
            this.lb_FirmwareRevision = new System.Windows.Forms.Label();
            this.lb_SerialNumber = new System.Windows.Forms.Label();
            this.lb_ModelName = new System.Windows.Forms.Label();
            this.lb_DeviceType = new System.Windows.Forms.Label();
            this.lb_LANConnected = new System.Windows.Forms.Label();
            this.lb_DeviceConnected = new System.Windows.Forms.Label();
            this.lb_DriverLanguage = new System.Windows.Forms.Label();
            this.tp_Behaviour = new System.Windows.Forms.TabPage();
            this.grpRAOMode = new System.Windows.Forms.GroupBox();
            this.btnSetRAOMode = new System.Windows.Forms.Button();
            this.chkActive_OnAfterSettingsChange = new System.Windows.Forms.CheckBox();
            this.chkActive_OnAfterCloseConnection = new System.Windows.Forms.CheckBox();
            this.chkActive_OnAfterOpenConnection = new System.Windows.Forms.CheckBox();
            this.chkSave_Settings_AfterOpenConnection = new System.Windows.Forms.CheckBox();
            this.chkRegisterActiveObject = new System.Windows.Forms.CheckBox();
            this.grbx_TrackingMode = new System.Windows.Forms.GroupBox();
            this.btn_SetTrackingMode = new System.Windows.Forms.Button();
            this.tbx_TrackingModeRowLimit = new System.Windows.Forms.TextBox();
            this.tbx_TrackingModeFileName = new System.Windows.Forms.TextBox();
            this.tbx_TrackingModePath = new System.Windows.Forms.TextBox();
            this.lb_TracckingModeRowLimit = new System.Windows.Forms.Label();
            this.lb_TrackingModeFileName = new System.Windows.Forms.Label();
            this.lb_TrackingModePath = new System.Windows.Forms.Label();
            this.chbx_TrackingMode = new System.Windows.Forms.CheckBox();
            this.grbx_Language = new System.Windows.Forms.GroupBox();
            this.btn_SetDriverLanguage = new System.Windows.Forms.Button();
            this.cbx_Language = new System.Windows.Forms.ComboBox();
            this.grbx_Events = new System.Windows.Forms.GroupBox();
            this.chbx_Active_OnSecondProgress_Complete = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnSecondProgress_Loop = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnSecondProgress_Init = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnFirstProgress_Complete = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnFirstProgress_Loop = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnFirstProgress_Init = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnError = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnStatusChange = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnReceiveAnswer = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnWait = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnSendCommand = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnAfterScriptExecute = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnScriptRowExecute = new System.Windows.Forms.CheckBox();
            this.chbx_Active_OnBeforeScriptExecute = new System.Windows.Forms.CheckBox();
            this.btn_SetEventsMode = new System.Windows.Forms.Button();
            this.tp_SystemInfo = new System.Windows.Forms.TabPage();
            this.lbx_SystemInfo = new System.Windows.Forms.ListBox();
            this.btn_GetSystemInfo = new System.Windows.Forms.Button();
            this.tp_CustomCmds = new System.Windows.Forms.TabPage();
            this.btn_GetLastAnswerList = new System.Windows.Forms.Button();
            this.lbx_ScriptOutput = new System.Windows.Forms.ListBox();
            this.lb_ScriptOutput = new System.Windows.Forms.Label();
            this.btn_ExecuteCmd = new System.Windows.Forms.Button();
            this.tbx_OutputValue = new System.Windows.Forms.TextBox();
            this.tbx_InputValue = new System.Windows.Forms.TextBox();
            this.lb_OutputValue = new System.Windows.Forms.Label();
            this.lb_InputValue = new System.Windows.Forms.Label();
            this.tbx_Cmd = new System.Windows.Forms.TextBox();
            this.lb_Cmd = new System.Windows.Forms.Label();
            this.tp_CustomScript = new System.Windows.Forms.TabPage();
            this.panel1 = new System.Windows.Forms.Panel();
            this.chbx_ShowLastOutput = new System.Windows.Forms.CheckBox();
            this.cbx_PageChoice = new System.Windows.Forms.ComboBox();
            this.btn_Cancel = new System.Windows.Forms.Button();
            this.btn_DeleteOutput = new System.Windows.Forms.Button();
            this.btn_DeleteScript = new System.Windows.Forms.Button();
            this.btn_ExecuteSelected = new System.Windows.Forms.Button();
            this.btn_ExecuteSimpleScript = new System.Windows.Forms.Button();
            this.btn_LoadScriptFromFile = new System.Windows.Forms.Button();
            this.tc_ScriptContainer = new System.Windows.Forms.TabControl();
            this.tp_SimpleScript = new System.Windows.Forms.TabPage();
            this.rtbx_SimpleScript = new System.Windows.Forms.RichTextBox();
            this.tp_HumanLog = new System.Windows.Forms.TabPage();
            this.rtbx_HumanLog = new System.Windows.Forms.RichTextBox();
            this.tp_HEX = new System.Windows.Forms.TabPage();
            this.rtbx_HEXLog = new System.Windows.Forms.RichTextBox();
            this.tp_ANAF = new System.Windows.Forms.TabPage();
            this.tbx_EndZNum = new System.Windows.Forms.TextBox();
            this.tbx_StartZNum = new System.Windows.Forms.TextBox();
            this.dtp_EndTime = new System.Windows.Forms.DateTimePicker();
            this.dtp_EndDate = new System.Windows.Forms.DateTimePicker();
            this.dtp_StartTime = new System.Windows.Forms.DateTimePicker();
            this.dtp_StartDate = new System.Windows.Forms.DateTimePicker();
            this.chbx_DST = new System.Windows.Forms.CheckBox();
            this.cbx_RangeType = new System.Windows.Forms.ComboBox();
            this.btn_CancelDownload = new System.Windows.Forms.Button();
            this.btn_UploadLogo = new System.Windows.Forms.Button();
            this.btn_Download = new System.Windows.Forms.Button();
            this.chbx_OpenFolderAfterDwnl = new System.Windows.Forms.CheckBox();
            this.lb_EndZNum = new System.Windows.Forms.Label();
            this.lb_StartZNum = new System.Windows.Forms.Label();
            this.lb_EndDate = new System.Windows.Forms.Label();
            this.lb_StartDate = new System.Windows.Forms.Label();
            this.lb_RangeType = new System.Windows.Forms.Label();
            this.tp_GetCommandList = new System.Windows.Forms.TabPage();
            this.cbx_HumanNames = new System.Windows.Forms.ComboBox();
            this.chbx_Sorted = new System.Windows.Forms.CheckBox();
            this.cbx_CodeType = new System.Windows.Forms.ComboBox();
            this.btn_GenerateCode = new System.Windows.Forms.Button();
            this.btGetCommandInfo = new System.Windows.Forms.Button();
            this.cbCommands = new System.Windows.Forms.ComboBox();
            this.tbResult = new System.Windows.Forms.TextBox();
            this.btGetCommandList = new System.Windows.Forms.Button();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.pnl_Errors = new System.Windows.Forms.Panel();
            this.lbx_Errors = new System.Windows.Forms.ListBox();
            this.lb_Errors = new System.Windows.Forms.Label();
            this.pnl_StatusBytes = new System.Windows.Forms.Panel();
            this.grbx_StatusByte_7 = new System.Windows.Forms.GroupBox();
            this.chbx_S7_0 = new System.Windows.Forms.CheckBox();
            this.chbx_S7_1 = new System.Windows.Forms.CheckBox();
            this.chbx_S7_2 = new System.Windows.Forms.CheckBox();
            this.chbx_S7_3 = new System.Windows.Forms.CheckBox();
            this.chbx_S7_4 = new System.Windows.Forms.CheckBox();
            this.chbx_S7_5 = new System.Windows.Forms.CheckBox();
            this.chbx_S7_6 = new System.Windows.Forms.CheckBox();
            this.chbx_S7_7 = new System.Windows.Forms.CheckBox();
            this.grbx_StatusByte_6 = new System.Windows.Forms.GroupBox();
            this.chbx_S6_0 = new System.Windows.Forms.CheckBox();
            this.chbx_S6_1 = new System.Windows.Forms.CheckBox();
            this.chbx_S6_2 = new System.Windows.Forms.CheckBox();
            this.chbx_S6_3 = new System.Windows.Forms.CheckBox();
            this.chbx_S6_4 = new System.Windows.Forms.CheckBox();
            this.chbx_S6_5 = new System.Windows.Forms.CheckBox();
            this.chbx_S6_6 = new System.Windows.Forms.CheckBox();
            this.chbx_S6_7 = new System.Windows.Forms.CheckBox();
            this.grbx_StatusByte_5 = new System.Windows.Forms.GroupBox();
            this.chbx_S5_0 = new System.Windows.Forms.CheckBox();
            this.chbx_S5_1 = new System.Windows.Forms.CheckBox();
            this.chbx_S5_2 = new System.Windows.Forms.CheckBox();
            this.chbx_S5_3 = new System.Windows.Forms.CheckBox();
            this.chbx_S5_4 = new System.Windows.Forms.CheckBox();
            this.chbx_S5_5 = new System.Windows.Forms.CheckBox();
            this.chbx_S5_6 = new System.Windows.Forms.CheckBox();
            this.chbx_S5_7 = new System.Windows.Forms.CheckBox();
            this.grbx_StatusByte_4 = new System.Windows.Forms.GroupBox();
            this.chbx_S4_0 = new System.Windows.Forms.CheckBox();
            this.chbx_S4_1 = new System.Windows.Forms.CheckBox();
            this.chbx_S4_2 = new System.Windows.Forms.CheckBox();
            this.chbx_S4_3 = new System.Windows.Forms.CheckBox();
            this.chbx_S4_4 = new System.Windows.Forms.CheckBox();
            this.chbx_S4_5 = new System.Windows.Forms.CheckBox();
            this.chbx_S4_6 = new System.Windows.Forms.CheckBox();
            this.chbx_S4_7 = new System.Windows.Forms.CheckBox();
            this.grbx_StatusByte_3 = new System.Windows.Forms.GroupBox();
            this.chbx_S3_0 = new System.Windows.Forms.CheckBox();
            this.chbx_S3_1 = new System.Windows.Forms.CheckBox();
            this.chbx_S3_2 = new System.Windows.Forms.CheckBox();
            this.chbx_S3_3 = new System.Windows.Forms.CheckBox();
            this.chbx_S3_4 = new System.Windows.Forms.CheckBox();
            this.chbx_S3_5 = new System.Windows.Forms.CheckBox();
            this.chbx_S3_6 = new System.Windows.Forms.CheckBox();
            this.chbx_S3_7 = new System.Windows.Forms.CheckBox();
            this.grbx_StatusByte_2 = new System.Windows.Forms.GroupBox();
            this.chbx_S2_0 = new System.Windows.Forms.CheckBox();
            this.chbx_S2_1 = new System.Windows.Forms.CheckBox();
            this.chbx_S2_2 = new System.Windows.Forms.CheckBox();
            this.chbx_S2_3 = new System.Windows.Forms.CheckBox();
            this.chbx_S2_4 = new System.Windows.Forms.CheckBox();
            this.chbx_S2_5 = new System.Windows.Forms.CheckBox();
            this.chbx_S2_6 = new System.Windows.Forms.CheckBox();
            this.chbx_S2_7 = new System.Windows.Forms.CheckBox();
            this.grbx_StatusByte_1 = new System.Windows.Forms.GroupBox();
            this.chbx_S1_0 = new System.Windows.Forms.CheckBox();
            this.chbx_S1_1 = new System.Windows.Forms.CheckBox();
            this.chbx_S1_2 = new System.Windows.Forms.CheckBox();
            this.chbx_S1_3 = new System.Windows.Forms.CheckBox();
            this.chbx_S1_4 = new System.Windows.Forms.CheckBox();
            this.chbx_S1_5 = new System.Windows.Forms.CheckBox();
            this.chbx_S1_6 = new System.Windows.Forms.CheckBox();
            this.chbx_S1_7 = new System.Windows.Forms.CheckBox();
            this.grbx_StatusByte_0 = new System.Windows.Forms.GroupBox();
            this.chbx_S0_0 = new System.Windows.Forms.CheckBox();
            this.chbx_S0_1 = new System.Windows.Forms.CheckBox();
            this.chbx_S0_2 = new System.Windows.Forms.CheckBox();
            this.chbx_S0_3 = new System.Windows.Forms.CheckBox();
            this.chbx_S0_4 = new System.Windows.Forms.CheckBox();
            this.chbx_S0_5 = new System.Windows.Forms.CheckBox();
            this.chbx_S0_6 = new System.Windows.Forms.CheckBox();
            this.chbx_S0_7 = new System.Windows.Forms.CheckBox();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.pnl_Progress = new System.Windows.Forms.Panel();
            this.pb_2 = new System.Windows.Forms.ProgressBar();
            this.pb_1 = new System.Windows.Forms.ProgressBar();
            this.backgroundWorker2 = new System.ComponentModel.BackgroundWorker();
            this.folderBrowserDialog1 = new System.Windows.Forms.FolderBrowserDialog();
            this.chk_CheckDeviceStatus = new System.Windows.Forms.CheckBox();
            this.tc_Main.SuspendLayout();
            this.tp_InitConnect.SuspendLayout();
            this.pnl_Settings.SuspendLayout();
            this.tp_Properties.SuspendLayout();
            this.tp_Behaviour.SuspendLayout();
            this.grpRAOMode.SuspendLayout();
            this.grbx_TrackingMode.SuspendLayout();
            this.grbx_Language.SuspendLayout();
            this.grbx_Events.SuspendLayout();
            this.tp_SystemInfo.SuspendLayout();
            this.tp_CustomCmds.SuspendLayout();
            this.tp_CustomScript.SuspendLayout();
            this.panel1.SuspendLayout();
            this.tc_ScriptContainer.SuspendLayout();
            this.tp_SimpleScript.SuspendLayout();
            this.tp_HumanLog.SuspendLayout();
            this.tp_HEX.SuspendLayout();
            this.tp_ANAF.SuspendLayout();
            this.tp_GetCommandList.SuspendLayout();
            this.pnl_Errors.SuspendLayout();
            this.pnl_StatusBytes.SuspendLayout();
            this.grbx_StatusByte_7.SuspendLayout();
            this.grbx_StatusByte_6.SuspendLayout();
            this.grbx_StatusByte_5.SuspendLayout();
            this.grbx_StatusByte_4.SuspendLayout();
            this.grbx_StatusByte_3.SuspendLayout();
            this.grbx_StatusByte_2.SuspendLayout();
            this.grbx_StatusByte_1.SuspendLayout();
            this.grbx_StatusByte_0.SuspendLayout();
            this.pnl_Progress.SuspendLayout();
            this.SuspendLayout();
            // 
            // btn_StartComServer
            // 
            this.btn_StartComServer.Location = new System.Drawing.Point(9, 6);
            this.btn_StartComServer.Name = "btn_StartComServer";
            this.btn_StartComServer.Size = new System.Drawing.Size(182, 27);
            this.btn_StartComServer.TabIndex = 0;
            this.btn_StartComServer.Text = "Start - COM server";
            this.btn_StartComServer.UseVisualStyleBackColor = true;
            this.btn_StartComServer.Click += new System.EventHandler(this.btn_StartComServer_Click);
            // 
            // btn_StopComServer
            // 
            this.btn_StopComServer.Location = new System.Drawing.Point(3, 261);
            this.btn_StopComServer.Name = "btn_StopComServer";
            this.btn_StopComServer.Size = new System.Drawing.Size(179, 27);
            this.btn_StopComServer.TabIndex = 1;
            this.btn_StopComServer.Text = "Stop - COM server";
            this.btn_StopComServer.UseVisualStyleBackColor = true;
            this.btn_StopComServer.Click += new System.EventHandler(this.btn_StopComServer_Click);
            // 
            // lb_ComPort
            // 
            this.lb_ComPort.AutoSize = true;
            this.lb_ComPort.Location = new System.Drawing.Point(0, 60);
            this.lb_ComPort.Name = "lb_ComPort";
            this.lb_ComPort.Size = new System.Drawing.Size(55, 13);
            this.lb_ComPort.TabIndex = 2;
            this.lb_ComPort.Text = "COM port:";
            // 
            // lb_BaudRate
            // 
            this.lb_BaudRate.AutoSize = true;
            this.lb_BaudRate.Location = new System.Drawing.Point(0, 86);
            this.lb_BaudRate.Name = "lb_BaudRate";
            this.lb_BaudRate.Size = new System.Drawing.Size(56, 13);
            this.lb_BaudRate.TabIndex = 3;
            this.lb_BaudRate.Text = "Baud rate:";
            // 
            // tc_Main
            // 
            this.tc_Main.Controls.Add(this.tp_InitConnect);
            this.tc_Main.Controls.Add(this.tp_Properties);
            this.tc_Main.Controls.Add(this.tp_Behaviour);
            this.tc_Main.Controls.Add(this.tp_SystemInfo);
            this.tc_Main.Controls.Add(this.tp_CustomCmds);
            this.tc_Main.Controls.Add(this.tp_CustomScript);
            this.tc_Main.Controls.Add(this.tp_ANAF);
            this.tc_Main.Controls.Add(this.tp_GetCommandList);
            this.tc_Main.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tc_Main.Location = new System.Drawing.Point(0, 0);
            this.tc_Main.Name = "tc_Main";
            this.tc_Main.SelectedIndex = 0;
            this.tc_Main.Size = new System.Drawing.Size(967, 701);
            this.tc_Main.TabIndex = 4;
            // 
            // tp_InitConnect
            // 
            this.tp_InitConnect.Controls.Add(this.pnl_Settings);
            this.tp_InitConnect.Controls.Add(this.btn_StartComServer);
            this.tp_InitConnect.Location = new System.Drawing.Point(4, 22);
            this.tp_InitConnect.Name = "tp_InitConnect";
            this.tp_InitConnect.Padding = new System.Windows.Forms.Padding(3);
            this.tp_InitConnect.Size = new System.Drawing.Size(959, 675);
            this.tp_InitConnect.TabIndex = 0;
            this.tp_InitConnect.Text = "Initialisation and connection";
            this.tp_InitConnect.UseVisualStyleBackColor = true;
            // 
            // pnl_Settings
            // 
            this.pnl_Settings.Controls.Add(this.btn_StopComServer);
            this.pnl_Settings.Controls.Add(this.cbx_ToggleSwitch);
            this.pnl_Settings.Controls.Add(this.lb_ComPort);
            this.pnl_Settings.Controls.Add(this.lb_BaudRate);
            this.pnl_Settings.Controls.Add(this.tbx_ComPort);
            this.pnl_Settings.Controls.Add(this.tbx_BaudRate);
            this.pnl_Settings.Controls.Add(this.lb_IPAddress);
            this.pnl_Settings.Controls.Add(this.lb_Port);
            this.pnl_Settings.Controls.Add(this.tbx_IPAddress);
            this.pnl_Settings.Controls.Add(this.tbx_LANPort);
            this.pnl_Settings.Controls.Add(this.btn_OpenConnection);
            this.pnl_Settings.Controls.Add(this.btn_StopConnection);
            this.pnl_Settings.Enabled = false;
            this.pnl_Settings.Location = new System.Drawing.Point(9, 41);
            this.pnl_Settings.Name = "pnl_Settings";
            this.pnl_Settings.Size = new System.Drawing.Size(182, 303);
            this.pnl_Settings.TabIndex = 56;
            // 
            // cbx_ToggleSwitch
            // 
            this.cbx_ToggleSwitch.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbx_ToggleSwitch.FormattingEnabled = true;
            this.cbx_ToggleSwitch.Items.AddRange(new object[] {
            "RS232",
            "TCP/IP"});
            this.cbx_ToggleSwitch.Location = new System.Drawing.Point(67, 19);
            this.cbx_ToggleSwitch.Name = "cbx_ToggleSwitch";
            this.cbx_ToggleSwitch.Size = new System.Drawing.Size(115, 21);
            this.cbx_ToggleSwitch.TabIndex = 55;
            this.cbx_ToggleSwitch.SelectedIndexChanged += new System.EventHandler(this.cbx_ToggleSwitch_SelectedIndexChanged);
            // 
            // tbx_ComPort
            // 
            this.tbx_ComPort.Location = new System.Drawing.Point(67, 57);
            this.tbx_ComPort.MaxLength = 3;
            this.tbx_ComPort.Name = "tbx_ComPort";
            this.tbx_ComPort.Size = new System.Drawing.Size(115, 20);
            this.tbx_ComPort.TabIndex = 4;
            this.tbx_ComPort.Text = "1";
            this.tbx_ComPort.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_ComPort_KeyDown);
            this.tbx_ComPort.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_ComPort_KeyPress);
            // 
            // tbx_BaudRate
            // 
            this.tbx_BaudRate.Location = new System.Drawing.Point(67, 83);
            this.tbx_BaudRate.MaxLength = 6;
            this.tbx_BaudRate.Name = "tbx_BaudRate";
            this.tbx_BaudRate.Size = new System.Drawing.Size(115, 20);
            this.tbx_BaudRate.TabIndex = 5;
            this.tbx_BaudRate.Text = "115200";
            this.tbx_BaudRate.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_BaudRate_KeyDown);
            this.tbx_BaudRate.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_BaudRate_KeyPress);
            // 
            // lb_IPAddress
            // 
            this.lb_IPAddress.AutoSize = true;
            this.lb_IPAddress.Location = new System.Drawing.Point(0, 116);
            this.lb_IPAddress.Name = "lb_IPAddress";
            this.lb_IPAddress.Size = new System.Drawing.Size(60, 13);
            this.lb_IPAddress.TabIndex = 6;
            this.lb_IPAddress.Text = "IP address:";
            // 
            // lb_Port
            // 
            this.lb_Port.AutoSize = true;
            this.lb_Port.Location = new System.Drawing.Point(0, 145);
            this.lb_Port.Name = "lb_Port";
            this.lb_Port.Size = new System.Drawing.Size(29, 13);
            this.lb_Port.TabIndex = 7;
            this.lb_Port.Text = "Port:";
            // 
            // tbx_IPAddress
            // 
            this.tbx_IPAddress.Location = new System.Drawing.Point(67, 113);
            this.tbx_IPAddress.MaxLength = 15;
            this.tbx_IPAddress.Name = "tbx_IPAddress";
            this.tbx_IPAddress.Size = new System.Drawing.Size(115, 20);
            this.tbx_IPAddress.TabIndex = 8;
            this.tbx_IPAddress.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_IPAddress_KeyDown);
            this.tbx_IPAddress.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_IPAddress_KeyPress);
            // 
            // tbx_LANPort
            // 
            this.tbx_LANPort.Location = new System.Drawing.Point(67, 142);
            this.tbx_LANPort.MaxLength = 20;
            this.tbx_LANPort.Name = "tbx_LANPort";
            this.tbx_LANPort.Size = new System.Drawing.Size(115, 20);
            this.tbx_LANPort.TabIndex = 9;
            this.tbx_LANPort.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_LANPort_KeyDown);
            this.tbx_LANPort.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_LANPort_KeyPress);
            // 
            // btn_OpenConnection
            // 
            this.btn_OpenConnection.Location = new System.Drawing.Point(67, 180);
            this.btn_OpenConnection.Name = "btn_OpenConnection";
            this.btn_OpenConnection.Size = new System.Drawing.Size(115, 27);
            this.btn_OpenConnection.TabIndex = 10;
            this.btn_OpenConnection.Text = "Open connection";
            this.btn_OpenConnection.UseVisualStyleBackColor = true;
            this.btn_OpenConnection.Click += new System.EventHandler(this.btn_OpenConnection_Click);
            // 
            // btn_StopConnection
            // 
            this.btn_StopConnection.Location = new System.Drawing.Point(67, 213);
            this.btn_StopConnection.Name = "btn_StopConnection";
            this.btn_StopConnection.Size = new System.Drawing.Size(115, 27);
            this.btn_StopConnection.TabIndex = 11;
            this.btn_StopConnection.Text = "Stop connection";
            this.btn_StopConnection.UseVisualStyleBackColor = true;
            this.btn_StopConnection.Click += new System.EventHandler(this.btn_StopConnection_Click);
            // 
            // tp_Properties
            // 
            this.tp_Properties.Controls.Add(this.lb_AnswerDistributor);
            this.tp_Properties.Controls.Add(this.lb_AnswerCodePage);
            this.tp_Properties.Controls.Add(this.lb_AnswerFirmwareCheckSum);
            this.tp_Properties.Controls.Add(this.lb_AnswerFirmwareDate);
            this.tp_Properties.Controls.Add(this.lb_AnswerFirmwareRevision);
            this.tp_Properties.Controls.Add(this.lb_AnswerSerialNum);
            this.tp_Properties.Controls.Add(this.lb_AnswerModelName);
            this.tp_Properties.Controls.Add(this.lb_AnswerDeviceType);
            this.tp_Properties.Controls.Add(this.lb_AnswerLANConnected);
            this.tp_Properties.Controls.Add(this.lb_AnswerDeviceConnected);
            this.tp_Properties.Controls.Add(this.lb_AnswerDriverLanguage);
            this.tp_Properties.Controls.Add(this.lb_Distributor);
            this.tp_Properties.Controls.Add(this.lb_CodePage);
            this.tp_Properties.Controls.Add(this.lb_FirmwareChecksum);
            this.tp_Properties.Controls.Add(this.lb_FirmwareDate);
            this.tp_Properties.Controls.Add(this.lb_FirmwareRevision);
            this.tp_Properties.Controls.Add(this.lb_SerialNumber);
            this.tp_Properties.Controls.Add(this.lb_ModelName);
            this.tp_Properties.Controls.Add(this.lb_DeviceType);
            this.tp_Properties.Controls.Add(this.lb_LANConnected);
            this.tp_Properties.Controls.Add(this.lb_DeviceConnected);
            this.tp_Properties.Controls.Add(this.lb_DriverLanguage);
            this.tp_Properties.Location = new System.Drawing.Point(4, 22);
            this.tp_Properties.Name = "tp_Properties";
            this.tp_Properties.Padding = new System.Windows.Forms.Padding(3);
            this.tp_Properties.Size = new System.Drawing.Size(959, 675);
            this.tp_Properties.TabIndex = 6;
            this.tp_Properties.Text = "Properties";
            this.tp_Properties.UseVisualStyleBackColor = true;
            // 
            // lb_AnswerDistributor
            // 
            this.lb_AnswerDistributor.AutoSize = true;
            this.lb_AnswerDistributor.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerDistributor.Location = new System.Drawing.Point(132, 273);
            this.lb_AnswerDistributor.Name = "lb_AnswerDistributor";
            this.lb_AnswerDistributor.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerDistributor.TabIndex = 82;
            this.lb_AnswerDistributor.Text = "...";
            // 
            // lb_AnswerCodePage
            // 
            this.lb_AnswerCodePage.AutoSize = true;
            this.lb_AnswerCodePage.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerCodePage.Location = new System.Drawing.Point(132, 247);
            this.lb_AnswerCodePage.Name = "lb_AnswerCodePage";
            this.lb_AnswerCodePage.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerCodePage.TabIndex = 81;
            this.lb_AnswerCodePage.Text = "...";
            // 
            // lb_AnswerFirmwareCheckSum
            // 
            this.lb_AnswerFirmwareCheckSum.AutoSize = true;
            this.lb_AnswerFirmwareCheckSum.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerFirmwareCheckSum.Location = new System.Drawing.Point(132, 220);
            this.lb_AnswerFirmwareCheckSum.Name = "lb_AnswerFirmwareCheckSum";
            this.lb_AnswerFirmwareCheckSum.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerFirmwareCheckSum.TabIndex = 78;
            this.lb_AnswerFirmwareCheckSum.Text = "...";
            // 
            // lb_AnswerFirmwareDate
            // 
            this.lb_AnswerFirmwareDate.AutoSize = true;
            this.lb_AnswerFirmwareDate.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerFirmwareDate.Location = new System.Drawing.Point(132, 192);
            this.lb_AnswerFirmwareDate.Name = "lb_AnswerFirmwareDate";
            this.lb_AnswerFirmwareDate.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerFirmwareDate.TabIndex = 77;
            this.lb_AnswerFirmwareDate.Text = "...";
            // 
            // lb_AnswerFirmwareRevision
            // 
            this.lb_AnswerFirmwareRevision.AutoSize = true;
            this.lb_AnswerFirmwareRevision.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerFirmwareRevision.Location = new System.Drawing.Point(132, 168);
            this.lb_AnswerFirmwareRevision.Name = "lb_AnswerFirmwareRevision";
            this.lb_AnswerFirmwareRevision.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerFirmwareRevision.TabIndex = 76;
            this.lb_AnswerFirmwareRevision.Text = "...";
            // 
            // lb_AnswerSerialNum
            // 
            this.lb_AnswerSerialNum.AutoSize = true;
            this.lb_AnswerSerialNum.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerSerialNum.Location = new System.Drawing.Point(132, 142);
            this.lb_AnswerSerialNum.Name = "lb_AnswerSerialNum";
            this.lb_AnswerSerialNum.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerSerialNum.TabIndex = 74;
            this.lb_AnswerSerialNum.Text = "...";
            // 
            // lb_AnswerModelName
            // 
            this.lb_AnswerModelName.AutoSize = true;
            this.lb_AnswerModelName.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerModelName.Location = new System.Drawing.Point(132, 116);
            this.lb_AnswerModelName.Name = "lb_AnswerModelName";
            this.lb_AnswerModelName.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerModelName.TabIndex = 73;
            this.lb_AnswerModelName.Text = "...";
            // 
            // lb_AnswerDeviceType
            // 
            this.lb_AnswerDeviceType.AutoSize = true;
            this.lb_AnswerDeviceType.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerDeviceType.Location = new System.Drawing.Point(132, 90);
            this.lb_AnswerDeviceType.Name = "lb_AnswerDeviceType";
            this.lb_AnswerDeviceType.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerDeviceType.TabIndex = 72;
            this.lb_AnswerDeviceType.Text = "...";
            // 
            // lb_AnswerLANConnected
            // 
            this.lb_AnswerLANConnected.AutoSize = true;
            this.lb_AnswerLANConnected.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerLANConnected.Location = new System.Drawing.Point(132, 64);
            this.lb_AnswerLANConnected.Name = "lb_AnswerLANConnected";
            this.lb_AnswerLANConnected.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerLANConnected.TabIndex = 71;
            this.lb_AnswerLANConnected.Text = "...";
            // 
            // lb_AnswerDeviceConnected
            // 
            this.lb_AnswerDeviceConnected.AutoSize = true;
            this.lb_AnswerDeviceConnected.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerDeviceConnected.Location = new System.Drawing.Point(132, 38);
            this.lb_AnswerDeviceConnected.Name = "lb_AnswerDeviceConnected";
            this.lb_AnswerDeviceConnected.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerDeviceConnected.TabIndex = 70;
            this.lb_AnswerDeviceConnected.Text = "...";
            // 
            // lb_AnswerDriverLanguage
            // 
            this.lb_AnswerDriverLanguage.AutoSize = true;
            this.lb_AnswerDriverLanguage.Font = new System.Drawing.Font("Times New Roman", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lb_AnswerDriverLanguage.Location = new System.Drawing.Point(132, 12);
            this.lb_AnswerDriverLanguage.Name = "lb_AnswerDriverLanguage";
            this.lb_AnswerDriverLanguage.Size = new System.Drawing.Size(16, 13);
            this.lb_AnswerDriverLanguage.TabIndex = 69;
            this.lb_AnswerDriverLanguage.Text = "...";
            // 
            // lb_Distributor
            // 
            this.lb_Distributor.AutoSize = true;
            this.lb_Distributor.Location = new System.Drawing.Point(8, 273);
            this.lb_Distributor.Name = "lb_Distributor";
            this.lb_Distributor.Size = new System.Drawing.Size(57, 13);
            this.lb_Distributor.TabIndex = 68;
            this.lb_Distributor.Text = "Distributor:";
            // 
            // lb_CodePage
            // 
            this.lb_CodePage.AutoSize = true;
            this.lb_CodePage.Location = new System.Drawing.Point(8, 247);
            this.lb_CodePage.Name = "lb_CodePage";
            this.lb_CodePage.Size = new System.Drawing.Size(62, 13);
            this.lb_CodePage.TabIndex = 67;
            this.lb_CodePage.Text = "Code page:";
            // 
            // lb_FirmwareChecksum
            // 
            this.lb_FirmwareChecksum.AutoSize = true;
            this.lb_FirmwareChecksum.Location = new System.Drawing.Point(8, 220);
            this.lb_FirmwareChecksum.Name = "lb_FirmwareChecksum";
            this.lb_FirmwareChecksum.Size = new System.Drawing.Size(104, 13);
            this.lb_FirmwareChecksum.TabIndex = 64;
            this.lb_FirmwareChecksum.Text = "Firmware checksum:";
            // 
            // lb_FirmwareDate
            // 
            this.lb_FirmwareDate.AutoSize = true;
            this.lb_FirmwareDate.Location = new System.Drawing.Point(8, 192);
            this.lb_FirmwareDate.Name = "lb_FirmwareDate";
            this.lb_FirmwareDate.Size = new System.Drawing.Size(76, 13);
            this.lb_FirmwareDate.TabIndex = 63;
            this.lb_FirmwareDate.Text = "Firmware date:";
            // 
            // lb_FirmwareRevision
            // 
            this.lb_FirmwareRevision.AutoSize = true;
            this.lb_FirmwareRevision.Location = new System.Drawing.Point(8, 168);
            this.lb_FirmwareRevision.Name = "lb_FirmwareRevision";
            this.lb_FirmwareRevision.Size = new System.Drawing.Size(91, 13);
            this.lb_FirmwareRevision.TabIndex = 62;
            this.lb_FirmwareRevision.Text = "Firmware revision:";
            // 
            // lb_SerialNumber
            // 
            this.lb_SerialNumber.AutoSize = true;
            this.lb_SerialNumber.Location = new System.Drawing.Point(8, 142);
            this.lb_SerialNumber.Name = "lb_SerialNumber";
            this.lb_SerialNumber.Size = new System.Drawing.Size(74, 13);
            this.lb_SerialNumber.TabIndex = 60;
            this.lb_SerialNumber.Text = "Serial number:";
            // 
            // lb_ModelName
            // 
            this.lb_ModelName.AutoSize = true;
            this.lb_ModelName.Location = new System.Drawing.Point(8, 116);
            this.lb_ModelName.Name = "lb_ModelName";
            this.lb_ModelName.Size = new System.Drawing.Size(68, 13);
            this.lb_ModelName.TabIndex = 59;
            this.lb_ModelName.Text = "Model name:";
            // 
            // lb_DeviceType
            // 
            this.lb_DeviceType.AutoSize = true;
            this.lb_DeviceType.Location = new System.Drawing.Point(8, 90);
            this.lb_DeviceType.Name = "lb_DeviceType";
            this.lb_DeviceType.Size = new System.Drawing.Size(67, 13);
            this.lb_DeviceType.TabIndex = 58;
            this.lb_DeviceType.Text = "Device type:";
            // 
            // lb_LANConnected
            // 
            this.lb_LANConnected.AutoSize = true;
            this.lb_LANConnected.Location = new System.Drawing.Point(8, 64);
            this.lb_LANConnected.Name = "lb_LANConnected";
            this.lb_LANConnected.Size = new System.Drawing.Size(85, 13);
            this.lb_LANConnected.TabIndex = 57;
            this.lb_LANConnected.Text = "LAN connected:";
            // 
            // lb_DeviceConnected
            // 
            this.lb_DeviceConnected.AutoSize = true;
            this.lb_DeviceConnected.Location = new System.Drawing.Point(8, 38);
            this.lb_DeviceConnected.Name = "lb_DeviceConnected";
            this.lb_DeviceConnected.Size = new System.Drawing.Size(98, 13);
            this.lb_DeviceConnected.TabIndex = 56;
            this.lb_DeviceConnected.Text = "Device connected:";
            // 
            // lb_DriverLanguage
            // 
            this.lb_DriverLanguage.AutoSize = true;
            this.lb_DriverLanguage.Location = new System.Drawing.Point(8, 12);
            this.lb_DriverLanguage.Name = "lb_DriverLanguage";
            this.lb_DriverLanguage.Size = new System.Drawing.Size(85, 13);
            this.lb_DriverLanguage.TabIndex = 55;
            this.lb_DriverLanguage.Text = "Driver language:";
            // 
            // tp_Behaviour
            // 
            this.tp_Behaviour.Controls.Add(this.grpRAOMode);
            this.tp_Behaviour.Controls.Add(this.grbx_TrackingMode);
            this.tp_Behaviour.Controls.Add(this.grbx_Language);
            this.tp_Behaviour.Controls.Add(this.grbx_Events);
            this.tp_Behaviour.Location = new System.Drawing.Point(4, 22);
            this.tp_Behaviour.Name = "tp_Behaviour";
            this.tp_Behaviour.Padding = new System.Windows.Forms.Padding(3);
            this.tp_Behaviour.Size = new System.Drawing.Size(959, 675);
            this.tp_Behaviour.TabIndex = 7;
            this.tp_Behaviour.Text = "Behaviour";
            this.tp_Behaviour.UseVisualStyleBackColor = true;
            // 
            // grpRAOMode
            // 
            this.grpRAOMode.Controls.Add(this.chk_CheckDeviceStatus);
            this.grpRAOMode.Controls.Add(this.btnSetRAOMode);
            this.grpRAOMode.Controls.Add(this.chkActive_OnAfterSettingsChange);
            this.grpRAOMode.Controls.Add(this.chkActive_OnAfterCloseConnection);
            this.grpRAOMode.Controls.Add(this.chkActive_OnAfterOpenConnection);
            this.grpRAOMode.Controls.Add(this.chkSave_Settings_AfterOpenConnection);
            this.grpRAOMode.Controls.Add(this.chkRegisterActiveObject);
            this.grpRAOMode.Location = new System.Drawing.Point(254, 240);
            this.grpRAOMode.Name = "grpRAOMode";
            this.grpRAOMode.Size = new System.Drawing.Size(341, 182);
            this.grpRAOMode.TabIndex = 3;
            this.grpRAOMode.TabStop = false;
            this.grpRAOMode.Text = "RAO mode";
            // 
            // btnSetRAOMode
            // 
            this.btnSetRAOMode.Location = new System.Drawing.Point(221, 148);
            this.btnSetRAOMode.Name = "btnSetRAOMode";
            this.btnSetRAOMode.Size = new System.Drawing.Size(115, 27);
            this.btnSetRAOMode.TabIndex = 5;
            this.btnSetRAOMode.Text = "Set RAO mode";
            this.btnSetRAOMode.UseVisualStyleBackColor = true;
            this.btnSetRAOMode.Click += new System.EventHandler(this.btnSetRAOMode_Click);
            // 
            // chkActive_OnAfterSettingsChange
            // 
            this.chkActive_OnAfterSettingsChange.AutoSize = true;
            this.chkActive_OnAfterSettingsChange.Location = new System.Drawing.Point(6, 88);
            this.chkActive_OnAfterSettingsChange.Name = "chkActive_OnAfterSettingsChange";
            this.chkActive_OnAfterSettingsChange.Size = new System.Drawing.Size(203, 17);
            this.chkActive_OnAfterSettingsChange.TabIndex = 4;
            this.chkActive_OnAfterSettingsChange.Text = "Active event: OnAfterSettingsChange";
            this.chkActive_OnAfterSettingsChange.UseVisualStyleBackColor = true;
            // 
            // chkActive_OnAfterCloseConnection
            // 
            this.chkActive_OnAfterCloseConnection.AutoSize = true;
            this.chkActive_OnAfterCloseConnection.Location = new System.Drawing.Point(6, 65);
            this.chkActive_OnAfterCloseConnection.Name = "chkActive_OnAfterCloseConnection";
            this.chkActive_OnAfterCloseConnection.Size = new System.Drawing.Size(208, 17);
            this.chkActive_OnAfterCloseConnection.TabIndex = 3;
            this.chkActive_OnAfterCloseConnection.Text = "Active event: OnAfterCloseConnection";
            this.chkActive_OnAfterCloseConnection.UseVisualStyleBackColor = true;
            // 
            // chkActive_OnAfterOpenConnection
            // 
            this.chkActive_OnAfterOpenConnection.AutoSize = true;
            this.chkActive_OnAfterOpenConnection.Location = new System.Drawing.Point(6, 42);
            this.chkActive_OnAfterOpenConnection.Name = "chkActive_OnAfterOpenConnection";
            this.chkActive_OnAfterOpenConnection.Size = new System.Drawing.Size(208, 17);
            this.chkActive_OnAfterOpenConnection.TabIndex = 2;
            this.chkActive_OnAfterOpenConnection.Text = "Active event: OnAfterOpenConnection";
            this.chkActive_OnAfterOpenConnection.UseVisualStyleBackColor = true;
            // 
            // chkSave_Settings_AfterOpenConnection
            // 
            this.chkSave_Settings_AfterOpenConnection.AutoSize = true;
            this.chkSave_Settings_AfterOpenConnection.Location = new System.Drawing.Point(6, 111);
            this.chkSave_Settings_AfterOpenConnection.Name = "chkSave_Settings_AfterOpenConnection";
            this.chkSave_Settings_AfterOpenConnection.Size = new System.Drawing.Size(235, 17);
            this.chkSave_Settings_AfterOpenConnection.TabIndex = 1;
            this.chkSave_Settings_AfterOpenConnection.Text = "Save settings after connection to the device";
            this.chkSave_Settings_AfterOpenConnection.UseVisualStyleBackColor = true;
            // 
            // chkRegisterActiveObject
            // 
            this.chkRegisterActiveObject.AutoSize = true;
            this.chkRegisterActiveObject.Location = new System.Drawing.Point(6, 19);
            this.chkRegisterActiveObject.Name = "chkRegisterActiveObject";
            this.chkRegisterActiveObject.Size = new System.Drawing.Size(177, 17);
            this.chkRegisterActiveObject.TabIndex = 0;
            this.chkRegisterActiveObject.Text = "Register ActiveX Object on start";
            this.chkRegisterActiveObject.UseVisualStyleBackColor = true;
            // 
            // grbx_TrackingMode
            // 
            this.grbx_TrackingMode.Controls.Add(this.btn_SetTrackingMode);
            this.grbx_TrackingMode.Controls.Add(this.tbx_TrackingModeRowLimit);
            this.grbx_TrackingMode.Controls.Add(this.tbx_TrackingModeFileName);
            this.grbx_TrackingMode.Controls.Add(this.tbx_TrackingModePath);
            this.grbx_TrackingMode.Controls.Add(this.lb_TracckingModeRowLimit);
            this.grbx_TrackingMode.Controls.Add(this.lb_TrackingModeFileName);
            this.grbx_TrackingMode.Controls.Add(this.lb_TrackingModePath);
            this.grbx_TrackingMode.Controls.Add(this.chbx_TrackingMode);
            this.grbx_TrackingMode.Location = new System.Drawing.Point(254, 69);
            this.grbx_TrackingMode.Name = "grbx_TrackingMode";
            this.grbx_TrackingMode.Size = new System.Drawing.Size(341, 165);
            this.grbx_TrackingMode.TabIndex = 2;
            this.grbx_TrackingMode.TabStop = false;
            this.grbx_TrackingMode.Text = "Tracking mode";
            // 
            // btn_SetTrackingMode
            // 
            this.btn_SetTrackingMode.Location = new System.Drawing.Point(220, 126);
            this.btn_SetTrackingMode.Name = "btn_SetTrackingMode";
            this.btn_SetTrackingMode.Size = new System.Drawing.Size(115, 27);
            this.btn_SetTrackingMode.TabIndex = 71;
            this.btn_SetTrackingMode.Text = "Set tracking mode";
            this.btn_SetTrackingMode.UseVisualStyleBackColor = true;
            this.btn_SetTrackingMode.Click += new System.EventHandler(this.btn_SetTrackingMode_Click);
            // 
            // tbx_TrackingModeRowLimit
            // 
            this.tbx_TrackingModeRowLimit.Location = new System.Drawing.Point(140, 100);
            this.tbx_TrackingModeRowLimit.Name = "tbx_TrackingModeRowLimit";
            this.tbx_TrackingModeRowLimit.Size = new System.Drawing.Size(196, 20);
            this.tbx_TrackingModeRowLimit.TabIndex = 70;
            // 
            // tbx_TrackingModeFileName
            // 
            this.tbx_TrackingModeFileName.Location = new System.Drawing.Point(140, 72);
            this.tbx_TrackingModeFileName.Name = "tbx_TrackingModeFileName";
            this.tbx_TrackingModeFileName.Size = new System.Drawing.Size(196, 20);
            this.tbx_TrackingModeFileName.TabIndex = 69;
            // 
            // tbx_TrackingModePath
            // 
            this.tbx_TrackingModePath.Location = new System.Drawing.Point(140, 45);
            this.tbx_TrackingModePath.Name = "tbx_TrackingModePath";
            this.tbx_TrackingModePath.Size = new System.Drawing.Size(196, 20);
            this.tbx_TrackingModePath.TabIndex = 68;
            // 
            // lb_TracckingModeRowLimit
            // 
            this.lb_TracckingModeRowLimit.AutoSize = true;
            this.lb_TracckingModeRowLimit.Location = new System.Drawing.Point(3, 103);
            this.lb_TracckingModeRowLimit.Name = "lb_TracckingModeRowLimit";
            this.lb_TracckingModeRowLimit.Size = new System.Drawing.Size(132, 13);
            this.lb_TracckingModeRowLimit.TabIndex = 67;
            this.lb_TracckingModeRowLimit.Text = "Tracking mode - Row limit:";
            // 
            // lb_TrackingModeFileName
            // 
            this.lb_TrackingModeFileName.AutoSize = true;
            this.lb_TrackingModeFileName.Location = new System.Drawing.Point(3, 75);
            this.lb_TrackingModeFileName.Name = "lb_TrackingModeFileName";
            this.lb_TrackingModeFileName.Size = new System.Drawing.Size(135, 13);
            this.lb_TrackingModeFileName.TabIndex = 66;
            this.lb_TrackingModeFileName.Text = "Tracking mode - File name:";
            // 
            // lb_TrackingModePath
            // 
            this.lb_TrackingModePath.AutoSize = true;
            this.lb_TrackingModePath.Location = new System.Drawing.Point(3, 46);
            this.lb_TrackingModePath.Name = "lb_TrackingModePath";
            this.lb_TrackingModePath.Size = new System.Drawing.Size(112, 13);
            this.lb_TrackingModePath.TabIndex = 65;
            this.lb_TrackingModePath.Text = "Tracking mode - Path:";
            // 
            // chbx_TrackingMode
            // 
            this.chbx_TrackingMode.AutoSize = true;
            this.chbx_TrackingMode.Location = new System.Drawing.Point(6, 19);
            this.chbx_TrackingMode.Name = "chbx_TrackingMode";
            this.chbx_TrackingMode.Size = new System.Drawing.Size(97, 17);
            this.chbx_TrackingMode.TabIndex = 64;
            this.chbx_TrackingMode.Text = "Tracking mode";
            this.chbx_TrackingMode.UseVisualStyleBackColor = true;
            // 
            // grbx_Language
            // 
            this.grbx_Language.Controls.Add(this.btn_SetDriverLanguage);
            this.grbx_Language.Controls.Add(this.cbx_Language);
            this.grbx_Language.Location = new System.Drawing.Point(254, 6);
            this.grbx_Language.Name = "grbx_Language";
            this.grbx_Language.Size = new System.Drawing.Size(341, 57);
            this.grbx_Language.TabIndex = 1;
            this.grbx_Language.TabStop = false;
            this.grbx_Language.Text = "Language";
            // 
            // btn_SetDriverLanguage
            // 
            this.btn_SetDriverLanguage.Location = new System.Drawing.Point(220, 19);
            this.btn_SetDriverLanguage.Name = "btn_SetDriverLanguage";
            this.btn_SetDriverLanguage.Size = new System.Drawing.Size(115, 27);
            this.btn_SetDriverLanguage.TabIndex = 57;
            this.btn_SetDriverLanguage.Text = "Set driver language";
            this.btn_SetDriverLanguage.UseVisualStyleBackColor = true;
            this.btn_SetDriverLanguage.Click += new System.EventHandler(this.btn_SetDriverLanguage_Click);
            // 
            // cbx_Language
            // 
            this.cbx_Language.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbx_Language.FormattingEnabled = true;
            this.cbx_Language.Items.AddRange(new object[] {
            "English",
            "Romanian"});
            this.cbx_Language.Location = new System.Drawing.Point(6, 23);
            this.cbx_Language.Name = "cbx_Language";
            this.cbx_Language.Size = new System.Drawing.Size(115, 21);
            this.cbx_Language.TabIndex = 58;
            // 
            // grbx_Events
            // 
            this.grbx_Events.Controls.Add(this.chbx_Active_OnSecondProgress_Complete);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnSecondProgress_Loop);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnSecondProgress_Init);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnFirstProgress_Complete);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnFirstProgress_Loop);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnFirstProgress_Init);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnError);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnStatusChange);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnReceiveAnswer);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnWait);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnSendCommand);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnAfterScriptExecute);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnScriptRowExecute);
            this.grbx_Events.Controls.Add(this.chbx_Active_OnBeforeScriptExecute);
            this.grbx_Events.Controls.Add(this.btn_SetEventsMode);
            this.grbx_Events.Location = new System.Drawing.Point(6, 6);
            this.grbx_Events.Name = "grbx_Events";
            this.grbx_Events.Size = new System.Drawing.Size(242, 416);
            this.grbx_Events.TabIndex = 0;
            this.grbx_Events.TabStop = false;
            this.grbx_Events.Text = "Events";
            // 
            // chbx_Active_OnSecondProgress_Complete
            // 
            this.chbx_Active_OnSecondProgress_Complete.AutoSize = true;
            this.chbx_Active_OnSecondProgress_Complete.Location = new System.Drawing.Point(6, 351);
            this.chbx_Active_OnSecondProgress_Complete.Name = "chbx_Active_OnSecondProgress_Complete";
            this.chbx_Active_OnSecondProgress_Complete.Size = new System.Drawing.Size(234, 17);
            this.chbx_Active_OnSecondProgress_Complete.TabIndex = 14;
            this.chbx_Active_OnSecondProgress_Complete.Text = "Active event: OnSecondProgress_Complete";
            this.chbx_Active_OnSecondProgress_Complete.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnSecondProgress_Loop
            // 
            this.chbx_Active_OnSecondProgress_Loop.AutoSize = true;
            this.chbx_Active_OnSecondProgress_Loop.Location = new System.Drawing.Point(6, 328);
            this.chbx_Active_OnSecondProgress_Loop.Name = "chbx_Active_OnSecondProgress_Loop";
            this.chbx_Active_OnSecondProgress_Loop.Size = new System.Drawing.Size(214, 17);
            this.chbx_Active_OnSecondProgress_Loop.TabIndex = 13;
            this.chbx_Active_OnSecondProgress_Loop.Text = "Active event: OnSecondProgress_Loop";
            this.chbx_Active_OnSecondProgress_Loop.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnSecondProgress_Init
            // 
            this.chbx_Active_OnSecondProgress_Init.AutoSize = true;
            this.chbx_Active_OnSecondProgress_Init.Location = new System.Drawing.Point(6, 305);
            this.chbx_Active_OnSecondProgress_Init.Name = "chbx_Active_OnSecondProgress_Init";
            this.chbx_Active_OnSecondProgress_Init.Size = new System.Drawing.Size(204, 17);
            this.chbx_Active_OnSecondProgress_Init.TabIndex = 12;
            this.chbx_Active_OnSecondProgress_Init.Text = "Active event: OnSecondProgress_Init";
            this.chbx_Active_OnSecondProgress_Init.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnFirstProgress_Complete
            // 
            this.chbx_Active_OnFirstProgress_Complete.AutoSize = true;
            this.chbx_Active_OnFirstProgress_Complete.Location = new System.Drawing.Point(6, 282);
            this.chbx_Active_OnFirstProgress_Complete.Name = "chbx_Active_OnFirstProgress_Complete";
            this.chbx_Active_OnFirstProgress_Complete.Size = new System.Drawing.Size(216, 17);
            this.chbx_Active_OnFirstProgress_Complete.TabIndex = 11;
            this.chbx_Active_OnFirstProgress_Complete.Text = "Active event: OnFirstProgress_Complete";
            this.chbx_Active_OnFirstProgress_Complete.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnFirstProgress_Loop
            // 
            this.chbx_Active_OnFirstProgress_Loop.AutoSize = true;
            this.chbx_Active_OnFirstProgress_Loop.Location = new System.Drawing.Point(6, 259);
            this.chbx_Active_OnFirstProgress_Loop.Name = "chbx_Active_OnFirstProgress_Loop";
            this.chbx_Active_OnFirstProgress_Loop.Size = new System.Drawing.Size(196, 17);
            this.chbx_Active_OnFirstProgress_Loop.TabIndex = 10;
            this.chbx_Active_OnFirstProgress_Loop.Text = "Active event: OnFirstProgress_Loop";
            this.chbx_Active_OnFirstProgress_Loop.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnFirstProgress_Init
            // 
            this.chbx_Active_OnFirstProgress_Init.AutoSize = true;
            this.chbx_Active_OnFirstProgress_Init.Location = new System.Drawing.Point(6, 236);
            this.chbx_Active_OnFirstProgress_Init.Name = "chbx_Active_OnFirstProgress_Init";
            this.chbx_Active_OnFirstProgress_Init.Size = new System.Drawing.Size(186, 17);
            this.chbx_Active_OnFirstProgress_Init.TabIndex = 9;
            this.chbx_Active_OnFirstProgress_Init.Text = "Active event: OnFirstProgress_Init";
            this.chbx_Active_OnFirstProgress_Init.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnError
            // 
            this.chbx_Active_OnError.AutoSize = true;
            this.chbx_Active_OnError.Location = new System.Drawing.Point(6, 213);
            this.chbx_Active_OnError.Name = "chbx_Active_OnError";
            this.chbx_Active_OnError.Size = new System.Drawing.Size(128, 17);
            this.chbx_Active_OnError.TabIndex = 8;
            this.chbx_Active_OnError.Text = "Active event: OnError";
            this.chbx_Active_OnError.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnStatusChange
            // 
            this.chbx_Active_OnStatusChange.AutoSize = true;
            this.chbx_Active_OnStatusChange.Location = new System.Drawing.Point(6, 190);
            this.chbx_Active_OnStatusChange.Name = "chbx_Active_OnStatusChange";
            this.chbx_Active_OnStatusChange.Size = new System.Drawing.Size(173, 17);
            this.chbx_Active_OnStatusChange.TabIndex = 7;
            this.chbx_Active_OnStatusChange.Text = "Active event: OnStatusChange";
            this.chbx_Active_OnStatusChange.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnReceiveAnswer
            // 
            this.chbx_Active_OnReceiveAnswer.AutoSize = true;
            this.chbx_Active_OnReceiveAnswer.Location = new System.Drawing.Point(6, 167);
            this.chbx_Active_OnReceiveAnswer.Name = "chbx_Active_OnReceiveAnswer";
            this.chbx_Active_OnReceiveAnswer.Size = new System.Drawing.Size(181, 17);
            this.chbx_Active_OnReceiveAnswer.TabIndex = 6;
            this.chbx_Active_OnReceiveAnswer.Text = "Active event: OnReceiveAnswer";
            this.chbx_Active_OnReceiveAnswer.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnWait
            // 
            this.chbx_Active_OnWait.AutoSize = true;
            this.chbx_Active_OnWait.Location = new System.Drawing.Point(6, 144);
            this.chbx_Active_OnWait.Name = "chbx_Active_OnWait";
            this.chbx_Active_OnWait.Size = new System.Drawing.Size(128, 17);
            this.chbx_Active_OnWait.TabIndex = 5;
            this.chbx_Active_OnWait.Text = "Active event: OnWait";
            this.chbx_Active_OnWait.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnSendCommand
            // 
            this.chbx_Active_OnSendCommand.AutoSize = true;
            this.chbx_Active_OnSendCommand.Location = new System.Drawing.Point(6, 121);
            this.chbx_Active_OnSendCommand.Name = "chbx_Active_OnSendCommand";
            this.chbx_Active_OnSendCommand.Size = new System.Drawing.Size(178, 17);
            this.chbx_Active_OnSendCommand.TabIndex = 4;
            this.chbx_Active_OnSendCommand.Text = "Active event: OnSendCommand";
            this.chbx_Active_OnSendCommand.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnAfterScriptExecute
            // 
            this.chbx_Active_OnAfterScriptExecute.AutoSize = true;
            this.chbx_Active_OnAfterScriptExecute.Location = new System.Drawing.Point(6, 98);
            this.chbx_Active_OnAfterScriptExecute.Name = "chbx_Active_OnAfterScriptExecute";
            this.chbx_Active_OnAfterScriptExecute.Size = new System.Drawing.Size(194, 17);
            this.chbx_Active_OnAfterScriptExecute.TabIndex = 3;
            this.chbx_Active_OnAfterScriptExecute.Text = "Active event: OnAfterScriptExecute";
            this.chbx_Active_OnAfterScriptExecute.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnScriptRowExecute
            // 
            this.chbx_Active_OnScriptRowExecute.AutoSize = true;
            this.chbx_Active_OnScriptRowExecute.Location = new System.Drawing.Point(6, 75);
            this.chbx_Active_OnScriptRowExecute.Name = "chbx_Active_OnScriptRowExecute";
            this.chbx_Active_OnScriptRowExecute.Size = new System.Drawing.Size(194, 17);
            this.chbx_Active_OnScriptRowExecute.TabIndex = 2;
            this.chbx_Active_OnScriptRowExecute.Text = "Active event: OnScriptRowExecute";
            this.chbx_Active_OnScriptRowExecute.UseVisualStyleBackColor = true;
            // 
            // chbx_Active_OnBeforeScriptExecute
            // 
            this.chbx_Active_OnBeforeScriptExecute.AutoSize = true;
            this.chbx_Active_OnBeforeScriptExecute.Location = new System.Drawing.Point(6, 52);
            this.chbx_Active_OnBeforeScriptExecute.Name = "chbx_Active_OnBeforeScriptExecute";
            this.chbx_Active_OnBeforeScriptExecute.Size = new System.Drawing.Size(203, 17);
            this.chbx_Active_OnBeforeScriptExecute.TabIndex = 1;
            this.chbx_Active_OnBeforeScriptExecute.Text = "Active event: OnBeforeScriptExecute";
            this.chbx_Active_OnBeforeScriptExecute.UseVisualStyleBackColor = true;
            // 
            // btn_SetEventsMode
            // 
            this.btn_SetEventsMode.Location = new System.Drawing.Point(6, 19);
            this.btn_SetEventsMode.Name = "btn_SetEventsMode";
            this.btn_SetEventsMode.Size = new System.Drawing.Size(115, 27);
            this.btn_SetEventsMode.TabIndex = 0;
            this.btn_SetEventsMode.Text = "Set events mode";
            this.btn_SetEventsMode.UseVisualStyleBackColor = true;
            this.btn_SetEventsMode.Click += new System.EventHandler(this.btn_SetEventsMode_Click);
            // 
            // tp_SystemInfo
            // 
            this.tp_SystemInfo.Controls.Add(this.lbx_SystemInfo);
            this.tp_SystemInfo.Controls.Add(this.btn_GetSystemInfo);
            this.tp_SystemInfo.Location = new System.Drawing.Point(4, 22);
            this.tp_SystemInfo.Name = "tp_SystemInfo";
            this.tp_SystemInfo.Padding = new System.Windows.Forms.Padding(3);
            this.tp_SystemInfo.Size = new System.Drawing.Size(959, 675);
            this.tp_SystemInfo.TabIndex = 2;
            this.tp_SystemInfo.Text = "COMServer - system info";
            this.tp_SystemInfo.UseVisualStyleBackColor = true;
            // 
            // lbx_SystemInfo
            // 
            this.lbx_SystemInfo.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lbx_SystemInfo.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lbx_SystemInfo.FormattingEnabled = true;
            this.lbx_SystemInfo.HorizontalScrollbar = true;
            this.lbx_SystemInfo.ItemHeight = 15;
            this.lbx_SystemInfo.Location = new System.Drawing.Point(6, 36);
            this.lbx_SystemInfo.Name = "lbx_SystemInfo";
            this.lbx_SystemInfo.ScrollAlwaysVisible = true;
            this.lbx_SystemInfo.Size = new System.Drawing.Size(595, 454);
            this.lbx_SystemInfo.TabIndex = 1;
            // 
            // btn_GetSystemInfo
            // 
            this.btn_GetSystemInfo.Location = new System.Drawing.Point(6, 6);
            this.btn_GetSystemInfo.Name = "btn_GetSystemInfo";
            this.btn_GetSystemInfo.Size = new System.Drawing.Size(101, 23);
            this.btn_GetSystemInfo.TabIndex = 0;
            this.btn_GetSystemInfo.Text = "Get system info";
            this.btn_GetSystemInfo.UseVisualStyleBackColor = true;
            this.btn_GetSystemInfo.Click += new System.EventHandler(this.btn_GetSystemInfo_Click);
            // 
            // tp_CustomCmds
            // 
            this.tp_CustomCmds.Controls.Add(this.btn_GetLastAnswerList);
            this.tp_CustomCmds.Controls.Add(this.lbx_ScriptOutput);
            this.tp_CustomCmds.Controls.Add(this.lb_ScriptOutput);
            this.tp_CustomCmds.Controls.Add(this.btn_ExecuteCmd);
            this.tp_CustomCmds.Controls.Add(this.tbx_OutputValue);
            this.tp_CustomCmds.Controls.Add(this.tbx_InputValue);
            this.tp_CustomCmds.Controls.Add(this.lb_OutputValue);
            this.tp_CustomCmds.Controls.Add(this.lb_InputValue);
            this.tp_CustomCmds.Controls.Add(this.tbx_Cmd);
            this.tp_CustomCmds.Controls.Add(this.lb_Cmd);
            this.tp_CustomCmds.Location = new System.Drawing.Point(4, 22);
            this.tp_CustomCmds.Name = "tp_CustomCmds";
            this.tp_CustomCmds.Padding = new System.Windows.Forms.Padding(3);
            this.tp_CustomCmds.Size = new System.Drawing.Size(959, 675);
            this.tp_CustomCmds.TabIndex = 1;
            this.tp_CustomCmds.Text = "Custom commands";
            this.tp_CustomCmds.UseVisualStyleBackColor = true;
            // 
            // btn_GetLastAnswerList
            // 
            this.btn_GetLastAnswerList.Location = new System.Drawing.Point(137, 7);
            this.btn_GetLastAnswerList.Name = "btn_GetLastAnswerList";
            this.btn_GetLastAnswerList.Size = new System.Drawing.Size(108, 23);
            this.btn_GetLastAnswerList.TabIndex = 16;
            this.btn_GetLastAnswerList.Text = "Get Last Answer List";
            this.btn_GetLastAnswerList.UseVisualStyleBackColor = true;
            this.btn_GetLastAnswerList.Click += new System.EventHandler(this.btn_GetLastAnswerList_Click);
            // 
            // lbx_ScriptOutput
            // 
            this.lbx_ScriptOutput.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lbx_ScriptOutput.FormattingEnabled = true;
            this.lbx_ScriptOutput.HorizontalScrollbar = true;
            this.lbx_ScriptOutput.Location = new System.Drawing.Point(77, 101);
            this.lbx_ScriptOutput.Name = "lbx_ScriptOutput";
            this.lbx_ScriptOutput.ScrollAlwaysVisible = true;
            this.lbx_ScriptOutput.Size = new System.Drawing.Size(509, 381);
            this.lbx_ScriptOutput.TabIndex = 14;
            // 
            // lb_ScriptOutput
            // 
            this.lb_ScriptOutput.AutoSize = true;
            this.lb_ScriptOutput.Location = new System.Drawing.Point(6, 101);
            this.lb_ScriptOutput.Name = "lb_ScriptOutput";
            this.lb_ScriptOutput.Size = new System.Drawing.Size(60, 13);
            this.lb_ScriptOutput.TabIndex = 12;
            this.lb_ScriptOutput.Text = "Answer list:";
            // 
            // btn_ExecuteCmd
            // 
            this.btn_ExecuteCmd.Location = new System.Drawing.Point(251, 7);
            this.btn_ExecuteCmd.Name = "btn_ExecuteCmd";
            this.btn_ExecuteCmd.Size = new System.Drawing.Size(108, 23);
            this.btn_ExecuteCmd.TabIndex = 6;
            this.btn_ExecuteCmd.Text = "Execute command";
            this.btn_ExecuteCmd.UseVisualStyleBackColor = true;
            this.btn_ExecuteCmd.Click += new System.EventHandler(this.btn_ExecuteCmd_Click);
            // 
            // tbx_OutputValue
            // 
            this.tbx_OutputValue.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbx_OutputValue.Location = new System.Drawing.Point(77, 62);
            this.tbx_OutputValue.Name = "tbx_OutputValue";
            this.tbx_OutputValue.Size = new System.Drawing.Size(509, 20);
            this.tbx_OutputValue.TabIndex = 5;
            // 
            // tbx_InputValue
            // 
            this.tbx_InputValue.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbx_InputValue.Location = new System.Drawing.Point(77, 35);
            this.tbx_InputValue.Name = "tbx_InputValue";
            this.tbx_InputValue.Size = new System.Drawing.Size(509, 20);
            this.tbx_InputValue.TabIndex = 4;
            this.tbx_InputValue.Text = "1\\t";
            // 
            // lb_OutputValue
            // 
            this.lb_OutputValue.AutoSize = true;
            this.lb_OutputValue.Location = new System.Drawing.Point(6, 65);
            this.lb_OutputValue.Name = "lb_OutputValue";
            this.lb_OutputValue.Size = new System.Drawing.Size(71, 13);
            this.lb_OutputValue.TabIndex = 3;
            this.lb_OutputValue.Text = "Output value:";
            // 
            // lb_InputValue
            // 
            this.lb_InputValue.AutoSize = true;
            this.lb_InputValue.Location = new System.Drawing.Point(8, 38);
            this.lb_InputValue.Name = "lb_InputValue";
            this.lb_InputValue.Size = new System.Drawing.Size(63, 13);
            this.lb_InputValue.TabIndex = 2;
            this.lb_InputValue.Text = "Input value:";
            // 
            // tbx_Cmd
            // 
            this.tbx_Cmd.Location = new System.Drawing.Point(77, 9);
            this.tbx_Cmd.MaxLength = 3;
            this.tbx_Cmd.Name = "tbx_Cmd";
            this.tbx_Cmd.Size = new System.Drawing.Size(54, 20);
            this.tbx_Cmd.TabIndex = 1;
            this.tbx_Cmd.Text = "90";
            this.tbx_Cmd.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_Cmd_KeyDown);
            this.tbx_Cmd.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_Cmd_KeyPress);
            // 
            // lb_Cmd
            // 
            this.lb_Cmd.AutoSize = true;
            this.lb_Cmd.Location = new System.Drawing.Point(8, 12);
            this.lb_Cmd.Name = "lb_Cmd";
            this.lb_Cmd.Size = new System.Drawing.Size(57, 13);
            this.lb_Cmd.TabIndex = 0;
            this.lb_Cmd.Text = "Command:";
            // 
            // tp_CustomScript
            // 
            this.tp_CustomScript.Controls.Add(this.panel1);
            this.tp_CustomScript.Controls.Add(this.tc_ScriptContainer);
            this.tp_CustomScript.Location = new System.Drawing.Point(4, 22);
            this.tp_CustomScript.Name = "tp_CustomScript";
            this.tp_CustomScript.Padding = new System.Windows.Forms.Padding(3);
            this.tp_CustomScript.Size = new System.Drawing.Size(959, 675);
            this.tp_CustomScript.TabIndex = 5;
            this.tp_CustomScript.Text = "Custom script";
            this.tp_CustomScript.UseVisualStyleBackColor = true;
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.Controls.Add(this.chbx_ShowLastOutput);
            this.panel1.Controls.Add(this.cbx_PageChoice);
            this.panel1.Controls.Add(this.btn_Cancel);
            this.panel1.Controls.Add(this.btn_DeleteOutput);
            this.panel1.Controls.Add(this.btn_DeleteScript);
            this.panel1.Controls.Add(this.btn_ExecuteSelected);
            this.panel1.Controls.Add(this.btn_ExecuteSimpleScript);
            this.panel1.Controls.Add(this.btn_LoadScriptFromFile);
            this.panel1.Location = new System.Drawing.Point(8, 427);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(593, 69);
            this.panel1.TabIndex = 1;
            // 
            // chbx_ShowLastOutput
            // 
            this.chbx_ShowLastOutput.AutoSize = true;
            this.chbx_ShowLastOutput.Location = new System.Drawing.Point(339, 13);
            this.chbx_ShowLastOutput.Name = "chbx_ShowLastOutput";
            this.chbx_ShowLastOutput.Size = new System.Drawing.Size(223, 17);
            this.chbx_ShowLastOutput.TabIndex = 7;
            this.chbx_ShowLastOutput.Text = "Show only last executed command output";
            this.chbx_ShowLastOutput.UseVisualStyleBackColor = true;
            // 
            // cbx_PageChoice
            // 
            this.cbx_PageChoice.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbx_PageChoice.FormattingEnabled = true;
            this.cbx_PageChoice.Items.AddRange(new object[] {
            "Before execute - go to \"Human log\"",
            "Before execute - go to \"Hex log\"",
            "Before execute - go to \"Simple script\""});
            this.cbx_PageChoice.Location = new System.Drawing.Point(4, 38);
            this.cbx_PageChoice.Name = "cbx_PageChoice";
            this.cbx_PageChoice.Size = new System.Drawing.Size(217, 21);
            this.cbx_PageChoice.TabIndex = 6;
            // 
            // btn_Cancel
            // 
            this.btn_Cancel.Enabled = false;
            this.btn_Cancel.Location = new System.Drawing.Point(227, 38);
            this.btn_Cancel.Name = "btn_Cancel";
            this.btn_Cancel.Size = new System.Drawing.Size(106, 23);
            this.btn_Cancel.TabIndex = 5;
            this.btn_Cancel.Text = "Cancel";
            this.btn_Cancel.UseVisualStyleBackColor = true;
            this.btn_Cancel.Click += new System.EventHandler(this.btn_Cancel_Click);
            // 
            // btn_DeleteOutput
            // 
            this.btn_DeleteOutput.Location = new System.Drawing.Point(339, 38);
            this.btn_DeleteOutput.Name = "btn_DeleteOutput";
            this.btn_DeleteOutput.Size = new System.Drawing.Size(106, 23);
            this.btn_DeleteOutput.TabIndex = 4;
            this.btn_DeleteOutput.Text = "Delete output";
            this.btn_DeleteOutput.UseVisualStyleBackColor = true;
            this.btn_DeleteOutput.Click += new System.EventHandler(this.btn_DeleteOutput_Click);
            // 
            // btn_DeleteScript
            // 
            this.btn_DeleteScript.Location = new System.Drawing.Point(451, 38);
            this.btn_DeleteScript.Name = "btn_DeleteScript";
            this.btn_DeleteScript.Size = new System.Drawing.Size(106, 23);
            this.btn_DeleteScript.TabIndex = 3;
            this.btn_DeleteScript.Text = "Delete script";
            this.btn_DeleteScript.UseVisualStyleBackColor = true;
            this.btn_DeleteScript.Click += new System.EventHandler(this.btn_DeleteScript_Click);
            // 
            // btn_ExecuteSelected
            // 
            this.btn_ExecuteSelected.Location = new System.Drawing.Point(227, 9);
            this.btn_ExecuteSelected.Name = "btn_ExecuteSelected";
            this.btn_ExecuteSelected.Size = new System.Drawing.Size(106, 23);
            this.btn_ExecuteSelected.TabIndex = 2;
            this.btn_ExecuteSelected.Text = "Execute selected";
            this.btn_ExecuteSelected.UseVisualStyleBackColor = true;
            this.btn_ExecuteSelected.Click += new System.EventHandler(this.btn_ExecuteSelected_Click);
            // 
            // btn_ExecuteSimpleScript
            // 
            this.btn_ExecuteSimpleScript.Location = new System.Drawing.Point(115, 9);
            this.btn_ExecuteSimpleScript.Name = "btn_ExecuteSimpleScript";
            this.btn_ExecuteSimpleScript.Size = new System.Drawing.Size(106, 23);
            this.btn_ExecuteSimpleScript.TabIndex = 1;
            this.btn_ExecuteSimpleScript.Text = "Execute script";
            this.btn_ExecuteSimpleScript.UseVisualStyleBackColor = true;
            this.btn_ExecuteSimpleScript.Click += new System.EventHandler(this.btn_ExecuteSimpleScript_Click);
            // 
            // btn_LoadScriptFromFile
            // 
            this.btn_LoadScriptFromFile.Location = new System.Drawing.Point(3, 9);
            this.btn_LoadScriptFromFile.Name = "btn_LoadScriptFromFile";
            this.btn_LoadScriptFromFile.Size = new System.Drawing.Size(106, 23);
            this.btn_LoadScriptFromFile.TabIndex = 0;
            this.btn_LoadScriptFromFile.Text = "Load script from file";
            this.btn_LoadScriptFromFile.UseVisualStyleBackColor = true;
            this.btn_LoadScriptFromFile.Click += new System.EventHandler(this.btn_LoadScriptFromFile_Click);
            // 
            // tc_ScriptContainer
            // 
            this.tc_ScriptContainer.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tc_ScriptContainer.Controls.Add(this.tp_SimpleScript);
            this.tc_ScriptContainer.Controls.Add(this.tp_HumanLog);
            this.tc_ScriptContainer.Controls.Add(this.tp_HEX);
            this.tc_ScriptContainer.Location = new System.Drawing.Point(8, 8);
            this.tc_ScriptContainer.Name = "tc_ScriptContainer";
            this.tc_ScriptContainer.SelectedIndex = 0;
            this.tc_ScriptContainer.Size = new System.Drawing.Size(593, 414);
            this.tc_ScriptContainer.TabIndex = 0;
            // 
            // tp_SimpleScript
            // 
            this.tp_SimpleScript.Controls.Add(this.rtbx_SimpleScript);
            this.tp_SimpleScript.Location = new System.Drawing.Point(4, 22);
            this.tp_SimpleScript.Name = "tp_SimpleScript";
            this.tp_SimpleScript.Padding = new System.Windows.Forms.Padding(3);
            this.tp_SimpleScript.Size = new System.Drawing.Size(585, 388);
            this.tp_SimpleScript.TabIndex = 0;
            this.tp_SimpleScript.Text = "Simple script";
            this.tp_SimpleScript.UseVisualStyleBackColor = true;
            // 
            // rtbx_SimpleScript
            // 
            this.rtbx_SimpleScript.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbx_SimpleScript.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.rtbx_SimpleScript.HideSelection = false;
            this.rtbx_SimpleScript.Location = new System.Drawing.Point(3, 3);
            this.rtbx_SimpleScript.Name = "rtbx_SimpleScript";
            this.rtbx_SimpleScript.Size = new System.Drawing.Size(579, 382);
            this.rtbx_SimpleScript.TabIndex = 0;
            this.rtbx_SimpleScript.Text = "48,1\\t0001\\t1\\t\\t\\t\n49,Oranges\\t2\\t0.01\\t2.543\\t2\\t22.25\\t0\\tkg\\t\n53,0\\t\\t\n56";
            this.rtbx_SimpleScript.WordWrap = false;
            // 
            // tp_HumanLog
            // 
            this.tp_HumanLog.Controls.Add(this.rtbx_HumanLog);
            this.tp_HumanLog.Location = new System.Drawing.Point(4, 22);
            this.tp_HumanLog.Name = "tp_HumanLog";
            this.tp_HumanLog.Padding = new System.Windows.Forms.Padding(3);
            this.tp_HumanLog.Size = new System.Drawing.Size(585, 388);
            this.tp_HumanLog.TabIndex = 1;
            this.tp_HumanLog.Text = "Human oriented log";
            this.tp_HumanLog.UseVisualStyleBackColor = true;
            // 
            // rtbx_HumanLog
            // 
            this.rtbx_HumanLog.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbx_HumanLog.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.rtbx_HumanLog.Location = new System.Drawing.Point(3, 3);
            this.rtbx_HumanLog.Name = "rtbx_HumanLog";
            this.rtbx_HumanLog.Size = new System.Drawing.Size(579, 382);
            this.rtbx_HumanLog.TabIndex = 0;
            this.rtbx_HumanLog.Text = "";
            this.rtbx_HumanLog.WordWrap = false;
            // 
            // tp_HEX
            // 
            this.tp_HEX.Controls.Add(this.rtbx_HEXLog);
            this.tp_HEX.Location = new System.Drawing.Point(4, 22);
            this.tp_HEX.Name = "tp_HEX";
            this.tp_HEX.Padding = new System.Windows.Forms.Padding(3);
            this.tp_HEX.Size = new System.Drawing.Size(585, 388);
            this.tp_HEX.TabIndex = 2;
            this.tp_HEX.Text = "HEX log";
            this.tp_HEX.UseVisualStyleBackColor = true;
            // 
            // rtbx_HEXLog
            // 
            this.rtbx_HEXLog.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbx_HEXLog.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.rtbx_HEXLog.Location = new System.Drawing.Point(3, 3);
            this.rtbx_HEXLog.Name = "rtbx_HEXLog";
            this.rtbx_HEXLog.Size = new System.Drawing.Size(579, 382);
            this.rtbx_HEXLog.TabIndex = 0;
            this.rtbx_HEXLog.Text = "";
            this.rtbx_HEXLog.WordWrap = false;
            // 
            // tp_ANAF
            // 
            this.tp_ANAF.Controls.Add(this.tbx_EndZNum);
            this.tp_ANAF.Controls.Add(this.tbx_StartZNum);
            this.tp_ANAF.Controls.Add(this.dtp_EndTime);
            this.tp_ANAF.Controls.Add(this.dtp_EndDate);
            this.tp_ANAF.Controls.Add(this.dtp_StartTime);
            this.tp_ANAF.Controls.Add(this.dtp_StartDate);
            this.tp_ANAF.Controls.Add(this.chbx_DST);
            this.tp_ANAF.Controls.Add(this.cbx_RangeType);
            this.tp_ANAF.Controls.Add(this.btn_CancelDownload);
            this.tp_ANAF.Controls.Add(this.btn_UploadLogo);
            this.tp_ANAF.Controls.Add(this.btn_Download);
            this.tp_ANAF.Controls.Add(this.chbx_OpenFolderAfterDwnl);
            this.tp_ANAF.Controls.Add(this.lb_EndZNum);
            this.tp_ANAF.Controls.Add(this.lb_StartZNum);
            this.tp_ANAF.Controls.Add(this.lb_EndDate);
            this.tp_ANAF.Controls.Add(this.lb_StartDate);
            this.tp_ANAF.Controls.Add(this.lb_RangeType);
            this.tp_ANAF.Location = new System.Drawing.Point(4, 22);
            this.tp_ANAF.Name = "tp_ANAF";
            this.tp_ANAF.Padding = new System.Windows.Forms.Padding(3);
            this.tp_ANAF.Size = new System.Drawing.Size(959, 675);
            this.tp_ANAF.TabIndex = 3;
            this.tp_ANAF.Text = "Download and Upload";
            this.tp_ANAF.UseVisualStyleBackColor = true;
            // 
            // tbx_EndZNum
            // 
            this.tbx_EndZNum.Location = new System.Drawing.Point(78, 140);
            this.tbx_EndZNum.MaxLength = 4;
            this.tbx_EndZNum.Name = "tbx_EndZNum";
            this.tbx_EndZNum.Size = new System.Drawing.Size(121, 20);
            this.tbx_EndZNum.TabIndex = 16;
            this.tbx_EndZNum.Text = "2";
            this.tbx_EndZNum.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_EndZNum_KeyDown);
            this.tbx_EndZNum.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_EndZNum_KeyPress);
            // 
            // tbx_StartZNum
            // 
            this.tbx_StartZNum.Location = new System.Drawing.Point(78, 114);
            this.tbx_StartZNum.MaxLength = 4;
            this.tbx_StartZNum.Name = "tbx_StartZNum";
            this.tbx_StartZNum.Size = new System.Drawing.Size(121, 20);
            this.tbx_StartZNum.TabIndex = 15;
            this.tbx_StartZNum.Text = "1";
            this.tbx_StartZNum.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_StartZNum_KeyDown);
            this.tbx_StartZNum.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_StartZNum_KeyPress);
            // 
            // dtp_EndTime
            // 
            this.dtp_EndTime.Format = System.Windows.Forms.DateTimePickerFormat.Time;
            this.dtp_EndTime.Location = new System.Drawing.Point(205, 62);
            this.dtp_EndTime.Name = "dtp_EndTime";
            this.dtp_EndTime.ShowUpDown = true;
            this.dtp_EndTime.Size = new System.Drawing.Size(74, 20);
            this.dtp_EndTime.TabIndex = 14;
            // 
            // dtp_EndDate
            // 
            this.dtp_EndDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtp_EndDate.Location = new System.Drawing.Point(78, 62);
            this.dtp_EndDate.Name = "dtp_EndDate";
            this.dtp_EndDate.Size = new System.Drawing.Size(121, 20);
            this.dtp_EndDate.TabIndex = 13;
            // 
            // dtp_StartTime
            // 
            this.dtp_StartTime.Format = System.Windows.Forms.DateTimePickerFormat.Time;
            this.dtp_StartTime.Location = new System.Drawing.Point(205, 36);
            this.dtp_StartTime.Name = "dtp_StartTime";
            this.dtp_StartTime.ShowUpDown = true;
            this.dtp_StartTime.Size = new System.Drawing.Size(74, 20);
            this.dtp_StartTime.TabIndex = 12;
            // 
            // dtp_StartDate
            // 
            this.dtp_StartDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtp_StartDate.Location = new System.Drawing.Point(78, 36);
            this.dtp_StartDate.Name = "dtp_StartDate";
            this.dtp_StartDate.Size = new System.Drawing.Size(121, 20);
            this.dtp_StartDate.TabIndex = 11;
            // 
            // chbx_DST
            // 
            this.chbx_DST.AutoSize = true;
            this.chbx_DST.Location = new System.Drawing.Point(78, 91);
            this.chbx_DST.Name = "chbx_DST";
            this.chbx_DST.Size = new System.Drawing.Size(126, 17);
            this.chbx_DST.TabIndex = 10;
            this.chbx_DST.Text = "Daylight Saving Time";
            this.chbx_DST.UseVisualStyleBackColor = true;
            // 
            // cbx_RangeType
            // 
            this.cbx_RangeType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbx_RangeType.FormattingEnabled = true;
            this.cbx_RangeType.Items.AddRange(new object[] {
            "Date and time",
            "Z reports"});
            this.cbx_RangeType.Location = new System.Drawing.Point(78, 9);
            this.cbx_RangeType.Name = "cbx_RangeType";
            this.cbx_RangeType.Size = new System.Drawing.Size(121, 21);
            this.cbx_RangeType.TabIndex = 9;
            this.cbx_RangeType.SelectedIndexChanged += new System.EventHandler(this.cbx_RangeType_SelectedIndexChanged);
            // 
            // btn_CancelDownload
            // 
            this.btn_CancelDownload.Enabled = false;
            this.btn_CancelDownload.Location = new System.Drawing.Point(78, 258);
            this.btn_CancelDownload.Name = "btn_CancelDownload";
            this.btn_CancelDownload.Size = new System.Drawing.Size(121, 23);
            this.btn_CancelDownload.TabIndex = 8;
            this.btn_CancelDownload.Text = "Cancel";
            this.btn_CancelDownload.UseVisualStyleBackColor = true;
            this.btn_CancelDownload.Click += new System.EventHandler(this.btn_CancelDownload_Click);
            // 
            // btn_UploadLogo
            // 
            this.btn_UploadLogo.Location = new System.Drawing.Point(78, 229);
            this.btn_UploadLogo.Name = "btn_UploadLogo";
            this.btn_UploadLogo.Size = new System.Drawing.Size(121, 23);
            this.btn_UploadLogo.TabIndex = 7;
            this.btn_UploadLogo.Text = "Upload logo";
            this.btn_UploadLogo.UseVisualStyleBackColor = true;
            this.btn_UploadLogo.Click += new System.EventHandler(this.btn_UploadLogo_Click);
            // 
            // btn_Download
            // 
            this.btn_Download.Location = new System.Drawing.Point(78, 200);
            this.btn_Download.Name = "btn_Download";
            this.btn_Download.Size = new System.Drawing.Size(121, 23);
            this.btn_Download.TabIndex = 6;
            this.btn_Download.Text = "Download - ANAF files";
            this.btn_Download.UseVisualStyleBackColor = true;
            this.btn_Download.Click += new System.EventHandler(this.btn_Download_Click);
            // 
            // chbx_OpenFolderAfterDwnl
            // 
            this.chbx_OpenFolderAfterDwnl.AutoSize = true;
            this.chbx_OpenFolderAfterDwnl.Checked = true;
            this.chbx_OpenFolderAfterDwnl.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chbx_OpenFolderAfterDwnl.Location = new System.Drawing.Point(78, 166);
            this.chbx_OpenFolderAfterDwnl.Name = "chbx_OpenFolderAfterDwnl";
            this.chbx_OpenFolderAfterDwnl.Size = new System.Drawing.Size(154, 17);
            this.chbx_OpenFolderAfterDwnl.TabIndex = 5;
            this.chbx_OpenFolderAfterDwnl.Text = "Open folder after download";
            this.chbx_OpenFolderAfterDwnl.UseVisualStyleBackColor = true;
            // 
            // lb_EndZNum
            // 
            this.lb_EndZNum.AutoSize = true;
            this.lb_EndZNum.Location = new System.Drawing.Point(49, 143);
            this.lb_EndZNum.Name = "lb_EndZNum";
            this.lb_EndZNum.Size = new System.Drawing.Size(23, 13);
            this.lb_EndZNum.TabIndex = 4;
            this.lb_EndZNum.Text = "To:";
            // 
            // lb_StartZNum
            // 
            this.lb_StartZNum.AutoSize = true;
            this.lb_StartZNum.Location = new System.Drawing.Point(39, 117);
            this.lb_StartZNum.Name = "lb_StartZNum";
            this.lb_StartZNum.Size = new System.Drawing.Size(33, 13);
            this.lb_StartZNum.TabIndex = 3;
            this.lb_StartZNum.Text = "From:";
            // 
            // lb_EndDate
            // 
            this.lb_EndDate.AutoSize = true;
            this.lb_EndDate.Location = new System.Drawing.Point(49, 64);
            this.lb_EndDate.Name = "lb_EndDate";
            this.lb_EndDate.Size = new System.Drawing.Size(23, 13);
            this.lb_EndDate.TabIndex = 2;
            this.lb_EndDate.Text = "To:";
            // 
            // lb_StartDate
            // 
            this.lb_StartDate.AutoSize = true;
            this.lb_StartDate.Location = new System.Drawing.Point(39, 42);
            this.lb_StartDate.Name = "lb_StartDate";
            this.lb_StartDate.Size = new System.Drawing.Size(33, 13);
            this.lb_StartDate.TabIndex = 1;
            this.lb_StartDate.Text = "From:";
            // 
            // lb_RangeType
            // 
            this.lb_RangeType.AutoSize = true;
            this.lb_RangeType.Location = new System.Drawing.Point(7, 13);
            this.lb_RangeType.Name = "lb_RangeType";
            this.lb_RangeType.Size = new System.Drawing.Size(65, 13);
            this.lb_RangeType.TabIndex = 0;
            this.lb_RangeType.Text = "Range type:";
            // 
            // tp_GetCommandList
            // 
            this.tp_GetCommandList.Controls.Add(this.cbx_HumanNames);
            this.tp_GetCommandList.Controls.Add(this.chbx_Sorted);
            this.tp_GetCommandList.Controls.Add(this.cbx_CodeType);
            this.tp_GetCommandList.Controls.Add(this.btn_GenerateCode);
            this.tp_GetCommandList.Controls.Add(this.btGetCommandInfo);
            this.tp_GetCommandList.Controls.Add(this.cbCommands);
            this.tp_GetCommandList.Controls.Add(this.tbResult);
            this.tp_GetCommandList.Controls.Add(this.btGetCommandList);
            this.tp_GetCommandList.Location = new System.Drawing.Point(4, 22);
            this.tp_GetCommandList.Name = "tp_GetCommandList";
            this.tp_GetCommandList.Padding = new System.Windows.Forms.Padding(3);
            this.tp_GetCommandList.Size = new System.Drawing.Size(959, 675);
            this.tp_GetCommandList.TabIndex = 4;
            this.tp_GetCommandList.Text = "Get Command List";
            this.tp_GetCommandList.UseVisualStyleBackColor = true;
            // 
            // cbx_HumanNames
            // 
            this.cbx_HumanNames.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbx_HumanNames.FormattingEnabled = true;
            this.cbx_HumanNames.Items.AddRange(new object[] {
            "Human name (0)",
            "Human name (1)",
            "Human name (2)"});
            this.cbx_HumanNames.Location = new System.Drawing.Point(233, 14);
            this.cbx_HumanNames.Name = "cbx_HumanNames";
            this.cbx_HumanNames.Size = new System.Drawing.Size(217, 21);
            this.cbx_HumanNames.TabIndex = 7;
            // 
            // chbx_Sorted
            // 
            this.chbx_Sorted.AutoSize = true;
            this.chbx_Sorted.Location = new System.Drawing.Point(170, 16);
            this.chbx_Sorted.Name = "chbx_Sorted";
            this.chbx_Sorted.Size = new System.Drawing.Size(57, 17);
            this.chbx_Sorted.TabIndex = 6;
            this.chbx_Sorted.Text = "Sorted";
            this.chbx_Sorted.UseVisualStyleBackColor = true;
            this.chbx_Sorted.Click += new System.EventHandler(this.chbx_Sorted_Click);
            // 
            // cbx_CodeType
            // 
            this.cbx_CodeType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbx_CodeType.FormattingEnabled = true;
            this.cbx_CodeType.Items.AddRange(new object[] {
            "C#",
            "Pascal"});
            this.cbx_CodeType.Location = new System.Drawing.Point(170, 68);
            this.cbx_CodeType.Name = "cbx_CodeType";
            this.cbx_CodeType.Size = new System.Drawing.Size(280, 21);
            this.cbx_CodeType.TabIndex = 5;
            // 
            // btn_GenerateCode
            // 
            this.btn_GenerateCode.Location = new System.Drawing.Point(456, 68);
            this.btn_GenerateCode.Name = "btn_GenerateCode";
            this.btn_GenerateCode.Size = new System.Drawing.Size(148, 23);
            this.btn_GenerateCode.TabIndex = 4;
            this.btn_GenerateCode.Text = "Generate code";
            this.btn_GenerateCode.UseVisualStyleBackColor = true;
            this.btn_GenerateCode.Click += new System.EventHandler(this.btn_GenerateCode_Click);
            // 
            // btGetCommandInfo
            // 
            this.btGetCommandInfo.Location = new System.Drawing.Point(456, 39);
            this.btGetCommandInfo.Name = "btGetCommandInfo";
            this.btGetCommandInfo.Size = new System.Drawing.Size(148, 23);
            this.btGetCommandInfo.TabIndex = 3;
            this.btGetCommandInfo.Text = "Get Command Info";
            this.btGetCommandInfo.UseVisualStyleBackColor = true;
            this.btGetCommandInfo.Click += new System.EventHandler(this.btGetCommandInfo_Click);
            // 
            // cbCommands
            // 
            this.cbCommands.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbCommands.FormattingEnabled = true;
            this.cbCommands.Location = new System.Drawing.Point(170, 41);
            this.cbCommands.Name = "cbCommands";
            this.cbCommands.Size = new System.Drawing.Size(280, 21);
            this.cbCommands.TabIndex = 2;
            // 
            // tbResult
            // 
            this.tbResult.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbResult.Font = new System.Drawing.Font("Courier New", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.tbResult.Location = new System.Drawing.Point(7, 97);
            this.tbResult.Multiline = true;
            this.tbResult.Name = "tbResult";
            this.tbResult.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.tbResult.Size = new System.Drawing.Size(594, 390);
            this.tbResult.TabIndex = 1;
            // 
            // btGetCommandList
            // 
            this.btGetCommandList.Location = new System.Drawing.Point(6, 12);
            this.btGetCommandList.Name = "btGetCommandList";
            this.btGetCommandList.Size = new System.Drawing.Size(148, 23);
            this.btGetCommandList.TabIndex = 0;
            this.btGetCommandList.Text = "Get Command List";
            this.btGetCommandList.UseVisualStyleBackColor = true;
            this.btGetCommandList.Click += new System.EventHandler(this.btGetCommandList_Click);
            // 
            // pnl_Errors
            // 
            this.pnl_Errors.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnl_Errors.Controls.Add(this.lbx_Errors);
            this.pnl_Errors.Controls.Add(this.lb_Errors);
            this.pnl_Errors.Location = new System.Drawing.Point(4, 518);
            this.pnl_Errors.Name = "pnl_Errors";
            this.pnl_Errors.Size = new System.Drawing.Size(963, 119);
            this.pnl_Errors.TabIndex = 5;
            // 
            // lbx_Errors
            // 
            this.lbx_Errors.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lbx_Errors.FormattingEnabled = true;
            this.lbx_Errors.HorizontalScrollbar = true;
            this.lbx_Errors.Location = new System.Drawing.Point(3, 37);
            this.lbx_Errors.Name = "lbx_Errors";
            this.lbx_Errors.ScrollAlwaysVisible = true;
            this.lbx_Errors.Size = new System.Drawing.Size(960, 82);
            this.lbx_Errors.TabIndex = 1;
            // 
            // lb_Errors
            // 
            this.lb_Errors.AutoSize = true;
            this.lb_Errors.Location = new System.Drawing.Point(7, 9);
            this.lb_Errors.Name = "lb_Errors";
            this.lb_Errors.Size = new System.Drawing.Size(70, 13);
            this.lb_Errors.TabIndex = 0;
            this.lb_Errors.Text = "Errors output:";
            // 
            // pnl_StatusBytes
            // 
            this.pnl_StatusBytes.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnl_StatusBytes.AutoScroll = true;
            this.pnl_StatusBytes.Controls.Add(this.grbx_StatusByte_7);
            this.pnl_StatusBytes.Controls.Add(this.grbx_StatusByte_6);
            this.pnl_StatusBytes.Controls.Add(this.grbx_StatusByte_5);
            this.pnl_StatusBytes.Controls.Add(this.grbx_StatusByte_4);
            this.pnl_StatusBytes.Controls.Add(this.grbx_StatusByte_3);
            this.pnl_StatusBytes.Controls.Add(this.grbx_StatusByte_2);
            this.pnl_StatusBytes.Controls.Add(this.grbx_StatusByte_1);
            this.pnl_StatusBytes.Controls.Add(this.grbx_StatusByte_0);
            this.pnl_StatusBytes.Location = new System.Drawing.Point(611, 22);
            this.pnl_StatusBytes.Name = "pnl_StatusBytes";
            this.pnl_StatusBytes.Size = new System.Drawing.Size(356, 496);
            this.pnl_StatusBytes.TabIndex = 6;
            // 
            // grbx_StatusByte_7
            // 
            this.grbx_StatusByte_7.Controls.Add(this.chbx_S7_0);
            this.grbx_StatusByte_7.Controls.Add(this.chbx_S7_1);
            this.grbx_StatusByte_7.Controls.Add(this.chbx_S7_2);
            this.grbx_StatusByte_7.Controls.Add(this.chbx_S7_3);
            this.grbx_StatusByte_7.Controls.Add(this.chbx_S7_4);
            this.grbx_StatusByte_7.Controls.Add(this.chbx_S7_5);
            this.grbx_StatusByte_7.Controls.Add(this.chbx_S7_6);
            this.grbx_StatusByte_7.Controls.Add(this.chbx_S7_7);
            this.grbx_StatusByte_7.Location = new System.Drawing.Point(3, 1159);
            this.grbx_StatusByte_7.Name = "grbx_StatusByte_7";
            this.grbx_StatusByte_7.Size = new System.Drawing.Size(329, 160);
            this.grbx_StatusByte_7.TabIndex = 48;
            this.grbx_StatusByte_7.TabStop = false;
            // 
            // chbx_S7_0
            // 
            this.chbx_S7_0.AutoCheck = false;
            this.chbx_S7_0.AutoSize = true;
            this.chbx_S7_0.Location = new System.Drawing.Point(6, 138);
            this.chbx_S7_0.Name = "chbx_S7_0";
            this.chbx_S7_0.Size = new System.Drawing.Size(80, 17);
            this.chbx_S7_0.TabIndex = 63;
            this.chbx_S7_0.Text = "chbx_S7_0";
            this.chbx_S7_0.UseVisualStyleBackColor = true;
            // 
            // chbx_S7_1
            // 
            this.chbx_S7_1.AutoCheck = false;
            this.chbx_S7_1.AutoSize = true;
            this.chbx_S7_1.Location = new System.Drawing.Point(6, 121);
            this.chbx_S7_1.Name = "chbx_S7_1";
            this.chbx_S7_1.Size = new System.Drawing.Size(80, 17);
            this.chbx_S7_1.TabIndex = 62;
            this.chbx_S7_1.Text = "chbx_S7_1";
            this.chbx_S7_1.UseVisualStyleBackColor = true;
            // 
            // chbx_S7_2
            // 
            this.chbx_S7_2.AutoCheck = false;
            this.chbx_S7_2.AutoSize = true;
            this.chbx_S7_2.Location = new System.Drawing.Point(6, 104);
            this.chbx_S7_2.Name = "chbx_S7_2";
            this.chbx_S7_2.Size = new System.Drawing.Size(80, 17);
            this.chbx_S7_2.TabIndex = 61;
            this.chbx_S7_2.Text = "chbx_S7_2";
            this.chbx_S7_2.UseVisualStyleBackColor = true;
            // 
            // chbx_S7_3
            // 
            this.chbx_S7_3.AutoCheck = false;
            this.chbx_S7_3.AutoSize = true;
            this.chbx_S7_3.Location = new System.Drawing.Point(6, 87);
            this.chbx_S7_3.Name = "chbx_S7_3";
            this.chbx_S7_3.Size = new System.Drawing.Size(80, 17);
            this.chbx_S7_3.TabIndex = 60;
            this.chbx_S7_3.Text = "chbx_S7_3";
            this.chbx_S7_3.UseVisualStyleBackColor = true;
            // 
            // chbx_S7_4
            // 
            this.chbx_S7_4.AutoCheck = false;
            this.chbx_S7_4.AutoSize = true;
            this.chbx_S7_4.Location = new System.Drawing.Point(6, 70);
            this.chbx_S7_4.Name = "chbx_S7_4";
            this.chbx_S7_4.Size = new System.Drawing.Size(80, 17);
            this.chbx_S7_4.TabIndex = 59;
            this.chbx_S7_4.Text = "chbx_S7_4";
            this.chbx_S7_4.UseVisualStyleBackColor = true;
            // 
            // chbx_S7_5
            // 
            this.chbx_S7_5.AutoCheck = false;
            this.chbx_S7_5.AutoSize = true;
            this.chbx_S7_5.Location = new System.Drawing.Point(6, 53);
            this.chbx_S7_5.Name = "chbx_S7_5";
            this.chbx_S7_5.Size = new System.Drawing.Size(80, 17);
            this.chbx_S7_5.TabIndex = 58;
            this.chbx_S7_5.Text = "chbx_S7_5";
            this.chbx_S7_5.UseVisualStyleBackColor = true;
            // 
            // chbx_S7_6
            // 
            this.chbx_S7_6.AutoCheck = false;
            this.chbx_S7_6.AutoSize = true;
            this.chbx_S7_6.Location = new System.Drawing.Point(6, 36);
            this.chbx_S7_6.Name = "chbx_S7_6";
            this.chbx_S7_6.Size = new System.Drawing.Size(80, 17);
            this.chbx_S7_6.TabIndex = 57;
            this.chbx_S7_6.Text = "chbx_S7_6";
            this.chbx_S7_6.UseVisualStyleBackColor = true;
            // 
            // chbx_S7_7
            // 
            this.chbx_S7_7.AutoCheck = false;
            this.chbx_S7_7.AutoSize = true;
            this.chbx_S7_7.Location = new System.Drawing.Point(6, 19);
            this.chbx_S7_7.Name = "chbx_S7_7";
            this.chbx_S7_7.Size = new System.Drawing.Size(80, 17);
            this.chbx_S7_7.TabIndex = 56;
            this.chbx_S7_7.Text = "chbx_S7_7";
            this.chbx_S7_7.UseVisualStyleBackColor = true;
            // 
            // grbx_StatusByte_6
            // 
            this.grbx_StatusByte_6.Controls.Add(this.chbx_S6_0);
            this.grbx_StatusByte_6.Controls.Add(this.chbx_S6_1);
            this.grbx_StatusByte_6.Controls.Add(this.chbx_S6_2);
            this.grbx_StatusByte_6.Controls.Add(this.chbx_S6_3);
            this.grbx_StatusByte_6.Controls.Add(this.chbx_S6_4);
            this.grbx_StatusByte_6.Controls.Add(this.chbx_S6_5);
            this.grbx_StatusByte_6.Controls.Add(this.chbx_S6_6);
            this.grbx_StatusByte_6.Controls.Add(this.chbx_S6_7);
            this.grbx_StatusByte_6.Location = new System.Drawing.Point(3, 985);
            this.grbx_StatusByte_6.Name = "grbx_StatusByte_6";
            this.grbx_StatusByte_6.Size = new System.Drawing.Size(329, 160);
            this.grbx_StatusByte_6.TabIndex = 6;
            this.grbx_StatusByte_6.TabStop = false;
            // 
            // chbx_S6_0
            // 
            this.chbx_S6_0.AutoCheck = false;
            this.chbx_S6_0.AutoSize = true;
            this.chbx_S6_0.Location = new System.Drawing.Point(6, 138);
            this.chbx_S6_0.Name = "chbx_S6_0";
            this.chbx_S6_0.Size = new System.Drawing.Size(80, 17);
            this.chbx_S6_0.TabIndex = 55;
            this.chbx_S6_0.Text = "chbx_S6_0";
            this.chbx_S6_0.UseVisualStyleBackColor = true;
            // 
            // chbx_S6_1
            // 
            this.chbx_S6_1.AutoCheck = false;
            this.chbx_S6_1.AutoSize = true;
            this.chbx_S6_1.Location = new System.Drawing.Point(6, 121);
            this.chbx_S6_1.Name = "chbx_S6_1";
            this.chbx_S6_1.Size = new System.Drawing.Size(80, 17);
            this.chbx_S6_1.TabIndex = 54;
            this.chbx_S6_1.Text = "chbx_S6_1";
            this.chbx_S6_1.UseVisualStyleBackColor = true;
            // 
            // chbx_S6_2
            // 
            this.chbx_S6_2.AutoCheck = false;
            this.chbx_S6_2.AutoSize = true;
            this.chbx_S6_2.Location = new System.Drawing.Point(6, 104);
            this.chbx_S6_2.Name = "chbx_S6_2";
            this.chbx_S6_2.Size = new System.Drawing.Size(80, 17);
            this.chbx_S6_2.TabIndex = 53;
            this.chbx_S6_2.Text = "chbx_S6_2";
            this.chbx_S6_2.UseVisualStyleBackColor = true;
            // 
            // chbx_S6_3
            // 
            this.chbx_S6_3.AutoCheck = false;
            this.chbx_S6_3.AutoSize = true;
            this.chbx_S6_3.Location = new System.Drawing.Point(6, 87);
            this.chbx_S6_3.Name = "chbx_S6_3";
            this.chbx_S6_3.Size = new System.Drawing.Size(80, 17);
            this.chbx_S6_3.TabIndex = 52;
            this.chbx_S6_3.Text = "chbx_S6_3";
            this.chbx_S6_3.UseVisualStyleBackColor = true;
            // 
            // chbx_S6_4
            // 
            this.chbx_S6_4.AutoCheck = false;
            this.chbx_S6_4.AutoSize = true;
            this.chbx_S6_4.Location = new System.Drawing.Point(6, 70);
            this.chbx_S6_4.Name = "chbx_S6_4";
            this.chbx_S6_4.Size = new System.Drawing.Size(80, 17);
            this.chbx_S6_4.TabIndex = 51;
            this.chbx_S6_4.Text = "chbx_S6_4";
            this.chbx_S6_4.UseVisualStyleBackColor = true;
            // 
            // chbx_S6_5
            // 
            this.chbx_S6_5.AutoCheck = false;
            this.chbx_S6_5.AutoSize = true;
            this.chbx_S6_5.Location = new System.Drawing.Point(6, 53);
            this.chbx_S6_5.Name = "chbx_S6_5";
            this.chbx_S6_5.Size = new System.Drawing.Size(80, 17);
            this.chbx_S6_5.TabIndex = 50;
            this.chbx_S6_5.Text = "chbx_S6_5";
            this.chbx_S6_5.UseVisualStyleBackColor = true;
            // 
            // chbx_S6_6
            // 
            this.chbx_S6_6.AutoCheck = false;
            this.chbx_S6_6.AutoSize = true;
            this.chbx_S6_6.Location = new System.Drawing.Point(6, 36);
            this.chbx_S6_6.Name = "chbx_S6_6";
            this.chbx_S6_6.Size = new System.Drawing.Size(80, 17);
            this.chbx_S6_6.TabIndex = 49;
            this.chbx_S6_6.Text = "chbx_S6_6";
            this.chbx_S6_6.UseVisualStyleBackColor = true;
            // 
            // chbx_S6_7
            // 
            this.chbx_S6_7.AutoCheck = false;
            this.chbx_S6_7.AutoSize = true;
            this.chbx_S6_7.Location = new System.Drawing.Point(6, 19);
            this.chbx_S6_7.Name = "chbx_S6_7";
            this.chbx_S6_7.Size = new System.Drawing.Size(80, 17);
            this.chbx_S6_7.TabIndex = 48;
            this.chbx_S6_7.Text = "chbx_S6_7";
            this.chbx_S6_7.UseVisualStyleBackColor = true;
            // 
            // grbx_StatusByte_5
            // 
            this.grbx_StatusByte_5.Controls.Add(this.chbx_S5_0);
            this.grbx_StatusByte_5.Controls.Add(this.chbx_S5_1);
            this.grbx_StatusByte_5.Controls.Add(this.chbx_S5_2);
            this.grbx_StatusByte_5.Controls.Add(this.chbx_S5_3);
            this.grbx_StatusByte_5.Controls.Add(this.chbx_S5_4);
            this.grbx_StatusByte_5.Controls.Add(this.chbx_S5_5);
            this.grbx_StatusByte_5.Controls.Add(this.chbx_S5_6);
            this.grbx_StatusByte_5.Controls.Add(this.chbx_S5_7);
            this.grbx_StatusByte_5.Location = new System.Drawing.Point(3, 819);
            this.grbx_StatusByte_5.Name = "grbx_StatusByte_5";
            this.grbx_StatusByte_5.Size = new System.Drawing.Size(329, 160);
            this.grbx_StatusByte_5.TabIndex = 5;
            this.grbx_StatusByte_5.TabStop = false;
            // 
            // chbx_S5_0
            // 
            this.chbx_S5_0.AutoCheck = false;
            this.chbx_S5_0.AutoSize = true;
            this.chbx_S5_0.Location = new System.Drawing.Point(6, 135);
            this.chbx_S5_0.Name = "chbx_S5_0";
            this.chbx_S5_0.Size = new System.Drawing.Size(80, 17);
            this.chbx_S5_0.TabIndex = 47;
            this.chbx_S5_0.Text = "chbx_S5_0";
            this.chbx_S5_0.UseVisualStyleBackColor = true;
            // 
            // chbx_S5_1
            // 
            this.chbx_S5_1.AutoCheck = false;
            this.chbx_S5_1.AutoSize = true;
            this.chbx_S5_1.Location = new System.Drawing.Point(6, 118);
            this.chbx_S5_1.Name = "chbx_S5_1";
            this.chbx_S5_1.Size = new System.Drawing.Size(80, 17);
            this.chbx_S5_1.TabIndex = 46;
            this.chbx_S5_1.Text = "chbx_S5_1";
            this.chbx_S5_1.UseVisualStyleBackColor = true;
            // 
            // chbx_S5_2
            // 
            this.chbx_S5_2.AutoCheck = false;
            this.chbx_S5_2.AutoSize = true;
            this.chbx_S5_2.Location = new System.Drawing.Point(6, 101);
            this.chbx_S5_2.Name = "chbx_S5_2";
            this.chbx_S5_2.Size = new System.Drawing.Size(80, 17);
            this.chbx_S5_2.TabIndex = 45;
            this.chbx_S5_2.Text = "chbx_S5_2";
            this.chbx_S5_2.UseVisualStyleBackColor = true;
            // 
            // chbx_S5_3
            // 
            this.chbx_S5_3.AutoCheck = false;
            this.chbx_S5_3.AutoSize = true;
            this.chbx_S5_3.Location = new System.Drawing.Point(6, 84);
            this.chbx_S5_3.Name = "chbx_S5_3";
            this.chbx_S5_3.Size = new System.Drawing.Size(80, 17);
            this.chbx_S5_3.TabIndex = 44;
            this.chbx_S5_3.Text = "chbx_S5_3";
            this.chbx_S5_3.UseVisualStyleBackColor = true;
            // 
            // chbx_S5_4
            // 
            this.chbx_S5_4.AutoCheck = false;
            this.chbx_S5_4.AutoSize = true;
            this.chbx_S5_4.Location = new System.Drawing.Point(6, 67);
            this.chbx_S5_4.Name = "chbx_S5_4";
            this.chbx_S5_4.Size = new System.Drawing.Size(80, 17);
            this.chbx_S5_4.TabIndex = 43;
            this.chbx_S5_4.Text = "chbx_S5_4";
            this.chbx_S5_4.UseVisualStyleBackColor = true;
            // 
            // chbx_S5_5
            // 
            this.chbx_S5_5.AutoCheck = false;
            this.chbx_S5_5.AutoSize = true;
            this.chbx_S5_5.Location = new System.Drawing.Point(6, 50);
            this.chbx_S5_5.Name = "chbx_S5_5";
            this.chbx_S5_5.Size = new System.Drawing.Size(80, 17);
            this.chbx_S5_5.TabIndex = 42;
            this.chbx_S5_5.Text = "chbx_S5_5";
            this.chbx_S5_5.UseVisualStyleBackColor = true;
            // 
            // chbx_S5_6
            // 
            this.chbx_S5_6.AutoCheck = false;
            this.chbx_S5_6.AutoSize = true;
            this.chbx_S5_6.Location = new System.Drawing.Point(6, 33);
            this.chbx_S5_6.Name = "chbx_S5_6";
            this.chbx_S5_6.Size = new System.Drawing.Size(80, 17);
            this.chbx_S5_6.TabIndex = 41;
            this.chbx_S5_6.Text = "chbx_S5_6";
            this.chbx_S5_6.UseVisualStyleBackColor = true;
            // 
            // chbx_S5_7
            // 
            this.chbx_S5_7.AutoCheck = false;
            this.chbx_S5_7.AutoSize = true;
            this.chbx_S5_7.Location = new System.Drawing.Point(6, 16);
            this.chbx_S5_7.Name = "chbx_S5_7";
            this.chbx_S5_7.Size = new System.Drawing.Size(80, 17);
            this.chbx_S5_7.TabIndex = 40;
            this.chbx_S5_7.Text = "chbx_S5_7";
            this.chbx_S5_7.UseVisualStyleBackColor = true;
            // 
            // grbx_StatusByte_4
            // 
            this.grbx_StatusByte_4.Controls.Add(this.chbx_S4_0);
            this.grbx_StatusByte_4.Controls.Add(this.chbx_S4_1);
            this.grbx_StatusByte_4.Controls.Add(this.chbx_S4_2);
            this.grbx_StatusByte_4.Controls.Add(this.chbx_S4_3);
            this.grbx_StatusByte_4.Controls.Add(this.chbx_S4_4);
            this.grbx_StatusByte_4.Controls.Add(this.chbx_S4_5);
            this.grbx_StatusByte_4.Controls.Add(this.chbx_S4_6);
            this.grbx_StatusByte_4.Controls.Add(this.chbx_S4_7);
            this.grbx_StatusByte_4.Location = new System.Drawing.Point(3, 657);
            this.grbx_StatusByte_4.Name = "grbx_StatusByte_4";
            this.grbx_StatusByte_4.Size = new System.Drawing.Size(329, 160);
            this.grbx_StatusByte_4.TabIndex = 4;
            this.grbx_StatusByte_4.TabStop = false;
            // 
            // chbx_S4_0
            // 
            this.chbx_S4_0.AutoCheck = false;
            this.chbx_S4_0.AutoSize = true;
            this.chbx_S4_0.Location = new System.Drawing.Point(6, 134);
            this.chbx_S4_0.Name = "chbx_S4_0";
            this.chbx_S4_0.Size = new System.Drawing.Size(80, 17);
            this.chbx_S4_0.TabIndex = 39;
            this.chbx_S4_0.Text = "chbx_S4_0";
            this.chbx_S4_0.UseVisualStyleBackColor = true;
            // 
            // chbx_S4_1
            // 
            this.chbx_S4_1.AutoCheck = false;
            this.chbx_S4_1.AutoSize = true;
            this.chbx_S4_1.Location = new System.Drawing.Point(6, 117);
            this.chbx_S4_1.Name = "chbx_S4_1";
            this.chbx_S4_1.Size = new System.Drawing.Size(80, 17);
            this.chbx_S4_1.TabIndex = 38;
            this.chbx_S4_1.Text = "chbx_S4_1";
            this.chbx_S4_1.UseVisualStyleBackColor = true;
            // 
            // chbx_S4_2
            // 
            this.chbx_S4_2.AutoCheck = false;
            this.chbx_S4_2.AutoSize = true;
            this.chbx_S4_2.Location = new System.Drawing.Point(6, 100);
            this.chbx_S4_2.Name = "chbx_S4_2";
            this.chbx_S4_2.Size = new System.Drawing.Size(80, 17);
            this.chbx_S4_2.TabIndex = 37;
            this.chbx_S4_2.Text = "chbx_S4_2";
            this.chbx_S4_2.UseVisualStyleBackColor = true;
            // 
            // chbx_S4_3
            // 
            this.chbx_S4_3.AutoCheck = false;
            this.chbx_S4_3.AutoSize = true;
            this.chbx_S4_3.Location = new System.Drawing.Point(6, 83);
            this.chbx_S4_3.Name = "chbx_S4_3";
            this.chbx_S4_3.Size = new System.Drawing.Size(80, 17);
            this.chbx_S4_3.TabIndex = 36;
            this.chbx_S4_3.Text = "chbx_S4_3";
            this.chbx_S4_3.UseVisualStyleBackColor = true;
            // 
            // chbx_S4_4
            // 
            this.chbx_S4_4.AutoCheck = false;
            this.chbx_S4_4.AutoSize = true;
            this.chbx_S4_4.Location = new System.Drawing.Point(6, 66);
            this.chbx_S4_4.Name = "chbx_S4_4";
            this.chbx_S4_4.Size = new System.Drawing.Size(80, 17);
            this.chbx_S4_4.TabIndex = 35;
            this.chbx_S4_4.Text = "chbx_S4_4";
            this.chbx_S4_4.UseVisualStyleBackColor = true;
            // 
            // chbx_S4_5
            // 
            this.chbx_S4_5.AutoCheck = false;
            this.chbx_S4_5.AutoSize = true;
            this.chbx_S4_5.Location = new System.Drawing.Point(6, 49);
            this.chbx_S4_5.Name = "chbx_S4_5";
            this.chbx_S4_5.Size = new System.Drawing.Size(80, 17);
            this.chbx_S4_5.TabIndex = 34;
            this.chbx_S4_5.Text = "chbx_S4_5";
            this.chbx_S4_5.UseVisualStyleBackColor = true;
            // 
            // chbx_S4_6
            // 
            this.chbx_S4_6.AutoCheck = false;
            this.chbx_S4_6.AutoSize = true;
            this.chbx_S4_6.Location = new System.Drawing.Point(6, 32);
            this.chbx_S4_6.Name = "chbx_S4_6";
            this.chbx_S4_6.Size = new System.Drawing.Size(80, 17);
            this.chbx_S4_6.TabIndex = 33;
            this.chbx_S4_6.Text = "chbx_S4_6";
            this.chbx_S4_6.UseVisualStyleBackColor = true;
            // 
            // chbx_S4_7
            // 
            this.chbx_S4_7.AutoCheck = false;
            this.chbx_S4_7.AutoSize = true;
            this.chbx_S4_7.Location = new System.Drawing.Point(6, 15);
            this.chbx_S4_7.Name = "chbx_S4_7";
            this.chbx_S4_7.Size = new System.Drawing.Size(80, 17);
            this.chbx_S4_7.TabIndex = 32;
            this.chbx_S4_7.Text = "chbx_S4_7";
            this.chbx_S4_7.UseVisualStyleBackColor = true;
            // 
            // grbx_StatusByte_3
            // 
            this.grbx_StatusByte_3.Controls.Add(this.chbx_S3_0);
            this.grbx_StatusByte_3.Controls.Add(this.chbx_S3_1);
            this.grbx_StatusByte_3.Controls.Add(this.chbx_S3_2);
            this.grbx_StatusByte_3.Controls.Add(this.chbx_S3_3);
            this.grbx_StatusByte_3.Controls.Add(this.chbx_S3_4);
            this.grbx_StatusByte_3.Controls.Add(this.chbx_S3_5);
            this.grbx_StatusByte_3.Controls.Add(this.chbx_S3_6);
            this.grbx_StatusByte_3.Controls.Add(this.chbx_S3_7);
            this.grbx_StatusByte_3.Location = new System.Drawing.Point(3, 496);
            this.grbx_StatusByte_3.Name = "grbx_StatusByte_3";
            this.grbx_StatusByte_3.Size = new System.Drawing.Size(329, 160);
            this.grbx_StatusByte_3.TabIndex = 3;
            this.grbx_StatusByte_3.TabStop = false;
            // 
            // chbx_S3_0
            // 
            this.chbx_S3_0.AutoCheck = false;
            this.chbx_S3_0.AutoSize = true;
            this.chbx_S3_0.Location = new System.Drawing.Point(6, 132);
            this.chbx_S3_0.Name = "chbx_S3_0";
            this.chbx_S3_0.Size = new System.Drawing.Size(80, 17);
            this.chbx_S3_0.TabIndex = 31;
            this.chbx_S3_0.Text = "chbx_S3_0";
            this.chbx_S3_0.UseVisualStyleBackColor = true;
            // 
            // chbx_S3_1
            // 
            this.chbx_S3_1.AutoCheck = false;
            this.chbx_S3_1.AutoSize = true;
            this.chbx_S3_1.Location = new System.Drawing.Point(6, 115);
            this.chbx_S3_1.Name = "chbx_S3_1";
            this.chbx_S3_1.Size = new System.Drawing.Size(80, 17);
            this.chbx_S3_1.TabIndex = 30;
            this.chbx_S3_1.Text = "chbx_S3_1";
            this.chbx_S3_1.UseVisualStyleBackColor = true;
            // 
            // chbx_S3_2
            // 
            this.chbx_S3_2.AutoCheck = false;
            this.chbx_S3_2.AutoSize = true;
            this.chbx_S3_2.Location = new System.Drawing.Point(6, 98);
            this.chbx_S3_2.Name = "chbx_S3_2";
            this.chbx_S3_2.Size = new System.Drawing.Size(80, 17);
            this.chbx_S3_2.TabIndex = 29;
            this.chbx_S3_2.Text = "chbx_S3_2";
            this.chbx_S3_2.UseVisualStyleBackColor = true;
            // 
            // chbx_S3_3
            // 
            this.chbx_S3_3.AutoCheck = false;
            this.chbx_S3_3.AutoSize = true;
            this.chbx_S3_3.Location = new System.Drawing.Point(6, 81);
            this.chbx_S3_3.Name = "chbx_S3_3";
            this.chbx_S3_3.Size = new System.Drawing.Size(80, 17);
            this.chbx_S3_3.TabIndex = 28;
            this.chbx_S3_3.Text = "chbx_S3_3";
            this.chbx_S3_3.UseVisualStyleBackColor = true;
            // 
            // chbx_S3_4
            // 
            this.chbx_S3_4.AutoCheck = false;
            this.chbx_S3_4.AutoSize = true;
            this.chbx_S3_4.Location = new System.Drawing.Point(6, 64);
            this.chbx_S3_4.Name = "chbx_S3_4";
            this.chbx_S3_4.Size = new System.Drawing.Size(80, 17);
            this.chbx_S3_4.TabIndex = 27;
            this.chbx_S3_4.Text = "chbx_S3_4";
            this.chbx_S3_4.UseVisualStyleBackColor = true;
            // 
            // chbx_S3_5
            // 
            this.chbx_S3_5.AutoCheck = false;
            this.chbx_S3_5.AutoSize = true;
            this.chbx_S3_5.Location = new System.Drawing.Point(6, 47);
            this.chbx_S3_5.Name = "chbx_S3_5";
            this.chbx_S3_5.Size = new System.Drawing.Size(80, 17);
            this.chbx_S3_5.TabIndex = 26;
            this.chbx_S3_5.Text = "chbx_S3_5";
            this.chbx_S3_5.UseVisualStyleBackColor = true;
            // 
            // chbx_S3_6
            // 
            this.chbx_S3_6.AutoCheck = false;
            this.chbx_S3_6.AutoSize = true;
            this.chbx_S3_6.Location = new System.Drawing.Point(6, 30);
            this.chbx_S3_6.Name = "chbx_S3_6";
            this.chbx_S3_6.Size = new System.Drawing.Size(80, 17);
            this.chbx_S3_6.TabIndex = 25;
            this.chbx_S3_6.Text = "chbx_S3_6";
            this.chbx_S3_6.UseVisualStyleBackColor = true;
            // 
            // chbx_S3_7
            // 
            this.chbx_S3_7.AutoCheck = false;
            this.chbx_S3_7.AutoSize = true;
            this.chbx_S3_7.Location = new System.Drawing.Point(6, 13);
            this.chbx_S3_7.Name = "chbx_S3_7";
            this.chbx_S3_7.Size = new System.Drawing.Size(80, 17);
            this.chbx_S3_7.TabIndex = 24;
            this.chbx_S3_7.Text = "chbx_S3_7";
            this.chbx_S3_7.UseVisualStyleBackColor = true;
            // 
            // grbx_StatusByte_2
            // 
            this.grbx_StatusByte_2.Controls.Add(this.chbx_S2_0);
            this.grbx_StatusByte_2.Controls.Add(this.chbx_S2_1);
            this.grbx_StatusByte_2.Controls.Add(this.chbx_S2_2);
            this.grbx_StatusByte_2.Controls.Add(this.chbx_S2_3);
            this.grbx_StatusByte_2.Controls.Add(this.chbx_S2_4);
            this.grbx_StatusByte_2.Controls.Add(this.chbx_S2_5);
            this.grbx_StatusByte_2.Controls.Add(this.chbx_S2_6);
            this.grbx_StatusByte_2.Controls.Add(this.chbx_S2_7);
            this.grbx_StatusByte_2.Location = new System.Drawing.Point(3, 340);
            this.grbx_StatusByte_2.Name = "grbx_StatusByte_2";
            this.grbx_StatusByte_2.Size = new System.Drawing.Size(329, 160);
            this.grbx_StatusByte_2.TabIndex = 2;
            this.grbx_StatusByte_2.TabStop = false;
            // 
            // chbx_S2_0
            // 
            this.chbx_S2_0.AutoCheck = false;
            this.chbx_S2_0.AutoSize = true;
            this.chbx_S2_0.Location = new System.Drawing.Point(6, 133);
            this.chbx_S2_0.Name = "chbx_S2_0";
            this.chbx_S2_0.Size = new System.Drawing.Size(80, 17);
            this.chbx_S2_0.TabIndex = 23;
            this.chbx_S2_0.Text = "chbx_S2_0";
            this.chbx_S2_0.UseVisualStyleBackColor = true;
            // 
            // chbx_S2_1
            // 
            this.chbx_S2_1.AutoCheck = false;
            this.chbx_S2_1.AutoSize = true;
            this.chbx_S2_1.Location = new System.Drawing.Point(6, 116);
            this.chbx_S2_1.Name = "chbx_S2_1";
            this.chbx_S2_1.Size = new System.Drawing.Size(80, 17);
            this.chbx_S2_1.TabIndex = 22;
            this.chbx_S2_1.Text = "chbx_S2_1";
            this.chbx_S2_1.UseVisualStyleBackColor = true;
            // 
            // chbx_S2_2
            // 
            this.chbx_S2_2.AutoCheck = false;
            this.chbx_S2_2.AutoSize = true;
            this.chbx_S2_2.Location = new System.Drawing.Point(6, 99);
            this.chbx_S2_2.Name = "chbx_S2_2";
            this.chbx_S2_2.Size = new System.Drawing.Size(80, 17);
            this.chbx_S2_2.TabIndex = 21;
            this.chbx_S2_2.Text = "chbx_S2_2";
            this.chbx_S2_2.UseVisualStyleBackColor = true;
            // 
            // chbx_S2_3
            // 
            this.chbx_S2_3.AutoCheck = false;
            this.chbx_S2_3.AutoSize = true;
            this.chbx_S2_3.Location = new System.Drawing.Point(6, 82);
            this.chbx_S2_3.Name = "chbx_S2_3";
            this.chbx_S2_3.Size = new System.Drawing.Size(80, 17);
            this.chbx_S2_3.TabIndex = 20;
            this.chbx_S2_3.Text = "chbx_S2_3";
            this.chbx_S2_3.UseVisualStyleBackColor = true;
            // 
            // chbx_S2_4
            // 
            this.chbx_S2_4.AutoCheck = false;
            this.chbx_S2_4.AutoSize = true;
            this.chbx_S2_4.Location = new System.Drawing.Point(6, 65);
            this.chbx_S2_4.Name = "chbx_S2_4";
            this.chbx_S2_4.Size = new System.Drawing.Size(80, 17);
            this.chbx_S2_4.TabIndex = 19;
            this.chbx_S2_4.Text = "chbx_S2_4";
            this.chbx_S2_4.UseVisualStyleBackColor = true;
            // 
            // chbx_S2_5
            // 
            this.chbx_S2_5.AutoCheck = false;
            this.chbx_S2_5.AutoSize = true;
            this.chbx_S2_5.Location = new System.Drawing.Point(6, 48);
            this.chbx_S2_5.Name = "chbx_S2_5";
            this.chbx_S2_5.Size = new System.Drawing.Size(80, 17);
            this.chbx_S2_5.TabIndex = 18;
            this.chbx_S2_5.Text = "chbx_S2_5";
            this.chbx_S2_5.UseVisualStyleBackColor = true;
            // 
            // chbx_S2_6
            // 
            this.chbx_S2_6.AutoCheck = false;
            this.chbx_S2_6.AutoSize = true;
            this.chbx_S2_6.Location = new System.Drawing.Point(6, 31);
            this.chbx_S2_6.Name = "chbx_S2_6";
            this.chbx_S2_6.Size = new System.Drawing.Size(80, 17);
            this.chbx_S2_6.TabIndex = 17;
            this.chbx_S2_6.Text = "chbx_S2_6";
            this.chbx_S2_6.UseVisualStyleBackColor = true;
            // 
            // chbx_S2_7
            // 
            this.chbx_S2_7.AutoCheck = false;
            this.chbx_S2_7.AutoSize = true;
            this.chbx_S2_7.Location = new System.Drawing.Point(6, 14);
            this.chbx_S2_7.Name = "chbx_S2_7";
            this.chbx_S2_7.Size = new System.Drawing.Size(80, 17);
            this.chbx_S2_7.TabIndex = 16;
            this.chbx_S2_7.Text = "chbx_S2_7";
            this.chbx_S2_7.UseVisualStyleBackColor = true;
            // 
            // grbx_StatusByte_1
            // 
            this.grbx_StatusByte_1.Controls.Add(this.chbx_S1_0);
            this.grbx_StatusByte_1.Controls.Add(this.chbx_S1_1);
            this.grbx_StatusByte_1.Controls.Add(this.chbx_S1_2);
            this.grbx_StatusByte_1.Controls.Add(this.chbx_S1_3);
            this.grbx_StatusByte_1.Controls.Add(this.chbx_S1_4);
            this.grbx_StatusByte_1.Controls.Add(this.chbx_S1_5);
            this.grbx_StatusByte_1.Controls.Add(this.chbx_S1_6);
            this.grbx_StatusByte_1.Controls.Add(this.chbx_S1_7);
            this.grbx_StatusByte_1.Location = new System.Drawing.Point(3, 166);
            this.grbx_StatusByte_1.Name = "grbx_StatusByte_1";
            this.grbx_StatusByte_1.Size = new System.Drawing.Size(329, 160);
            this.grbx_StatusByte_1.TabIndex = 1;
            this.grbx_StatusByte_1.TabStop = false;
            // 
            // chbx_S1_0
            // 
            this.chbx_S1_0.AutoCheck = false;
            this.chbx_S1_0.AutoSize = true;
            this.chbx_S1_0.Location = new System.Drawing.Point(6, 136);
            this.chbx_S1_0.Name = "chbx_S1_0";
            this.chbx_S1_0.Size = new System.Drawing.Size(80, 17);
            this.chbx_S1_0.TabIndex = 15;
            this.chbx_S1_0.Text = "chbx_S1_0";
            this.chbx_S1_0.UseVisualStyleBackColor = true;
            // 
            // chbx_S1_1
            // 
            this.chbx_S1_1.AutoCheck = false;
            this.chbx_S1_1.AutoSize = true;
            this.chbx_S1_1.Location = new System.Drawing.Point(6, 119);
            this.chbx_S1_1.Name = "chbx_S1_1";
            this.chbx_S1_1.Size = new System.Drawing.Size(80, 17);
            this.chbx_S1_1.TabIndex = 14;
            this.chbx_S1_1.Text = "chbx_S1_1";
            this.chbx_S1_1.UseVisualStyleBackColor = true;
            // 
            // chbx_S1_2
            // 
            this.chbx_S1_2.AutoCheck = false;
            this.chbx_S1_2.AutoSize = true;
            this.chbx_S1_2.Location = new System.Drawing.Point(6, 102);
            this.chbx_S1_2.Name = "chbx_S1_2";
            this.chbx_S1_2.Size = new System.Drawing.Size(80, 17);
            this.chbx_S1_2.TabIndex = 13;
            this.chbx_S1_2.Text = "chbx_S1_2";
            this.chbx_S1_2.UseVisualStyleBackColor = true;
            // 
            // chbx_S1_3
            // 
            this.chbx_S1_3.AutoCheck = false;
            this.chbx_S1_3.AutoSize = true;
            this.chbx_S1_3.Location = new System.Drawing.Point(6, 85);
            this.chbx_S1_3.Name = "chbx_S1_3";
            this.chbx_S1_3.Size = new System.Drawing.Size(80, 17);
            this.chbx_S1_3.TabIndex = 12;
            this.chbx_S1_3.Text = "chbx_S1_3";
            this.chbx_S1_3.UseVisualStyleBackColor = true;
            // 
            // chbx_S1_4
            // 
            this.chbx_S1_4.AutoCheck = false;
            this.chbx_S1_4.AutoSize = true;
            this.chbx_S1_4.Location = new System.Drawing.Point(6, 68);
            this.chbx_S1_4.Name = "chbx_S1_4";
            this.chbx_S1_4.Size = new System.Drawing.Size(80, 17);
            this.chbx_S1_4.TabIndex = 11;
            this.chbx_S1_4.Text = "chbx_S1_4";
            this.chbx_S1_4.UseVisualStyleBackColor = true;
            // 
            // chbx_S1_5
            // 
            this.chbx_S1_5.AutoCheck = false;
            this.chbx_S1_5.AutoSize = true;
            this.chbx_S1_5.Location = new System.Drawing.Point(6, 51);
            this.chbx_S1_5.Name = "chbx_S1_5";
            this.chbx_S1_5.Size = new System.Drawing.Size(80, 17);
            this.chbx_S1_5.TabIndex = 10;
            this.chbx_S1_5.Text = "chbx_S1_5";
            this.chbx_S1_5.UseVisualStyleBackColor = true;
            // 
            // chbx_S1_6
            // 
            this.chbx_S1_6.AutoCheck = false;
            this.chbx_S1_6.AutoSize = true;
            this.chbx_S1_6.Location = new System.Drawing.Point(6, 34);
            this.chbx_S1_6.Name = "chbx_S1_6";
            this.chbx_S1_6.Size = new System.Drawing.Size(80, 17);
            this.chbx_S1_6.TabIndex = 9;
            this.chbx_S1_6.Text = "chbx_S1_6";
            this.chbx_S1_6.UseVisualStyleBackColor = true;
            // 
            // chbx_S1_7
            // 
            this.chbx_S1_7.AutoCheck = false;
            this.chbx_S1_7.AutoSize = true;
            this.chbx_S1_7.Location = new System.Drawing.Point(6, 17);
            this.chbx_S1_7.Name = "chbx_S1_7";
            this.chbx_S1_7.Size = new System.Drawing.Size(80, 17);
            this.chbx_S1_7.TabIndex = 8;
            this.chbx_S1_7.Text = "chbx_S1_7";
            this.chbx_S1_7.UseVisualStyleBackColor = true;
            // 
            // grbx_StatusByte_0
            // 
            this.grbx_StatusByte_0.Controls.Add(this.chbx_S0_0);
            this.grbx_StatusByte_0.Controls.Add(this.chbx_S0_1);
            this.grbx_StatusByte_0.Controls.Add(this.chbx_S0_2);
            this.grbx_StatusByte_0.Controls.Add(this.chbx_S0_3);
            this.grbx_StatusByte_0.Controls.Add(this.chbx_S0_4);
            this.grbx_StatusByte_0.Controls.Add(this.chbx_S0_5);
            this.grbx_StatusByte_0.Controls.Add(this.chbx_S0_6);
            this.grbx_StatusByte_0.Controls.Add(this.chbx_S0_7);
            this.grbx_StatusByte_0.Location = new System.Drawing.Point(3, 0);
            this.grbx_StatusByte_0.Name = "grbx_StatusByte_0";
            this.grbx_StatusByte_0.Size = new System.Drawing.Size(329, 160);
            this.grbx_StatusByte_0.TabIndex = 0;
            this.grbx_StatusByte_0.TabStop = false;
            // 
            // chbx_S0_0
            // 
            this.chbx_S0_0.AutoCheck = false;
            this.chbx_S0_0.AutoSize = true;
            this.chbx_S0_0.Location = new System.Drawing.Point(6, 131);
            this.chbx_S0_0.Name = "chbx_S0_0";
            this.chbx_S0_0.Size = new System.Drawing.Size(80, 17);
            this.chbx_S0_0.TabIndex = 7;
            this.chbx_S0_0.Text = "chbx_S0_0";
            this.chbx_S0_0.UseVisualStyleBackColor = true;
            // 
            // chbx_S0_1
            // 
            this.chbx_S0_1.AutoCheck = false;
            this.chbx_S0_1.AutoSize = true;
            this.chbx_S0_1.Location = new System.Drawing.Point(6, 114);
            this.chbx_S0_1.Name = "chbx_S0_1";
            this.chbx_S0_1.Size = new System.Drawing.Size(80, 17);
            this.chbx_S0_1.TabIndex = 6;
            this.chbx_S0_1.Text = "chbx_S0_1";
            this.chbx_S0_1.UseVisualStyleBackColor = true;
            // 
            // chbx_S0_2
            // 
            this.chbx_S0_2.AutoCheck = false;
            this.chbx_S0_2.AutoSize = true;
            this.chbx_S0_2.Location = new System.Drawing.Point(6, 97);
            this.chbx_S0_2.Name = "chbx_S0_2";
            this.chbx_S0_2.Size = new System.Drawing.Size(80, 17);
            this.chbx_S0_2.TabIndex = 5;
            this.chbx_S0_2.Text = "chbx_S0_2";
            this.chbx_S0_2.UseVisualStyleBackColor = true;
            // 
            // chbx_S0_3
            // 
            this.chbx_S0_3.AutoCheck = false;
            this.chbx_S0_3.AutoSize = true;
            this.chbx_S0_3.Location = new System.Drawing.Point(6, 80);
            this.chbx_S0_3.Name = "chbx_S0_3";
            this.chbx_S0_3.Size = new System.Drawing.Size(80, 17);
            this.chbx_S0_3.TabIndex = 4;
            this.chbx_S0_3.Text = "chbx_S0_3";
            this.chbx_S0_3.UseVisualStyleBackColor = true;
            // 
            // chbx_S0_4
            // 
            this.chbx_S0_4.AutoCheck = false;
            this.chbx_S0_4.AutoSize = true;
            this.chbx_S0_4.Location = new System.Drawing.Point(6, 63);
            this.chbx_S0_4.Name = "chbx_S0_4";
            this.chbx_S0_4.Size = new System.Drawing.Size(80, 17);
            this.chbx_S0_4.TabIndex = 3;
            this.chbx_S0_4.Text = "chbx_S0_4";
            this.chbx_S0_4.UseVisualStyleBackColor = true;
            // 
            // chbx_S0_5
            // 
            this.chbx_S0_5.AutoCheck = false;
            this.chbx_S0_5.AutoSize = true;
            this.chbx_S0_5.Location = new System.Drawing.Point(6, 46);
            this.chbx_S0_5.Name = "chbx_S0_5";
            this.chbx_S0_5.Size = new System.Drawing.Size(80, 17);
            this.chbx_S0_5.TabIndex = 2;
            this.chbx_S0_5.Text = "chbx_S0_5";
            this.chbx_S0_5.UseVisualStyleBackColor = true;
            // 
            // chbx_S0_6
            // 
            this.chbx_S0_6.AutoCheck = false;
            this.chbx_S0_6.AutoSize = true;
            this.chbx_S0_6.Location = new System.Drawing.Point(6, 29);
            this.chbx_S0_6.Name = "chbx_S0_6";
            this.chbx_S0_6.Size = new System.Drawing.Size(80, 17);
            this.chbx_S0_6.TabIndex = 1;
            this.chbx_S0_6.Text = "chbx_S0_6";
            this.chbx_S0_6.UseVisualStyleBackColor = true;
            // 
            // chbx_S0_7
            // 
            this.chbx_S0_7.AutoCheck = false;
            this.chbx_S0_7.AutoSize = true;
            this.chbx_S0_7.Location = new System.Drawing.Point(6, 12);
            this.chbx_S0_7.Name = "chbx_S0_7";
            this.chbx_S0_7.Size = new System.Drawing.Size(80, 17);
            this.chbx_S0_7.TabIndex = 0;
            this.chbx_S0_7.Text = "chbx_S0_7";
            this.chbx_S0_7.UseVisualStyleBackColor = true;
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.DefaultExt = "txt";
            this.openFileDialog1.Filter = "\"txt files (*.txt)|*.txt|All files (*.*)|*.*\"";
            // 
            // pnl_Progress
            // 
            this.pnl_Progress.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnl_Progress.Controls.Add(this.pb_2);
            this.pnl_Progress.Controls.Add(this.pb_1);
            this.pnl_Progress.Location = new System.Drawing.Point(4, 637);
            this.pnl_Progress.Name = "pnl_Progress";
            this.pnl_Progress.Size = new System.Drawing.Size(966, 63);
            this.pnl_Progress.TabIndex = 7;
            // 
            // pb_2
            // 
            this.pb_2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pb_2.Location = new System.Drawing.Point(4, 34);
            this.pb_2.Name = "pb_2";
            this.pb_2.Size = new System.Drawing.Size(955, 18);
            this.pb_2.TabIndex = 1;
            // 
            // pb_1
            // 
            this.pb_1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pb_1.Location = new System.Drawing.Point(4, 10);
            this.pb_1.Name = "pb_1";
            this.pb_1.Size = new System.Drawing.Size(955, 18);
            this.pb_1.TabIndex = 0;
            // 
            // chk_CheckDeviceStatus
            // 
            this.chk_CheckDeviceStatus.AutoSize = true;
            this.chk_CheckDeviceStatus.Location = new System.Drawing.Point(6, 134);
            this.chk_CheckDeviceStatus.Name = "chk_CheckDeviceStatus";
            this.chk_CheckDeviceStatus.Size = new System.Drawing.Size(210, 17);
            this.chk_CheckDeviceStatus.TabIndex = 6;
            this.chk_CheckDeviceStatus.Text = "Check device status on get connected";
            this.chk_CheckDeviceStatus.UseVisualStyleBackColor = true;
            // 
            // fm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(967, 701);
            this.Controls.Add(this.pnl_Progress);
            this.Controls.Add(this.pnl_StatusBytes);
            this.Controls.Add(this.pnl_Errors);
            this.Controls.Add(this.tc_Main);
            this.DoubleBuffered = true;
            this.MinimumSize = new System.Drawing.Size(983, 739);
            this.Name = "fm";
            this.Text = "Device dependent driver demo";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.fm_FormClosing);
            this.Load += new System.EventHandler(this.fm_Load);
            this.tc_Main.ResumeLayout(false);
            this.tp_InitConnect.ResumeLayout(false);
            this.pnl_Settings.ResumeLayout(false);
            this.pnl_Settings.PerformLayout();
            this.tp_Properties.ResumeLayout(false);
            this.tp_Properties.PerformLayout();
            this.tp_Behaviour.ResumeLayout(false);
            this.grpRAOMode.ResumeLayout(false);
            this.grpRAOMode.PerformLayout();
            this.grbx_TrackingMode.ResumeLayout(false);
            this.grbx_TrackingMode.PerformLayout();
            this.grbx_Language.ResumeLayout(false);
            this.grbx_Events.ResumeLayout(false);
            this.grbx_Events.PerformLayout();
            this.tp_SystemInfo.ResumeLayout(false);
            this.tp_CustomCmds.ResumeLayout(false);
            this.tp_CustomCmds.PerformLayout();
            this.tp_CustomScript.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.tc_ScriptContainer.ResumeLayout(false);
            this.tp_SimpleScript.ResumeLayout(false);
            this.tp_HumanLog.ResumeLayout(false);
            this.tp_HEX.ResumeLayout(false);
            this.tp_ANAF.ResumeLayout(false);
            this.tp_ANAF.PerformLayout();
            this.tp_GetCommandList.ResumeLayout(false);
            this.tp_GetCommandList.PerformLayout();
            this.pnl_Errors.ResumeLayout(false);
            this.pnl_Errors.PerformLayout();
            this.pnl_StatusBytes.ResumeLayout(false);
            this.grbx_StatusByte_7.ResumeLayout(false);
            this.grbx_StatusByte_7.PerformLayout();
            this.grbx_StatusByte_6.ResumeLayout(false);
            this.grbx_StatusByte_6.PerformLayout();
            this.grbx_StatusByte_5.ResumeLayout(false);
            this.grbx_StatusByte_5.PerformLayout();
            this.grbx_StatusByte_4.ResumeLayout(false);
            this.grbx_StatusByte_4.PerformLayout();
            this.grbx_StatusByte_3.ResumeLayout(false);
            this.grbx_StatusByte_3.PerformLayout();
            this.grbx_StatusByte_2.ResumeLayout(false);
            this.grbx_StatusByte_2.PerformLayout();
            this.grbx_StatusByte_1.ResumeLayout(false);
            this.grbx_StatusByte_1.PerformLayout();
            this.grbx_StatusByte_0.ResumeLayout(false);
            this.grbx_StatusByte_0.PerformLayout();
            this.pnl_Progress.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btn_StartComServer;
        private System.Windows.Forms.Button btn_StopComServer;
        private System.Windows.Forms.Label lb_ComPort;
        private System.Windows.Forms.Label lb_BaudRate;
        private System.Windows.Forms.TabControl tc_Main;
        private System.Windows.Forms.TabPage tp_InitConnect;
        private System.Windows.Forms.TextBox tbx_ComPort;
        private System.Windows.Forms.TabPage tp_CustomCmds;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Panel pnl_Errors;
        private System.Windows.Forms.Panel pnl_StatusBytes;
        private System.Windows.Forms.TextBox tbx_LANPort;
        private System.Windows.Forms.TextBox tbx_IPAddress;
        private System.Windows.Forms.Label lb_Port;
        private System.Windows.Forms.Label lb_IPAddress;
        private System.Windows.Forms.TextBox tbx_BaudRate;
        private System.Windows.Forms.Button btn_StopConnection;
        private System.Windows.Forms.Button btn_OpenConnection;
        private System.Windows.Forms.ListBox lbx_Errors;
        private System.Windows.Forms.Label lb_Errors;
        private System.Windows.Forms.GroupBox grbx_StatusByte_0;
        private System.Windows.Forms.GroupBox grbx_StatusByte_2;
        private System.Windows.Forms.CheckBox chbx_S2_0;
        private System.Windows.Forms.CheckBox chbx_S2_1;
        private System.Windows.Forms.CheckBox chbx_S2_2;
        private System.Windows.Forms.CheckBox chbx_S2_3;
        private System.Windows.Forms.CheckBox chbx_S2_4;
        private System.Windows.Forms.CheckBox chbx_S2_5;
        private System.Windows.Forms.CheckBox chbx_S2_6;
        private System.Windows.Forms.CheckBox chbx_S2_7;
        private System.Windows.Forms.GroupBox grbx_StatusByte_1;
        private System.Windows.Forms.CheckBox chbx_S1_0;
        private System.Windows.Forms.CheckBox chbx_S1_1;
        private System.Windows.Forms.CheckBox chbx_S1_2;
        private System.Windows.Forms.CheckBox chbx_S1_3;
        private System.Windows.Forms.CheckBox chbx_S1_4;
        private System.Windows.Forms.CheckBox chbx_S1_5;
        private System.Windows.Forms.CheckBox chbx_S1_6;
        private System.Windows.Forms.CheckBox chbx_S1_7;
        private System.Windows.Forms.CheckBox chbx_S0_0;
        private System.Windows.Forms.CheckBox chbx_S0_1;
        private System.Windows.Forms.CheckBox chbx_S0_2;
        private System.Windows.Forms.CheckBox chbx_S0_3;
        private System.Windows.Forms.CheckBox chbx_S0_4;
        private System.Windows.Forms.CheckBox chbx_S0_5;
        private System.Windows.Forms.CheckBox chbx_S0_6;
        private System.Windows.Forms.CheckBox chbx_S0_7;
        private System.Windows.Forms.GroupBox grbx_StatusByte_4;
        private System.Windows.Forms.CheckBox chbx_S4_0;
        private System.Windows.Forms.CheckBox chbx_S4_1;
        private System.Windows.Forms.CheckBox chbx_S4_2;
        private System.Windows.Forms.CheckBox chbx_S4_3;
        private System.Windows.Forms.CheckBox chbx_S4_4;
        private System.Windows.Forms.CheckBox chbx_S4_5;
        private System.Windows.Forms.CheckBox chbx_S4_6;
        private System.Windows.Forms.CheckBox chbx_S4_7;
        private System.Windows.Forms.GroupBox grbx_StatusByte_3;
        private System.Windows.Forms.CheckBox chbx_S3_0;
        private System.Windows.Forms.CheckBox chbx_S3_1;
        private System.Windows.Forms.CheckBox chbx_S3_2;
        private System.Windows.Forms.CheckBox chbx_S3_3;
        private System.Windows.Forms.CheckBox chbx_S3_4;
        private System.Windows.Forms.CheckBox chbx_S3_5;
        private System.Windows.Forms.CheckBox chbx_S3_6;
        private System.Windows.Forms.CheckBox chbx_S3_7;
        private System.Windows.Forms.GroupBox grbx_StatusByte_5;
        private System.Windows.Forms.CheckBox chbx_S5_0;
        private System.Windows.Forms.CheckBox chbx_S5_1;
        private System.Windows.Forms.CheckBox chbx_S5_2;
        private System.Windows.Forms.CheckBox chbx_S5_3;
        private System.Windows.Forms.CheckBox chbx_S5_4;
        private System.Windows.Forms.CheckBox chbx_S5_5;
        private System.Windows.Forms.CheckBox chbx_S5_6;
        private System.Windows.Forms.CheckBox chbx_S5_7;
        private System.Windows.Forms.GroupBox grbx_StatusByte_6;
        private System.Windows.Forms.CheckBox chbx_S6_0;
        private System.Windows.Forms.CheckBox chbx_S6_1;
        private System.Windows.Forms.CheckBox chbx_S6_2;
        private System.Windows.Forms.CheckBox chbx_S6_3;
        private System.Windows.Forms.CheckBox chbx_S6_4;
        private System.Windows.Forms.CheckBox chbx_S6_5;
        private System.Windows.Forms.CheckBox chbx_S6_6;
        private System.Windows.Forms.CheckBox chbx_S6_7;
        private System.Windows.Forms.GroupBox grbx_StatusByte_7;
        private System.Windows.Forms.CheckBox chbx_S7_0;
        private System.Windows.Forms.CheckBox chbx_S7_1;
        private System.Windows.Forms.CheckBox chbx_S7_2;
        private System.Windows.Forms.CheckBox chbx_S7_3;
        private System.Windows.Forms.CheckBox chbx_S7_4;
        private System.Windows.Forms.CheckBox chbx_S7_5;
        private System.Windows.Forms.CheckBox chbx_S7_6;
        private System.Windows.Forms.CheckBox chbx_S7_7;
        private System.Windows.Forms.TextBox tbx_Cmd;
        private System.Windows.Forms.Label lb_Cmd;
        private System.Windows.Forms.Label lb_ScriptOutput;
        private System.Windows.Forms.Button btn_ExecuteCmd;
        private System.Windows.Forms.TextBox tbx_OutputValue;
        private System.Windows.Forms.TextBox tbx_InputValue;
        private System.Windows.Forms.Label lb_OutputValue;
        private System.Windows.Forms.Label lb_InputValue;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.ComboBox cbx_ToggleSwitch;
        private System.Windows.Forms.Panel pnl_Settings;
        private System.Windows.Forms.ListBox lbx_ScriptOutput;
        private System.Windows.Forms.Button btn_GetLastAnswerList;
        private System.Windows.Forms.Panel pnl_Progress;
        private System.Windows.Forms.ProgressBar pb_1;
        private System.Windows.Forms.ProgressBar pb_2;
        private System.Windows.Forms.TabPage tp_SystemInfo;
        private System.Windows.Forms.ListBox lbx_SystemInfo;
        private System.Windows.Forms.Button btn_GetSystemInfo;
        private System.Windows.Forms.TabPage tp_ANAF;
        private System.Windows.Forms.DateTimePicker dtp_EndTime;
        private System.Windows.Forms.DateTimePicker dtp_EndDate;
        private System.Windows.Forms.DateTimePicker dtp_StartTime;
        private System.Windows.Forms.DateTimePicker dtp_StartDate;
        private System.Windows.Forms.CheckBox chbx_DST;
        private System.Windows.Forms.ComboBox cbx_RangeType;
        private System.Windows.Forms.Button btn_CancelDownload;
        private System.Windows.Forms.Button btn_UploadLogo;
        private System.Windows.Forms.Button btn_Download;
        private System.Windows.Forms.CheckBox chbx_OpenFolderAfterDwnl;
        private System.Windows.Forms.Label lb_EndZNum;
        private System.Windows.Forms.Label lb_StartZNum;
        private System.Windows.Forms.Label lb_EndDate;
        private System.Windows.Forms.Label lb_StartDate;
        private System.Windows.Forms.Label lb_RangeType;
        private System.Windows.Forms.TextBox tbx_EndZNum;
        private System.Windows.Forms.TextBox tbx_StartZNum;
        private System.ComponentModel.BackgroundWorker backgroundWorker2;
        private System.Windows.Forms.FolderBrowserDialog folderBrowserDialog1;
        private System.Windows.Forms.TabPage tp_GetCommandList;
        private System.Windows.Forms.Button btGetCommandList;
        private System.Windows.Forms.TextBox tbResult;
        private System.Windows.Forms.ComboBox cbCommands;
        private System.Windows.Forms.Button btGetCommandInfo;
        private System.Windows.Forms.Button btn_GenerateCode;
        private System.Windows.Forms.ComboBox cbx_CodeType;
        private System.Windows.Forms.CheckBox chbx_Sorted;
        private System.Windows.Forms.TabPage tp_CustomScript;
        private System.Windows.Forms.TabControl tc_ScriptContainer;
        private System.Windows.Forms.TabPage tp_SimpleScript;
        private System.Windows.Forms.RichTextBox rtbx_SimpleScript;
        private System.Windows.Forms.TabPage tp_HumanLog;
        private System.Windows.Forms.RichTextBox rtbx_HumanLog;
        private System.Windows.Forms.TabPage tp_HEX;
        private System.Windows.Forms.RichTextBox rtbx_HEXLog;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ComboBox cbx_PageChoice;
        private System.Windows.Forms.Button btn_Cancel;
        private System.Windows.Forms.Button btn_DeleteOutput;
        private System.Windows.Forms.Button btn_DeleteScript;
        private System.Windows.Forms.Button btn_ExecuteSelected;
        private System.Windows.Forms.Button btn_ExecuteSimpleScript;
        private System.Windows.Forms.Button btn_LoadScriptFromFile;
        private System.Windows.Forms.ComboBox cbx_HumanNames;
        private System.Windows.Forms.TabPage tp_Properties;
        private System.Windows.Forms.Label lb_AnswerDistributor;
        private System.Windows.Forms.Label lb_AnswerCodePage;
        private System.Windows.Forms.Label lb_AnswerFirmwareCheckSum;
        private System.Windows.Forms.Label lb_AnswerFirmwareDate;
        private System.Windows.Forms.Label lb_AnswerFirmwareRevision;
        private System.Windows.Forms.Label lb_AnswerSerialNum;
        private System.Windows.Forms.Label lb_AnswerModelName;
        private System.Windows.Forms.Label lb_AnswerDeviceType;
        private System.Windows.Forms.Label lb_AnswerLANConnected;
        private System.Windows.Forms.Label lb_AnswerDeviceConnected;
        private System.Windows.Forms.Label lb_AnswerDriverLanguage;
        private System.Windows.Forms.Label lb_Distributor;
        private System.Windows.Forms.Label lb_CodePage;
        private System.Windows.Forms.Label lb_FirmwareChecksum;
        private System.Windows.Forms.Label lb_FirmwareDate;
        private System.Windows.Forms.Label lb_FirmwareRevision;
        private System.Windows.Forms.Label lb_SerialNumber;
        private System.Windows.Forms.Label lb_ModelName;
        private System.Windows.Forms.Label lb_DeviceType;
        private System.Windows.Forms.Label lb_LANConnected;
        private System.Windows.Forms.Label lb_DeviceConnected;
        private System.Windows.Forms.Label lb_DriverLanguage;
        private System.Windows.Forms.TabPage tp_Behaviour;
        private System.Windows.Forms.GroupBox grbx_TrackingMode;
        private System.Windows.Forms.GroupBox grbx_Language;
        private System.Windows.Forms.Button btn_SetDriverLanguage;
        private System.Windows.Forms.ComboBox cbx_Language;
        private System.Windows.Forms.GroupBox grbx_Events;
        private System.Windows.Forms.Button btn_SetTrackingMode;
        private System.Windows.Forms.TextBox tbx_TrackingModeRowLimit;
        private System.Windows.Forms.TextBox tbx_TrackingModeFileName;
        private System.Windows.Forms.TextBox tbx_TrackingModePath;
        private System.Windows.Forms.Label lb_TracckingModeRowLimit;
        private System.Windows.Forms.Label lb_TrackingModeFileName;
        private System.Windows.Forms.Label lb_TrackingModePath;
        private System.Windows.Forms.CheckBox chbx_TrackingMode;
        private System.Windows.Forms.CheckBox chbx_Active_OnSecondProgress_Complete;
        private System.Windows.Forms.CheckBox chbx_Active_OnSecondProgress_Loop;
        private System.Windows.Forms.CheckBox chbx_Active_OnSecondProgress_Init;
        private System.Windows.Forms.CheckBox chbx_Active_OnFirstProgress_Complete;
        private System.Windows.Forms.CheckBox chbx_Active_OnFirstProgress_Loop;
        private System.Windows.Forms.CheckBox chbx_Active_OnFirstProgress_Init;
        private System.Windows.Forms.CheckBox chbx_Active_OnError;
        private System.Windows.Forms.CheckBox chbx_Active_OnStatusChange;
        private System.Windows.Forms.CheckBox chbx_Active_OnReceiveAnswer;
        private System.Windows.Forms.CheckBox chbx_Active_OnWait;
        private System.Windows.Forms.CheckBox chbx_Active_OnSendCommand;
        private System.Windows.Forms.CheckBox chbx_Active_OnAfterScriptExecute;
        private System.Windows.Forms.CheckBox chbx_Active_OnScriptRowExecute;
        private System.Windows.Forms.CheckBox chbx_Active_OnBeforeScriptExecute;
        private System.Windows.Forms.Button btn_SetEventsMode;
        private System.Windows.Forms.CheckBox chbx_ShowLastOutput;
        private System.Windows.Forms.GroupBox grpRAOMode;
        private System.Windows.Forms.Button btnSetRAOMode;
        private System.Windows.Forms.CheckBox chkActive_OnAfterSettingsChange;
        private System.Windows.Forms.CheckBox chkActive_OnAfterCloseConnection;
        private System.Windows.Forms.CheckBox chkActive_OnAfterOpenConnection;
        private System.Windows.Forms.CheckBox chkSave_Settings_AfterOpenConnection;
        private System.Windows.Forms.CheckBox chkRegisterActiveObject;
        private System.Windows.Forms.CheckBox chk_CheckDeviceStatus;
    }
}

