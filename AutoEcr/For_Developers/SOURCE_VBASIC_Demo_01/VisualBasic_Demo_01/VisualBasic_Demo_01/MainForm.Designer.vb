<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class fm
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.tcMain = New System.Windows.Forms.TabControl()
        Me.tpInitConnect = New System.Windows.Forms.TabPage()
        Me.pnlSettings = New System.Windows.Forms.Panel()
        Me.btnStopComServer = New System.Windows.Forms.Button()
        Me.cboToggleSwitch = New System.Windows.Forms.ComboBox()
        Me.lblComPort = New System.Windows.Forms.Label()
        Me.lblBaudRate = New System.Windows.Forms.Label()
        Me.txtComPort = New System.Windows.Forms.TextBox()
        Me.txtBaudRate = New System.Windows.Forms.TextBox()
        Me.lblIPAddress = New System.Windows.Forms.Label()
        Me.lblPort = New System.Windows.Forms.Label()
        Me.txtIPAddress = New System.Windows.Forms.TextBox()
        Me.txtLANPort = New System.Windows.Forms.TextBox()
        Me.btnOpenConnection = New System.Windows.Forms.Button()
        Me.btnStopConnection = New System.Windows.Forms.Button()
        Me.btnStartComServer = New System.Windows.Forms.Button()
        Me.tpProperties = New System.Windows.Forms.TabPage()
        Me.lblAnswerDistributor = New System.Windows.Forms.Label()
        Me.lblAnswerCodePage = New System.Windows.Forms.Label()
        Me.lblAnswerFirmwareCheckSum = New System.Windows.Forms.Label()
        Me.lblAnswerFirmwareDate = New System.Windows.Forms.Label()
        Me.lblAnswerFirmwareRevision = New System.Windows.Forms.Label()
        Me.lblAnswerSerialNum = New System.Windows.Forms.Label()
        Me.lblAnswerModelName = New System.Windows.Forms.Label()
        Me.lblAnswerDeviceType = New System.Windows.Forms.Label()
        Me.lblAnswerLANConnected = New System.Windows.Forms.Label()
        Me.lblAnswerDeviceConnected = New System.Windows.Forms.Label()
        Me.lblAnswerDriverLanguage = New System.Windows.Forms.Label()
        Me.lblDistributor = New System.Windows.Forms.Label()
        Me.lblCodePage = New System.Windows.Forms.Label()
        Me.lblFirmwareChecksum = New System.Windows.Forms.Label()
        Me.lblFirmwareDate = New System.Windows.Forms.Label()
        Me.lblFirmwareRevision = New System.Windows.Forms.Label()
        Me.lblSerialNumber = New System.Windows.Forms.Label()
        Me.lblModelName = New System.Windows.Forms.Label()
        Me.lblDeviceType = New System.Windows.Forms.Label()
        Me.lblLANConnected = New System.Windows.Forms.Label()
        Me.lblDeviceConnected = New System.Windows.Forms.Label()
        Me.lblDriverLanguage = New System.Windows.Forms.Label()
        Me.tpBehaviour = New System.Windows.Forms.TabPage()
        Me.grpRAOMode = New System.Windows.Forms.GroupBox()
        Me.btnSetRAOMode = New System.Windows.Forms.Button()
        Me.chkActive_OnAfterSettingsChange = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnAfterCloseConnection = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnAfterOpenConnection = New System.Windows.Forms.CheckBox()
        Me.chkSave_Settings_AfterOpenConnection = New System.Windows.Forms.CheckBox()
        Me.chkRegisterActiveObject = New System.Windows.Forms.CheckBox()
        Me.grpTrackingMode = New System.Windows.Forms.GroupBox()
        Me.btnSetTrackingMode = New System.Windows.Forms.Button()
        Me.txtTrackingModeRowLimit = New System.Windows.Forms.TextBox()
        Me.txtTrackingModeFileName = New System.Windows.Forms.TextBox()
        Me.txtTrackingModePath = New System.Windows.Forms.TextBox()
        Me.lblTracckingModeRowLimit = New System.Windows.Forms.Label()
        Me.lblTrackingModeFileName = New System.Windows.Forms.Label()
        Me.lblTrackingModePath = New System.Windows.Forms.Label()
        Me.chkTrackingMode = New System.Windows.Forms.CheckBox()
        Me.grpLanguage = New System.Windows.Forms.GroupBox()
        Me.btnSetDriverLanguage = New System.Windows.Forms.Button()
        Me.cboLanguage = New System.Windows.Forms.ComboBox()
        Me.grpEvents = New System.Windows.Forms.GroupBox()
        Me.chkActive_OnSecondProgress_Complete = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnSecondProgress_Loop = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnSecondProgress_Init = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnFirstProgress_Complete = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnFirstProgress_Loop = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnFirstProgress_Init = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnError = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnStatusChange = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnReceiveAnswer = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnWait = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnSendCommand = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnAfterScriptExecute = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnScriptRowExecute = New System.Windows.Forms.CheckBox()
        Me.chkActive_OnBeforeScriptExecute = New System.Windows.Forms.CheckBox()
        Me.btnSetEventsMode = New System.Windows.Forms.Button()
        Me.tpSystemInfo = New System.Windows.Forms.TabPage()
        Me.lstSystemInfo = New System.Windows.Forms.ListBox()
        Me.btnGetSystemInfo = New System.Windows.Forms.Button()
        Me.tpCustomCmds = New System.Windows.Forms.TabPage()
        Me.btnGetLastAnswerList = New System.Windows.Forms.Button()
        Me.lstScriptOutput = New System.Windows.Forms.ListBox()
        Me.lblScriptOutput = New System.Windows.Forms.Label()
        Me.btnExecuteCmd = New System.Windows.Forms.Button()
        Me.txtOutputValue = New System.Windows.Forms.TextBox()
        Me.txtInputValue = New System.Windows.Forms.TextBox()
        Me.lblOutputValue = New System.Windows.Forms.Label()
        Me.lblInputValue = New System.Windows.Forms.Label()
        Me.txtCmd = New System.Windows.Forms.TextBox()
        Me.lblCmd = New System.Windows.Forms.Label()
        Me.tpCustomScript = New System.Windows.Forms.TabPage()
        Me.pnlCustomScript = New System.Windows.Forms.Panel()
        Me.chkShowLastOutput = New System.Windows.Forms.CheckBox()
        Me.cboPageChoice = New System.Windows.Forms.ComboBox()
        Me.btnCancel = New System.Windows.Forms.Button()
        Me.btnDeleteOutput = New System.Windows.Forms.Button()
        Me.btnDeleteScript = New System.Windows.Forms.Button()
        Me.btnExecuteSelected = New System.Windows.Forms.Button()
        Me.btnExecuteSimpleScript = New System.Windows.Forms.Button()
        Me.btnLoadScriptFromFile = New System.Windows.Forms.Button()
        Me.tcScriptContainer = New System.Windows.Forms.TabControl()
        Me.tpSimpleScript = New System.Windows.Forms.TabPage()
        Me.rtfSimpleScript = New System.Windows.Forms.RichTextBox()
        Me.tpHumanLog = New System.Windows.Forms.TabPage()
        Me.rtfHumanLog = New System.Windows.Forms.RichTextBox()
        Me.tpHEX = New System.Windows.Forms.TabPage()
        Me.rtfHEXLog = New System.Windows.Forms.RichTextBox()
        Me.tpANAF = New System.Windows.Forms.TabPage()
        Me.txtEndZNum = New System.Windows.Forms.TextBox()
        Me.txtStartZNum = New System.Windows.Forms.TextBox()
        Me.dtpEndTime = New System.Windows.Forms.DateTimePicker()
        Me.dtpEndDate = New System.Windows.Forms.DateTimePicker()
        Me.dtpStartTime = New System.Windows.Forms.DateTimePicker()
        Me.dtpStartDate = New System.Windows.Forms.DateTimePicker()
        Me.chkDST = New System.Windows.Forms.CheckBox()
        Me.cboRangeType = New System.Windows.Forms.ComboBox()
        Me.btnCancelDownload = New System.Windows.Forms.Button()
        Me.btnUploadLogo = New System.Windows.Forms.Button()
        Me.btnDownload = New System.Windows.Forms.Button()
        Me.chkOpenFolderAfterDwnl = New System.Windows.Forms.CheckBox()
        Me.lblEndZNum = New System.Windows.Forms.Label()
        Me.lblStartZNum = New System.Windows.Forms.Label()
        Me.lblEndDate = New System.Windows.Forms.Label()
        Me.lblStartDate = New System.Windows.Forms.Label()
        Me.lblRangeType = New System.Windows.Forms.Label()
        Me.tpGetCommandList = New System.Windows.Forms.TabPage()
        Me.cboHumanNames = New System.Windows.Forms.ComboBox()
        Me.chkSorted = New System.Windows.Forms.CheckBox()
        Me.cboCodeType = New System.Windows.Forms.ComboBox()
        Me.btnGenerateCode = New System.Windows.Forms.Button()
        Me.btnGetCommandInfo = New System.Windows.Forms.Button()
        Me.cboCommands = New System.Windows.Forms.ComboBox()
        Me.txtResult = New System.Windows.Forms.TextBox()
        Me.btnGetCommandList = New System.Windows.Forms.Button()
        Me.pnlStatusBytes = New System.Windows.Forms.Panel()
        Me.grbx_StatusByte_7 = New System.Windows.Forms.GroupBox()
        Me.chbx_S7_0 = New System.Windows.Forms.CheckBox()
        Me.chbx_S7_1 = New System.Windows.Forms.CheckBox()
        Me.chbx_S7_2 = New System.Windows.Forms.CheckBox()
        Me.chbx_S7_3 = New System.Windows.Forms.CheckBox()
        Me.chbx_S7_4 = New System.Windows.Forms.CheckBox()
        Me.chbx_S7_5 = New System.Windows.Forms.CheckBox()
        Me.chbx_S7_6 = New System.Windows.Forms.CheckBox()
        Me.chbx_S7_7 = New System.Windows.Forms.CheckBox()
        Me.grbx_StatusByte_6 = New System.Windows.Forms.GroupBox()
        Me.chbx_S6_0 = New System.Windows.Forms.CheckBox()
        Me.chbx_S6_1 = New System.Windows.Forms.CheckBox()
        Me.chbx_S6_2 = New System.Windows.Forms.CheckBox()
        Me.chbx_S6_3 = New System.Windows.Forms.CheckBox()
        Me.chbx_S6_4 = New System.Windows.Forms.CheckBox()
        Me.chbx_S6_5 = New System.Windows.Forms.CheckBox()
        Me.chbx_S6_6 = New System.Windows.Forms.CheckBox()
        Me.chbx_S6_7 = New System.Windows.Forms.CheckBox()
        Me.grbx_StatusByte_5 = New System.Windows.Forms.GroupBox()
        Me.chbx_S5_0 = New System.Windows.Forms.CheckBox()
        Me.chbx_S5_1 = New System.Windows.Forms.CheckBox()
        Me.chbx_S5_2 = New System.Windows.Forms.CheckBox()
        Me.chbx_S5_3 = New System.Windows.Forms.CheckBox()
        Me.chbx_S5_4 = New System.Windows.Forms.CheckBox()
        Me.chbx_S5_5 = New System.Windows.Forms.CheckBox()
        Me.chbx_S5_6 = New System.Windows.Forms.CheckBox()
        Me.chbx_S5_7 = New System.Windows.Forms.CheckBox()
        Me.grbx_StatusByte_4 = New System.Windows.Forms.GroupBox()
        Me.chbx_S4_0 = New System.Windows.Forms.CheckBox()
        Me.chbx_S4_1 = New System.Windows.Forms.CheckBox()
        Me.chbx_S4_2 = New System.Windows.Forms.CheckBox()
        Me.chbx_S4_3 = New System.Windows.Forms.CheckBox()
        Me.chbx_S4_4 = New System.Windows.Forms.CheckBox()
        Me.chbx_S4_5 = New System.Windows.Forms.CheckBox()
        Me.chbx_S4_6 = New System.Windows.Forms.CheckBox()
        Me.chbx_S4_7 = New System.Windows.Forms.CheckBox()
        Me.grbx_StatusByte_3 = New System.Windows.Forms.GroupBox()
        Me.chbx_S3_0 = New System.Windows.Forms.CheckBox()
        Me.chbx_S3_1 = New System.Windows.Forms.CheckBox()
        Me.chbx_S3_2 = New System.Windows.Forms.CheckBox()
        Me.chbx_S3_3 = New System.Windows.Forms.CheckBox()
        Me.chbx_S3_4 = New System.Windows.Forms.CheckBox()
        Me.chbx_S3_5 = New System.Windows.Forms.CheckBox()
        Me.chbx_S3_6 = New System.Windows.Forms.CheckBox()
        Me.chbx_S3_7 = New System.Windows.Forms.CheckBox()
        Me.grbx_StatusByte_2 = New System.Windows.Forms.GroupBox()
        Me.chbx_S2_0 = New System.Windows.Forms.CheckBox()
        Me.chbx_S2_1 = New System.Windows.Forms.CheckBox()
        Me.chbx_S2_2 = New System.Windows.Forms.CheckBox()
        Me.chbx_S2_3 = New System.Windows.Forms.CheckBox()
        Me.chbx_S2_4 = New System.Windows.Forms.CheckBox()
        Me.chbx_S2_5 = New System.Windows.Forms.CheckBox()
        Me.chbx_S2_6 = New System.Windows.Forms.CheckBox()
        Me.chbx_S2_7 = New System.Windows.Forms.CheckBox()
        Me.grbx_StatusByte_1 = New System.Windows.Forms.GroupBox()
        Me.chbx_S1_0 = New System.Windows.Forms.CheckBox()
        Me.chbx_S1_1 = New System.Windows.Forms.CheckBox()
        Me.chbx_S1_2 = New System.Windows.Forms.CheckBox()
        Me.chbx_S1_3 = New System.Windows.Forms.CheckBox()
        Me.chbx_S1_4 = New System.Windows.Forms.CheckBox()
        Me.chbx_S1_5 = New System.Windows.Forms.CheckBox()
        Me.chbx_S1_6 = New System.Windows.Forms.CheckBox()
        Me.chbx_S1_7 = New System.Windows.Forms.CheckBox()
        Me.grbx_StatusByte_0 = New System.Windows.Forms.GroupBox()
        Me.chbx_S0_0 = New System.Windows.Forms.CheckBox()
        Me.chbx_S0_1 = New System.Windows.Forms.CheckBox()
        Me.chbx_S0_2 = New System.Windows.Forms.CheckBox()
        Me.chbx_S0_3 = New System.Windows.Forms.CheckBox()
        Me.chbx_S0_4 = New System.Windows.Forms.CheckBox()
        Me.chbx_S0_5 = New System.Windows.Forms.CheckBox()
        Me.chbx_S0_6 = New System.Windows.Forms.CheckBox()
        Me.chbx_S0_7 = New System.Windows.Forms.CheckBox()
        Me.pnlErrors = New System.Windows.Forms.Panel()
        Me.lstErrors = New System.Windows.Forms.ListBox()
        Me.lblErrors = New System.Windows.Forms.Label()
        Me.pnlProgress = New System.Windows.Forms.Panel()
        Me.prg2 = New System.Windows.Forms.ProgressBar()
        Me.prg1 = New System.Windows.Forms.ProgressBar()
        Me.BackgroundWorker1 = New System.ComponentModel.BackgroundWorker()
        Me.OpenFileDialog1 = New System.Windows.Forms.OpenFileDialog()
        Me.FolderBrowserDialog1 = New System.Windows.Forms.FolderBrowserDialog()
        Me.chkCheckDeviceStatus = New System.Windows.Forms.CheckBox()
        Me.tcMain.SuspendLayout()
        Me.tpInitConnect.SuspendLayout()
        Me.pnlSettings.SuspendLayout()
        Me.tpProperties.SuspendLayout()
        Me.tpBehaviour.SuspendLayout()
        Me.grpRAOMode.SuspendLayout()
        Me.grpTrackingMode.SuspendLayout()
        Me.grpLanguage.SuspendLayout()
        Me.grpEvents.SuspendLayout()
        Me.tpSystemInfo.SuspendLayout()
        Me.tpCustomCmds.SuspendLayout()
        Me.tpCustomScript.SuspendLayout()
        Me.pnlCustomScript.SuspendLayout()
        Me.tcScriptContainer.SuspendLayout()
        Me.tpSimpleScript.SuspendLayout()
        Me.tpHumanLog.SuspendLayout()
        Me.tpHEX.SuspendLayout()
        Me.tpANAF.SuspendLayout()
        Me.tpGetCommandList.SuspendLayout()
        Me.pnlStatusBytes.SuspendLayout()
        Me.grbx_StatusByte_7.SuspendLayout()
        Me.grbx_StatusByte_6.SuspendLayout()
        Me.grbx_StatusByte_5.SuspendLayout()
        Me.grbx_StatusByte_4.SuspendLayout()
        Me.grbx_StatusByte_3.SuspendLayout()
        Me.grbx_StatusByte_2.SuspendLayout()
        Me.grbx_StatusByte_1.SuspendLayout()
        Me.grbx_StatusByte_0.SuspendLayout()
        Me.pnlErrors.SuspendLayout()
        Me.pnlProgress.SuspendLayout()
        Me.SuspendLayout()
        '
        'tcMain
        '
        Me.tcMain.Controls.Add(Me.tpInitConnect)
        Me.tcMain.Controls.Add(Me.tpProperties)
        Me.tcMain.Controls.Add(Me.tpBehaviour)
        Me.tcMain.Controls.Add(Me.tpSystemInfo)
        Me.tcMain.Controls.Add(Me.tpCustomCmds)
        Me.tcMain.Controls.Add(Me.tpCustomScript)
        Me.tcMain.Controls.Add(Me.tpANAF)
        Me.tcMain.Controls.Add(Me.tpGetCommandList)
        Me.tcMain.Dock = System.Windows.Forms.DockStyle.Fill
        Me.tcMain.Location = New System.Drawing.Point(0, 0)
        Me.tcMain.Name = "tcMain"
        Me.tcMain.SelectedIndex = 0
        Me.tcMain.Size = New System.Drawing.Size(967, 700)
        Me.tcMain.TabIndex = 0
        '
        'tpInitConnect
        '
        Me.tpInitConnect.Controls.Add(Me.pnlSettings)
        Me.tpInitConnect.Controls.Add(Me.btnStartComServer)
        Me.tpInitConnect.Location = New System.Drawing.Point(4, 22)
        Me.tpInitConnect.Name = "tpInitConnect"
        Me.tpInitConnect.Padding = New System.Windows.Forms.Padding(3)
        Me.tpInitConnect.Size = New System.Drawing.Size(959, 674)
        Me.tpInitConnect.TabIndex = 0
        Me.tpInitConnect.Text = "Initialisation and connection"
        Me.tpInitConnect.UseVisualStyleBackColor = True
        '
        'pnlSettings
        '
        Me.pnlSettings.Controls.Add(Me.btnStopComServer)
        Me.pnlSettings.Controls.Add(Me.cboToggleSwitch)
        Me.pnlSettings.Controls.Add(Me.lblComPort)
        Me.pnlSettings.Controls.Add(Me.lblBaudRate)
        Me.pnlSettings.Controls.Add(Me.txtComPort)
        Me.pnlSettings.Controls.Add(Me.txtBaudRate)
        Me.pnlSettings.Controls.Add(Me.lblIPAddress)
        Me.pnlSettings.Controls.Add(Me.lblPort)
        Me.pnlSettings.Controls.Add(Me.txtIPAddress)
        Me.pnlSettings.Controls.Add(Me.txtLANPort)
        Me.pnlSettings.Controls.Add(Me.btnOpenConnection)
        Me.pnlSettings.Controls.Add(Me.btnStopConnection)
        Me.pnlSettings.Enabled = False
        Me.pnlSettings.Location = New System.Drawing.Point(9, 41)
        Me.pnlSettings.Name = "pnlSettings"
        Me.pnlSettings.Size = New System.Drawing.Size(229, 304)
        Me.pnlSettings.TabIndex = 1
        '
        'btnStopComServer
        '
        Me.btnStopComServer.Location = New System.Drawing.Point(17, 247)
        Me.btnStopComServer.Name = "btnStopComServer"
        Me.btnStopComServer.Size = New System.Drawing.Size(179, 27)
        Me.btnStopComServer.TabIndex = 56
        Me.btnStopComServer.Text = "Stop COM server"
        Me.btnStopComServer.UseVisualStyleBackColor = True
        '
        'cboToggleSwitch
        '
        Me.cboToggleSwitch.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cboToggleSwitch.FormattingEnabled = True
        Me.cboToggleSwitch.Items.AddRange(New Object() {"RS232", "TCP/IP"})
        Me.cboToggleSwitch.Location = New System.Drawing.Point(81, 5)
        Me.cboToggleSwitch.Name = "cboToggleSwitch"
        Me.cboToggleSwitch.Size = New System.Drawing.Size(115, 21)
        Me.cboToggleSwitch.TabIndex = 67
        '
        'lblComPort
        '
        Me.lblComPort.AutoSize = True
        Me.lblComPort.Location = New System.Drawing.Point(14, 46)
        Me.lblComPort.Name = "lblComPort"
        Me.lblComPort.Size = New System.Drawing.Size(55, 13)
        Me.lblComPort.TabIndex = 57
        Me.lblComPort.Text = "COM port:"
        '
        'lblBaudRate
        '
        Me.lblBaudRate.AutoSize = True
        Me.lblBaudRate.Location = New System.Drawing.Point(14, 72)
        Me.lblBaudRate.Name = "lblBaudRate"
        Me.lblBaudRate.Size = New System.Drawing.Size(56, 13)
        Me.lblBaudRate.TabIndex = 58
        Me.lblBaudRate.Text = "Baud rate:"
        '
        'txtComPort
        '
        Me.txtComPort.Location = New System.Drawing.Point(81, 43)
        Me.txtComPort.MaxLength = 3
        Me.txtComPort.Name = "txtComPort"
        Me.txtComPort.Size = New System.Drawing.Size(115, 20)
        Me.txtComPort.TabIndex = 59
        Me.txtComPort.Text = "1"
        '
        'txtBaudRate
        '
        Me.txtBaudRate.Location = New System.Drawing.Point(81, 69)
        Me.txtBaudRate.MaxLength = 6
        Me.txtBaudRate.Name = "txtBaudRate"
        Me.txtBaudRate.Size = New System.Drawing.Size(115, 20)
        Me.txtBaudRate.TabIndex = 60
        Me.txtBaudRate.Text = "115200"
        '
        'lblIPAddress
        '
        Me.lblIPAddress.AutoSize = True
        Me.lblIPAddress.Location = New System.Drawing.Point(14, 102)
        Me.lblIPAddress.Name = "lblIPAddress"
        Me.lblIPAddress.Size = New System.Drawing.Size(60, 13)
        Me.lblIPAddress.TabIndex = 61
        Me.lblIPAddress.Text = "IP address:"
        '
        'lblPort
        '
        Me.lblPort.AutoSize = True
        Me.lblPort.Location = New System.Drawing.Point(14, 131)
        Me.lblPort.Name = "lblPort"
        Me.lblPort.Size = New System.Drawing.Size(29, 13)
        Me.lblPort.TabIndex = 62
        Me.lblPort.Text = "Port:"
        '
        'txtIPAddress
        '
        Me.txtIPAddress.Location = New System.Drawing.Point(81, 99)
        Me.txtIPAddress.MaxLength = 15
        Me.txtIPAddress.Name = "txtIPAddress"
        Me.txtIPAddress.Size = New System.Drawing.Size(115, 20)
        Me.txtIPAddress.TabIndex = 63
        '
        'txtLANPort
        '
        Me.txtLANPort.Location = New System.Drawing.Point(81, 128)
        Me.txtLANPort.MaxLength = 20
        Me.txtLANPort.Name = "txtLANPort"
        Me.txtLANPort.Size = New System.Drawing.Size(115, 20)
        Me.txtLANPort.TabIndex = 64
        '
        'btnOpenConnection
        '
        Me.btnOpenConnection.Location = New System.Drawing.Point(81, 166)
        Me.btnOpenConnection.Name = "btnOpenConnection"
        Me.btnOpenConnection.Size = New System.Drawing.Size(115, 27)
        Me.btnOpenConnection.TabIndex = 65
        Me.btnOpenConnection.Text = "Open connection"
        Me.btnOpenConnection.UseVisualStyleBackColor = True
        '
        'btnStopConnection
        '
        Me.btnStopConnection.Location = New System.Drawing.Point(81, 199)
        Me.btnStopConnection.Name = "btnStopConnection"
        Me.btnStopConnection.Size = New System.Drawing.Size(115, 27)
        Me.btnStopConnection.TabIndex = 66
        Me.btnStopConnection.Text = "Stop connection"
        Me.btnStopConnection.UseVisualStyleBackColor = True
        '
        'btnStartComServer
        '
        Me.btnStartComServer.Location = New System.Drawing.Point(26, 6)
        Me.btnStartComServer.Name = "btnStartComServer"
        Me.btnStartComServer.Size = New System.Drawing.Size(179, 27)
        Me.btnStartComServer.TabIndex = 0
        Me.btnStartComServer.Text = "Start COM server"
        Me.btnStartComServer.UseVisualStyleBackColor = True
        '
        'tpProperties
        '
        Me.tpProperties.Controls.Add(Me.lblAnswerDistributor)
        Me.tpProperties.Controls.Add(Me.lblAnswerCodePage)
        Me.tpProperties.Controls.Add(Me.lblAnswerFirmwareCheckSum)
        Me.tpProperties.Controls.Add(Me.lblAnswerFirmwareDate)
        Me.tpProperties.Controls.Add(Me.lblAnswerFirmwareRevision)
        Me.tpProperties.Controls.Add(Me.lblAnswerSerialNum)
        Me.tpProperties.Controls.Add(Me.lblAnswerModelName)
        Me.tpProperties.Controls.Add(Me.lblAnswerDeviceType)
        Me.tpProperties.Controls.Add(Me.lblAnswerLANConnected)
        Me.tpProperties.Controls.Add(Me.lblAnswerDeviceConnected)
        Me.tpProperties.Controls.Add(Me.lblAnswerDriverLanguage)
        Me.tpProperties.Controls.Add(Me.lblDistributor)
        Me.tpProperties.Controls.Add(Me.lblCodePage)
        Me.tpProperties.Controls.Add(Me.lblFirmwareChecksum)
        Me.tpProperties.Controls.Add(Me.lblFirmwareDate)
        Me.tpProperties.Controls.Add(Me.lblFirmwareRevision)
        Me.tpProperties.Controls.Add(Me.lblSerialNumber)
        Me.tpProperties.Controls.Add(Me.lblModelName)
        Me.tpProperties.Controls.Add(Me.lblDeviceType)
        Me.tpProperties.Controls.Add(Me.lblLANConnected)
        Me.tpProperties.Controls.Add(Me.lblDeviceConnected)
        Me.tpProperties.Controls.Add(Me.lblDriverLanguage)
        Me.tpProperties.Location = New System.Drawing.Point(4, 22)
        Me.tpProperties.Name = "tpProperties"
        Me.tpProperties.Padding = New System.Windows.Forms.Padding(3)
        Me.tpProperties.Size = New System.Drawing.Size(959, 674)
        Me.tpProperties.TabIndex = 1
        Me.tpProperties.Text = "Properties"
        Me.tpProperties.UseVisualStyleBackColor = True
        '
        'lblAnswerDistributor
        '
        Me.lblAnswerDistributor.AutoSize = True
        Me.lblAnswerDistributor.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerDistributor.Location = New System.Drawing.Point(132, 279)
        Me.lblAnswerDistributor.Name = "lblAnswerDistributor"
        Me.lblAnswerDistributor.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerDistributor.TabIndex = 104
        Me.lblAnswerDistributor.Text = "..."
        '
        'lblAnswerCodePage
        '
        Me.lblAnswerCodePage.AutoSize = True
        Me.lblAnswerCodePage.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerCodePage.Location = New System.Drawing.Point(132, 253)
        Me.lblAnswerCodePage.Name = "lblAnswerCodePage"
        Me.lblAnswerCodePage.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerCodePage.TabIndex = 103
        Me.lblAnswerCodePage.Text = "..."
        '
        'lblAnswerFirmwareCheckSum
        '
        Me.lblAnswerFirmwareCheckSum.AutoSize = True
        Me.lblAnswerFirmwareCheckSum.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerFirmwareCheckSum.Location = New System.Drawing.Point(132, 226)
        Me.lblAnswerFirmwareCheckSum.Name = "lblAnswerFirmwareCheckSum"
        Me.lblAnswerFirmwareCheckSum.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerFirmwareCheckSum.TabIndex = 102
        Me.lblAnswerFirmwareCheckSum.Text = "..."
        '
        'lblAnswerFirmwareDate
        '
        Me.lblAnswerFirmwareDate.AutoSize = True
        Me.lblAnswerFirmwareDate.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerFirmwareDate.Location = New System.Drawing.Point(132, 198)
        Me.lblAnswerFirmwareDate.Name = "lblAnswerFirmwareDate"
        Me.lblAnswerFirmwareDate.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerFirmwareDate.TabIndex = 101
        Me.lblAnswerFirmwareDate.Text = "..."
        '
        'lblAnswerFirmwareRevision
        '
        Me.lblAnswerFirmwareRevision.AutoSize = True
        Me.lblAnswerFirmwareRevision.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerFirmwareRevision.Location = New System.Drawing.Point(132, 174)
        Me.lblAnswerFirmwareRevision.Name = "lblAnswerFirmwareRevision"
        Me.lblAnswerFirmwareRevision.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerFirmwareRevision.TabIndex = 100
        Me.lblAnswerFirmwareRevision.Text = "..."
        '
        'lblAnswerSerialNum
        '
        Me.lblAnswerSerialNum.AutoSize = True
        Me.lblAnswerSerialNum.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerSerialNum.Location = New System.Drawing.Point(132, 148)
        Me.lblAnswerSerialNum.Name = "lblAnswerSerialNum"
        Me.lblAnswerSerialNum.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerSerialNum.TabIndex = 99
        Me.lblAnswerSerialNum.Text = "..."
        '
        'lblAnswerModelName
        '
        Me.lblAnswerModelName.AutoSize = True
        Me.lblAnswerModelName.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerModelName.Location = New System.Drawing.Point(132, 122)
        Me.lblAnswerModelName.Name = "lblAnswerModelName"
        Me.lblAnswerModelName.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerModelName.TabIndex = 98
        Me.lblAnswerModelName.Text = "..."
        '
        'lblAnswerDeviceType
        '
        Me.lblAnswerDeviceType.AutoSize = True
        Me.lblAnswerDeviceType.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerDeviceType.Location = New System.Drawing.Point(132, 96)
        Me.lblAnswerDeviceType.Name = "lblAnswerDeviceType"
        Me.lblAnswerDeviceType.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerDeviceType.TabIndex = 97
        Me.lblAnswerDeviceType.Text = "..."
        '
        'lblAnswerLANConnected
        '
        Me.lblAnswerLANConnected.AutoSize = True
        Me.lblAnswerLANConnected.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerLANConnected.Location = New System.Drawing.Point(132, 70)
        Me.lblAnswerLANConnected.Name = "lblAnswerLANConnected"
        Me.lblAnswerLANConnected.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerLANConnected.TabIndex = 96
        Me.lblAnswerLANConnected.Text = "..."
        '
        'lblAnswerDeviceConnected
        '
        Me.lblAnswerDeviceConnected.AutoSize = True
        Me.lblAnswerDeviceConnected.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerDeviceConnected.Location = New System.Drawing.Point(132, 44)
        Me.lblAnswerDeviceConnected.Name = "lblAnswerDeviceConnected"
        Me.lblAnswerDeviceConnected.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerDeviceConnected.TabIndex = 95
        Me.lblAnswerDeviceConnected.Text = "..."
        '
        'lblAnswerDriverLanguage
        '
        Me.lblAnswerDriverLanguage.AutoSize = True
        Me.lblAnswerDriverLanguage.Font = New System.Drawing.Font("Times New Roman", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lblAnswerDriverLanguage.Location = New System.Drawing.Point(132, 18)
        Me.lblAnswerDriverLanguage.Name = "lblAnswerDriverLanguage"
        Me.lblAnswerDriverLanguage.Size = New System.Drawing.Size(16, 13)
        Me.lblAnswerDriverLanguage.TabIndex = 94
        Me.lblAnswerDriverLanguage.Text = "..."
        '
        'lblDistributor
        '
        Me.lblDistributor.AutoSize = True
        Me.lblDistributor.Location = New System.Drawing.Point(8, 279)
        Me.lblDistributor.Name = "lblDistributor"
        Me.lblDistributor.Size = New System.Drawing.Size(57, 13)
        Me.lblDistributor.TabIndex = 93
        Me.lblDistributor.Text = "Distributor:"
        '
        'lblCodePage
        '
        Me.lblCodePage.AutoSize = True
        Me.lblCodePage.Location = New System.Drawing.Point(8, 253)
        Me.lblCodePage.Name = "lblCodePage"
        Me.lblCodePage.Size = New System.Drawing.Size(62, 13)
        Me.lblCodePage.TabIndex = 92
        Me.lblCodePage.Text = "Code page:"
        '
        'lblFirmwareChecksum
        '
        Me.lblFirmwareChecksum.AutoSize = True
        Me.lblFirmwareChecksum.Location = New System.Drawing.Point(8, 226)
        Me.lblFirmwareChecksum.Name = "lblFirmwareChecksum"
        Me.lblFirmwareChecksum.Size = New System.Drawing.Size(104, 13)
        Me.lblFirmwareChecksum.TabIndex = 91
        Me.lblFirmwareChecksum.Text = "Firmware checksum:"
        '
        'lblFirmwareDate
        '
        Me.lblFirmwareDate.AutoSize = True
        Me.lblFirmwareDate.Location = New System.Drawing.Point(8, 198)
        Me.lblFirmwareDate.Name = "lblFirmwareDate"
        Me.lblFirmwareDate.Size = New System.Drawing.Size(76, 13)
        Me.lblFirmwareDate.TabIndex = 90
        Me.lblFirmwareDate.Text = "Firmware date:"
        '
        'lblFirmwareRevision
        '
        Me.lblFirmwareRevision.AutoSize = True
        Me.lblFirmwareRevision.Location = New System.Drawing.Point(8, 174)
        Me.lblFirmwareRevision.Name = "lblFirmwareRevision"
        Me.lblFirmwareRevision.Size = New System.Drawing.Size(91, 13)
        Me.lblFirmwareRevision.TabIndex = 89
        Me.lblFirmwareRevision.Text = "Firmware revision:"
        '
        'lblSerialNumber
        '
        Me.lblSerialNumber.AutoSize = True
        Me.lblSerialNumber.Location = New System.Drawing.Point(8, 148)
        Me.lblSerialNumber.Name = "lblSerialNumber"
        Me.lblSerialNumber.Size = New System.Drawing.Size(74, 13)
        Me.lblSerialNumber.TabIndex = 88
        Me.lblSerialNumber.Text = "Serial number:"
        '
        'lblModelName
        '
        Me.lblModelName.AutoSize = True
        Me.lblModelName.Location = New System.Drawing.Point(8, 122)
        Me.lblModelName.Name = "lblModelName"
        Me.lblModelName.Size = New System.Drawing.Size(68, 13)
        Me.lblModelName.TabIndex = 87
        Me.lblModelName.Text = "Model name:"
        '
        'lblDeviceType
        '
        Me.lblDeviceType.AutoSize = True
        Me.lblDeviceType.Location = New System.Drawing.Point(8, 96)
        Me.lblDeviceType.Name = "lblDeviceType"
        Me.lblDeviceType.Size = New System.Drawing.Size(67, 13)
        Me.lblDeviceType.TabIndex = 86
        Me.lblDeviceType.Text = "Device type:"
        '
        'lblLANConnected
        '
        Me.lblLANConnected.AutoSize = True
        Me.lblLANConnected.Location = New System.Drawing.Point(8, 70)
        Me.lblLANConnected.Name = "lblLANConnected"
        Me.lblLANConnected.Size = New System.Drawing.Size(85, 13)
        Me.lblLANConnected.TabIndex = 85
        Me.lblLANConnected.Text = "LAN connected:"
        '
        'lblDeviceConnected
        '
        Me.lblDeviceConnected.AutoSize = True
        Me.lblDeviceConnected.Location = New System.Drawing.Point(8, 44)
        Me.lblDeviceConnected.Name = "lblDeviceConnected"
        Me.lblDeviceConnected.Size = New System.Drawing.Size(98, 13)
        Me.lblDeviceConnected.TabIndex = 84
        Me.lblDeviceConnected.Text = "Device connected:"
        '
        'lblDriverLanguage
        '
        Me.lblDriverLanguage.AutoSize = True
        Me.lblDriverLanguage.Location = New System.Drawing.Point(8, 18)
        Me.lblDriverLanguage.Name = "lblDriverLanguage"
        Me.lblDriverLanguage.Size = New System.Drawing.Size(85, 13)
        Me.lblDriverLanguage.TabIndex = 83
        Me.lblDriverLanguage.Text = "Driver language:"
        '
        'tpBehaviour
        '
        Me.tpBehaviour.Controls.Add(Me.grpRAOMode)
        Me.tpBehaviour.Controls.Add(Me.grpTrackingMode)
        Me.tpBehaviour.Controls.Add(Me.grpLanguage)
        Me.tpBehaviour.Controls.Add(Me.grpEvents)
        Me.tpBehaviour.Location = New System.Drawing.Point(4, 22)
        Me.tpBehaviour.Name = "tpBehaviour"
        Me.tpBehaviour.Padding = New System.Windows.Forms.Padding(3)
        Me.tpBehaviour.Size = New System.Drawing.Size(959, 674)
        Me.tpBehaviour.TabIndex = 2
        Me.tpBehaviour.Text = "Behaviour"
        Me.tpBehaviour.UseVisualStyleBackColor = True
        '
        'grpRAOMode
        '
        Me.grpRAOMode.Controls.Add(Me.chkCheckDeviceStatus)
        Me.grpRAOMode.Controls.Add(Me.btnSetRAOMode)
        Me.grpRAOMode.Controls.Add(Me.chkActive_OnAfterSettingsChange)
        Me.grpRAOMode.Controls.Add(Me.chkActive_OnAfterCloseConnection)
        Me.grpRAOMode.Controls.Add(Me.chkActive_OnAfterOpenConnection)
        Me.grpRAOMode.Controls.Add(Me.chkSave_Settings_AfterOpenConnection)
        Me.grpRAOMode.Controls.Add(Me.chkRegisterActiveObject)
        Me.grpRAOMode.Location = New System.Drawing.Point(254, 240)
        Me.grpRAOMode.Name = "grpRAOMode"
        Me.grpRAOMode.Size = New System.Drawing.Size(341, 180)
        Me.grpRAOMode.TabIndex = 6
        Me.grpRAOMode.TabStop = False
        Me.grpRAOMode.Text = "RAO mode"
        '
        'btnSetRAOMode
        '
        Me.btnSetRAOMode.Location = New System.Drawing.Point(220, 147)
        Me.btnSetRAOMode.Name = "btnSetRAOMode"
        Me.btnSetRAOMode.Size = New System.Drawing.Size(115, 27)
        Me.btnSetRAOMode.TabIndex = 5
        Me.btnSetRAOMode.Text = "Set RAO mode"
        Me.btnSetRAOMode.UseVisualStyleBackColor = True
        '
        'chkActive_OnAfterSettingsChange
        '
        Me.chkActive_OnAfterSettingsChange.AutoSize = True
        Me.chkActive_OnAfterSettingsChange.Location = New System.Drawing.Point(6, 88)
        Me.chkActive_OnAfterSettingsChange.Name = "chkActive_OnAfterSettingsChange"
        Me.chkActive_OnAfterSettingsChange.Size = New System.Drawing.Size(203, 17)
        Me.chkActive_OnAfterSettingsChange.TabIndex = 4
        Me.chkActive_OnAfterSettingsChange.Text = "Active event: OnAfterSettingsChange"
        Me.chkActive_OnAfterSettingsChange.UseVisualStyleBackColor = True
        '
        'chkActive_OnAfterCloseConnection
        '
        Me.chkActive_OnAfterCloseConnection.AutoSize = True
        Me.chkActive_OnAfterCloseConnection.Location = New System.Drawing.Point(6, 65)
        Me.chkActive_OnAfterCloseConnection.Name = "chkActive_OnAfterCloseConnection"
        Me.chkActive_OnAfterCloseConnection.Size = New System.Drawing.Size(208, 17)
        Me.chkActive_OnAfterCloseConnection.TabIndex = 3
        Me.chkActive_OnAfterCloseConnection.Text = "Active event: OnAfterCloseConnection"
        Me.chkActive_OnAfterCloseConnection.UseVisualStyleBackColor = True
        '
        'chkActive_OnAfterOpenConnection
        '
        Me.chkActive_OnAfterOpenConnection.AutoSize = True
        Me.chkActive_OnAfterOpenConnection.Location = New System.Drawing.Point(6, 42)
        Me.chkActive_OnAfterOpenConnection.Name = "chkActive_OnAfterOpenConnection"
        Me.chkActive_OnAfterOpenConnection.Size = New System.Drawing.Size(208, 17)
        Me.chkActive_OnAfterOpenConnection.TabIndex = 2
        Me.chkActive_OnAfterOpenConnection.Text = "Active event: OnAfterOpenConnection"
        Me.chkActive_OnAfterOpenConnection.UseVisualStyleBackColor = True
        '
        'chkSave_Settings_AfterOpenConnection
        '
        Me.chkSave_Settings_AfterOpenConnection.AutoSize = True
        Me.chkSave_Settings_AfterOpenConnection.Location = New System.Drawing.Point(6, 111)
        Me.chkSave_Settings_AfterOpenConnection.Name = "chkSave_Settings_AfterOpenConnection"
        Me.chkSave_Settings_AfterOpenConnection.Size = New System.Drawing.Size(235, 17)
        Me.chkSave_Settings_AfterOpenConnection.TabIndex = 1
        Me.chkSave_Settings_AfterOpenConnection.Text = "Save settings after connection to the device"
        Me.chkSave_Settings_AfterOpenConnection.UseVisualStyleBackColor = True
        '
        'chkRegisterActiveObject
        '
        Me.chkRegisterActiveObject.AutoSize = True
        Me.chkRegisterActiveObject.Location = New System.Drawing.Point(6, 19)
        Me.chkRegisterActiveObject.Name = "chkRegisterActiveObject"
        Me.chkRegisterActiveObject.Size = New System.Drawing.Size(177, 17)
        Me.chkRegisterActiveObject.TabIndex = 0
        Me.chkRegisterActiveObject.Text = "Register ActiveX Object on start"
        Me.chkRegisterActiveObject.UseVisualStyleBackColor = True
        '
        'grpTrackingMode
        '
        Me.grpTrackingMode.Controls.Add(Me.btnSetTrackingMode)
        Me.grpTrackingMode.Controls.Add(Me.txtTrackingModeRowLimit)
        Me.grpTrackingMode.Controls.Add(Me.txtTrackingModeFileName)
        Me.grpTrackingMode.Controls.Add(Me.txtTrackingModePath)
        Me.grpTrackingMode.Controls.Add(Me.lblTracckingModeRowLimit)
        Me.grpTrackingMode.Controls.Add(Me.lblTrackingModeFileName)
        Me.grpTrackingMode.Controls.Add(Me.lblTrackingModePath)
        Me.grpTrackingMode.Controls.Add(Me.chkTrackingMode)
        Me.grpTrackingMode.Location = New System.Drawing.Point(254, 69)
        Me.grpTrackingMode.Name = "grpTrackingMode"
        Me.grpTrackingMode.Size = New System.Drawing.Size(341, 165)
        Me.grpTrackingMode.TabIndex = 5
        Me.grpTrackingMode.TabStop = False
        Me.grpTrackingMode.Text = "Tracking mode"
        '
        'btnSetTrackingMode
        '
        Me.btnSetTrackingMode.Location = New System.Drawing.Point(220, 126)
        Me.btnSetTrackingMode.Name = "btnSetTrackingMode"
        Me.btnSetTrackingMode.Size = New System.Drawing.Size(115, 27)
        Me.btnSetTrackingMode.TabIndex = 71
        Me.btnSetTrackingMode.Text = "Set tracking mode"
        Me.btnSetTrackingMode.UseVisualStyleBackColor = True
        '
        'txtTrackingModeRowLimit
        '
        Me.txtTrackingModeRowLimit.Location = New System.Drawing.Point(140, 100)
        Me.txtTrackingModeRowLimit.Name = "txtTrackingModeRowLimit"
        Me.txtTrackingModeRowLimit.Size = New System.Drawing.Size(196, 20)
        Me.txtTrackingModeRowLimit.TabIndex = 70
        '
        'txtTrackingModeFileName
        '
        Me.txtTrackingModeFileName.Location = New System.Drawing.Point(140, 72)
        Me.txtTrackingModeFileName.Name = "txtTrackingModeFileName"
        Me.txtTrackingModeFileName.Size = New System.Drawing.Size(196, 20)
        Me.txtTrackingModeFileName.TabIndex = 69
        '
        'txtTrackingModePath
        '
        Me.txtTrackingModePath.Location = New System.Drawing.Point(140, 45)
        Me.txtTrackingModePath.Name = "txtTrackingModePath"
        Me.txtTrackingModePath.Size = New System.Drawing.Size(196, 20)
        Me.txtTrackingModePath.TabIndex = 68
        '
        'lblTracckingModeRowLimit
        '
        Me.lblTracckingModeRowLimit.AutoSize = True
        Me.lblTracckingModeRowLimit.Location = New System.Drawing.Point(3, 103)
        Me.lblTracckingModeRowLimit.Name = "lblTracckingModeRowLimit"
        Me.lblTracckingModeRowLimit.Size = New System.Drawing.Size(132, 13)
        Me.lblTracckingModeRowLimit.TabIndex = 67
        Me.lblTracckingModeRowLimit.Text = "Tracking mode - Row limit:"
        '
        'lblTrackingModeFileName
        '
        Me.lblTrackingModeFileName.AutoSize = True
        Me.lblTrackingModeFileName.Location = New System.Drawing.Point(3, 75)
        Me.lblTrackingModeFileName.Name = "lblTrackingModeFileName"
        Me.lblTrackingModeFileName.Size = New System.Drawing.Size(135, 13)
        Me.lblTrackingModeFileName.TabIndex = 66
        Me.lblTrackingModeFileName.Text = "Tracking mode - File name:"
        '
        'lblTrackingModePath
        '
        Me.lblTrackingModePath.AutoSize = True
        Me.lblTrackingModePath.Location = New System.Drawing.Point(3, 46)
        Me.lblTrackingModePath.Name = "lblTrackingModePath"
        Me.lblTrackingModePath.Size = New System.Drawing.Size(112, 13)
        Me.lblTrackingModePath.TabIndex = 65
        Me.lblTrackingModePath.Text = "Tracking mode - Path:"
        '
        'chkTrackingMode
        '
        Me.chkTrackingMode.AutoSize = True
        Me.chkTrackingMode.Location = New System.Drawing.Point(6, 19)
        Me.chkTrackingMode.Name = "chkTrackingMode"
        Me.chkTrackingMode.Size = New System.Drawing.Size(97, 17)
        Me.chkTrackingMode.TabIndex = 64
        Me.chkTrackingMode.Text = "Tracking mode"
        Me.chkTrackingMode.UseVisualStyleBackColor = True
        '
        'grpLanguage
        '
        Me.grpLanguage.Controls.Add(Me.btnSetDriverLanguage)
        Me.grpLanguage.Controls.Add(Me.cboLanguage)
        Me.grpLanguage.Location = New System.Drawing.Point(254, 6)
        Me.grpLanguage.Name = "grpLanguage"
        Me.grpLanguage.Size = New System.Drawing.Size(341, 57)
        Me.grpLanguage.TabIndex = 4
        Me.grpLanguage.TabStop = False
        Me.grpLanguage.Text = "Language"
        '
        'btnSetDriverLanguage
        '
        Me.btnSetDriverLanguage.Location = New System.Drawing.Point(220, 19)
        Me.btnSetDriverLanguage.Name = "btnSetDriverLanguage"
        Me.btnSetDriverLanguage.Size = New System.Drawing.Size(115, 27)
        Me.btnSetDriverLanguage.TabIndex = 57
        Me.btnSetDriverLanguage.Text = "Set driver language"
        Me.btnSetDriverLanguage.UseVisualStyleBackColor = True
        '
        'cboLanguage
        '
        Me.cboLanguage.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cboLanguage.FormattingEnabled = True
        Me.cboLanguage.Items.AddRange(New Object() {"English", "Romanian"})
        Me.cboLanguage.Location = New System.Drawing.Point(6, 23)
        Me.cboLanguage.Name = "cboLanguage"
        Me.cboLanguage.Size = New System.Drawing.Size(115, 21)
        Me.cboLanguage.TabIndex = 58
        '
        'grpEvents
        '
        Me.grpEvents.Controls.Add(Me.chkActive_OnSecondProgress_Complete)
        Me.grpEvents.Controls.Add(Me.chkActive_OnSecondProgress_Loop)
        Me.grpEvents.Controls.Add(Me.chkActive_OnSecondProgress_Init)
        Me.grpEvents.Controls.Add(Me.chkActive_OnFirstProgress_Complete)
        Me.grpEvents.Controls.Add(Me.chkActive_OnFirstProgress_Loop)
        Me.grpEvents.Controls.Add(Me.chkActive_OnFirstProgress_Init)
        Me.grpEvents.Controls.Add(Me.chkActive_OnError)
        Me.grpEvents.Controls.Add(Me.chkActive_OnStatusChange)
        Me.grpEvents.Controls.Add(Me.chkActive_OnReceiveAnswer)
        Me.grpEvents.Controls.Add(Me.chkActive_OnWait)
        Me.grpEvents.Controls.Add(Me.chkActive_OnSendCommand)
        Me.grpEvents.Controls.Add(Me.chkActive_OnAfterScriptExecute)
        Me.grpEvents.Controls.Add(Me.chkActive_OnScriptRowExecute)
        Me.grpEvents.Controls.Add(Me.chkActive_OnBeforeScriptExecute)
        Me.grpEvents.Controls.Add(Me.btnSetEventsMode)
        Me.grpEvents.Location = New System.Drawing.Point(6, 6)
        Me.grpEvents.Name = "grpEvents"
        Me.grpEvents.Size = New System.Drawing.Size(242, 414)
        Me.grpEvents.TabIndex = 3
        Me.grpEvents.TabStop = False
        Me.grpEvents.Text = "Events"
        '
        'chkActive_OnSecondProgress_Complete
        '
        Me.chkActive_OnSecondProgress_Complete.AutoSize = True
        Me.chkActive_OnSecondProgress_Complete.Location = New System.Drawing.Point(6, 351)
        Me.chkActive_OnSecondProgress_Complete.Name = "chkActive_OnSecondProgress_Complete"
        Me.chkActive_OnSecondProgress_Complete.Size = New System.Drawing.Size(234, 17)
        Me.chkActive_OnSecondProgress_Complete.TabIndex = 14
        Me.chkActive_OnSecondProgress_Complete.Text = "Active event: OnSecondProgress_Complete"
        Me.chkActive_OnSecondProgress_Complete.UseVisualStyleBackColor = True
        '
        'chkActive_OnSecondProgress_Loop
        '
        Me.chkActive_OnSecondProgress_Loop.AutoSize = True
        Me.chkActive_OnSecondProgress_Loop.Location = New System.Drawing.Point(6, 328)
        Me.chkActive_OnSecondProgress_Loop.Name = "chkActive_OnSecondProgress_Loop"
        Me.chkActive_OnSecondProgress_Loop.Size = New System.Drawing.Size(214, 17)
        Me.chkActive_OnSecondProgress_Loop.TabIndex = 13
        Me.chkActive_OnSecondProgress_Loop.Text = "Active event: OnSecondProgress_Loop"
        Me.chkActive_OnSecondProgress_Loop.UseVisualStyleBackColor = True
        '
        'chkActive_OnSecondProgress_Init
        '
        Me.chkActive_OnSecondProgress_Init.AutoSize = True
        Me.chkActive_OnSecondProgress_Init.Location = New System.Drawing.Point(6, 305)
        Me.chkActive_OnSecondProgress_Init.Name = "chkActive_OnSecondProgress_Init"
        Me.chkActive_OnSecondProgress_Init.Size = New System.Drawing.Size(204, 17)
        Me.chkActive_OnSecondProgress_Init.TabIndex = 12
        Me.chkActive_OnSecondProgress_Init.Text = "Active event: OnSecondProgress_Init"
        Me.chkActive_OnSecondProgress_Init.UseVisualStyleBackColor = True
        '
        'chkActive_OnFirstProgress_Complete
        '
        Me.chkActive_OnFirstProgress_Complete.AutoSize = True
        Me.chkActive_OnFirstProgress_Complete.Location = New System.Drawing.Point(6, 282)
        Me.chkActive_OnFirstProgress_Complete.Name = "chkActive_OnFirstProgress_Complete"
        Me.chkActive_OnFirstProgress_Complete.Size = New System.Drawing.Size(216, 17)
        Me.chkActive_OnFirstProgress_Complete.TabIndex = 11
        Me.chkActive_OnFirstProgress_Complete.Text = "Active event: OnFirstProgress_Complete"
        Me.chkActive_OnFirstProgress_Complete.UseVisualStyleBackColor = True
        '
        'chkActive_OnFirstProgress_Loop
        '
        Me.chkActive_OnFirstProgress_Loop.AutoSize = True
        Me.chkActive_OnFirstProgress_Loop.Location = New System.Drawing.Point(6, 259)
        Me.chkActive_OnFirstProgress_Loop.Name = "chkActive_OnFirstProgress_Loop"
        Me.chkActive_OnFirstProgress_Loop.Size = New System.Drawing.Size(196, 17)
        Me.chkActive_OnFirstProgress_Loop.TabIndex = 10
        Me.chkActive_OnFirstProgress_Loop.Text = "Active event: OnFirstProgress_Loop"
        Me.chkActive_OnFirstProgress_Loop.UseVisualStyleBackColor = True
        '
        'chkActive_OnFirstProgress_Init
        '
        Me.chkActive_OnFirstProgress_Init.AutoSize = True
        Me.chkActive_OnFirstProgress_Init.Location = New System.Drawing.Point(6, 236)
        Me.chkActive_OnFirstProgress_Init.Name = "chkActive_OnFirstProgress_Init"
        Me.chkActive_OnFirstProgress_Init.Size = New System.Drawing.Size(186, 17)
        Me.chkActive_OnFirstProgress_Init.TabIndex = 9
        Me.chkActive_OnFirstProgress_Init.Text = "Active event: OnFirstProgress_Init"
        Me.chkActive_OnFirstProgress_Init.UseVisualStyleBackColor = True
        '
        'chkActive_OnError
        '
        Me.chkActive_OnError.AutoSize = True
        Me.chkActive_OnError.Location = New System.Drawing.Point(6, 213)
        Me.chkActive_OnError.Name = "chkActive_OnError"
        Me.chkActive_OnError.Size = New System.Drawing.Size(128, 17)
        Me.chkActive_OnError.TabIndex = 8
        Me.chkActive_OnError.Text = "Active event: OnError"
        Me.chkActive_OnError.UseVisualStyleBackColor = True
        '
        'chkActive_OnStatusChange
        '
        Me.chkActive_OnStatusChange.AutoSize = True
        Me.chkActive_OnStatusChange.Location = New System.Drawing.Point(6, 190)
        Me.chkActive_OnStatusChange.Name = "chkActive_OnStatusChange"
        Me.chkActive_OnStatusChange.Size = New System.Drawing.Size(173, 17)
        Me.chkActive_OnStatusChange.TabIndex = 7
        Me.chkActive_OnStatusChange.Text = "Active event: OnStatusChange"
        Me.chkActive_OnStatusChange.UseVisualStyleBackColor = True
        '
        'chkActive_OnReceiveAnswer
        '
        Me.chkActive_OnReceiveAnswer.AutoSize = True
        Me.chkActive_OnReceiveAnswer.Location = New System.Drawing.Point(6, 167)
        Me.chkActive_OnReceiveAnswer.Name = "chkActive_OnReceiveAnswer"
        Me.chkActive_OnReceiveAnswer.Size = New System.Drawing.Size(181, 17)
        Me.chkActive_OnReceiveAnswer.TabIndex = 6
        Me.chkActive_OnReceiveAnswer.Text = "Active event: OnReceiveAnswer"
        Me.chkActive_OnReceiveAnswer.UseVisualStyleBackColor = True
        '
        'chkActive_OnWait
        '
        Me.chkActive_OnWait.AutoSize = True
        Me.chkActive_OnWait.Location = New System.Drawing.Point(6, 144)
        Me.chkActive_OnWait.Name = "chkActive_OnWait"
        Me.chkActive_OnWait.Size = New System.Drawing.Size(128, 17)
        Me.chkActive_OnWait.TabIndex = 5
        Me.chkActive_OnWait.Text = "Active event: OnWait"
        Me.chkActive_OnWait.UseVisualStyleBackColor = True
        '
        'chkActive_OnSendCommand
        '
        Me.chkActive_OnSendCommand.AutoSize = True
        Me.chkActive_OnSendCommand.Location = New System.Drawing.Point(6, 121)
        Me.chkActive_OnSendCommand.Name = "chkActive_OnSendCommand"
        Me.chkActive_OnSendCommand.Size = New System.Drawing.Size(178, 17)
        Me.chkActive_OnSendCommand.TabIndex = 4
        Me.chkActive_OnSendCommand.Text = "Active event: OnSendCommand"
        Me.chkActive_OnSendCommand.UseVisualStyleBackColor = True
        '
        'chkActive_OnAfterScriptExecute
        '
        Me.chkActive_OnAfterScriptExecute.AutoSize = True
        Me.chkActive_OnAfterScriptExecute.Location = New System.Drawing.Point(6, 98)
        Me.chkActive_OnAfterScriptExecute.Name = "chkActive_OnAfterScriptExecute"
        Me.chkActive_OnAfterScriptExecute.Size = New System.Drawing.Size(194, 17)
        Me.chkActive_OnAfterScriptExecute.TabIndex = 3
        Me.chkActive_OnAfterScriptExecute.Text = "Active event: OnAfterScriptExecute"
        Me.chkActive_OnAfterScriptExecute.UseVisualStyleBackColor = True
        '
        'chkActive_OnScriptRowExecute
        '
        Me.chkActive_OnScriptRowExecute.AutoSize = True
        Me.chkActive_OnScriptRowExecute.Location = New System.Drawing.Point(6, 75)
        Me.chkActive_OnScriptRowExecute.Name = "chkActive_OnScriptRowExecute"
        Me.chkActive_OnScriptRowExecute.Size = New System.Drawing.Size(194, 17)
        Me.chkActive_OnScriptRowExecute.TabIndex = 2
        Me.chkActive_OnScriptRowExecute.Text = "Active event: OnScriptRowExecute"
        Me.chkActive_OnScriptRowExecute.UseVisualStyleBackColor = True
        '
        'chkActive_OnBeforeScriptExecute
        '
        Me.chkActive_OnBeforeScriptExecute.AutoSize = True
        Me.chkActive_OnBeforeScriptExecute.Location = New System.Drawing.Point(6, 52)
        Me.chkActive_OnBeforeScriptExecute.Name = "chkActive_OnBeforeScriptExecute"
        Me.chkActive_OnBeforeScriptExecute.Size = New System.Drawing.Size(203, 17)
        Me.chkActive_OnBeforeScriptExecute.TabIndex = 1
        Me.chkActive_OnBeforeScriptExecute.Text = "Active event: OnBeforeScriptExecute"
        Me.chkActive_OnBeforeScriptExecute.UseVisualStyleBackColor = True
        '
        'btnSetEventsMode
        '
        Me.btnSetEventsMode.Location = New System.Drawing.Point(6, 19)
        Me.btnSetEventsMode.Name = "btnSetEventsMode"
        Me.btnSetEventsMode.Size = New System.Drawing.Size(115, 27)
        Me.btnSetEventsMode.TabIndex = 0
        Me.btnSetEventsMode.Text = "Set events mode"
        Me.btnSetEventsMode.UseVisualStyleBackColor = True
        '
        'tpSystemInfo
        '
        Me.tpSystemInfo.Controls.Add(Me.lstSystemInfo)
        Me.tpSystemInfo.Controls.Add(Me.btnGetSystemInfo)
        Me.tpSystemInfo.Location = New System.Drawing.Point(4, 22)
        Me.tpSystemInfo.Name = "tpSystemInfo"
        Me.tpSystemInfo.Padding = New System.Windows.Forms.Padding(3)
        Me.tpSystemInfo.Size = New System.Drawing.Size(959, 674)
        Me.tpSystemInfo.TabIndex = 3
        Me.tpSystemInfo.Text = "COMServer - system info"
        Me.tpSystemInfo.UseVisualStyleBackColor = True
        '
        'lstSystemInfo
        '
        Me.lstSystemInfo.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.lstSystemInfo.Font = New System.Drawing.Font("Courier New", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.lstSystemInfo.FormattingEnabled = True
        Me.lstSystemInfo.HorizontalScrollbar = True
        Me.lstSystemInfo.ItemHeight = 15
        Me.lstSystemInfo.Location = New System.Drawing.Point(4, 36)
        Me.lstSystemInfo.Name = "lstSystemInfo"
        Me.lstSystemInfo.ScrollAlwaysVisible = True
        Me.lstSystemInfo.Size = New System.Drawing.Size(595, 454)
        Me.lstSystemInfo.TabIndex = 3
        '
        'btnGetSystemInfo
        '
        Me.btnGetSystemInfo.Location = New System.Drawing.Point(4, 6)
        Me.btnGetSystemInfo.Name = "btnGetSystemInfo"
        Me.btnGetSystemInfo.Size = New System.Drawing.Size(101, 23)
        Me.btnGetSystemInfo.TabIndex = 2
        Me.btnGetSystemInfo.Text = "Get system info"
        Me.btnGetSystemInfo.UseVisualStyleBackColor = True
        '
        'tpCustomCmds
        '
        Me.tpCustomCmds.Controls.Add(Me.btnGetLastAnswerList)
        Me.tpCustomCmds.Controls.Add(Me.lstScriptOutput)
        Me.tpCustomCmds.Controls.Add(Me.lblScriptOutput)
        Me.tpCustomCmds.Controls.Add(Me.btnExecuteCmd)
        Me.tpCustomCmds.Controls.Add(Me.txtOutputValue)
        Me.tpCustomCmds.Controls.Add(Me.txtInputValue)
        Me.tpCustomCmds.Controls.Add(Me.lblOutputValue)
        Me.tpCustomCmds.Controls.Add(Me.lblInputValue)
        Me.tpCustomCmds.Controls.Add(Me.txtCmd)
        Me.tpCustomCmds.Controls.Add(Me.lblCmd)
        Me.tpCustomCmds.Location = New System.Drawing.Point(4, 22)
        Me.tpCustomCmds.Name = "tpCustomCmds"
        Me.tpCustomCmds.Padding = New System.Windows.Forms.Padding(3)
        Me.tpCustomCmds.Size = New System.Drawing.Size(959, 674)
        Me.tpCustomCmds.TabIndex = 4
        Me.tpCustomCmds.Text = "Custom commands"
        Me.tpCustomCmds.UseVisualStyleBackColor = True
        '
        'btnGetLastAnswerList
        '
        Me.btnGetLastAnswerList.Location = New System.Drawing.Point(137, 12)
        Me.btnGetLastAnswerList.Name = "btnGetLastAnswerList"
        Me.btnGetLastAnswerList.Size = New System.Drawing.Size(108, 23)
        Me.btnGetLastAnswerList.TabIndex = 26
        Me.btnGetLastAnswerList.Text = "Get Last Answer List"
        Me.btnGetLastAnswerList.UseVisualStyleBackColor = True
        '
        'lstScriptOutput
        '
        Me.lstScriptOutput.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.lstScriptOutput.FormattingEnabled = True
        Me.lstScriptOutput.HorizontalScrollbar = True
        Me.lstScriptOutput.Location = New System.Drawing.Point(77, 107)
        Me.lstScriptOutput.Name = "lstScriptOutput"
        Me.lstScriptOutput.ScrollAlwaysVisible = True
        Me.lstScriptOutput.Size = New System.Drawing.Size(509, 381)
        Me.lstScriptOutput.TabIndex = 25
        '
        'lblScriptOutput
        '
        Me.lblScriptOutput.AutoSize = True
        Me.lblScriptOutput.Location = New System.Drawing.Point(6, 107)
        Me.lblScriptOutput.Name = "lblScriptOutput"
        Me.lblScriptOutput.Size = New System.Drawing.Size(60, 13)
        Me.lblScriptOutput.TabIndex = 24
        Me.lblScriptOutput.Text = "Answer list:"
        '
        'btnExecuteCmd
        '
        Me.btnExecuteCmd.Location = New System.Drawing.Point(251, 12)
        Me.btnExecuteCmd.Name = "btnExecuteCmd"
        Me.btnExecuteCmd.Size = New System.Drawing.Size(108, 23)
        Me.btnExecuteCmd.TabIndex = 23
        Me.btnExecuteCmd.Text = "Execute command"
        Me.btnExecuteCmd.UseVisualStyleBackColor = True
        '
        'txtOutputValue
        '
        Me.txtOutputValue.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.txtOutputValue.Location = New System.Drawing.Point(77, 68)
        Me.txtOutputValue.Name = "txtOutputValue"
        Me.txtOutputValue.Size = New System.Drawing.Size(509, 20)
        Me.txtOutputValue.TabIndex = 22
        '
        'txtInputValue
        '
        Me.txtInputValue.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.txtInputValue.Location = New System.Drawing.Point(77, 41)
        Me.txtInputValue.Name = "txtInputValue"
        Me.txtInputValue.Size = New System.Drawing.Size(509, 20)
        Me.txtInputValue.TabIndex = 21
        Me.txtInputValue.Text = "1\t"
        '
        'lblOutputValue
        '
        Me.lblOutputValue.AutoSize = True
        Me.lblOutputValue.Location = New System.Drawing.Point(6, 71)
        Me.lblOutputValue.Name = "lblOutputValue"
        Me.lblOutputValue.Size = New System.Drawing.Size(71, 13)
        Me.lblOutputValue.TabIndex = 20
        Me.lblOutputValue.Text = "Output value:"
        '
        'lblInputValue
        '
        Me.lblInputValue.AutoSize = True
        Me.lblInputValue.Location = New System.Drawing.Point(8, 44)
        Me.lblInputValue.Name = "lblInputValue"
        Me.lblInputValue.Size = New System.Drawing.Size(63, 13)
        Me.lblInputValue.TabIndex = 19
        Me.lblInputValue.Text = "Input value:"
        '
        'txtCmd
        '
        Me.txtCmd.Location = New System.Drawing.Point(77, 15)
        Me.txtCmd.MaxLength = 3
        Me.txtCmd.Name = "txtCmd"
        Me.txtCmd.Size = New System.Drawing.Size(54, 20)
        Me.txtCmd.TabIndex = 18
        Me.txtCmd.Text = "90"
        '
        'lblCmd
        '
        Me.lblCmd.AutoSize = True
        Me.lblCmd.Location = New System.Drawing.Point(8, 18)
        Me.lblCmd.Name = "lblCmd"
        Me.lblCmd.Size = New System.Drawing.Size(57, 13)
        Me.lblCmd.TabIndex = 17
        Me.lblCmd.Text = "Command:"
        '
        'tpCustomScript
        '
        Me.tpCustomScript.Controls.Add(Me.pnlCustomScript)
        Me.tpCustomScript.Controls.Add(Me.tcScriptContainer)
        Me.tpCustomScript.Location = New System.Drawing.Point(4, 22)
        Me.tpCustomScript.Name = "tpCustomScript"
        Me.tpCustomScript.Padding = New System.Windows.Forms.Padding(3)
        Me.tpCustomScript.Size = New System.Drawing.Size(959, 674)
        Me.tpCustomScript.TabIndex = 5
        Me.tpCustomScript.Text = "Custom script"
        Me.tpCustomScript.UseVisualStyleBackColor = True
        '
        'pnlCustomScript
        '
        Me.pnlCustomScript.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.pnlCustomScript.Controls.Add(Me.chkShowLastOutput)
        Me.pnlCustomScript.Controls.Add(Me.cboPageChoice)
        Me.pnlCustomScript.Controls.Add(Me.btnCancel)
        Me.pnlCustomScript.Controls.Add(Me.btnDeleteOutput)
        Me.pnlCustomScript.Controls.Add(Me.btnDeleteScript)
        Me.pnlCustomScript.Controls.Add(Me.btnExecuteSelected)
        Me.pnlCustomScript.Controls.Add(Me.btnExecuteSimpleScript)
        Me.pnlCustomScript.Controls.Add(Me.btnLoadScriptFromFile)
        Me.pnlCustomScript.Location = New System.Drawing.Point(6, 422)
        Me.pnlCustomScript.Name = "pnlCustomScript"
        Me.pnlCustomScript.Size = New System.Drawing.Size(593, 69)
        Me.pnlCustomScript.TabIndex = 2
        '
        'chkShowLastOutput
        '
        Me.chkShowLastOutput.AutoSize = True
        Me.chkShowLastOutput.Location = New System.Drawing.Point(339, 13)
        Me.chkShowLastOutput.Name = "chkShowLastOutput"
        Me.chkShowLastOutput.Size = New System.Drawing.Size(223, 17)
        Me.chkShowLastOutput.TabIndex = 7
        Me.chkShowLastOutput.Text = "Show only last executed command output"
        Me.chkShowLastOutput.UseVisualStyleBackColor = True
        '
        'cboPageChoice
        '
        Me.cboPageChoice.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cboPageChoice.FormattingEnabled = True
        Me.cboPageChoice.Items.AddRange(New Object() {"Before execute - go to ""Human log""", "Before execute - go to ""Hex log""", "Before execute - go to ""Simple script"""})
        Me.cboPageChoice.Location = New System.Drawing.Point(4, 38)
        Me.cboPageChoice.Name = "cboPageChoice"
        Me.cboPageChoice.Size = New System.Drawing.Size(217, 21)
        Me.cboPageChoice.TabIndex = 6
        '
        'btnCancel
        '
        Me.btnCancel.Enabled = False
        Me.btnCancel.Location = New System.Drawing.Point(227, 38)
        Me.btnCancel.Name = "btnCancel"
        Me.btnCancel.Size = New System.Drawing.Size(106, 23)
        Me.btnCancel.TabIndex = 5
        Me.btnCancel.Text = "Cancel"
        Me.btnCancel.UseVisualStyleBackColor = True
        '
        'btnDeleteOutput
        '
        Me.btnDeleteOutput.Location = New System.Drawing.Point(339, 38)
        Me.btnDeleteOutput.Name = "btnDeleteOutput"
        Me.btnDeleteOutput.Size = New System.Drawing.Size(106, 23)
        Me.btnDeleteOutput.TabIndex = 4
        Me.btnDeleteOutput.Text = "Delete output"
        Me.btnDeleteOutput.UseVisualStyleBackColor = True
        '
        'btnDeleteScript
        '
        Me.btnDeleteScript.Location = New System.Drawing.Point(451, 38)
        Me.btnDeleteScript.Name = "btnDeleteScript"
        Me.btnDeleteScript.Size = New System.Drawing.Size(106, 23)
        Me.btnDeleteScript.TabIndex = 3
        Me.btnDeleteScript.Text = "Delete script"
        Me.btnDeleteScript.UseVisualStyleBackColor = True
        '
        'btnExecuteSelected
        '
        Me.btnExecuteSelected.Location = New System.Drawing.Point(227, 9)
        Me.btnExecuteSelected.Name = "btnExecuteSelected"
        Me.btnExecuteSelected.Size = New System.Drawing.Size(106, 23)
        Me.btnExecuteSelected.TabIndex = 2
        Me.btnExecuteSelected.Text = "Execute selected"
        Me.btnExecuteSelected.UseVisualStyleBackColor = True
        '
        'btnExecuteSimpleScript
        '
        Me.btnExecuteSimpleScript.Location = New System.Drawing.Point(115, 9)
        Me.btnExecuteSimpleScript.Name = "btnExecuteSimpleScript"
        Me.btnExecuteSimpleScript.Size = New System.Drawing.Size(106, 23)
        Me.btnExecuteSimpleScript.TabIndex = 1
        Me.btnExecuteSimpleScript.Text = "Execute script"
        Me.btnExecuteSimpleScript.UseVisualStyleBackColor = True
        '
        'btnLoadScriptFromFile
        '
        Me.btnLoadScriptFromFile.Location = New System.Drawing.Point(3, 9)
        Me.btnLoadScriptFromFile.Name = "btnLoadScriptFromFile"
        Me.btnLoadScriptFromFile.Size = New System.Drawing.Size(106, 23)
        Me.btnLoadScriptFromFile.TabIndex = 0
        Me.btnLoadScriptFromFile.Text = "Load script from file"
        Me.btnLoadScriptFromFile.UseVisualStyleBackColor = True
        '
        'tcScriptContainer
        '
        Me.tcScriptContainer.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.tcScriptContainer.Controls.Add(Me.tpSimpleScript)
        Me.tcScriptContainer.Controls.Add(Me.tpHumanLog)
        Me.tcScriptContainer.Controls.Add(Me.tpHEX)
        Me.tcScriptContainer.Location = New System.Drawing.Point(6, 6)
        Me.tcScriptContainer.Name = "tcScriptContainer"
        Me.tcScriptContainer.SelectedIndex = 0
        Me.tcScriptContainer.Size = New System.Drawing.Size(593, 414)
        Me.tcScriptContainer.TabIndex = 1
        '
        'tpSimpleScript
        '
        Me.tpSimpleScript.Controls.Add(Me.rtfSimpleScript)
        Me.tpSimpleScript.Location = New System.Drawing.Point(4, 22)
        Me.tpSimpleScript.Name = "tpSimpleScript"
        Me.tpSimpleScript.Padding = New System.Windows.Forms.Padding(3)
        Me.tpSimpleScript.Size = New System.Drawing.Size(585, 388)
        Me.tpSimpleScript.TabIndex = 0
        Me.tpSimpleScript.Text = "Simple script"
        Me.tpSimpleScript.UseVisualStyleBackColor = True
        '
        'rtfSimpleScript
        '
        Me.rtfSimpleScript.Dock = System.Windows.Forms.DockStyle.Fill
        Me.rtfSimpleScript.Font = New System.Drawing.Font("Courier New", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.rtfSimpleScript.HideSelection = False
        Me.rtfSimpleScript.Location = New System.Drawing.Point(3, 3)
        Me.rtfSimpleScript.Name = "rtfSimpleScript"
        Me.rtfSimpleScript.Size = New System.Drawing.Size(579, 382)
        Me.rtfSimpleScript.TabIndex = 0
        Me.rtfSimpleScript.Text = "48,1\t0001\t1\t\t\t" & Global.Microsoft.VisualBasic.ChrW(10) & "49,Oranges\t2\t0.01\t2.543\t2\t22.25\t0\tkg\t" & Global.Microsoft.VisualBasic.ChrW(10) & "53,0\t\t" & Global.Microsoft.VisualBasic.ChrW(10) & "56"
        Me.rtfSimpleScript.WordWrap = False
        '
        'tpHumanLog
        '
        Me.tpHumanLog.Controls.Add(Me.rtfHumanLog)
        Me.tpHumanLog.Location = New System.Drawing.Point(4, 22)
        Me.tpHumanLog.Name = "tpHumanLog"
        Me.tpHumanLog.Padding = New System.Windows.Forms.Padding(3)
        Me.tpHumanLog.Size = New System.Drawing.Size(585, 388)
        Me.tpHumanLog.TabIndex = 1
        Me.tpHumanLog.Text = "Human oriented log"
        Me.tpHumanLog.UseVisualStyleBackColor = True
        '
        'rtfHumanLog
        '
        Me.rtfHumanLog.Dock = System.Windows.Forms.DockStyle.Fill
        Me.rtfHumanLog.Font = New System.Drawing.Font("Courier New", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.rtfHumanLog.Location = New System.Drawing.Point(3, 3)
        Me.rtfHumanLog.Name = "rtfHumanLog"
        Me.rtfHumanLog.Size = New System.Drawing.Size(579, 382)
        Me.rtfHumanLog.TabIndex = 0
        Me.rtfHumanLog.Text = ""
        Me.rtfHumanLog.WordWrap = False
        '
        'tpHEX
        '
        Me.tpHEX.Controls.Add(Me.rtfHEXLog)
        Me.tpHEX.Location = New System.Drawing.Point(4, 22)
        Me.tpHEX.Name = "tpHEX"
        Me.tpHEX.Padding = New System.Windows.Forms.Padding(3)
        Me.tpHEX.Size = New System.Drawing.Size(585, 388)
        Me.tpHEX.TabIndex = 2
        Me.tpHEX.Text = "HEX log"
        Me.tpHEX.UseVisualStyleBackColor = True
        '
        'rtfHEXLog
        '
        Me.rtfHEXLog.Dock = System.Windows.Forms.DockStyle.Fill
        Me.rtfHEXLog.Font = New System.Drawing.Font("Courier New", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.rtfHEXLog.Location = New System.Drawing.Point(3, 3)
        Me.rtfHEXLog.Name = "rtfHEXLog"
        Me.rtfHEXLog.Size = New System.Drawing.Size(579, 382)
        Me.rtfHEXLog.TabIndex = 0
        Me.rtfHEXLog.Text = ""
        Me.rtfHEXLog.WordWrap = False
        '
        'tpANAF
        '
        Me.tpANAF.Controls.Add(Me.txtEndZNum)
        Me.tpANAF.Controls.Add(Me.txtStartZNum)
        Me.tpANAF.Controls.Add(Me.dtpEndTime)
        Me.tpANAF.Controls.Add(Me.dtpEndDate)
        Me.tpANAF.Controls.Add(Me.dtpStartTime)
        Me.tpANAF.Controls.Add(Me.dtpStartDate)
        Me.tpANAF.Controls.Add(Me.chkDST)
        Me.tpANAF.Controls.Add(Me.cboRangeType)
        Me.tpANAF.Controls.Add(Me.btnCancelDownload)
        Me.tpANAF.Controls.Add(Me.btnUploadLogo)
        Me.tpANAF.Controls.Add(Me.btnDownload)
        Me.tpANAF.Controls.Add(Me.chkOpenFolderAfterDwnl)
        Me.tpANAF.Controls.Add(Me.lblEndZNum)
        Me.tpANAF.Controls.Add(Me.lblStartZNum)
        Me.tpANAF.Controls.Add(Me.lblEndDate)
        Me.tpANAF.Controls.Add(Me.lblStartDate)
        Me.tpANAF.Controls.Add(Me.lblRangeType)
        Me.tpANAF.Location = New System.Drawing.Point(4, 22)
        Me.tpANAF.Name = "tpANAF"
        Me.tpANAF.Padding = New System.Windows.Forms.Padding(3)
        Me.tpANAF.Size = New System.Drawing.Size(959, 674)
        Me.tpANAF.TabIndex = 6
        Me.tpANAF.Text = "Download and Upload"
        Me.tpANAF.UseVisualStyleBackColor = True
        '
        'txtEndZNum
        '
        Me.txtEndZNum.Location = New System.Drawing.Point(77, 145)
        Me.txtEndZNum.MaxLength = 4
        Me.txtEndZNum.Name = "txtEndZNum"
        Me.txtEndZNum.Size = New System.Drawing.Size(121, 20)
        Me.txtEndZNum.TabIndex = 33
        Me.txtEndZNum.Text = "2"
        '
        'txtStartZNum
        '
        Me.txtStartZNum.Location = New System.Drawing.Point(77, 119)
        Me.txtStartZNum.MaxLength = 4
        Me.txtStartZNum.Name = "txtStartZNum"
        Me.txtStartZNum.Size = New System.Drawing.Size(121, 20)
        Me.txtStartZNum.TabIndex = 32
        Me.txtStartZNum.Text = "1"
        '
        'dtpEndTime
        '
        Me.dtpEndTime.Format = System.Windows.Forms.DateTimePickerFormat.Time
        Me.dtpEndTime.Location = New System.Drawing.Point(204, 67)
        Me.dtpEndTime.Name = "dtpEndTime"
        Me.dtpEndTime.ShowUpDown = True
        Me.dtpEndTime.Size = New System.Drawing.Size(74, 20)
        Me.dtpEndTime.TabIndex = 31
        '
        'dtpEndDate
        '
        Me.dtpEndDate.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.dtpEndDate.Location = New System.Drawing.Point(77, 67)
        Me.dtpEndDate.Name = "dtpEndDate"
        Me.dtpEndDate.Size = New System.Drawing.Size(121, 20)
        Me.dtpEndDate.TabIndex = 30
        '
        'dtpStartTime
        '
        Me.dtpStartTime.Format = System.Windows.Forms.DateTimePickerFormat.Time
        Me.dtpStartTime.Location = New System.Drawing.Point(204, 41)
        Me.dtpStartTime.Name = "dtpStartTime"
        Me.dtpStartTime.ShowUpDown = True
        Me.dtpStartTime.Size = New System.Drawing.Size(74, 20)
        Me.dtpStartTime.TabIndex = 29
        '
        'dtpStartDate
        '
        Me.dtpStartDate.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.dtpStartDate.Location = New System.Drawing.Point(77, 41)
        Me.dtpStartDate.Name = "dtpStartDate"
        Me.dtpStartDate.Size = New System.Drawing.Size(121, 20)
        Me.dtpStartDate.TabIndex = 28
        '
        'chkDST
        '
        Me.chkDST.AutoSize = True
        Me.chkDST.Location = New System.Drawing.Point(77, 96)
        Me.chkDST.Name = "chkDST"
        Me.chkDST.Size = New System.Drawing.Size(126, 17)
        Me.chkDST.TabIndex = 27
        Me.chkDST.Text = "Daylight Saving Time"
        Me.chkDST.UseVisualStyleBackColor = True
        '
        'cboRangeType
        '
        Me.cboRangeType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cboRangeType.FormattingEnabled = True
        Me.cboRangeType.Items.AddRange(New Object() {"Date and time", "Z reports"})
        Me.cboRangeType.Location = New System.Drawing.Point(77, 14)
        Me.cboRangeType.Name = "cboRangeType"
        Me.cboRangeType.Size = New System.Drawing.Size(121, 21)
        Me.cboRangeType.TabIndex = 26
        '
        'btnCancelDownload
        '
        Me.btnCancelDownload.Enabled = False
        Me.btnCancelDownload.Location = New System.Drawing.Point(77, 263)
        Me.btnCancelDownload.Name = "btnCancelDownload"
        Me.btnCancelDownload.Size = New System.Drawing.Size(121, 23)
        Me.btnCancelDownload.TabIndex = 25
        Me.btnCancelDownload.Text = "Cancel"
        Me.btnCancelDownload.UseVisualStyleBackColor = True
        '
        'btnUploadLogo
        '
        Me.btnUploadLogo.Location = New System.Drawing.Point(77, 234)
        Me.btnUploadLogo.Name = "btnUploadLogo"
        Me.btnUploadLogo.Size = New System.Drawing.Size(121, 23)
        Me.btnUploadLogo.TabIndex = 24
        Me.btnUploadLogo.Text = "Upload logo"
        Me.btnUploadLogo.UseVisualStyleBackColor = True
        '
        'btnDownload
        '
        Me.btnDownload.Location = New System.Drawing.Point(77, 205)
        Me.btnDownload.Name = "btnDownload"
        Me.btnDownload.Size = New System.Drawing.Size(121, 23)
        Me.btnDownload.TabIndex = 23
        Me.btnDownload.Text = "Download - ANAF files"
        Me.btnDownload.UseVisualStyleBackColor = True
        '
        'chkOpenFolderAfterDwnl
        '
        Me.chkOpenFolderAfterDwnl.AutoSize = True
        Me.chkOpenFolderAfterDwnl.Checked = True
        Me.chkOpenFolderAfterDwnl.CheckState = System.Windows.Forms.CheckState.Checked
        Me.chkOpenFolderAfterDwnl.Location = New System.Drawing.Point(77, 171)
        Me.chkOpenFolderAfterDwnl.Name = "chkOpenFolderAfterDwnl"
        Me.chkOpenFolderAfterDwnl.Size = New System.Drawing.Size(154, 17)
        Me.chkOpenFolderAfterDwnl.TabIndex = 22
        Me.chkOpenFolderAfterDwnl.Text = "Open folder after download"
        Me.chkOpenFolderAfterDwnl.UseVisualStyleBackColor = True
        '
        'lblEndZNum
        '
        Me.lblEndZNum.AutoSize = True
        Me.lblEndZNum.Location = New System.Drawing.Point(48, 148)
        Me.lblEndZNum.Name = "lblEndZNum"
        Me.lblEndZNum.Size = New System.Drawing.Size(23, 13)
        Me.lblEndZNum.TabIndex = 21
        Me.lblEndZNum.Text = "To:"
        '
        'lblStartZNum
        '
        Me.lblStartZNum.AutoSize = True
        Me.lblStartZNum.Location = New System.Drawing.Point(38, 122)
        Me.lblStartZNum.Name = "lblStartZNum"
        Me.lblStartZNum.Size = New System.Drawing.Size(33, 13)
        Me.lblStartZNum.TabIndex = 20
        Me.lblStartZNum.Text = "From:"
        '
        'lblEndDate
        '
        Me.lblEndDate.AutoSize = True
        Me.lblEndDate.Location = New System.Drawing.Point(48, 69)
        Me.lblEndDate.Name = "lblEndDate"
        Me.lblEndDate.Size = New System.Drawing.Size(23, 13)
        Me.lblEndDate.TabIndex = 19
        Me.lblEndDate.Text = "To:"
        '
        'lblStartDate
        '
        Me.lblStartDate.AutoSize = True
        Me.lblStartDate.Location = New System.Drawing.Point(38, 47)
        Me.lblStartDate.Name = "lblStartDate"
        Me.lblStartDate.Size = New System.Drawing.Size(33, 13)
        Me.lblStartDate.TabIndex = 18
        Me.lblStartDate.Text = "From:"
        '
        'lblRangeType
        '
        Me.lblRangeType.AutoSize = True
        Me.lblRangeType.Location = New System.Drawing.Point(6, 18)
        Me.lblRangeType.Name = "lblRangeType"
        Me.lblRangeType.Size = New System.Drawing.Size(65, 13)
        Me.lblRangeType.TabIndex = 17
        Me.lblRangeType.Text = "Range type:"
        '
        'tpGetCommandList
        '
        Me.tpGetCommandList.Controls.Add(Me.cboHumanNames)
        Me.tpGetCommandList.Controls.Add(Me.chkSorted)
        Me.tpGetCommandList.Controls.Add(Me.cboCodeType)
        Me.tpGetCommandList.Controls.Add(Me.btnGenerateCode)
        Me.tpGetCommandList.Controls.Add(Me.btnGetCommandInfo)
        Me.tpGetCommandList.Controls.Add(Me.cboCommands)
        Me.tpGetCommandList.Controls.Add(Me.txtResult)
        Me.tpGetCommandList.Controls.Add(Me.btnGetCommandList)
        Me.tpGetCommandList.Location = New System.Drawing.Point(4, 22)
        Me.tpGetCommandList.Name = "tpGetCommandList"
        Me.tpGetCommandList.Padding = New System.Windows.Forms.Padding(3)
        Me.tpGetCommandList.Size = New System.Drawing.Size(959, 674)
        Me.tpGetCommandList.TabIndex = 7
        Me.tpGetCommandList.Text = "Get Command List"
        Me.tpGetCommandList.UseVisualStyleBackColor = True
        '
        'cboHumanNames
        '
        Me.cboHumanNames.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cboHumanNames.FormattingEnabled = True
        Me.cboHumanNames.Items.AddRange(New Object() {"Human name (0)", "Human name (1)", "Human name (2)"})
        Me.cboHumanNames.Location = New System.Drawing.Point(232, 8)
        Me.cboHumanNames.Name = "cboHumanNames"
        Me.cboHumanNames.Size = New System.Drawing.Size(217, 21)
        Me.cboHumanNames.TabIndex = 15
        '
        'chkSorted
        '
        Me.chkSorted.AutoSize = True
        Me.chkSorted.Location = New System.Drawing.Point(169, 10)
        Me.chkSorted.Name = "chkSorted"
        Me.chkSorted.Size = New System.Drawing.Size(57, 17)
        Me.chkSorted.TabIndex = 14
        Me.chkSorted.Text = "Sorted"
        Me.chkSorted.UseVisualStyleBackColor = True
        '
        'cboCodeType
        '
        Me.cboCodeType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cboCodeType.FormattingEnabled = True
        Me.cboCodeType.Items.AddRange(New Object() {"C#", "Pascal"})
        Me.cboCodeType.Location = New System.Drawing.Point(169, 62)
        Me.cboCodeType.Name = "cboCodeType"
        Me.cboCodeType.Size = New System.Drawing.Size(280, 21)
        Me.cboCodeType.TabIndex = 13
        '
        'btnGenerateCode
        '
        Me.btnGenerateCode.Location = New System.Drawing.Point(455, 62)
        Me.btnGenerateCode.Name = "btnGenerateCode"
        Me.btnGenerateCode.Size = New System.Drawing.Size(148, 23)
        Me.btnGenerateCode.TabIndex = 12
        Me.btnGenerateCode.Text = "Generate code"
        Me.btnGenerateCode.UseVisualStyleBackColor = True
        '
        'btnGetCommandInfo
        '
        Me.btnGetCommandInfo.Location = New System.Drawing.Point(455, 33)
        Me.btnGetCommandInfo.Name = "btnGetCommandInfo"
        Me.btnGetCommandInfo.Size = New System.Drawing.Size(148, 23)
        Me.btnGetCommandInfo.TabIndex = 11
        Me.btnGetCommandInfo.Text = "Get Command Info"
        Me.btnGetCommandInfo.UseVisualStyleBackColor = True
        '
        'cboCommands
        '
        Me.cboCommands.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cboCommands.FormattingEnabled = True
        Me.cboCommands.Location = New System.Drawing.Point(169, 35)
        Me.cboCommands.Name = "cboCommands"
        Me.cboCommands.Size = New System.Drawing.Size(280, 21)
        Me.cboCommands.TabIndex = 10
        '
        'txtResult
        '
        Me.txtResult.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.txtResult.Font = New System.Drawing.Font("Courier New", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        Me.txtResult.Location = New System.Drawing.Point(6, 91)
        Me.txtResult.Multiline = True
        Me.txtResult.Name = "txtResult"
        Me.txtResult.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.txtResult.Size = New System.Drawing.Size(594, 390)
        Me.txtResult.TabIndex = 9
        '
        'btnGetCommandList
        '
        Me.btnGetCommandList.Location = New System.Drawing.Point(5, 6)
        Me.btnGetCommandList.Name = "btnGetCommandList"
        Me.btnGetCommandList.Size = New System.Drawing.Size(148, 23)
        Me.btnGetCommandList.TabIndex = 8
        Me.btnGetCommandList.Text = "Get Command List"
        Me.btnGetCommandList.UseVisualStyleBackColor = True
        '
        'pnlStatusBytes
        '
        Me.pnlStatusBytes.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.pnlStatusBytes.AutoScroll = True
        Me.pnlStatusBytes.Controls.Add(Me.grbx_StatusByte_7)
        Me.pnlStatusBytes.Controls.Add(Me.grbx_StatusByte_6)
        Me.pnlStatusBytes.Controls.Add(Me.grbx_StatusByte_5)
        Me.pnlStatusBytes.Controls.Add(Me.grbx_StatusByte_4)
        Me.pnlStatusBytes.Controls.Add(Me.grbx_StatusByte_3)
        Me.pnlStatusBytes.Controls.Add(Me.grbx_StatusByte_2)
        Me.pnlStatusBytes.Controls.Add(Me.grbx_StatusByte_1)
        Me.pnlStatusBytes.Controls.Add(Me.grbx_StatusByte_0)
        Me.pnlStatusBytes.Location = New System.Drawing.Point(611, 22)
        Me.pnlStatusBytes.Name = "pnlStatusBytes"
        Me.pnlStatusBytes.Size = New System.Drawing.Size(356, 496)
        Me.pnlStatusBytes.TabIndex = 2
        '
        'grbx_StatusByte_7
        '
        Me.grbx_StatusByte_7.Controls.Add(Me.chbx_S7_0)
        Me.grbx_StatusByte_7.Controls.Add(Me.chbx_S7_1)
        Me.grbx_StatusByte_7.Controls.Add(Me.chbx_S7_2)
        Me.grbx_StatusByte_7.Controls.Add(Me.chbx_S7_3)
        Me.grbx_StatusByte_7.Controls.Add(Me.chbx_S7_4)
        Me.grbx_StatusByte_7.Controls.Add(Me.chbx_S7_5)
        Me.grbx_StatusByte_7.Controls.Add(Me.chbx_S7_6)
        Me.grbx_StatusByte_7.Controls.Add(Me.chbx_S7_7)
        Me.grbx_StatusByte_7.Location = New System.Drawing.Point(3, 1168)
        Me.grbx_StatusByte_7.Name = "grbx_StatusByte_7"
        Me.grbx_StatusByte_7.Size = New System.Drawing.Size(329, 160)
        Me.grbx_StatusByte_7.TabIndex = 49
        Me.grbx_StatusByte_7.TabStop = False
        '
        'chbx_S7_0
        '
        Me.chbx_S7_0.AutoCheck = False
        Me.chbx_S7_0.AutoSize = True
        Me.chbx_S7_0.Location = New System.Drawing.Point(6, 138)
        Me.chbx_S7_0.Name = "chbx_S7_0"
        Me.chbx_S7_0.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S7_0.TabIndex = 63
        Me.chbx_S7_0.Text = "chbx_S7_0"
        Me.chbx_S7_0.UseVisualStyleBackColor = True
        '
        'chbx_S7_1
        '
        Me.chbx_S7_1.AutoCheck = False
        Me.chbx_S7_1.AutoSize = True
        Me.chbx_S7_1.Location = New System.Drawing.Point(6, 121)
        Me.chbx_S7_1.Name = "chbx_S7_1"
        Me.chbx_S7_1.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S7_1.TabIndex = 62
        Me.chbx_S7_1.Text = "chbx_S7_1"
        Me.chbx_S7_1.UseVisualStyleBackColor = True
        '
        'chbx_S7_2
        '
        Me.chbx_S7_2.AutoCheck = False
        Me.chbx_S7_2.AutoSize = True
        Me.chbx_S7_2.Location = New System.Drawing.Point(6, 104)
        Me.chbx_S7_2.Name = "chbx_S7_2"
        Me.chbx_S7_2.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S7_2.TabIndex = 61
        Me.chbx_S7_2.Text = "chbx_S7_2"
        Me.chbx_S7_2.UseVisualStyleBackColor = True
        '
        'chbx_S7_3
        '
        Me.chbx_S7_3.AutoCheck = False
        Me.chbx_S7_3.AutoSize = True
        Me.chbx_S7_3.Location = New System.Drawing.Point(6, 87)
        Me.chbx_S7_3.Name = "chbx_S7_3"
        Me.chbx_S7_3.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S7_3.TabIndex = 60
        Me.chbx_S7_3.Text = "chbx_S7_3"
        Me.chbx_S7_3.UseVisualStyleBackColor = True
        '
        'chbx_S7_4
        '
        Me.chbx_S7_4.AutoCheck = False
        Me.chbx_S7_4.AutoSize = True
        Me.chbx_S7_4.Location = New System.Drawing.Point(6, 70)
        Me.chbx_S7_4.Name = "chbx_S7_4"
        Me.chbx_S7_4.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S7_4.TabIndex = 59
        Me.chbx_S7_4.Text = "chbx_S7_4"
        Me.chbx_S7_4.UseVisualStyleBackColor = True
        '
        'chbx_S7_5
        '
        Me.chbx_S7_5.AutoCheck = False
        Me.chbx_S7_5.AutoSize = True
        Me.chbx_S7_5.Location = New System.Drawing.Point(6, 53)
        Me.chbx_S7_5.Name = "chbx_S7_5"
        Me.chbx_S7_5.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S7_5.TabIndex = 58
        Me.chbx_S7_5.Text = "chbx_S7_5"
        Me.chbx_S7_5.UseVisualStyleBackColor = True
        '
        'chbx_S7_6
        '
        Me.chbx_S7_6.AutoCheck = False
        Me.chbx_S7_6.AutoSize = True
        Me.chbx_S7_6.Location = New System.Drawing.Point(6, 36)
        Me.chbx_S7_6.Name = "chbx_S7_6"
        Me.chbx_S7_6.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S7_6.TabIndex = 57
        Me.chbx_S7_6.Text = "chbx_S7_6"
        Me.chbx_S7_6.UseVisualStyleBackColor = True
        '
        'chbx_S7_7
        '
        Me.chbx_S7_7.AutoCheck = False
        Me.chbx_S7_7.AutoSize = True
        Me.chbx_S7_7.Location = New System.Drawing.Point(6, 19)
        Me.chbx_S7_7.Name = "chbx_S7_7"
        Me.chbx_S7_7.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S7_7.TabIndex = 56
        Me.chbx_S7_7.Text = "chbx_S7_7"
        Me.chbx_S7_7.UseVisualStyleBackColor = True
        '
        'grbx_StatusByte_6
        '
        Me.grbx_StatusByte_6.Controls.Add(Me.chbx_S6_0)
        Me.grbx_StatusByte_6.Controls.Add(Me.chbx_S6_1)
        Me.grbx_StatusByte_6.Controls.Add(Me.chbx_S6_2)
        Me.grbx_StatusByte_6.Controls.Add(Me.chbx_S6_3)
        Me.grbx_StatusByte_6.Controls.Add(Me.chbx_S6_4)
        Me.grbx_StatusByte_6.Controls.Add(Me.chbx_S6_5)
        Me.grbx_StatusByte_6.Controls.Add(Me.chbx_S6_6)
        Me.grbx_StatusByte_6.Controls.Add(Me.chbx_S6_7)
        Me.grbx_StatusByte_6.Location = New System.Drawing.Point(3, 1002)
        Me.grbx_StatusByte_6.Name = "grbx_StatusByte_6"
        Me.grbx_StatusByte_6.Size = New System.Drawing.Size(329, 160)
        Me.grbx_StatusByte_6.TabIndex = 7
        Me.grbx_StatusByte_6.TabStop = False
        '
        'chbx_S6_0
        '
        Me.chbx_S6_0.AutoCheck = False
        Me.chbx_S6_0.AutoSize = True
        Me.chbx_S6_0.Location = New System.Drawing.Point(6, 138)
        Me.chbx_S6_0.Name = "chbx_S6_0"
        Me.chbx_S6_0.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S6_0.TabIndex = 55
        Me.chbx_S6_0.Text = "chbx_S6_0"
        Me.chbx_S6_0.UseVisualStyleBackColor = True
        '
        'chbx_S6_1
        '
        Me.chbx_S6_1.AutoCheck = False
        Me.chbx_S6_1.AutoSize = True
        Me.chbx_S6_1.Location = New System.Drawing.Point(6, 121)
        Me.chbx_S6_1.Name = "chbx_S6_1"
        Me.chbx_S6_1.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S6_1.TabIndex = 54
        Me.chbx_S6_1.Text = "chbx_S6_1"
        Me.chbx_S6_1.UseVisualStyleBackColor = True
        '
        'chbx_S6_2
        '
        Me.chbx_S6_2.AutoCheck = False
        Me.chbx_S6_2.AutoSize = True
        Me.chbx_S6_2.Location = New System.Drawing.Point(6, 104)
        Me.chbx_S6_2.Name = "chbx_S6_2"
        Me.chbx_S6_2.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S6_2.TabIndex = 53
        Me.chbx_S6_2.Text = "chbx_S6_2"
        Me.chbx_S6_2.UseVisualStyleBackColor = True
        '
        'chbx_S6_3
        '
        Me.chbx_S6_3.AutoCheck = False
        Me.chbx_S6_3.AutoSize = True
        Me.chbx_S6_3.Location = New System.Drawing.Point(6, 87)
        Me.chbx_S6_3.Name = "chbx_S6_3"
        Me.chbx_S6_3.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S6_3.TabIndex = 52
        Me.chbx_S6_3.Text = "chbx_S6_3"
        Me.chbx_S6_3.UseVisualStyleBackColor = True
        '
        'chbx_S6_4
        '
        Me.chbx_S6_4.AutoCheck = False
        Me.chbx_S6_4.AutoSize = True
        Me.chbx_S6_4.Location = New System.Drawing.Point(6, 70)
        Me.chbx_S6_4.Name = "chbx_S6_4"
        Me.chbx_S6_4.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S6_4.TabIndex = 51
        Me.chbx_S6_4.Text = "chbx_S6_4"
        Me.chbx_S6_4.UseVisualStyleBackColor = True
        '
        'chbx_S6_5
        '
        Me.chbx_S6_5.AutoCheck = False
        Me.chbx_S6_5.AutoSize = True
        Me.chbx_S6_5.Location = New System.Drawing.Point(6, 53)
        Me.chbx_S6_5.Name = "chbx_S6_5"
        Me.chbx_S6_5.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S6_5.TabIndex = 50
        Me.chbx_S6_5.Text = "chbx_S6_5"
        Me.chbx_S6_5.UseVisualStyleBackColor = True
        '
        'chbx_S6_6
        '
        Me.chbx_S6_6.AutoCheck = False
        Me.chbx_S6_6.AutoSize = True
        Me.chbx_S6_6.Location = New System.Drawing.Point(6, 36)
        Me.chbx_S6_6.Name = "chbx_S6_6"
        Me.chbx_S6_6.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S6_6.TabIndex = 49
        Me.chbx_S6_6.Text = "chbx_S6_6"
        Me.chbx_S6_6.UseVisualStyleBackColor = True
        '
        'chbx_S6_7
        '
        Me.chbx_S6_7.AutoCheck = False
        Me.chbx_S6_7.AutoSize = True
        Me.chbx_S6_7.Location = New System.Drawing.Point(6, 19)
        Me.chbx_S6_7.Name = "chbx_S6_7"
        Me.chbx_S6_7.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S6_7.TabIndex = 48
        Me.chbx_S6_7.Text = "chbx_S6_7"
        Me.chbx_S6_7.UseVisualStyleBackColor = True
        '
        'grbx_StatusByte_5
        '
        Me.grbx_StatusByte_5.Controls.Add(Me.chbx_S5_0)
        Me.grbx_StatusByte_5.Controls.Add(Me.chbx_S5_1)
        Me.grbx_StatusByte_5.Controls.Add(Me.chbx_S5_2)
        Me.grbx_StatusByte_5.Controls.Add(Me.chbx_S5_3)
        Me.grbx_StatusByte_5.Controls.Add(Me.chbx_S5_4)
        Me.grbx_StatusByte_5.Controls.Add(Me.chbx_S5_5)
        Me.grbx_StatusByte_5.Controls.Add(Me.chbx_S5_6)
        Me.grbx_StatusByte_5.Controls.Add(Me.chbx_S5_7)
        Me.grbx_StatusByte_5.Location = New System.Drawing.Point(3, 836)
        Me.grbx_StatusByte_5.Name = "grbx_StatusByte_5"
        Me.grbx_StatusByte_5.Size = New System.Drawing.Size(329, 160)
        Me.grbx_StatusByte_5.TabIndex = 6
        Me.grbx_StatusByte_5.TabStop = False
        '
        'chbx_S5_0
        '
        Me.chbx_S5_0.AutoCheck = False
        Me.chbx_S5_0.AutoSize = True
        Me.chbx_S5_0.Location = New System.Drawing.Point(6, 135)
        Me.chbx_S5_0.Name = "chbx_S5_0"
        Me.chbx_S5_0.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S5_0.TabIndex = 47
        Me.chbx_S5_0.Text = "chbx_S5_0"
        Me.chbx_S5_0.UseVisualStyleBackColor = True
        '
        'chbx_S5_1
        '
        Me.chbx_S5_1.AutoCheck = False
        Me.chbx_S5_1.AutoSize = True
        Me.chbx_S5_1.Location = New System.Drawing.Point(6, 118)
        Me.chbx_S5_1.Name = "chbx_S5_1"
        Me.chbx_S5_1.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S5_1.TabIndex = 46
        Me.chbx_S5_1.Text = "chbx_S5_1"
        Me.chbx_S5_1.UseVisualStyleBackColor = True
        '
        'chbx_S5_2
        '
        Me.chbx_S5_2.AutoCheck = False
        Me.chbx_S5_2.AutoSize = True
        Me.chbx_S5_2.Location = New System.Drawing.Point(6, 101)
        Me.chbx_S5_2.Name = "chbx_S5_2"
        Me.chbx_S5_2.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S5_2.TabIndex = 45
        Me.chbx_S5_2.Text = "chbx_S5_2"
        Me.chbx_S5_2.UseVisualStyleBackColor = True
        '
        'chbx_S5_3
        '
        Me.chbx_S5_3.AutoCheck = False
        Me.chbx_S5_3.AutoSize = True
        Me.chbx_S5_3.Location = New System.Drawing.Point(6, 84)
        Me.chbx_S5_3.Name = "chbx_S5_3"
        Me.chbx_S5_3.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S5_3.TabIndex = 44
        Me.chbx_S5_3.Text = "chbx_S5_3"
        Me.chbx_S5_3.UseVisualStyleBackColor = True
        '
        'chbx_S5_4
        '
        Me.chbx_S5_4.AutoCheck = False
        Me.chbx_S5_4.AutoSize = True
        Me.chbx_S5_4.Location = New System.Drawing.Point(6, 67)
        Me.chbx_S5_4.Name = "chbx_S5_4"
        Me.chbx_S5_4.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S5_4.TabIndex = 43
        Me.chbx_S5_4.Text = "chbx_S5_4"
        Me.chbx_S5_4.UseVisualStyleBackColor = True
        '
        'chbx_S5_5
        '
        Me.chbx_S5_5.AutoCheck = False
        Me.chbx_S5_5.AutoSize = True
        Me.chbx_S5_5.Location = New System.Drawing.Point(6, 50)
        Me.chbx_S5_5.Name = "chbx_S5_5"
        Me.chbx_S5_5.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S5_5.TabIndex = 42
        Me.chbx_S5_5.Text = "chbx_S5_5"
        Me.chbx_S5_5.UseVisualStyleBackColor = True
        '
        'chbx_S5_6
        '
        Me.chbx_S5_6.AutoCheck = False
        Me.chbx_S5_6.AutoSize = True
        Me.chbx_S5_6.Location = New System.Drawing.Point(6, 33)
        Me.chbx_S5_6.Name = "chbx_S5_6"
        Me.chbx_S5_6.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S5_6.TabIndex = 41
        Me.chbx_S5_6.Text = "chbx_S5_6"
        Me.chbx_S5_6.UseVisualStyleBackColor = True
        '
        'chbx_S5_7
        '
        Me.chbx_S5_7.AutoCheck = False
        Me.chbx_S5_7.AutoSize = True
        Me.chbx_S5_7.Location = New System.Drawing.Point(6, 16)
        Me.chbx_S5_7.Name = "chbx_S5_7"
        Me.chbx_S5_7.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S5_7.TabIndex = 40
        Me.chbx_S5_7.Text = "chbx_S5_7"
        Me.chbx_S5_7.UseVisualStyleBackColor = True
        '
        'grbx_StatusByte_4
        '
        Me.grbx_StatusByte_4.Controls.Add(Me.chbx_S4_0)
        Me.grbx_StatusByte_4.Controls.Add(Me.chbx_S4_1)
        Me.grbx_StatusByte_4.Controls.Add(Me.chbx_S4_2)
        Me.grbx_StatusByte_4.Controls.Add(Me.chbx_S4_3)
        Me.grbx_StatusByte_4.Controls.Add(Me.chbx_S4_4)
        Me.grbx_StatusByte_4.Controls.Add(Me.chbx_S4_5)
        Me.grbx_StatusByte_4.Controls.Add(Me.chbx_S4_6)
        Me.grbx_StatusByte_4.Controls.Add(Me.chbx_S4_7)
        Me.grbx_StatusByte_4.Location = New System.Drawing.Point(3, 670)
        Me.grbx_StatusByte_4.Name = "grbx_StatusByte_4"
        Me.grbx_StatusByte_4.Size = New System.Drawing.Size(329, 160)
        Me.grbx_StatusByte_4.TabIndex = 5
        Me.grbx_StatusByte_4.TabStop = False
        '
        'chbx_S4_0
        '
        Me.chbx_S4_0.AutoCheck = False
        Me.chbx_S4_0.AutoSize = True
        Me.chbx_S4_0.Location = New System.Drawing.Point(6, 134)
        Me.chbx_S4_0.Name = "chbx_S4_0"
        Me.chbx_S4_0.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S4_0.TabIndex = 39
        Me.chbx_S4_0.Text = "chbx_S4_0"
        Me.chbx_S4_0.UseVisualStyleBackColor = True
        '
        'chbx_S4_1
        '
        Me.chbx_S4_1.AutoCheck = False
        Me.chbx_S4_1.AutoSize = True
        Me.chbx_S4_1.Location = New System.Drawing.Point(6, 117)
        Me.chbx_S4_1.Name = "chbx_S4_1"
        Me.chbx_S4_1.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S4_1.TabIndex = 38
        Me.chbx_S4_1.Text = "chbx_S4_1"
        Me.chbx_S4_1.UseVisualStyleBackColor = True
        '
        'chbx_S4_2
        '
        Me.chbx_S4_2.AutoCheck = False
        Me.chbx_S4_2.AutoSize = True
        Me.chbx_S4_2.Location = New System.Drawing.Point(6, 100)
        Me.chbx_S4_2.Name = "chbx_S4_2"
        Me.chbx_S4_2.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S4_2.TabIndex = 37
        Me.chbx_S4_2.Text = "chbx_S4_2"
        Me.chbx_S4_2.UseVisualStyleBackColor = True
        '
        'chbx_S4_3
        '
        Me.chbx_S4_3.AutoCheck = False
        Me.chbx_S4_3.AutoSize = True
        Me.chbx_S4_3.Location = New System.Drawing.Point(6, 83)
        Me.chbx_S4_3.Name = "chbx_S4_3"
        Me.chbx_S4_3.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S4_3.TabIndex = 36
        Me.chbx_S4_3.Text = "chbx_S4_3"
        Me.chbx_S4_3.UseVisualStyleBackColor = True
        '
        'chbx_S4_4
        '
        Me.chbx_S4_4.AutoCheck = False
        Me.chbx_S4_4.AutoSize = True
        Me.chbx_S4_4.Location = New System.Drawing.Point(6, 66)
        Me.chbx_S4_4.Name = "chbx_S4_4"
        Me.chbx_S4_4.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S4_4.TabIndex = 35
        Me.chbx_S4_4.Text = "chbx_S4_4"
        Me.chbx_S4_4.UseVisualStyleBackColor = True
        '
        'chbx_S4_5
        '
        Me.chbx_S4_5.AutoCheck = False
        Me.chbx_S4_5.AutoSize = True
        Me.chbx_S4_5.Location = New System.Drawing.Point(6, 49)
        Me.chbx_S4_5.Name = "chbx_S4_5"
        Me.chbx_S4_5.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S4_5.TabIndex = 34
        Me.chbx_S4_5.Text = "chbx_S4_5"
        Me.chbx_S4_5.UseVisualStyleBackColor = True
        '
        'chbx_S4_6
        '
        Me.chbx_S4_6.AutoCheck = False
        Me.chbx_S4_6.AutoSize = True
        Me.chbx_S4_6.Location = New System.Drawing.Point(6, 32)
        Me.chbx_S4_6.Name = "chbx_S4_6"
        Me.chbx_S4_6.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S4_6.TabIndex = 33
        Me.chbx_S4_6.Text = "chbx_S4_6"
        Me.chbx_S4_6.UseVisualStyleBackColor = True
        '
        'chbx_S4_7
        '
        Me.chbx_S4_7.AutoCheck = False
        Me.chbx_S4_7.AutoSize = True
        Me.chbx_S4_7.Location = New System.Drawing.Point(6, 15)
        Me.chbx_S4_7.Name = "chbx_S4_7"
        Me.chbx_S4_7.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S4_7.TabIndex = 32
        Me.chbx_S4_7.Text = "chbx_S4_7"
        Me.chbx_S4_7.UseVisualStyleBackColor = True
        '
        'grbx_StatusByte_3
        '
        Me.grbx_StatusByte_3.Controls.Add(Me.chbx_S3_0)
        Me.grbx_StatusByte_3.Controls.Add(Me.chbx_S3_1)
        Me.grbx_StatusByte_3.Controls.Add(Me.chbx_S3_2)
        Me.grbx_StatusByte_3.Controls.Add(Me.chbx_S3_3)
        Me.grbx_StatusByte_3.Controls.Add(Me.chbx_S3_4)
        Me.grbx_StatusByte_3.Controls.Add(Me.chbx_S3_5)
        Me.grbx_StatusByte_3.Controls.Add(Me.chbx_S3_6)
        Me.grbx_StatusByte_3.Controls.Add(Me.chbx_S3_7)
        Me.grbx_StatusByte_3.Location = New System.Drawing.Point(3, 504)
        Me.grbx_StatusByte_3.Name = "grbx_StatusByte_3"
        Me.grbx_StatusByte_3.Size = New System.Drawing.Size(329, 160)
        Me.grbx_StatusByte_3.TabIndex = 4
        Me.grbx_StatusByte_3.TabStop = False
        '
        'chbx_S3_0
        '
        Me.chbx_S3_0.AutoCheck = False
        Me.chbx_S3_0.AutoSize = True
        Me.chbx_S3_0.Location = New System.Drawing.Point(6, 132)
        Me.chbx_S3_0.Name = "chbx_S3_0"
        Me.chbx_S3_0.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S3_0.TabIndex = 31
        Me.chbx_S3_0.Text = "chbx_S3_0"
        Me.chbx_S3_0.UseVisualStyleBackColor = True
        '
        'chbx_S3_1
        '
        Me.chbx_S3_1.AutoCheck = False
        Me.chbx_S3_1.AutoSize = True
        Me.chbx_S3_1.Location = New System.Drawing.Point(6, 115)
        Me.chbx_S3_1.Name = "chbx_S3_1"
        Me.chbx_S3_1.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S3_1.TabIndex = 30
        Me.chbx_S3_1.Text = "chbx_S3_1"
        Me.chbx_S3_1.UseVisualStyleBackColor = True
        '
        'chbx_S3_2
        '
        Me.chbx_S3_2.AutoCheck = False
        Me.chbx_S3_2.AutoSize = True
        Me.chbx_S3_2.Location = New System.Drawing.Point(6, 98)
        Me.chbx_S3_2.Name = "chbx_S3_2"
        Me.chbx_S3_2.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S3_2.TabIndex = 29
        Me.chbx_S3_2.Text = "chbx_S3_2"
        Me.chbx_S3_2.UseVisualStyleBackColor = True
        '
        'chbx_S3_3
        '
        Me.chbx_S3_3.AutoCheck = False
        Me.chbx_S3_3.AutoSize = True
        Me.chbx_S3_3.Location = New System.Drawing.Point(6, 81)
        Me.chbx_S3_3.Name = "chbx_S3_3"
        Me.chbx_S3_3.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S3_3.TabIndex = 28
        Me.chbx_S3_3.Text = "chbx_S3_3"
        Me.chbx_S3_3.UseVisualStyleBackColor = True
        '
        'chbx_S3_4
        '
        Me.chbx_S3_4.AutoCheck = False
        Me.chbx_S3_4.AutoSize = True
        Me.chbx_S3_4.Location = New System.Drawing.Point(6, 64)
        Me.chbx_S3_4.Name = "chbx_S3_4"
        Me.chbx_S3_4.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S3_4.TabIndex = 27
        Me.chbx_S3_4.Text = "chbx_S3_4"
        Me.chbx_S3_4.UseVisualStyleBackColor = True
        '
        'chbx_S3_5
        '
        Me.chbx_S3_5.AutoCheck = False
        Me.chbx_S3_5.AutoSize = True
        Me.chbx_S3_5.Location = New System.Drawing.Point(6, 47)
        Me.chbx_S3_5.Name = "chbx_S3_5"
        Me.chbx_S3_5.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S3_5.TabIndex = 26
        Me.chbx_S3_5.Text = "chbx_S3_5"
        Me.chbx_S3_5.UseVisualStyleBackColor = True
        '
        'chbx_S3_6
        '
        Me.chbx_S3_6.AutoCheck = False
        Me.chbx_S3_6.AutoSize = True
        Me.chbx_S3_6.Location = New System.Drawing.Point(6, 30)
        Me.chbx_S3_6.Name = "chbx_S3_6"
        Me.chbx_S3_6.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S3_6.TabIndex = 25
        Me.chbx_S3_6.Text = "chbx_S3_6"
        Me.chbx_S3_6.UseVisualStyleBackColor = True
        '
        'chbx_S3_7
        '
        Me.chbx_S3_7.AutoCheck = False
        Me.chbx_S3_7.AutoSize = True
        Me.chbx_S3_7.Location = New System.Drawing.Point(6, 13)
        Me.chbx_S3_7.Name = "chbx_S3_7"
        Me.chbx_S3_7.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S3_7.TabIndex = 24
        Me.chbx_S3_7.Text = "chbx_S3_7"
        Me.chbx_S3_7.UseVisualStyleBackColor = True
        '
        'grbx_StatusByte_2
        '
        Me.grbx_StatusByte_2.Controls.Add(Me.chbx_S2_0)
        Me.grbx_StatusByte_2.Controls.Add(Me.chbx_S2_1)
        Me.grbx_StatusByte_2.Controls.Add(Me.chbx_S2_2)
        Me.grbx_StatusByte_2.Controls.Add(Me.chbx_S2_3)
        Me.grbx_StatusByte_2.Controls.Add(Me.chbx_S2_4)
        Me.grbx_StatusByte_2.Controls.Add(Me.chbx_S2_5)
        Me.grbx_StatusByte_2.Controls.Add(Me.chbx_S2_6)
        Me.grbx_StatusByte_2.Controls.Add(Me.chbx_S2_7)
        Me.grbx_StatusByte_2.Location = New System.Drawing.Point(3, 338)
        Me.grbx_StatusByte_2.Name = "grbx_StatusByte_2"
        Me.grbx_StatusByte_2.Size = New System.Drawing.Size(329, 160)
        Me.grbx_StatusByte_2.TabIndex = 3
        Me.grbx_StatusByte_2.TabStop = False
        '
        'chbx_S2_0
        '
        Me.chbx_S2_0.AutoCheck = False
        Me.chbx_S2_0.AutoSize = True
        Me.chbx_S2_0.Location = New System.Drawing.Point(6, 133)
        Me.chbx_S2_0.Name = "chbx_S2_0"
        Me.chbx_S2_0.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S2_0.TabIndex = 23
        Me.chbx_S2_0.Text = "chbx_S2_0"
        Me.chbx_S2_0.UseVisualStyleBackColor = True
        '
        'chbx_S2_1
        '
        Me.chbx_S2_1.AutoCheck = False
        Me.chbx_S2_1.AutoSize = True
        Me.chbx_S2_1.Location = New System.Drawing.Point(6, 116)
        Me.chbx_S2_1.Name = "chbx_S2_1"
        Me.chbx_S2_1.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S2_1.TabIndex = 22
        Me.chbx_S2_1.Text = "chbx_S2_1"
        Me.chbx_S2_1.UseVisualStyleBackColor = True
        '
        'chbx_S2_2
        '
        Me.chbx_S2_2.AutoCheck = False
        Me.chbx_S2_2.AutoSize = True
        Me.chbx_S2_2.Location = New System.Drawing.Point(6, 99)
        Me.chbx_S2_2.Name = "chbx_S2_2"
        Me.chbx_S2_2.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S2_2.TabIndex = 21
        Me.chbx_S2_2.Text = "chbx_S2_2"
        Me.chbx_S2_2.UseVisualStyleBackColor = True
        '
        'chbx_S2_3
        '
        Me.chbx_S2_3.AutoCheck = False
        Me.chbx_S2_3.AutoSize = True
        Me.chbx_S2_3.Location = New System.Drawing.Point(6, 82)
        Me.chbx_S2_3.Name = "chbx_S2_3"
        Me.chbx_S2_3.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S2_3.TabIndex = 20
        Me.chbx_S2_3.Text = "chbx_S2_3"
        Me.chbx_S2_3.UseVisualStyleBackColor = True
        '
        'chbx_S2_4
        '
        Me.chbx_S2_4.AutoCheck = False
        Me.chbx_S2_4.AutoSize = True
        Me.chbx_S2_4.Location = New System.Drawing.Point(6, 65)
        Me.chbx_S2_4.Name = "chbx_S2_4"
        Me.chbx_S2_4.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S2_4.TabIndex = 19
        Me.chbx_S2_4.Text = "chbx_S2_4"
        Me.chbx_S2_4.UseVisualStyleBackColor = True
        '
        'chbx_S2_5
        '
        Me.chbx_S2_5.AutoCheck = False
        Me.chbx_S2_5.AutoSize = True
        Me.chbx_S2_5.Location = New System.Drawing.Point(6, 48)
        Me.chbx_S2_5.Name = "chbx_S2_5"
        Me.chbx_S2_5.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S2_5.TabIndex = 18
        Me.chbx_S2_5.Text = "chbx_S2_5"
        Me.chbx_S2_5.UseVisualStyleBackColor = True
        '
        'chbx_S2_6
        '
        Me.chbx_S2_6.AutoCheck = False
        Me.chbx_S2_6.AutoSize = True
        Me.chbx_S2_6.Location = New System.Drawing.Point(6, 31)
        Me.chbx_S2_6.Name = "chbx_S2_6"
        Me.chbx_S2_6.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S2_6.TabIndex = 17
        Me.chbx_S2_6.Text = "chbx_S2_6"
        Me.chbx_S2_6.UseVisualStyleBackColor = True
        '
        'chbx_S2_7
        '
        Me.chbx_S2_7.AutoCheck = False
        Me.chbx_S2_7.AutoSize = True
        Me.chbx_S2_7.Location = New System.Drawing.Point(6, 14)
        Me.chbx_S2_7.Name = "chbx_S2_7"
        Me.chbx_S2_7.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S2_7.TabIndex = 16
        Me.chbx_S2_7.Text = "chbx_S2_7"
        Me.chbx_S2_7.UseVisualStyleBackColor = True
        '
        'grbx_StatusByte_1
        '
        Me.grbx_StatusByte_1.Controls.Add(Me.chbx_S1_0)
        Me.grbx_StatusByte_1.Controls.Add(Me.chbx_S1_1)
        Me.grbx_StatusByte_1.Controls.Add(Me.chbx_S1_2)
        Me.grbx_StatusByte_1.Controls.Add(Me.chbx_S1_3)
        Me.grbx_StatusByte_1.Controls.Add(Me.chbx_S1_4)
        Me.grbx_StatusByte_1.Controls.Add(Me.chbx_S1_5)
        Me.grbx_StatusByte_1.Controls.Add(Me.chbx_S1_6)
        Me.grbx_StatusByte_1.Controls.Add(Me.chbx_S1_7)
        Me.grbx_StatusByte_1.Location = New System.Drawing.Point(3, 172)
        Me.grbx_StatusByte_1.Name = "grbx_StatusByte_1"
        Me.grbx_StatusByte_1.Size = New System.Drawing.Size(329, 160)
        Me.grbx_StatusByte_1.TabIndex = 2
        Me.grbx_StatusByte_1.TabStop = False
        '
        'chbx_S1_0
        '
        Me.chbx_S1_0.AutoCheck = False
        Me.chbx_S1_0.AutoSize = True
        Me.chbx_S1_0.Location = New System.Drawing.Point(6, 136)
        Me.chbx_S1_0.Name = "chbx_S1_0"
        Me.chbx_S1_0.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S1_0.TabIndex = 15
        Me.chbx_S1_0.Text = "chbx_S1_0"
        Me.chbx_S1_0.UseVisualStyleBackColor = True
        '
        'chbx_S1_1
        '
        Me.chbx_S1_1.AutoCheck = False
        Me.chbx_S1_1.AutoSize = True
        Me.chbx_S1_1.Location = New System.Drawing.Point(6, 119)
        Me.chbx_S1_1.Name = "chbx_S1_1"
        Me.chbx_S1_1.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S1_1.TabIndex = 14
        Me.chbx_S1_1.Text = "chbx_S1_1"
        Me.chbx_S1_1.UseVisualStyleBackColor = True
        '
        'chbx_S1_2
        '
        Me.chbx_S1_2.AutoCheck = False
        Me.chbx_S1_2.AutoSize = True
        Me.chbx_S1_2.Location = New System.Drawing.Point(6, 102)
        Me.chbx_S1_2.Name = "chbx_S1_2"
        Me.chbx_S1_2.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S1_2.TabIndex = 13
        Me.chbx_S1_2.Text = "chbx_S1_2"
        Me.chbx_S1_2.UseVisualStyleBackColor = True
        '
        'chbx_S1_3
        '
        Me.chbx_S1_3.AutoCheck = False
        Me.chbx_S1_3.AutoSize = True
        Me.chbx_S1_3.Location = New System.Drawing.Point(6, 85)
        Me.chbx_S1_3.Name = "chbx_S1_3"
        Me.chbx_S1_3.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S1_3.TabIndex = 12
        Me.chbx_S1_3.Text = "chbx_S1_3"
        Me.chbx_S1_3.UseVisualStyleBackColor = True
        '
        'chbx_S1_4
        '
        Me.chbx_S1_4.AutoCheck = False
        Me.chbx_S1_4.AutoSize = True
        Me.chbx_S1_4.Location = New System.Drawing.Point(6, 68)
        Me.chbx_S1_4.Name = "chbx_S1_4"
        Me.chbx_S1_4.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S1_4.TabIndex = 11
        Me.chbx_S1_4.Text = "chbx_S1_4"
        Me.chbx_S1_4.UseVisualStyleBackColor = True
        '
        'chbx_S1_5
        '
        Me.chbx_S1_5.AutoCheck = False
        Me.chbx_S1_5.AutoSize = True
        Me.chbx_S1_5.Location = New System.Drawing.Point(6, 51)
        Me.chbx_S1_5.Name = "chbx_S1_5"
        Me.chbx_S1_5.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S1_5.TabIndex = 10
        Me.chbx_S1_5.Text = "chbx_S1_5"
        Me.chbx_S1_5.UseVisualStyleBackColor = True
        '
        'chbx_S1_6
        '
        Me.chbx_S1_6.AutoCheck = False
        Me.chbx_S1_6.AutoSize = True
        Me.chbx_S1_6.Location = New System.Drawing.Point(6, 34)
        Me.chbx_S1_6.Name = "chbx_S1_6"
        Me.chbx_S1_6.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S1_6.TabIndex = 9
        Me.chbx_S1_6.Text = "chbx_S1_6"
        Me.chbx_S1_6.UseVisualStyleBackColor = True
        '
        'chbx_S1_7
        '
        Me.chbx_S1_7.AutoCheck = False
        Me.chbx_S1_7.AutoSize = True
        Me.chbx_S1_7.Location = New System.Drawing.Point(6, 17)
        Me.chbx_S1_7.Name = "chbx_S1_7"
        Me.chbx_S1_7.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S1_7.TabIndex = 8
        Me.chbx_S1_7.Text = "chbx_S1_7"
        Me.chbx_S1_7.UseVisualStyleBackColor = True
        '
        'grbx_StatusByte_0
        '
        Me.grbx_StatusByte_0.Controls.Add(Me.chbx_S0_0)
        Me.grbx_StatusByte_0.Controls.Add(Me.chbx_S0_1)
        Me.grbx_StatusByte_0.Controls.Add(Me.chbx_S0_2)
        Me.grbx_StatusByte_0.Controls.Add(Me.chbx_S0_3)
        Me.grbx_StatusByte_0.Controls.Add(Me.chbx_S0_4)
        Me.grbx_StatusByte_0.Controls.Add(Me.chbx_S0_5)
        Me.grbx_StatusByte_0.Controls.Add(Me.chbx_S0_6)
        Me.grbx_StatusByte_0.Controls.Add(Me.chbx_S0_7)
        Me.grbx_StatusByte_0.Location = New System.Drawing.Point(3, 6)
        Me.grbx_StatusByte_0.Name = "grbx_StatusByte_0"
        Me.grbx_StatusByte_0.Size = New System.Drawing.Size(329, 160)
        Me.grbx_StatusByte_0.TabIndex = 1
        Me.grbx_StatusByte_0.TabStop = False
        '
        'chbx_S0_0
        '
        Me.chbx_S0_0.AutoCheck = False
        Me.chbx_S0_0.AutoSize = True
        Me.chbx_S0_0.Location = New System.Drawing.Point(6, 131)
        Me.chbx_S0_0.Name = "chbx_S0_0"
        Me.chbx_S0_0.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S0_0.TabIndex = 7
        Me.chbx_S0_0.Text = "chbx_S0_0"
        Me.chbx_S0_0.UseVisualStyleBackColor = True
        '
        'chbx_S0_1
        '
        Me.chbx_S0_1.AutoCheck = False
        Me.chbx_S0_1.AutoSize = True
        Me.chbx_S0_1.Location = New System.Drawing.Point(6, 114)
        Me.chbx_S0_1.Name = "chbx_S0_1"
        Me.chbx_S0_1.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S0_1.TabIndex = 6
        Me.chbx_S0_1.Text = "chbx_S0_1"
        Me.chbx_S0_1.UseVisualStyleBackColor = True
        '
        'chbx_S0_2
        '
        Me.chbx_S0_2.AutoCheck = False
        Me.chbx_S0_2.AutoSize = True
        Me.chbx_S0_2.Location = New System.Drawing.Point(6, 97)
        Me.chbx_S0_2.Name = "chbx_S0_2"
        Me.chbx_S0_2.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S0_2.TabIndex = 5
        Me.chbx_S0_2.Text = "chbx_S0_2"
        Me.chbx_S0_2.UseVisualStyleBackColor = True
        '
        'chbx_S0_3
        '
        Me.chbx_S0_3.AutoCheck = False
        Me.chbx_S0_3.AutoSize = True
        Me.chbx_S0_3.Location = New System.Drawing.Point(6, 80)
        Me.chbx_S0_3.Name = "chbx_S0_3"
        Me.chbx_S0_3.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S0_3.TabIndex = 4
        Me.chbx_S0_3.Text = "chbx_S0_3"
        Me.chbx_S0_3.UseVisualStyleBackColor = True
        '
        'chbx_S0_4
        '
        Me.chbx_S0_4.AutoCheck = False
        Me.chbx_S0_4.AutoSize = True
        Me.chbx_S0_4.Location = New System.Drawing.Point(6, 63)
        Me.chbx_S0_4.Name = "chbx_S0_4"
        Me.chbx_S0_4.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S0_4.TabIndex = 3
        Me.chbx_S0_4.Text = "chbx_S0_4"
        Me.chbx_S0_4.UseVisualStyleBackColor = True
        '
        'chbx_S0_5
        '
        Me.chbx_S0_5.AutoCheck = False
        Me.chbx_S0_5.AutoSize = True
        Me.chbx_S0_5.Location = New System.Drawing.Point(6, 46)
        Me.chbx_S0_5.Name = "chbx_S0_5"
        Me.chbx_S0_5.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S0_5.TabIndex = 2
        Me.chbx_S0_5.Text = "chbx_S0_5"
        Me.chbx_S0_5.UseVisualStyleBackColor = True
        '
        'chbx_S0_6
        '
        Me.chbx_S0_6.AutoCheck = False
        Me.chbx_S0_6.AutoSize = True
        Me.chbx_S0_6.Location = New System.Drawing.Point(6, 29)
        Me.chbx_S0_6.Name = "chbx_S0_6"
        Me.chbx_S0_6.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S0_6.TabIndex = 1
        Me.chbx_S0_6.Text = "chbx_S0_6"
        Me.chbx_S0_6.UseVisualStyleBackColor = True
        '
        'chbx_S0_7
        '
        Me.chbx_S0_7.AutoCheck = False
        Me.chbx_S0_7.AutoSize = True
        Me.chbx_S0_7.Location = New System.Drawing.Point(6, 12)
        Me.chbx_S0_7.Name = "chbx_S0_7"
        Me.chbx_S0_7.Size = New System.Drawing.Size(80, 17)
        Me.chbx_S0_7.TabIndex = 0
        Me.chbx_S0_7.Text = "chbx_S0_7"
        Me.chbx_S0_7.UseVisualStyleBackColor = True
        '
        'pnlErrors
        '
        Me.pnlErrors.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.pnlErrors.BackColor = System.Drawing.SystemColors.Control
        Me.pnlErrors.Controls.Add(Me.lstErrors)
        Me.pnlErrors.Controls.Add(Me.lblErrors)
        Me.pnlErrors.Location = New System.Drawing.Point(1, 519)
        Me.pnlErrors.Name = "pnlErrors"
        Me.pnlErrors.Size = New System.Drawing.Size(963, 119)
        Me.pnlErrors.TabIndex = 3
        '
        'lstErrors
        '
        Me.lstErrors.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.lstErrors.FormattingEnabled = True
        Me.lstErrors.HorizontalScrollbar = True
        Me.lstErrors.Location = New System.Drawing.Point(1, 32)
        Me.lstErrors.Name = "lstErrors"
        Me.lstErrors.ScrollAlwaysVisible = True
        Me.lstErrors.Size = New System.Drawing.Size(960, 82)
        Me.lstErrors.TabIndex = 3
        '
        'lblErrors
        '
        Me.lblErrors.AutoSize = True
        Me.lblErrors.Location = New System.Drawing.Point(5, 4)
        Me.lblErrors.Name = "lblErrors"
        Me.lblErrors.Size = New System.Drawing.Size(70, 13)
        Me.lblErrors.TabIndex = 2
        Me.lblErrors.Text = "Errors output:"
        '
        'pnlProgress
        '
        Me.pnlProgress.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.pnlProgress.BackColor = System.Drawing.SystemColors.Control
        Me.pnlProgress.Controls.Add(Me.prg2)
        Me.pnlProgress.Controls.Add(Me.prg1)
        Me.pnlProgress.Location = New System.Drawing.Point(4, 637)
        Me.pnlProgress.Name = "pnlProgress"
        Me.pnlProgress.Size = New System.Drawing.Size(966, 63)
        Me.pnlProgress.TabIndex = 8
        '
        'prg2
        '
        Me.prg2.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.prg2.Location = New System.Drawing.Point(4, 34)
        Me.prg2.Name = "prg2"
        Me.prg2.Size = New System.Drawing.Size(955, 18)
        Me.prg2.TabIndex = 1
        '
        'prg1
        '
        Me.prg1.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.prg1.Location = New System.Drawing.Point(4, 10)
        Me.prg1.Name = "prg1"
        Me.prg1.Size = New System.Drawing.Size(955, 18)
        Me.prg1.TabIndex = 0
        '
        'OpenFileDialog1
        '
        Me.OpenFileDialog1.FileName = "OpenFileDialog1"
        '
        'chkCheckDeviceStatus
        '
        Me.chkCheckDeviceStatus.AutoSize = True
        Me.chkCheckDeviceStatus.Location = New System.Drawing.Point(6, 134)
        Me.chkCheckDeviceStatus.Name = "chkCheckDeviceStatus"
        Me.chkCheckDeviceStatus.Size = New System.Drawing.Size(210, 17)
        Me.chkCheckDeviceStatus.TabIndex = 7
        Me.chkCheckDeviceStatus.Text = "Check device status on get connected"
        Me.chkCheckDeviceStatus.UseVisualStyleBackColor = True
        '
        'fm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(967, 700)
        Me.Controls.Add(Me.pnlProgress)
        Me.Controls.Add(Me.pnlStatusBytes)
        Me.Controls.Add(Me.pnlErrors)
        Me.Controls.Add(Me.tcMain)
        Me.DoubleBuffered = True
        Me.MinimumSize = New System.Drawing.Size(983, 739)
        Me.Name = "fm"
        Me.Text = "Device dependent driver demo"
        Me.tcMain.ResumeLayout(False)
        Me.tpInitConnect.ResumeLayout(False)
        Me.pnlSettings.ResumeLayout(False)
        Me.pnlSettings.PerformLayout()
        Me.tpProperties.ResumeLayout(False)
        Me.tpProperties.PerformLayout()
        Me.tpBehaviour.ResumeLayout(False)
        Me.grpRAOMode.ResumeLayout(False)
        Me.grpRAOMode.PerformLayout()
        Me.grpTrackingMode.ResumeLayout(False)
        Me.grpTrackingMode.PerformLayout()
        Me.grpLanguage.ResumeLayout(False)
        Me.grpEvents.ResumeLayout(False)
        Me.grpEvents.PerformLayout()
        Me.tpSystemInfo.ResumeLayout(False)
        Me.tpCustomCmds.ResumeLayout(False)
        Me.tpCustomCmds.PerformLayout()
        Me.tpCustomScript.ResumeLayout(False)
        Me.pnlCustomScript.ResumeLayout(False)
        Me.pnlCustomScript.PerformLayout()
        Me.tcScriptContainer.ResumeLayout(False)
        Me.tpSimpleScript.ResumeLayout(False)
        Me.tpHumanLog.ResumeLayout(False)
        Me.tpHEX.ResumeLayout(False)
        Me.tpANAF.ResumeLayout(False)
        Me.tpANAF.PerformLayout()
        Me.tpGetCommandList.ResumeLayout(False)
        Me.tpGetCommandList.PerformLayout()
        Me.pnlStatusBytes.ResumeLayout(False)
        Me.grbx_StatusByte_7.ResumeLayout(False)
        Me.grbx_StatusByte_7.PerformLayout()
        Me.grbx_StatusByte_6.ResumeLayout(False)
        Me.grbx_StatusByte_6.PerformLayout()
        Me.grbx_StatusByte_5.ResumeLayout(False)
        Me.grbx_StatusByte_5.PerformLayout()
        Me.grbx_StatusByte_4.ResumeLayout(False)
        Me.grbx_StatusByte_4.PerformLayout()
        Me.grbx_StatusByte_3.ResumeLayout(False)
        Me.grbx_StatusByte_3.PerformLayout()
        Me.grbx_StatusByte_2.ResumeLayout(False)
        Me.grbx_StatusByte_2.PerformLayout()
        Me.grbx_StatusByte_1.ResumeLayout(False)
        Me.grbx_StatusByte_1.PerformLayout()
        Me.grbx_StatusByte_0.ResumeLayout(False)
        Me.grbx_StatusByte_0.PerformLayout()
        Me.pnlErrors.ResumeLayout(False)
        Me.pnlErrors.PerformLayout()
        Me.pnlProgress.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Private WithEvents tpInitConnect As TabPage
    Private WithEvents btnStartComServer As Button
    Private WithEvents tpProperties As TabPage
    Friend WithEvents pnlSettings As Panel
    Private WithEvents btnStopComServer As Button
    Private WithEvents cboToggleSwitch As ComboBox
    Private WithEvents lblComPort As Label
    Private WithEvents lblBaudRate As Label
    Private WithEvents txtComPort As TextBox
    Private WithEvents txtBaudRate As TextBox
    Private WithEvents lblIPAddress As Label
    Private WithEvents lblPort As Label
    Private WithEvents txtIPAddress As TextBox
    Private WithEvents txtLANPort As TextBox
    Private WithEvents btnOpenConnection As Button
    Private WithEvents btnStopConnection As Button
    Private WithEvents tcMain As TabControl
    Private WithEvents pnlStatusBytes As Panel
    Private WithEvents pnlErrors As Panel
    Private WithEvents pnlProgress As Panel
    Private WithEvents prg2 As ProgressBar
    Private WithEvents prg1 As ProgressBar
    Private WithEvents grbx_StatusByte_7 As GroupBox
    Private WithEvents chbx_S7_0 As CheckBox
    Private WithEvents chbx_S7_1 As CheckBox
    Private WithEvents chbx_S7_2 As CheckBox
    Private WithEvents chbx_S7_3 As CheckBox
    Private WithEvents chbx_S7_4 As CheckBox
    Private WithEvents chbx_S7_5 As CheckBox
    Private WithEvents chbx_S7_6 As CheckBox
    Private WithEvents chbx_S7_7 As CheckBox
    Private WithEvents grbx_StatusByte_6 As GroupBox
    Private WithEvents chbx_S6_0 As CheckBox
    Private WithEvents chbx_S6_1 As CheckBox
    Private WithEvents chbx_S6_2 As CheckBox
    Private WithEvents chbx_S6_3 As CheckBox
    Private WithEvents chbx_S6_4 As CheckBox
    Private WithEvents chbx_S6_5 As CheckBox
    Private WithEvents chbx_S6_6 As CheckBox
    Private WithEvents chbx_S6_7 As CheckBox
    Private WithEvents grbx_StatusByte_5 As GroupBox
    Private WithEvents chbx_S5_0 As CheckBox
    Private WithEvents chbx_S5_1 As CheckBox
    Private WithEvents chbx_S5_2 As CheckBox
    Private WithEvents chbx_S5_3 As CheckBox
    Private WithEvents chbx_S5_4 As CheckBox
    Private WithEvents chbx_S5_5 As CheckBox
    Private WithEvents chbx_S5_6 As CheckBox
    Private WithEvents chbx_S5_7 As CheckBox
    Private WithEvents grbx_StatusByte_4 As GroupBox
    Private WithEvents chbx_S4_0 As CheckBox
    Private WithEvents chbx_S4_1 As CheckBox
    Private WithEvents chbx_S4_2 As CheckBox
    Private WithEvents chbx_S4_3 As CheckBox
    Private WithEvents chbx_S4_4 As CheckBox
    Private WithEvents chbx_S4_5 As CheckBox
    Private WithEvents chbx_S4_6 As CheckBox
    Private WithEvents chbx_S4_7 As CheckBox
    Private WithEvents grbx_StatusByte_3 As GroupBox
    Private WithEvents chbx_S3_0 As CheckBox
    Private WithEvents chbx_S3_1 As CheckBox
    Private WithEvents chbx_S3_2 As CheckBox
    Private WithEvents chbx_S3_3 As CheckBox
    Private WithEvents chbx_S3_4 As CheckBox
    Private WithEvents chbx_S3_5 As CheckBox
    Private WithEvents chbx_S3_6 As CheckBox
    Private WithEvents chbx_S3_7 As CheckBox
    Private WithEvents grbx_StatusByte_2 As GroupBox
    Private WithEvents chbx_S2_0 As CheckBox
    Private WithEvents chbx_S2_1 As CheckBox
    Private WithEvents chbx_S2_2 As CheckBox
    Private WithEvents chbx_S2_3 As CheckBox
    Private WithEvents chbx_S2_4 As CheckBox
    Private WithEvents chbx_S2_5 As CheckBox
    Private WithEvents chbx_S2_6 As CheckBox
    Private WithEvents chbx_S2_7 As CheckBox
    Private WithEvents grbx_StatusByte_1 As GroupBox
    Private WithEvents chbx_S1_0 As CheckBox
    Private WithEvents chbx_S1_1 As CheckBox
    Private WithEvents chbx_S1_2 As CheckBox
    Private WithEvents chbx_S1_3 As CheckBox
    Private WithEvents chbx_S1_4 As CheckBox
    Private WithEvents chbx_S1_5 As CheckBox
    Private WithEvents chbx_S1_6 As CheckBox
    Private WithEvents chbx_S1_7 As CheckBox
    Private WithEvents grbx_StatusByte_0 As GroupBox
    Private WithEvents chbx_S0_0 As CheckBox
    Private WithEvents chbx_S0_1 As CheckBox
    Private WithEvents chbx_S0_2 As CheckBox
    Private WithEvents chbx_S0_3 As CheckBox
    Private WithEvents chbx_S0_4 As CheckBox
    Private WithEvents chbx_S0_5 As CheckBox
    Private WithEvents chbx_S0_6 As CheckBox
    Private WithEvents chbx_S0_7 As CheckBox
    Private WithEvents lstErrors As ListBox
    Private WithEvents lblErrors As Label
    Private WithEvents lblAnswerDistributor As Label
    Private WithEvents lblAnswerCodePage As Label
    Private WithEvents lblAnswerFirmwareCheckSum As Label
    Private WithEvents lblAnswerFirmwareDate As Label
    Private WithEvents lblAnswerFirmwareRevision As Label
    Private WithEvents lblAnswerSerialNum As Label
    Private WithEvents lblAnswerModelName As Label
    Private WithEvents lblAnswerDeviceType As Label
    Private WithEvents lblAnswerLANConnected As Label
    Private WithEvents lblAnswerDeviceConnected As Label
    Private WithEvents lblAnswerDriverLanguage As Label
    Private WithEvents lblDistributor As Label
    Private WithEvents lblCodePage As Label
    Private WithEvents lblFirmwareChecksum As Label
    Private WithEvents lblFirmwareDate As Label
    Private WithEvents lblFirmwareRevision As Label
    Private WithEvents lblSerialNumber As Label
    Private WithEvents lblModelName As Label
    Private WithEvents lblDeviceType As Label
    Private WithEvents lblLANConnected As Label
    Private WithEvents lblDeviceConnected As Label
    Private WithEvents lblDriverLanguage As Label
    Private WithEvents tpBehaviour As TabPage
    Private WithEvents grpTrackingMode As GroupBox
    Private WithEvents btnSetTrackingMode As Button
    Private WithEvents txtTrackingModeRowLimit As TextBox
    Private WithEvents txtTrackingModeFileName As TextBox
    Private WithEvents txtTrackingModePath As TextBox
    Private WithEvents lblTracckingModeRowLimit As Label
    Private WithEvents lblTrackingModeFileName As Label
    Private WithEvents lblTrackingModePath As Label
    Private WithEvents chkTrackingMode As CheckBox
    Private WithEvents grpLanguage As GroupBox
    Private WithEvents btnSetDriverLanguage As Button
    Private WithEvents cboLanguage As ComboBox
    Private WithEvents grpEvents As GroupBox
    Private WithEvents chkActive_OnSecondProgress_Complete As CheckBox
    Private WithEvents chkActive_OnSecondProgress_Loop As CheckBox
    Private WithEvents chkActive_OnSecondProgress_Init As CheckBox
    Private WithEvents chkActive_OnFirstProgress_Complete As CheckBox
    Private WithEvents chkActive_OnFirstProgress_Loop As CheckBox
    Private WithEvents chkActive_OnFirstProgress_Init As CheckBox
    Private WithEvents chkActive_OnError As CheckBox
    Private WithEvents chkActive_OnStatusChange As CheckBox
    Private WithEvents chkActive_OnReceiveAnswer As CheckBox
    Private WithEvents chkActive_OnWait As CheckBox
    Private WithEvents chkActive_OnSendCommand As CheckBox
    Private WithEvents chkActive_OnAfterScriptExecute As CheckBox
    Private WithEvents chkActive_OnScriptRowExecute As CheckBox
    Private WithEvents chkActive_OnBeforeScriptExecute As CheckBox
    Private WithEvents btnSetEventsMode As Button
    Private WithEvents tpSystemInfo As TabPage
    Private WithEvents lstSystemInfo As ListBox
    Private WithEvents btnGetSystemInfo As Button
    Private WithEvents tpCustomCmds As TabPage
    Private WithEvents btnGetLastAnswerList As Button
    Private WithEvents lstScriptOutput As ListBox
    Private WithEvents lblScriptOutput As Label
    Private WithEvents btnExecuteCmd As Button
    Private WithEvents txtOutputValue As TextBox
    Private WithEvents txtInputValue As TextBox
    Private WithEvents lblOutputValue As Label
    Private WithEvents lblInputValue As Label
    Private WithEvents txtCmd As TextBox
    Private WithEvents lblCmd As Label
    Private WithEvents tpCustomScript As TabPage
    Private WithEvents pnlCustomScript As Panel
    Private WithEvents chkShowLastOutput As CheckBox
    Private WithEvents cboPageChoice As ComboBox
    Private WithEvents btnCancel As Button
    Private WithEvents btnDeleteOutput As Button
    Private WithEvents btnDeleteScript As Button
    Private WithEvents btnExecuteSelected As Button
    Private WithEvents btnExecuteSimpleScript As Button
    Private WithEvents btnLoadScriptFromFile As Button
    Private WithEvents tcScriptContainer As TabControl
    Private WithEvents tpSimpleScript As TabPage
    Private WithEvents rtfSimpleScript As RichTextBox
    Private WithEvents tpHumanLog As TabPage
    Private WithEvents rtfHumanLog As RichTextBox
    Private WithEvents tpHEX As TabPage
    Private WithEvents rtfHEXLog As RichTextBox
    Private WithEvents tpANAF As TabPage
    Private WithEvents txtEndZNum As TextBox
    Private WithEvents txtStartZNum As TextBox
    Private WithEvents dtpEndTime As DateTimePicker
    Private WithEvents dtpEndDate As DateTimePicker
    Private WithEvents dtpStartTime As DateTimePicker
    Private WithEvents dtpStartDate As DateTimePicker
    Private WithEvents chkDST As CheckBox
    Private WithEvents cboRangeType As ComboBox
    Private WithEvents btnCancelDownload As Button
    Private WithEvents btnUploadLogo As Button
    Private WithEvents btnDownload As Button
    Private WithEvents chkOpenFolderAfterDwnl As CheckBox
    Private WithEvents lblEndZNum As Label
    Private WithEvents lblStartZNum As Label
    Private WithEvents lblEndDate As Label
    Private WithEvents lblStartDate As Label
    Private WithEvents lblRangeType As Label
    Private WithEvents tpGetCommandList As TabPage
    Private WithEvents cboHumanNames As ComboBox
    Private WithEvents chkSorted As CheckBox
    Private WithEvents cboCodeType As ComboBox
    Private WithEvents btnGenerateCode As Button
    Private WithEvents btnGetCommandInfo As Button
    Private WithEvents cboCommands As ComboBox
    Private WithEvents txtResult As TextBox
    Private WithEvents btnGetCommandList As Button
    Friend WithEvents BackgroundWorker1 As System.ComponentModel.BackgroundWorker
    Friend WithEvents OpenFileDialog1 As OpenFileDialog
    Friend WithEvents FolderBrowserDialog1 As FolderBrowserDialog
    Private WithEvents grpRAOMode As GroupBox
    Private WithEvents btnSetRAOMode As Button
    Private WithEvents chkActive_OnAfterSettingsChange As CheckBox
    Private WithEvents chkActive_OnAfterCloseConnection As CheckBox
    Private WithEvents chkActive_OnAfterOpenConnection As CheckBox
    Private WithEvents chkSave_Settings_AfterOpenConnection As CheckBox
    Private WithEvents chkRegisterActiveObject As CheckBox
    Private WithEvents chkCheckDeviceStatus As CheckBox
End Class
