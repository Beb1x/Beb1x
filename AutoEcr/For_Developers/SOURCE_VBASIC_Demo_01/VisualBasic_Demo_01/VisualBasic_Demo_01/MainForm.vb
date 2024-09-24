Imports System.Runtime.InteropServices
Imports System.Threading
Imports dude
Imports System.Windows.Forms
Imports System.Collections.Generic
Imports System.Reflection
Imports System.IO
Imports System.Text
Imports System.Globalization
Imports System.Drawing
Imports System

Public Class fm

    Private inCommand As Boolean = False
    Private invalidCharacter1 As Boolean
    Private command_Name As String = ""
    Private fWeHaveWaitEvent As Boolean
    Private fSYNCount As Byte
    Private fAppMessCount As Byte
    Private serv As dude.CFD_DUDE
    Private fComServer_Started As Boolean
    Private fLanguage As TDudeLanguage
    Private fDevice_Connected As Boolean
    Private fComPort As Integer
    Private fLAN_Connected As Boolean
    Private fBaudRate As Integer
    Private fLastError_Code As Integer
    Private fLastError_Message As String
    Public error_Code As Integer

    Private fMyAfterCaseFlag As Boolean
    Private fAfterCase As EAfterCase
    Private active_OnAfterCloseConnection As Boolean
    Private active_OnAfterOpenConnection As Boolean
    Private active_OnAfterSettingsChange As Boolean
    Private registerActiveObject As Boolean
    Private save_Settings_AfterOpenConnection As Boolean


    Private Enum TransportProtocol
        RS232 = 0
        TCPIP
    End Enum

    Public Enum EAfterCase

        ac_AfterStart_Program ' After start of the program
        ac_AfterStart_Server  '
        ac_AfterOpenConnection ' After open connection to the device
        ac_AfterCloseConnection ' After close connection to the device
        ac_AfterStopServer '
        ac_AfterSettingsChange ' After changes from other client application
    End Enum

    Public Property afterCase() As EAfterCase
        Get
            Return fAfterCase
        End Get
        Set
            SetAfterCase(Value)
        End Set
    End Property

    Public Property language() As TDudeLanguage
        Get
            Return fLanguage
        End Get
        Set
            fLanguage = Value
            SetLanguage()
        End Set
    End Property

    Public Property lan_Connected() As Boolean
        Get
            Return fLAN_Connected
        End Get
        Set
            fLAN_Connected = Value
            SetLAN_Connected()
        End Set
    End Property
    Public Property comServer_Started() As Boolean
        Get
            Return fComServer_Started
        End Get
        Set
            fComServer_Started = Value
            SetComServerStarted()
        End Set
    End Property

    Public Property comPort() As Integer
        Get
            Return fComPort
        End Get
        Set
            fComPort = Value
        End Set
    End Property

    Public Property BaudRate() As Integer
        Get
            Return fBaudRate
        End Get
        Set
            fBaudRate = Value
        End Set
    End Property

    Public ReadOnly Property lastError_Code() As Integer
        Get
            Return fLastError_Code
        End Get
    End Property
    Public ReadOnly Property LastError_Message() As String
        Get
            Return fLastError_Message
        End Get
    End Property

    Public Property device_Connected() As Boolean
        Get
            Return fDevice_Connected
        End Get
        Set
            fDevice_Connected = Value
            SetDevice_Connected()
        End Set
    End Property
    Public Sub New()
        InitializeComponent()
    End Sub

    Private Function SetLanguage() As TDudeLanguage
        If fLanguage = TDudeLanguage.English Then
            lblAnswerDriverLanguage.Text = "English"
            cboLanguage.SelectedIndex = 0
            fLanguage = TDudeLanguage.English
            Return TDudeLanguage.English
        Else
            lblAnswerDriverLanguage.Text = "Romanian"
            cboLanguage.SelectedIndex = 1
            fLanguage = TDudeLanguage.Romanian
            Return TDudeLanguage.Romanian
        End If
    End Function

    Private Sub init_Labels()
        Dim textNone As String = "..."

        lblAnswerDriverLanguage.Text = textNone
        lblAnswerDeviceConnected.Text = textNone
        lblAnswerLANConnected.Text = textNone
        lblAnswerDeviceType.Text = textNone
        lblAnswerModelName.Text = textNone
        lblAnswerSerialNum.Text = textNone
        lblAnswerFirmwareRevision.Text = textNone
        lblAnswerFirmwareDate.Text = textNone
        lblAnswerFirmwareCheckSum.Text = textNone
        lblAnswerCodePage.Text = textNone
        lblAnswerDistributor.Text = textNone
        chkActive_OnBeforeScriptExecute.Checked = False
        chkActive_OnScriptRowExecute.Checked = False
        chkActive_OnAfterScriptExecute.Checked = False
        chkActive_OnSendCommand.Checked = False
        chkActive_OnWait.Checked = False
        chkActive_OnReceiveAnswer.Checked = False
        chkActive_OnStatusChange.Checked = False
        chkActive_OnError.Checked = False
        chkActive_OnFirstProgress_Init.Checked = False
        chkActive_OnFirstProgress_Loop.Checked = False
        chkActive_OnFirstProgress_Complete.Checked = False
        chkActive_OnSecondProgress_Init.Checked = False
        chkActive_OnSecondProgress_Loop.Checked = False
        chkActive_OnSecondProgress_Complete.Checked = False
        chkTrackingMode.Checked = False
        txtTrackingModePath.Text = ""
        txtTrackingModeFileName.Text = ""
        txtTrackingModeRowLimit.Text = "0"
        btnSetTrackingMode.Enabled = False
    End Sub

    Private Sub get_ActiveEvents()
        chkActive_OnBeforeScriptExecute.Checked = serv.active_OnBeforeScriptExecute
        chkActive_OnScriptRowExecute.Checked = serv.active_OnScriptRowExecute
        chkActive_OnAfterScriptExecute.Checked = serv.active_OnAfterScriptExecute
        chkActive_OnSendCommand.Checked = serv.active_OnSendCommand
        chkActive_OnWait.Checked = serv.active_OnWait
        chkActive_OnReceiveAnswer.Checked = serv.active_OnReceiveAnswer
        chkActive_OnStatusChange.Checked = serv.active_OnStatusChange
        chkActive_OnError.Checked = serv.active_OnError
        chkActive_OnFirstProgress_Init.Checked = serv.active_OnFirstProgress_Init
        chkActive_OnFirstProgress_Loop.Checked = serv.active_OnFirstProgress_Loop
        chkActive_OnFirstProgress_Complete.Checked = serv.active_OnFirstProgress_Complete
        chkActive_OnSecondProgress_Init.Checked = serv.active_OnSecondProgress_Init
        chkActive_OnSecondProgress_Loop.Checked = serv.active_OnSecondProgress_Loop
        chkActive_OnSecondProgress_Complete.Checked = serv.active_OnSecondProgress_Complete
        '
        chkActive_OnAfterOpenConnection.Checked = serv.active_OnAfterOpenConnection
        chkActive_OnAfterCloseConnection.Checked = serv.active_OnAfterCloseConnection
        chkRegisterActiveObject.Checked = serv.register_ActiveObject_OnStart
        chkSave_Settings_AfterOpenConnection.Checked = serv.save_SettingsAfterOpenConnection
        chkTrackingMode.Checked = serv.trackingMode
        chkActive_OnAfterSettingsChange.Checked = serv.active_OnAfterSettingsChange
        chkCheckDeviceStatus.Checked = serv.checkDeviceStatusOnCheckConnection


    End Sub

    Private Sub SetAfterCase(value As EAfterCase)
        fAfterCase = value

        Set_Other(value)
        Set_CheckBoxes(value)
    End Sub

    Private Sub Set_CheckBoxes(afterCase As EAfterCase)
        Try
            Select Case afterCase
                Case EAfterCase.ac_AfterStopServer, EAfterCase.ac_AfterStart_Program
                    If True Then
                        chkActive_OnBeforeScriptExecute.Checked = False
                        chkActive_OnScriptRowExecute.Checked = False
                        chkActive_OnAfterScriptExecute.Checked = False
                        chkActive_OnSendCommand.Checked = False
                        chkActive_OnWait.Checked = False
                        chkActive_OnReceiveAnswer.Checked = False
                        chkActive_OnStatusChange.Checked = False
                        chkActive_OnError.Checked = False
                        chkActive_OnFirstProgress_Init.Checked = False
                        chkActive_OnFirstProgress_Loop.Checked = False
                        chkActive_OnFirstProgress_Complete.Checked = False
                        chkActive_OnSecondProgress_Init.Checked = False
                        chkActive_OnSecondProgress_Loop.Checked = False
                        chkActive_OnSecondProgress_Complete.Checked = False
                        chkTrackingMode.Checked = False
                        chkActive_OnAfterOpenConnection.Checked = False
                        chkActive_OnAfterCloseConnection.Checked = False
                        chkRegisterActiveObject.Checked = False
                        chkSave_Settings_AfterOpenConnection.Checked = False
                        chkCheckDeviceStatus.Checked = False
                        chkTrackingMode.Checked = False
                        chkActive_OnAfterSettingsChange.Checked = False
                        pnlStatusBytes.Visible = False
                        pnlProgress.Visible = False
                        pnlErrors.Visible = False
                        Exit Select
                    End If

                Case EAfterCase.ac_AfterStart_Server, EAfterCase.ac_AfterSettingsChange
                    If True Then
                        get_ActiveEvents()
                        If serv.connected_ToDevice Then

                            pnlStatusBytes.Visible = True
                            pnlProgress.Visible = True
                            pnlErrors.Visible = True
                        End If
                        Exit Select

                    End If
                Case EAfterCase.ac_AfterCloseConnection
                    If True Then
                        pnlStatusBytes.Visible = False
                        pnlProgress.Visible = False
                        pnlErrors.Visible = False
                        Exit Select
                    End If
                Case EAfterCase.ac_AfterOpenConnection
                    If True Then
                        get_StatusState()
                        pnlStatusBytes.Visible = True
                        pnlProgress.Visible = True
                        pnlErrors.Visible = True
                        Exit Select
                    End If
            End Select
        Finally
            'this.Refresh();
        End Try
    End Sub

    Private Sub Set_Other(afterCase As EAfterCase)
        Try
            Select Case afterCase
                Case EAfterCase.ac_AfterStopServer, EAfterCase.ac_AfterStart_Program
                    If True Then

                        pnlErrors.Visible = False
                        pnlProgress.Visible = False
                        pnlStatusBytes.Visible = False
                        cboToggleSwitch.Enabled = False
                        rtfHumanLog.Clear()
                        rtfHEXLog.Clear()
                        Exit Select
                    End If
                Case EAfterCase.ac_AfterCloseConnection, EAfterCase.ac_AfterStart_Server
                    If True Then

                        pnlErrors.Visible = False
                        pnlProgress.Visible = False
                        pnlStatusBytes.Visible = False
                        cboToggleSwitch.Enabled = True

                        If comServer_Started Then
                            Select Case serv.protocol_TransportType

                                Case TTransportProtocol.ctc_RS232
                                    If True Then
                                        cboToggleSwitch.SelectedIndex = 0
                                        Exit Select
                                    End If
                                Case TTransportProtocol.ctc_TCPIP
                                    If True Then
                                        cboToggleSwitch.SelectedIndex = 1
                                        Exit Select
                                    End If

                            End Select

                            get_StatusState()
                            btnOpenConnection.Enabled = Not serv.connected_ToDevice
                            btnStopConnection.Enabled = serv.connected_ToDevice
                            tcMain.TabPages.Remove(tpCustomCmds)
                            Me.tpCustomScript.Hide()
                            tcMain.TabPages.Remove(tpCustomScript)
                            Me.tpANAF.Hide()
                            tcMain.TabPages.Remove(tpANAF)
                            Me.tpSystemInfo.Hide()
                            tcMain.TabPages.Remove(tpSystemInfo)
                            Me.tpGetCommandList.Hide()
                            tcMain.TabPages.Remove(tpGetCommandList)
                            Me.tpProperties.Hide()
                            tcMain.TabPages.Remove(tpProperties)
                            Me.tpBehaviour.Hide()
                            tcMain.TabPages.Remove(tpBehaviour)
                            tcMain.SelectedTab = tpInitConnect
                        End If
                        Exit Select

                        End If
                        Case EAfterCase.ac_AfterSettingsChange
                    If True Then
                        cboToggleSwitch.Enabled = Not serv.connected_ToDevice
                        If serv.connected_ToDevice Then
                            pnlErrors.Visible = True
                            pnlProgress.Visible = True
                            pnlStatusBytes.Visible = True
                        Else
                            pnlErrors.Visible = False
                            pnlProgress.Visible = False
                            pnlStatusBytes.Visible = False
                            cboToggleSwitch.Enabled = True
                            btnOpenConnection.Enabled = Not serv.connected_ToDevice
                            btnStopConnection.Enabled = serv.connected_ToDevice
                        End If
                        Exit Select
                        End If
                        Case EAfterCase.ac_AfterOpenConnection
                    If True Then
                        cboToggleSwitch.Enabled = False
                        pnlErrors.Visible = True
                        pnlProgress.Visible = True
                        pnlStatusBytes.Visible = True
                        tcMain.TabPages.Add(tpProperties)
                        Me.tpProperties.Show()
                        tcMain.TabPages.Add(tpBehaviour)
                        Me.tpBehaviour.Show()
                        tcMain.TabPages.Add(tpSystemInfo)
                        Me.tpSystemInfo.Show()
                        tcMain.TabPages.Add(tpCustomCmds)
                        Me.tpCustomCmds.Show()
                        tcMain.TabPages.Add(tpCustomScript)
                        Me.tpCustomScript.Show()
                        tcMain.TabPages.Add(tpANAF)
                        Me.tpANAF.Show()
                        tcMain.TabPages.Add(tpGetCommandList)
                        Me.tpGetCommandList.Show()
                        tcMain.SelectedTab = tpProperties
                        rtfHumanLog.Clear()
                        rtfHEXLog.Clear()
                        get_StatusState()
                        Exit Select
                    End If
            End Select
        Finally
            'this.Refresh();
        End Try
    End Sub

    Private Function SetComServerStarted() As Boolean
        btnStartComServer.Enabled = Not (fComServer_Started)
        btnStopComServer.Enabled = fComServer_Started

        lblComPort.Enabled = fComServer_Started
        txtComPort.Enabled = fComServer_Started
        lblBaudRate.Enabled = fComServer_Started
        txtBaudRate.Enabled = fComServer_Started

        lblIPAddress.Enabled = fComServer_Started
        txtIPAddress.Enabled = fComServer_Started
        lblPort.Enabled = fComServer_Started
        txtLANPort.Enabled = fComServer_Started

        btnOpenConnection.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected))
        btnStopConnection.Enabled = (fComServer_Started) AndAlso (fDevice_Connected)
        btnSetDriverLanguage.Enabled = (fComServer_Started)
        cboLanguage.Enabled = (fComServer_Started)

        If fComServer_Started Then
            Select Case serv.protocol_TransportType

                Case TTransportProtocol.ctc_RS232
                    If True Then
                        cboToggleSwitch.SelectedIndex = 0
                        Exit Select
                    End If
                Case TTransportProtocol.ctc_TCPIP
                    If True Then
                        cboToggleSwitch.SelectedIndex = 1
                        Exit Select
                    End If
            End Select
            txtComPort.Text = serv.rs232_ComPort.ToString()
            txtBaudRate.Text = serv.rs232_BaudRate.ToString()
            txtLANPort.Text = serv.tcpip_Port.ToString()
            txtIPAddress.Text = serv.tcpip_Address
            fLanguage = serv.language
            SetLanguage()
            fDevice_Connected = serv.connected_ToDevice
            SetDevice_Connected()
            fLAN_Connected = serv.connected_ToLAN
            SetLAN_Connected()
            get_ActiveEvents()
            Return True
        Else
            init_Labels()
            Return False
        End If
    End Function

    Private Sub get_StatusDescriptions()
        Dim i As Byte, j As Byte
        Dim ch As Control
        Dim pnl As Panel
        Dim tmpDescription As String, name As String
        Dim tmpCheckForErr As Boolean
        If Not (comServer_Started) Then
            Return
        End If
        pnl = CType(Me.Controls("pnlStatusBytes"), Panel)
        If Me.Controls("pnlStatusBytes") IsNot Nothing Then

            i = 0
            While i <= 7
                j = 0
                While j <= 7
                    tmpDescription = serv.get_SBit_Description(i, j)
                    tmpCheckForErr = serv.get_SBit_ErrorChecking(i, j)
                    name = "chbx_S" + i.ToString() + "_" + j.ToString()
                    ch = Me.Controls("pnlStatusBytes").Controls("grbx_StatusByte_" + i.ToString()).Controls(name)
                    If ch IsNot Nothing Then
                        ch.Text = tmpDescription
                        If tmpCheckForErr Then
                            ch.Font = New Font(ch.Font, FontStyle.Bold)
                        Else
                            ch.Font = New Font(ch.Font, FontStyle.Regular)

                        End If
                    End If
                    j += 1
                End While
                i += 1
            End While
        End If
    End Sub

    Private Function get_Statuses() As Boolean(,)
        Dim state As Boolean(,) = New Boolean(7, 7) {}
        Dim i As Byte = 0
        While i <= 7
            Dim j As Byte = 0
            While j <= 7
                state(i, j) = serv.get_SBit_State(i, j)
                j += 1
            End While
            i += 1
        End While

        Return state
    End Function

    Private checkboxes As CheckBox(,) = New CheckBox(7, 7) {}

    Private Sub get_StatusState()
        display_StatusState(get_Statuses())
    End Sub

    Private Sub display_StatusState(state As Boolean(,))
        Dim i As Byte, j As Byte
        Dim ch As CheckBox
        Dim name As String = ""
        Dim tmpState As Boolean


        If Not (comServer_Started) Then
            Return
        End If
        i = 0
        While i <= 7
            j = 0
            While j <= 7
                tmpState = state(i, j)
                name = "chbx_S" + i.ToString() + "_" + j.ToString()
                ch = checkboxes(i, j)
                If ch IsNot Nothing Then
                    ch.Checked = tmpState
                End If
                j += 1
            End While
            i += 1
        End While
    End Sub

    Private Function SetDevice_Connected() As Boolean
        lblPort.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected)) AndAlso (cboToggleSwitch.SelectedIndex = 1)
        txtLANPort.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected)) AndAlso (cboToggleSwitch.SelectedIndex = 1)
        lblIPAddress.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected)) AndAlso (cboToggleSwitch.SelectedIndex = 1)
        txtIPAddress.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected)) AndAlso (cboToggleSwitch.SelectedIndex = 1)
        lblComPort.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected)) AndAlso (cboToggleSwitch.SelectedIndex = 0)
        txtComPort.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected)) AndAlso (cboToggleSwitch.SelectedIndex = 0)
        lblBaudRate.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected)) AndAlso (cboToggleSwitch.SelectedIndex = 0)
        txtBaudRate.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected)) AndAlso (cboToggleSwitch.SelectedIndex = 0)

        cboToggleSwitch.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected))
        btnOpenConnection.Enabled = (fComServer_Started) AndAlso (Not (fDevice_Connected))
        btnStopConnection.Enabled = (fComServer_Started) AndAlso ((fDevice_Connected))

        If fDevice_Connected Then

            lblAnswerDeviceConnected.Text = "Connected"
            Select Case serv.device_Type
                Case TDeviceType.dt_FiscalPrinter
                    If True Then
                        lblAnswerDeviceType.Text = "Fiscal printer"
                        Exit Select
                    End If
                Case TDeviceType.dt_ECR
                    If True Then
                        lblAnswerDeviceType.Text = "Cash register"
                        Exit Select
                    End If
            End Select
            lblAnswerModelName.Text = serv.device_Model_Name
            lblAnswerSerialNum.Text = serv.device_Number_Serial
            lblAnswerFirmwareRevision.Text = serv.device_Firmware_Revision
            lblAnswerFirmwareDate.Text = serv.device_Firmware_Date
            lblAnswerFirmwareCheckSum.Text = serv.device_Firmware_CheckSum
            lblAnswerCodePage.Text = serv.codePage.ToString()
            lblAnswerDistributor.Text = serv.device_Distributor
            chkTrackingMode.Checked = serv.trackingMode
            txtTrackingModePath.Text = serv.trackingMode_Path
            txtTrackingModeFileName.Text = serv.trackingMode_FileName
            txtTrackingModeRowLimit.Text = serv.trackingMode_RowLimit.ToString()
            btnSetTrackingMode.Enabled = True
            tcMain.SelectedTab = tpProperties
            pnlStatusBytes.Visible = fDevice_Connected
            pnlErrors.Visible = fDevice_Connected
            pnlProgress.Visible = fDevice_Connected
            get_StatusDescriptions()
            get_StatusState()
            get_ActiveEvents()
            Return True
        Else
            init_Labels()
            If fComServer_Started Then
                If serv IsNot Nothing Then

                    lblAnswerDeviceConnected.Text = "Not connected"
                    fLanguage = serv.language
                    SetLanguage()
                    fLAN_Connected = serv.connected_ToLAN
                    SetLAN_Connected()
                End If
            End If
            Me.tpCustomCmds.Hide()
            tcMain.TabPages.Remove(tpCustomCmds)
            Me.tpCustomScript.Hide()
            tcMain.TabPages.Remove(tpCustomScript)
            Me.tpANAF.Hide()
            tcMain.TabPages.Remove(tpANAF)
            Me.tpSystemInfo.Hide()
            tcMain.TabPages.Remove(tpSystemInfo)
            Me.tpGetCommandList.Hide()
            tcMain.TabPages.Remove(tpGetCommandList)
            Me.tpProperties.Hide()
            tcMain.TabPages.Remove(tpProperties)
            Me.tpBehaviour.Hide()
            tcMain.TabPages.Remove(tpBehaviour)
            tcMain.SelectedTab = tpInitConnect
            pnlStatusBytes.Visible = fDevice_Connected
            pnlErrors.Visible = fDevice_Connected
            pnlProgress.Visible = fDevice_Connected
            Return False
        End If


    End Function

    Private Function SetLAN_Connected() As Boolean
        If fLAN_Connected Then
            lblAnswerLANConnected.Text = "Available"
            Return True
        Else
            lblAnswerLANConnected.Text = "Not available"
            Return False
        End If

    End Function


    Private Function try_ToStartCOMServer() As Boolean
        Dim running_obj As [Object] = Nothing
        Try
            Try
                ' Check if another instance of COM server is running
                running_obj = System.Runtime.InteropServices.Marshal.GetActiveObject("dude.CFD_DUDE")

            Catch generatedExceptionName As System.Exception
                'failed to find the object;
            End Try
            If running_obj IsNot Nothing Then
                serv = CType(System.Runtime.InteropServices.Marshal.GetActiveObject("dude.CFD_DUDE"), CFD_DUDE)
            Else
                serv = New CFD_DUDE()
            End If
            Return True
        Catch
            MessageBox.Show("The program cannot detect driver!" + vbCrLf + "Please install 'Datecs Universal Driver Engine - COMServer' or call the support team!")
            Return False
        End Try
    End Function

    Private Sub btnStartComServer_Click(sender As Object, e As EventArgs) Handles btnStartComServer.Click
        Try

            If try_ToStartCOMServer() Then

                pnlSettings.Enabled = True

                AddHandler Me.serv.OnError, AddressOf Serv_OnError
                AddHandler Me.serv.OnBeforeScriptExecute, AddressOf Serv_OnBeforeScriptExecute
                AddHandler Me.serv.OnScriptRowExecute, AddressOf Serv_OnScriptRowExecute
                AddHandler Me.serv.OnFirstProgress_Complete, AddressOf Serv_OnFirstProgress_Complete
                AddHandler Me.serv.OnFirstProgress_Init, AddressOf Serv_OnFirstProgress_Init
                AddHandler Me.serv.OnFirstProgress_Loop, AddressOf Serv_OnFirstProgress_Loop
                AddHandler Me.serv.OnSecondProgress_Complete, AddressOf Serv_OnSecondProgress_Complete
                AddHandler Me.serv.OnSecondProgress_Init, AddressOf Serv_OnSecondProgress_Init
                AddHandler Me.serv.OnSecondProgress_Loop, AddressOf Serv_OnSecondProgress_Loop
                AddHandler Me.serv.OnAfterScriptExecute, AddressOf Serv_OnAfterScriptExecute
                AddHandler Me.serv.OnReceiveAnswer, AddressOf Serv_OnReceiveAnswer
                AddHandler Me.serv.OnWait, AddressOf Serv_OnWait
                AddHandler Me.serv.OnSendCommand, AddressOf Serv_OnSendCommand
                AddHandler Me.serv.OnStatusChange, AddressOf Serv_OnStatusChange
                '
                AddHandler Me.serv.OnAfterChangeSettings, AddressOf Serv_OnAfterChangeSettings
                AddHandler Me.serv.OnAfterCloseConnection, AddressOf Serv_OnAfterCloseConnection
                AddHandler Me.serv.OnAfterOpenConnection, AddressOf Serv_OnAfterOpenConnection

                fLanguage = serv.language
                SetLanguage()
                fComServer_Started = True
                SetComServerStarted()
                Select Case serv.protocol_TransportType
                    Case TTransportProtocol.ctc_RS232
                        cboToggleSwitch.SelectedIndex = CType(TransportProtocol.RS232, Integer)
                        Exit Select
                    Case TTransportProtocol.ctc_TCPIP
                        cboToggleSwitch.SelectedIndex = CType(TransportProtocol.TCPIP, Integer)
                        Exit Select
                    Case Else
                        cboToggleSwitch.SelectedIndex = CType(TransportProtocol.RS232, Integer)
                        Exit Select
                End Select

                lan_Connected = serv.connected_ToLAN
                SetLAN_Connected()
                If serv.connected_ToDevice Then
                    btnOpenConnection.Enabled = False
                    tcMain.SelectedTab = tpProperties
                    pnlStatusBytes.Visible = True
                    afterCase = EAfterCase.ac_AfterOpenConnection
                    Return
                End If

                fDevice_Connected = serv.connected_ToDevice
                SetDevice_Connected()
                btnStopComServer.Enabled = True
                btnStartComServer.Enabled = False
                btnOpenConnection.Enabled = True
                btnStopConnection.Enabled = False
                btnSetDriverLanguage.Enabled = True

                afterCase = EAfterCase.ac_AfterStart_Server
                tcMain.SelectedTab = tpInitConnect
                pnlStatusBytes.Visible = False
            End If
        Catch t As Exception
            MessageBox.Show(t.Message)
            comServer_Started = False
        End Try
    End Sub

    Private Sub Serv_OnError(error_Code As Integer, ByRef error_Message As String)
        Dim tmp_error_Message As String = If(error_Message <> Nothing, error_Message, "")

        Me.BeginInvoke(CType(Sub()
                                 Dim [date] As DateTime = DateTime.Now
                                 lstErrors.Items.Add("[" + [date].ToString("dd-MM-yy HH:mm:ss") + "] ErrCode[" + error_Code.ToString() + "]: " + tmp_error_Message)
                                 get_StatusState()

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnAfterChangeSettings(settings_Index As Integer)
        Dim tmpMessage As String = ""


        If fMyAfterCaseFlag Then
            Return
        End If
        Me.BeginInvoke(CType(Sub()
                                 Try
                                     ' Event raised if:
                                     ' - the server save settings after successful connection to the device;
                                     ' - in "RAO mode" : if other client application change settings;

                                     tmpMessage = "[" + DateTime.UtcNow.ToString("dd-MM-yyyy HH:mm:ss.fff", CultureInfo.InvariantCulture) + "]: "
                                     Select Case settings_Index
                                         Case 0
                                             tmpMessage = tmpMessage + "Set_TrackingMode_FileName"
                                             Exit Select
                                         Case 1
                                             tmpMessage = tmpMessage + "Set_TrackingMode"
                                             Exit Select
                                         Case 2
                                             tmpMessage = tmpMessage + "Set_Download_Path"
                                             Exit Select
                                         Case 3
                                             tmpMessage = tmpMessage + "Set_TrackingMode_Path"

                                             Exit Select
                                         Case 4
                                             tmpMessage = tmpMessage + "Set_TrackingMode_RowLimit"
                                             Exit Select
                                         Case 5
                                             tmpMessage = tmpMessage + "Set_TransportType"
                                             Exit Select
                                         Case 6
                                             tmpMessage = tmpMessage + "Set_Language"
                                             Exit Select
                                         Case 7
                                             tmpMessage = tmpMessage + "Set_Read_TimeOutValue"
                                             Exit Select
                                         Case 8
                                             tmpMessage = tmpMessage + "Set_Exit_ByReadTimeOutIsOn"
                                             Exit Select
                                         Case 9
                                             tmpMessage = tmpMessage + "Set_RS232"
                                             Exit Select
                                         Case 10
                                             tmpMessage = tmpMessage + "Set_RS232_Timeouts"
                                             Exit Select
                                         Case 11
                                             tmpMessage = tmpMessage + "Set_TCPIP"
                                             Exit Select
                                         Case 12
                                             tmpMessage = tmpMessage + "Set_DateRange_EndValue"
                                             Exit Select
                                         Case 13
                                             tmpMessage = tmpMessage + "Set_DateRange_StartValuev"
                                             Exit Select
                                         Case 14
                                             tmpMessage = tmpMessage + "Set_RS232_OnOpen_Set_DCB"
                                             Exit Select
                                         Case 15
                                             tmpMessage = tmpMessage + "Set_RS232_OnOpen_Set_DTR_ToFalse"
                                             Exit Select
                                         Case 16
                                             tmpMessage = tmpMessage + "Set_RS232_OnOpen_Set_RTS_ToFalsev"
                                             Exit Select
                                         Case 17
                                             tmpMessage = tmpMessage + "Set_zRange_EndValue"
                                             Exit Select
                                         Case 18
                                             tmpMessage = tmpMessage + "Set_zRange_StartValue"
                                             Exit Select
                                         Case 19
                                             tmpMessage = tmpMessage + "Set_ScriptEvents"
                                             Exit Select
                                         Case 20
                                             tmpMessage = tmpMessage + "Set_FirstProgressEvents"
                                             Exit Select
                                         Case 21
                                             tmpMessage = tmpMessage + "Set_SecondProgressEvents"
                                             Exit Select
                                         Case 22
                                             tmpMessage = tmpMessage + "Set_CommunicationEvents"
                                             Exit Select
                                         Case 23
                                             tmpMessage = tmpMessage + "Set_DocumentNumber_StartValue"
                                             Exit Select
                                         Case 24
                                             tmpMessage = tmpMessage + "Set_DocumentNumber_EndValue"
                                             Exit Select
                                         Case 25
                                             tmpMessage = tmpMessage + "Set_JEDocumentType"
                                             Exit Select
                                         Case 26
                                             tmpMessage = tmpMessage + "Set_OpenCloseEvents"
                                             Exit Select
                                     End Select
                                     lstErrors.Items.Add(tmpMessage)
                                 Finally

                                     afterCase = EAfterCase.ac_AfterSettingsChange
                                 End Try

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnAfterOpenConnection()
        Me.BeginInvoke(CType(Sub()
                                 afterCase = EAfterCase.ac_AfterOpenConnection

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnAfterCloseConnection()
        Me.BeginInvoke(CType(Sub()
                                 afterCase = EAfterCase.ac_AfterCloseConnection

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnWait(Value As Byte)
        Me.BeginInvoke(CType(Sub()
                                 If fSYNCount >= 16 Then

                                     fSYNCount = 0
                                     rtfHEXLog.SelectionStart = rtfHEXLog.TextLength
                                     rtfHEXLog.SelectedText = vbCrLf
                                     ' #13#10;
                                     rtfHEXLog.SelectionStart = rtfHEXLog.TextLength
                                     If fAppMessCount >= 5 Then

                                         fAppMessCount = 0
                                         rtfHEXLog.SelectionStart = rtfHEXLog.TextLength
                                         rtfHEXLog.SelectedText = vbCrLf
                                         rtfHEXLog.SelectionStart = rtfHEXLog.TextLength
                                     Else
                                         fAppMessCount += 1
                                     End If
                                 End If
                                 rtfHEXLog.SelectionColor = System.Drawing.ColorTranslator.FromHtml("#00FF8080")
                                 rtfHEXLog.SelectedText = " " + [String].Format("{0:X}", Value)
                                 ' byte to HEX string
                                 fWeHaveWaitEvent = True

                                 fSYNCount += 1

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnStatusChange()
        Dim state As Object = get_Statuses()
        Me.BeginInvoke(CType(Sub()
                                 display_StatusState(state)

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Handle_dhtTextReceive(tmp_DateAndTime As String, tmp_repeat_Value As String, tmp_Command As String, tmp_human_Data As String)
        Try
            Try
                rtfHumanLog.SelectionColor = Color.Blue
                rtfHumanLog.AppendText("[Answer ]")
                rtfHumanLog.SelectionColor = Color.Black
                rtfHumanLog.AppendText(";")
                rtfHumanLog.SelectionColor = Color.Green
                rtfHumanLog.AppendText("[" + tmp_DateAndTime + "]")
                rtfHumanLog.SelectionColor = Color.Black
                rtfHumanLog.AppendText(";[" + tmp_repeat_Value + "];")
                rtfHumanLog.SelectionColor = Color.Violet
                rtfHumanLog.AppendText("[Command = " + tmp_Command + "]" + vbTab)
                rtfHumanLog.SelectionColor = Color.Blue

                rtfHumanLog.AppendText(tmp_human_Data)
            Catch e As Exception
                lstErrors.Items.Add(e.Message)
            End Try
        Finally
            scrollToEnd(rtfHumanLog)
            initForSniffer(rtfHumanLog)
        End Try
    End Sub

    Private Sub Handle_dhtHexReceive(tmp_DateAndTime As String, tmp_repeat_Value As String, tmp_Command As String, tmp_hex_Header As String, tmp_hex_Data As String, tmp_hex_Footer As String)
        Try
            Try

                rtfHEXLog.SelectionColor = Color.Fuchsia
                rtfHEXLog.AppendText("[Answer ]")
                rtfHEXLog.SelectionColor = Color.Black
                rtfHEXLog.AppendText(";")
                rtfHEXLog.SelectionColor = Color.Green
                rtfHEXLog.AppendText("[" + tmp_DateAndTime + "]")
                rtfHEXLog.SelectionColor = Color.Black
                rtfHEXLog.AppendText(";[" + tmp_repeat_Value + "];")
                rtfHEXLog.SelectionColor = Color.Violet
                rtfHEXLog.AppendText("[Command = " + tmp_Command + "]" + vbTab)
                rtfHEXLog.SelectionColor = Color.Blue
                rtfHEXLog.AppendText(tmp_hex_Header)
                rtfHEXLog.SelectionColor = Color.Fuchsia
                rtfHEXLog.AppendText(tmp_hex_Data)
                rtfHEXLog.SelectionColor = Color.Blue

                rtfHEXLog.AppendText(tmp_hex_Footer)
            Catch e As Exception

                lstErrors.Items.Add(e.Message)
            End Try
        Finally
            scrollToEnd(rtfHEXLog)
            initForSniffer(rtfHEXLog)
        End Try

    End Sub

    Private Sub Handle_dhtTextRequest(tmp_DateAndTime As String, tmp_repeat_Value As String, tmp_Command As String, tmp_human_Data As String)
        Try
            Try
                rtfHumanLog.SelectionColor = Color.DarkOrange
                rtfHumanLog.AppendText("[Request]")
                rtfHumanLog.SelectionColor = Color.Black
                rtfHumanLog.AppendText(";")
                rtfHumanLog.SelectionColor = Color.Green
                rtfHumanLog.AppendText("[" + tmp_DateAndTime + "]")
                rtfHumanLog.SelectionColor = Color.Black
                rtfHumanLog.AppendText(";[" + tmp_repeat_Value + "];")
                rtfHumanLog.SelectionColor = Color.Violet
                rtfHumanLog.AppendText("[Command = " + tmp_Command + "]" + vbTab)
                ' "\t" Tabulation
                rtfHumanLog.SelectionColor = Color.DarkOrange

                rtfHumanLog.AppendText(tmp_human_Data)
            Catch e As Exception

                lstErrors.Items.Add(e.Message)
            End Try
        Finally
            scrollToEnd(rtfHumanLog)
            initForSniffer(rtfHumanLog)
        End Try
    End Sub

    Private Sub Handle_dhtHexRequest(tmp_DateAndTime As String, tmp_repeat_Value As String, tmp_Command As String, tmp_hex_Header As String, tmp_hex_Data As String, tmp_hex_Footer As String)
        Try
            Try
                rtfHEXLog.SelectionColor = Color.DarkOrange
                rtfHEXLog.AppendText("[Request]")
                rtfHEXLog.SelectionColor = Color.Black
                rtfHEXLog.AppendText(";")
                rtfHEXLog.SelectionColor = Color.Green
                rtfHEXLog.AppendText("[" + tmp_DateAndTime + "]")
                rtfHEXLog.SelectionColor = Color.Black
                rtfHEXLog.AppendText(";[" + tmp_repeat_Value + "];")
                rtfHEXLog.SelectionColor = Color.Violet
                rtfHEXLog.AppendText("[Command = " + tmp_Command + "]" + vbTab)
                rtfHEXLog.SelectionColor = Color.Blue
                rtfHEXLog.AppendText(tmp_hex_Header)
                rtfHEXLog.SelectionColor = Color.DarkOrange
                rtfHEXLog.AppendText(tmp_hex_Data)
                rtfHEXLog.SelectionColor = Color.Blue

                rtfHEXLog.AppendText(tmp_hex_Footer)
            Catch e As Exception

                lstErrors.Items.Add(e.Message)
            End Try
        Finally
            scrollToEnd(rtfHEXLog)
            initForSniffer(rtfHEXLog)
        End Try

    End Sub

    Private Sub Serv_OnSendCommand(ByRef Command As String, ByRef DateAndTime As String, ByRef repeat_Value As String, ByRef hex_Header As String, ByRef hex_Data As String, ByRef hex_Footer As String,
        ByRef human_Data As String)
        Dim tmp_Command As String = If(Command <> Nothing, Command, "")
        Dim tmp_DateAndTime As String = If(DateAndTime <> Nothing, DateAndTime, "")
        Dim tmp_repeat_Value As String = If(repeat_Value <> Nothing, repeat_Value, "")
        Dim tmp_hex_Header As String = If(hex_Header <> Nothing, hex_Header, "")
        Dim tmp_hex_Data As String = If(hex_Data <> Nothing, hex_Data, "")
        Dim tmp_hex_Footer As String = If(hex_Footer <> Nothing, hex_Footer, "")
        Dim tmp_human_Data As String = If(human_Data <> Nothing, human_Data, "")

        Me.BeginInvoke(CType(Sub()
                                 Handle_dhtTextRequest(tmp_DateAndTime, tmp_repeat_Value,'
                                                       tmp_Command, tmp_human_Data)
                                 Handle_dhtHexRequest(tmp_DateAndTime, tmp_repeat_Value, tmp_Command,'
                                                      tmp_hex_Header, tmp_hex_Data, tmp_hex_Footer)
                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnReceiveAnswer(ByRef Command As String, ByRef DateAndTime As String, ByRef repeat_Value As String, ByRef hex_Header As String, ByRef hex_Data As String, ByRef hex_Footer As String,
        ByRef human_Data As String)
        Dim tmp_Command As String = If(Command <> Nothing, Command, "")
        Dim tmp_DateAndTime As String = If(DateAndTime <> Nothing, DateAndTime, "")
        Dim tmp_repeat_Value As String = If(repeat_Value <> Nothing, repeat_Value, "")
        Dim tmp_hex_Header As String = If(hex_Header <> Nothing, hex_Header, "")
        Dim tmp_hex_Data As String = If(hex_Data <> Nothing, hex_Data, "")
        Dim tmp_hex_Footer As String = If(hex_Footer <> Nothing, hex_Footer, "")
        Dim tmp_human_Data As String = If(human_Data <> Nothing, human_Data, "")

        Me.BeginInvoke(CType(Sub()
                                 If fWeHaveWaitEvent Then

                                     initForSniffer(rtfHEXLog)
                                     fWeHaveWaitEvent = False
                                 End If
                                 Handle_dhtTextReceive(tmp_DateAndTime, tmp_repeat_Value,'
                                                       tmp_Command, tmp_human_Data)
                                 Handle_dhtHexReceive(tmp_DateAndTime, tmp_repeat_Value, tmp_Command,'
                                                      tmp_hex_Header, tmp_hex_Data, tmp_hex_Footer)

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnAfterScriptExecute()
        Me.BeginInvoke(CType(Sub()
                                 enableScriptBtns(True)

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnScriptRowExecute(row_Index As Integer, error_Code As Integer, ByRef input_Value As String, ByRef output_Value As String)

        Dim tmp_output_Value As String = If(output_Value <> Nothing, output_Value, "")

        Me.BeginInvoke(CType(Sub()
                                 lstErrors.Items.Clear()
                                 If error_Code <> 0 Then
                                     Dim [date] As DateTime = DateTime.Now
                                     lstErrors.Items.Add("Line[" + row_Index.ToString() + "] [" + [date].ToString("dd-MM-yy HH:mm:ss") + "] ErrCode[" + error_Code.ToString() + "]: " + tmp_output_Value)
                                     get_StatusState()
                                 End If

                             End Sub, MethodInvoker))


    End Sub

    Private Sub Serv_OnFirstProgress_Complete()
        Me.BeginInvoke(CType(Sub()
                                 prg1.Value = prg1.Maximum

                             End Sub, MethodInvoker))


    End Sub

    Private Sub Serv_OnFirstProgress_Init(value_Minimum As Integer, value_Maximum As Integer, value_Position As Integer)

        Me.BeginInvoke(CType(Sub()
                                                                  prg1.Value = value_Position
                                                                  prg1.Minimum = value_Minimum
                                                                  prg1.Maximum = value_Maximum

                                                              End Sub, MethodInvoker))

    End Sub

    Private Sub Serv_OnSecondProgress_Loop(value_Position As Integer)
        Me.BeginInvoke(CType(Sub()
                                 If value_Position < prg2.Maximum Then
                                     prg2.Value = value_Position
                                 End If

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnSecondProgress_Init(value_Minimum As Integer, value_Maximum As Integer, value_Position As Integer)
        Me.BeginInvoke(CType(Sub()
                                 prg2.Minimum = value_Minimum
                                 prg2.Maximum = value_Maximum
                                 prg2.Value = value_Position

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnSecondProgress_Complete()
        Me.BeginInvoke(CType(Sub()
                                 prg2.Value = prg2.Maximum

                             End Sub, MethodInvoker))
    End Sub

    Private Sub Serv_OnFirstProgress_Loop(value_Position As Integer)
        Me.BeginInvoke(CType(Sub()
                                 If value_Position < prg1.Maximum Then
                                     prg1.Value = value_Position
                                 End If

                             End Sub, MethodInvoker))
    End Sub

    Private Sub enableScriptBtns(toValue As Boolean)
        btnExecuteSimpleScript.Enabled = toValue
        btnExecuteSelected.Enabled = toValue
        btnDeleteScript.Enabled = toValue
        btnDeleteOutput.Enabled = toValue
        btnCancel.Enabled = Not toValue
    End Sub

    Private Sub scrollToEnd(targetEditor As RichTextBox)
        Dim isSelectionHidden As Boolean

        targetEditor.[Select](0, targetEditor.Text.Length - 1)
        ' set caret to end
        targetEditor.SelectionLength = 0
        isSelectionHidden = targetEditor.HideSelection
        Try
            targetEditor.HideSelection = False
            ' scroll to caret
            targetEditor.ScrollToCaret()
        Finally
            targetEditor.HideSelection = isSelectionHidden
        End Try
    End Sub

    Private Sub initForSniffer(targetLogEditor As RichTextBox)
        targetLogEditor.SelectionStart = targetLogEditor.TextLength

        If targetLogEditor.Lines.Length > 0 Then
            targetLogEditor.SelectedText = vbCrLf
            ' #13#10;
            targetLogEditor.SelectionStart = targetLogEditor.TextLength
        End If
        targetLogEditor.SelectionLength = 9
        targetLogEditor.SelectionFont = New Font(targetLogEditor.Font, FontStyle.Bold)
    End Sub

    Private Sub Serv_OnBeforeScriptExecute()
        Me.BeginInvoke(CType(Sub()
                                 enableScriptBtns(False)
                                 Try

                                     scrollToEnd(rtfHumanLog)
                                     initForSniffer(rtfHumanLog)
                                     scrollToEnd(rtfHEXLog)
                                     initForSniffer(rtfHEXLog)

                                     Select Case cboPageChoice.SelectedIndex

                                         Case 0
                                             If True Then
                                                 tcScriptContainer.SelectedTab = tpHumanLog
                                                 Exit Select
                                             End If
                                         Case 1
                                             If True Then
                                                 tcScriptContainer.SelectedTab = tpHEX
                                                 Exit Select
                                             End If
                                         Case Else
                                             If True Then
                                                 tcScriptContainer.SelectedTab = tpSimpleScript
                                                 Exit Select
                                             End If
                                     End Select
                                 Finally


                                 End Try

                             End Sub, MethodInvoker))
    End Sub

    Private Sub fm_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim i As Integer = 0
        While i <= 7
            Dim j As Integer = 0
            While j <= 7
                Dim name As Object = "chbx_S" + i.ToString() + "_" + j.ToString()
                checkboxes(i, j) = CType(Me.Controls("pnlStatusBytes").Controls("grbx_StatusByte_" + i.ToString()).Controls(name), CheckBox)
                j += 1
            End While
            i += 1
        End While

        Me.DoubleBuffered = True
        backgroundWorker1.RunWorkerAsync()
        fWeHaveWaitEvent = False
        fMyAfterCaseFlag = False
        cboCodeType.SelectedIndex = 0
        cboHumanNames.SelectedIndex = 0
        cboPageChoice.SelectedIndex = 0
        cboToggleSwitch.SelectedIndex = 0
        cboRangeType.SelectedIndex = 1
        comServer_Started = False
        device_Connected = False
        comPort = 1
        fLastError_Code = 0
        fLastError_Message = ""
        invalidCharacter1 = False
        Me.tpCustomCmds.Hide()
        tcMain.TabPages.Remove(tpCustomCmds)
        Me.tpSystemInfo.Hide()
        tcMain.TabPages.Remove(tpSystemInfo)
        Me.tpANAF.Hide()
        tcMain.TabPages.Remove(tpANAF)
        Me.tpGetCommandList.Hide()
        tcMain.TabPages.Remove(tpGetCommandList)
        Me.tpProperties.Hide()
        tcMain.TabPages.Remove(tpProperties)
        Me.tpBehaviour.Hide()
        tcMain.TabPages.Remove(tpBehaviour)

        pnlStatusBytes.Visible = False
        pnlErrors.Visible = False
        pnlProgress.Visible = False
        btnOpenConnection.Enabled = False
        btnSetDriverLanguage.Enabled = False
        cboLanguage.Enabled = False
        btnStopComServer.Enabled = False
        btnStopConnection.Enabled = False
        lblPort.Enabled = False
        txtLANPort.Enabled = False
        lblIPAddress.Enabled = False
        txtIPAddress.Enabled = False
        lblComPort.Enabled = False
        txtComPort.Enabled = False
        lblBaudRate.Enabled = False
        txtBaudRate.Enabled = False
        cboLanguage.SelectedIndex = 0
    End Sub

    Private Sub fm_FormClosing(sender As Object, e As FormClosingEventArgs) Handles MyBase.FormClosing
        Try
            If serv IsNot Nothing Then
                If serv.close_Connection() <> 0 Then
                    MessageBox.Show(serv.lastError_Message)
                End If
            End If
        Finally
            If serv IsNot Nothing Then
                While System.Runtime.InteropServices.Marshal.ReleaseComObject(serv) > 0


                End While
                'technically the final release and GC. calls are neither needed nor recommended, the framework will dispose the instances when needed,
                'but leaving here for the sake of showing how to release the com server right away (for example when update is required)
                While System.Runtime.InteropServices.Marshal.FinalReleaseComObject(serv) > 0


                End While
                serv = Nothing
                GC.Collect()
                GC.WaitForPendingFinalizers()
                serv = Nothing
            End If
        End Try
    End Sub

    Private Function stop_COMServer() As Integer
        Try

            Try
                If serv.connected_ToDevice Then
                    Return serv.close_Connection()
                Else
                    Return 0
                End If
            Catch generatedExceptionName As Exception
                Return -1
            End Try
        Finally

            While System.Runtime.InteropServices.Marshal.ReleaseComObject(serv) > 0


            End While
            'technically the final release and GC. calls are neither needed nor recommended, the framework will dispose the instances when needed,
            'but leaving here for the sake of showing how to release the com server right away (for example when update is required)
            While System.Runtime.InteropServices.Marshal.FinalReleaseComObject(serv) > 0


            End While
            serv = Nothing
            GC.Collect()
            GC.WaitForPendingFinalizers()
            Me.tpCustomCmds.Hide()
            tcMain.TabPages.Remove(tpCustomCmds)
            Me.tpSystemInfo.Hide()
            tcMain.TabPages.Remove(tpSystemInfo)
            Me.tpANAF.Hide()
            tcMain.TabPages.Remove(tpANAF)
            Me.tpGetCommandList.Hide()
            tcMain.TabPages.Remove(tpGetCommandList)
        End Try
    End Function

    Private Sub btnStopComServer_Click(sender As Object, e As EventArgs) Handles btnStopComServer.Click
        btnStopComServer.Enabled = False
        lstErrors.Items.Clear()
        Try
            If stop_COMServer() = 0 Then
                fDevice_Connected = False
                fComServer_Started = False

                SetDevice_Connected()
                SetComServerStarted()
                pnlSettings.Enabled = False
                afterCase = EAfterCase.ac_AfterStopServer
            Else
                btnStopComServer.Enabled = True
            End If
        Catch t As Exception

            MessageBox.Show(t.Message)
        End Try
    End Sub

    Private Sub cboToggleSwitch_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboToggleSwitch.SelectedIndexChanged
        If cboToggleSwitch.SelectedIndex = 0 Then
            lblPort.Enabled = False
            txtLANPort.Enabled = False
            lblIPAddress.Enabled = False
            txtIPAddress.Enabled = False
            lblComPort.Enabled = True
            txtComPort.Enabled = True
            lblBaudRate.Enabled = True
            txtBaudRate.Enabled = True
        Else
            lblPort.Enabled = True
            txtLANPort.Enabled = True
            lblIPAddress.Enabled = True
            txtIPAddress.Enabled = True
            lblComPort.Enabled = False
            txtComPort.Enabled = False
            lblBaudRate.Enabled = False
            txtBaudRate.Enabled = False
        End If
    End Sub

    Private Sub set_Visibility(to_Value As Boolean)
        lblStartZNum.Enabled = Not to_Value
        txtStartZNum.Enabled = Not to_Value
        lblEndZNum.Enabled = Not to_Value
        txtEndZNum.Enabled = Not to_Value

        lblStartDate.Enabled = to_Value
        dtpStartDate.Enabled = to_Value
        dtpStartTime.Enabled = to_Value
        lblEndDate.Enabled = to_Value
        dtpEndDate.Enabled = to_Value
        dtpEndTime.Enabled = to_Value
        chkDST.Enabled = to_Value
    End Sub
    Private Sub set_ANAF_Ranges()


        Try
            Select Case cboRangeType.SelectedIndex

                Case 0
                    If True Then

                        set_Visibility(True)
                        If (tcMain.SelectedTab Is tpANAF) AndAlso (dtpStartDate.Enabled) Then
                            dtpStartDate.Focus()
                        End If
                        Exit Select
                    End If
                Case 1
                    If True Then

                        set_Visibility(False)
                        If (tcMain.SelectedTab Is tpANAF) AndAlso (txtStartZNum.Enabled) Then
                            txtStartZNum.Focus()
                        End If
                        Exit Select
                    End If
            End Select
        Finally
            Me.Refresh()
        End Try

    End Sub

    Private Sub btnOpenConnection_Click(sender As Object, e As EventArgs) Handles btnOpenConnection.Click
        Dim lanPort As Integer


        If Not (comServer_Started) Then
            Return
        End If
        btnOpenConnection.Enabled = False
        If serv.connected_ToDevice Then

            If serv.close_Connection() <> 0 Then

                MessageBox.Show(serv.lastError_Message)
                Return
            End If
        End If
        Try
            Select Case CType(cboToggleSwitch.SelectedIndex, TransportProtocol)
                Case TransportProtocol.RS232
                    error_Code = serv.set_TransportType(TTransportProtocol.ctc_RS232)
                    If error_Code <> 0 Then
                        Return
                    End If

                    error_Code = serv.set_RS232(Int32.Parse(txtComPort.Text), Int32.Parse(txtBaudRate.Text))
                    If error_Code <> 0 Then
                        Return
                    End If
                    Exit Select
                Case TransportProtocol.TCPIP
                    error_Code = serv.set_TransportType(TTransportProtocol.ctc_TCPIP)
                    If error_Code <> 0 Then
                        Return
                    End If

                    lanPort = Int32.Parse(txtLANPort.Text)
                    error_Code = serv.set_TCPIP(txtIPAddress.Text, CType(lanPort, UShort))
                    If error_Code <> 0 Then
                        Return
                    End If
                    Exit Select
            End Select

            error_Code = serv.open_Connection()
            If error_Code <> 0 Then
                Return
            End If
            afterCase = EAfterCase.ac_AfterSettingsChange
            set_ANAF_Ranges()
            fDevice_Connected = True
            SetDevice_Connected()
            If Not (device_Connected) Then
                Return
            End If
        Catch ex As Exception
            MessageBox.Show("Operation failed: " + ex.Message)
            btnOpenConnection.Enabled = True
        Finally

            If error_Code <> 0 Then
                MessageBox.Show(serv.lastError_Message)
                btnOpenConnection.Enabled = True
            End If
            If serv.connected_ToDevice Then
                If Not serv.active_OnAfterOpenConnection Then
                    afterCase = EAfterCase.ac_AfterOpenConnection
                End If
            End If
        End Try
    End Sub

    Private Sub btnStopConnection_Click(sender As Object, e As EventArgs) Handles btnStopConnection.Click
        lstErrors.Items.Clear()
        error_Code = serv.close_Connection()
        If error_Code <> 0 Then
            MessageBox.Show(serv.lastError_Message)
        End If

        fDevice_Connected = False
        SetDevice_Connected()
        If Not serv.active_OnAfterCloseConnection Then
            afterCase = EAfterCase.ac_AfterCloseConnection
        End If
    End Sub

    Private Sub btnSetEventsMode_Click(sender As Object, e As EventArgs) Handles btnSetEventsMode.Click
        Dim tmpResult As Integer = 0
        If Not serv.connected_ToDevice Then
            Return
        End If
        btnSetEventsMode.Enabled = False
        fMyAfterCaseFlag = True
        Try
            tmpResult = serv.set_ScriptEvents(chkActive_OnBeforeScriptExecute.Checked, '
                                              chkActive_OnScriptRowExecute.Checked,    '
                                              chkActive_OnAfterScriptExecute.Checked, True)
            If tmpResult <> 0 Then
                Return
            End If
            tmpResult = serv.set_CommunicationEvents(chkActive_OnSendCommand.Checked,   '
                                                     chkActive_OnWait.Checked,          '
                                                     chkActive_OnReceiveAnswer.Checked, '
                                                     chkActive_OnStatusChange.Checked,  '
                                                     chkActive_OnError.Checked, True)
            If tmpResult <> 0 Then
                Return
            End If
            tmpResult = serv.set_FirstProgressEvents(chkActive_OnFirstProgress_Init.Checked,'
                                                     chkActive_OnFirstProgress_Loop.Checked,'
                                                     chkActive_OnFirstProgress_Complete.Checked, True)
            If tmpResult <> 0 Then
                Return
            End If
            tmpResult = serv.set_SecondProgressEvents(chkActive_OnSecondProgress_Init.Checked,'
                                                      chkActive_OnSecondProgress_Loop.Checked, '
                                                      chkActive_OnSecondProgress_Complete.Checked, True)
        Finally

            If tmpResult <> 0 Then
                MessageBox.Show(serv.lastError_Message)
            End If
            btnSetEventsMode.Enabled = True
            fMyAfterCaseFlag = False
            get_ActiveEvents()
        End Try
    End Sub

    Private Sub btnSetDriverLanguage_Click(sender As Object, e As EventArgs) Handles btnSetDriverLanguage.Click
        btnSetDriverLanguage.Enabled = False
        Try
            Select Case cboLanguage.SelectedIndex
                Case 0
                    serv.language = TDudeLanguage.English
                    Exit Select
                Case 1
                    serv.language = TDudeLanguage.Romanian
                    Exit Select


            End Select
        Finally
            fLanguage = serv.language
            SetLanguage()
            get_StatusDescriptions()
            get_StatusState()
            btnSetDriverLanguage.Enabled = True
        End Try
    End Sub

    Private Sub btnSetTrackingMode_Click(sender As Object, e As EventArgs) Handles btnSetTrackingMode.Click
        Dim tmp As Integer
        If Not serv.connected_ToDevice Then
            Return
        End If
        btnSetTrackingMode.Enabled = False
        Try
            tmp = serv.set_TrackingMode(chkTrackingMode.Checked)
            If tmp <> 0 Then
                MessageBox.Show(serv.get_ErrorMessageByCode(tmp))
                Return
            End If
            tmp = serv.set_TrackingMode_Path(txtTrackingModePath.Text.Trim())
            If tmp <> 0 Then
                MessageBox.Show(serv.get_ErrorMessageByCode(tmp))
                Return
            End If
            tmp = serv.set_TrackingMode_FileName(txtTrackingModeFileName.Text.Trim())
            If tmp <> 0 Then
                MessageBox.Show(serv.get_ErrorMessageByCode(tmp))
                Return
            End If
            tmp = serv.set_TrackingMode_RowLimit(Int32.Parse(txtTrackingModeRowLimit.Text))
            If True Then
                MessageBox.Show(serv.get_ErrorMessageByCode(tmp))
                Return
            End If
        Finally
            chkTrackingMode.Checked = serv.trackingMode
            txtTrackingModePath.Text = serv.trackingMode_Path
            txtTrackingModeFileName.Text = serv.trackingMode_FileName
            txtTrackingModeRowLimit.Text = serv.trackingMode_RowLimit.ToString()
            btnSetTrackingMode.Enabled = True
        End Try
    End Sub

    Private Sub btnGetSystemInfo_Click(sender As Object, e As EventArgs) Handles btnGetSystemInfo.Click
        Dim tmpString As String = ""
        btnGetSystemInfo.Enabled = False
        lstSystemInfo.Items.Clear()
        Dim list1 As String() = serv.get_SystemInfoSearchList().Split(New String() {vbCrLf}, StringSplitOptions.None)
        Try
            If list1.Length = 0 Then
                Return
            End If
            Dim sb As New StringBuilder()

            Dim i As Integer = 0
            While i < list1.Length - 1
                tmpString = list1(i) + ":"
                tmpString = tmpString.PadRight(42) + serv.get_SystemInfo(list1(i))
                lstSystemInfo.Items.Add(tmpString)
                i += 1

            End While
        Finally
            btnGetSystemInfo.Enabled = True
            Me.Refresh()
        End Try
    End Sub

    Private Sub btnGetLastAnswerList_Click(sender As Object, e As EventArgs) Handles btnGetLastAnswerList.Click
        btnGetLastAnswerList.Enabled = False
        lstScriptOutput.Items.Clear()
        Try
            Dim rows As String() = serv.last_AnswerList.Split(New String() {vbCrLf}, StringSplitOptions.None)
            If rows.Length = 0 Then
                MessageBox.Show("There no data into a last answer list.")
                Return
            End If

            Dim i As Integer = 0
            While i < rows.Length - 1
                Dim tmp As String = "[" + CStr(i) + "]=" + rows(i)
                lstScriptOutput.Items.Add(tmp)
                i += 1

            End While
        Finally
            btnGetLastAnswerList.Enabled = True
        End Try
    End Sub

    Private Sub btnExecuteCmd_Click(sender As Object, e As EventArgs) Handles btnExecuteCmd.Click
        If inCommand Then
            Return
        End If

        Dim cmd As Integer
        Dim inputValue As String = "", outputValue As String = ""

        btnExecuteCmd.Enabled = False
        lstScriptOutput.Items.Clear()
        lstErrors.Items.Clear()
        txtOutputValue.Clear()
        Try
            If Not (Int32.TryParse(txtCmd.Text, cmd)) Then
                MessageBox.Show("Invalid value")
                Return
            End If
            inputValue = txtInputValue.Text
            outputValue = ""
            txtOutputValue.Clear()

            If serv.execute_Command(cmd, inputValue, outputValue) <> 0 Then
                MessageBox.Show(serv.lastError_Message)
                Return
            End If

            txtOutputValue.Text = outputValue

            Dim rows As String() = serv.last_AnswerList.Split(New String() {vbCrLf}, StringSplitOptions.None)
            If rows.Length = 0 Then
                MessageBox.Show("There no data into a last answer list.")
                Return
            End If

            Dim i As Integer = 0
            While i < rows.Length - 1
                Dim tmp As String = rows(i)
                lstScriptOutput.Items.Add(tmp)
                i += 1
            End While
        Finally
            txtOutputValue.Text = outputValue
            btnExecuteCmd.Enabled = True
            Me.Refresh()
        End Try
    End Sub

    Private Sub btnLoadScriptFromFile_Click(sender As Object, e As EventArgs) Handles btnLoadScriptFromFile.Click
        Dim path As String = Directory.GetCurrentDirectory()
        path &= "\Scripturi de test"

        If Directory.Exists(path) Then
            OpenFileDialog1.InitialDirectory = path
            OpenFileDialog1.RestoreDirectory = True
        End If

        If OpenFileDialog1.ShowDialog() = DialogResult.OK Then
            Dim selectedFileName As String = OpenFileDialog1.FileName
            rtfSimpleScript.Text = File.ReadAllText(selectedFileName)
        End If
    End Sub

    Private Sub ExecuteScript(cmd_Script As String)
        If inCommand Then
            Return
        End If

        If chkShowLastOutput.Checked Then
            rtfHEXLog.Clear()
            rtfHumanLog.Clear()
        End If
        btnExecuteSimpleScript.Enabled = False
        btnExecuteSelected.Enabled = False
        btnCancel.Enabled = True

        inCommand = True

        ThreadPool.QueueUserWorkItem(Sub() 'Try


                                         serv.execute_Script_V1(TScriptType.DS, cmd_Script)
                                         'Finally
                                         inCommand = False

                                         Me.BeginInvoke(CType(Sub()
                                                                  btnExecuteSimpleScript.Enabled = True
                                                                  btnExecuteSelected.Enabled = True
                                                                  btnCancel.Enabled = False


                                                              End Sub, MethodInvoker))
                                     End Sub, Nothing)
                                     End Sub

    Private Sub btnExecuteSimpleScript_Click(sender As Object, e As EventArgs) Handles btnExecuteSimpleScript.Click
        ExecuteScript(rtfSimpleScript.Text)
    End Sub

    Private Sub btnExecuteSelected_Click(sender As Object, e As EventArgs) Handles btnExecuteSelected.Click
        ExecuteScript(rtfSimpleScript.SelectedText)
    End Sub

    Private Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        serv.cancel_Loop()
    End Sub

    Private Sub btnDeleteScript_Click(sender As Object, e As EventArgs) Handles btnDeleteScript.Click
        rtfSimpleScript.Clear()
    End Sub

    Private Sub btnDeleteOutput_Click(sender As Object, e As EventArgs) Handles btnDeleteOutput.Click
        rtfHEXLog.Clear()
        rtfHumanLog.Clear()
    End Sub

    Private Sub cboRangeType_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboRangeType.SelectedIndexChanged
        set_ANAF_Ranges()
    End Sub

    Private Sub btnDownload_Click(sender As Object, e As EventArgs) Handles btnDownload.Click
        If inCommand Then
            Return
        End If
        Dim Old_Active_OnSendCommand As Boolean
        Dim Old_Active_OnReceiveAnswer As Boolean
        Dim Old_Active_OnWait As Boolean
        Dim Old_Active_OnStatusChange As Boolean
        Dim Old_Active_OnError As Boolean
        Dim Old_Active_OnFirstProgress_Init As Boolean
        Dim Old_Active_OnFirstProgress_Loop As Boolean
        Dim Old_Active_OnFirstProgress_Complete As Boolean
        Dim Old_Active_OnSecondProgress_Init As Boolean
        Dim Old_Active_OnSecondProgress_Loop As Boolean
        Dim Old_Active_OnSecondProgress_Complete As Boolean

        Old_Active_OnSendCommand = serv.active_OnSendCommand
        Old_Active_OnReceiveAnswer = serv.active_OnReceiveAnswer
        Old_Active_OnWait = serv.active_OnWait
        Old_Active_OnStatusChange = serv.active_OnStatusChange
        Old_Active_OnError = serv.active_OnError
        '
        Old_Active_OnFirstProgress_Init = serv.active_OnFirstProgress_Init
        Old_Active_OnFirstProgress_Loop = serv.active_OnFirstProgress_Loop
        Old_Active_OnFirstProgress_Complete = serv.active_OnFirstProgress_Complete
        Old_Active_OnSecondProgress_Init = serv.active_OnSecondProgress_Init
        Old_Active_OnSecondProgress_Loop = serv.active_OnSecondProgress_Loop
        Old_Active_OnSecondProgress_Complete = serv.active_OnSecondProgress_Complete

        Dim chosenDirectory As String = ""
        Dim startDate As String = dtpStartDate.Value.ToString("dd-MM-yy")
        Dim startTime As String = dtpStartTime.Value.ToString("HH:mm:ss")
        Dim endDate As String = dtpEndDate.Value.ToString("dd-MM-yy")
        Dim endTime As String = dtpEndTime.Value.ToString("HH:mm:ss")
        Dim startDT As String = startDate + " " + startTime
        Dim endDT As String = endDate + " " + endTime


        chosenDirectory = serv.download_Path
        Dim result As DialogResult = folderBrowserDialog1.ShowDialog()

        If result = DialogResult.OK Then
            chosenDirectory = folderBrowserDialog1.SelectedPath
            error_Code = serv.set_Download_Path(chosenDirectory)
            If error_Code <> 0 Then
                Return
            End If
            Dim method As Integer = cboRangeType.SelectedIndex
            Select Case cboRangeType.SelectedIndex
                Case 0
                    If True Then
                        If chkDST.Checked Then
                            startDT = startDT + " DST"
                        End If
                        If chkDST.Checked Then
                            endDT = endDT + " DST"
                        End If
                        serv.DateRange_StartValue = startDT
                        serv.DateRange_EndValue = endDT
                        Exit Select
                    End If

                Case Else
                    If True Then
                        serv.zRange_StartValue = Int32.Parse(txtStartZNum.Text)
                        serv.zRange_EndValue = Int32.Parse(txtEndZNum.Text)
                        Exit Select
                    End If

            End Select

            btnDownload.Enabled = False
            btnUploadLogo.Enabled = False
            btnCancelDownload.Enabled = True

            inCommand = True

            ThreadPool.QueueUserWorkItem(Sub()
                                             serv.set_CommunicationEvents(False, False, False, False, True, False)
                                             error_Code = serv.set_FirstProgressEvents(True, True, True, False)
                                             If error_Code <> 0 Then
                                                 Return
                                             End If
                                             error_Code = serv.set_SecondProgressEvents(True, True, True, False)
                                             If error_Code <> 0 Then
                                                 Return
                                             End If
                                             If method = 0 Then
                                                 error_Code = serv.download_ANAF_DTRange()
                                             Else
                                                 error_Code = serv.download_ANAF_ZRange()
                                             End If
                                             'Finally
                                             inCommand = False
                                             'End Try
                                             Me.BeginInvoke(CType(Sub()
                                                                      btnDownload.Enabled = True
                                                                      btnUploadLogo.Enabled = True
                                                                      btnCancelDownload.Enabled = False
                                                                      If error_Code <> 0 Then
                                                                          MessageBox.Show(serv.lastError_Message)
                                                                      Else
                                                                          If chkOpenFolderAfterDwnl.Checked Then
                                                                              System.Diagnostics.Process.Start(chosenDirectory)
                                                                          End If
                                                                      End If

                                                                  End Sub, MethodInvoker))

                                             serv.set_CommunicationEvents(Old_Active_OnSendCommand, Old_Active_OnWait, Old_Active_OnReceiveAnswer, Old_Active_OnStatusChange, Old_Active_OnError, False)
                                             serv.set_FirstProgressEvents(Old_Active_OnFirstProgress_Init, Old_Active_OnFirstProgress_Loop, Old_Active_OnFirstProgress_Complete, False)
                                             serv.set_SecondProgressEvents(Old_Active_OnSecondProgress_Init, Old_Active_OnSecondProgress_Loop, Old_Active_OnSecondProgress_Complete, False)

                                         End Sub, Nothing)
        End If
    End Sub

    Private Sub btnUploadLogo_Click(sender As Object, e As EventArgs) Handles btnUploadLogo.Click
        If inCommand Then
            Return
        End If

        Dim dlg As New OpenFileDialog()
        Dim Old_Active_OnSendCommand As Boolean
        Dim Old_Active_OnReceiveAnswer As Boolean
        Dim Old_Active_OnWait As Boolean
        Dim Old_Active_OnStatusChange As Boolean
        Dim Old_Active_OnError As Boolean

        Old_Active_OnSendCommand = serv.active_OnSendCommand
        Old_Active_OnReceiveAnswer = serv.active_OnReceiveAnswer
        Old_Active_OnWait = serv.active_OnWait
        Old_Active_OnStatusChange = serv.active_OnStatusChange
        Old_Active_OnError = serv.active_OnError

        dlg.Filter = "Image Files(*.bmp)|*.bmp"
        dlg.FileName = ""
        If dlg.ShowDialog() <> DialogResult.OK Then
            Return
        End If
        btnCancelDownload.Enabled = True

        inCommand = True

        ThreadPool.QueueUserWorkItem(Sub() 'Try
                                         If serv.set_CommunicationEvents(False, False, False, False, True, False) <> 0 Then
                                             MessageBox.Show(serv.lastError_Message)
                                         End If

                                         serv.upload_Logo(dlg.FileName)

                                         'Finally
                                         inCommand = False

                                         Me.BeginInvoke(CType(Sub()
                                                                  btnCancelDownload.Enabled = False

                                                              End Sub, MethodInvoker))

                                         serv.set_CommunicationEvents(Old_Active_OnSendCommand, Old_Active_OnWait, Old_Active_OnReceiveAnswer, Old_Active_OnStatusChange, Old_Active_OnError, False)

                                     End Sub, Nothing)
    End Sub

    Private Sub btnCancelDownload_Click(sender As Object, e As EventArgs) Handles btnCancelDownload.Click
        serv.cancel_Loop()
    End Sub

    Private Sub btnGetCommandList_Click(sender As Object, e As EventArgs) Handles btnGetCommandList.Click
        cboCommands.Items.Clear()
        txtResult.Clear()

        Try
            cboCommands.Items.AddRange(serv.get_ComandsList(cboHumanNames.SelectedIndex).Split(New String() {vbCrLf}, StringSplitOptions.None))

        Catch
        End Try
        If cboCommands.Items.Count > 0 Then
            If cboCommands.Sorted = True Then
                cboCommands.SelectedIndex = 1
            Else
                cboCommands.SelectedIndex = 0
            End If
        End If
        Dim i As Integer = 0
        While i < cboCommands.Items.Count
            Dim value As String = cboCommands.GetItemText(cboCommands.Items(i))
            txtResult.Text = txtResult.Text + value + vbCrLf
            i += 1
        End While
    End Sub

    Private Sub get_CommandInfo()
        Dim tmpS As String = ""
        btnGetCommandInfo.Enabled = False
        btnGetCommandList.Enabled = False
        cboCommands.Enabled = False
        Try
            txtResult.Clear()
            If serv.get_CommandInfo(command_Name, tmpS) = 0 Then
                txtResult.Text = tmpS

            End If
        Finally
            txtResult.SelectionStart = 0
            btnGetCommandInfo.Enabled = True
            btnGetCommandList.Enabled = True

            cboCommands.Enabled = True
        End Try
    End Sub

    Private Sub chkSorted_Click(sender As Object, e As EventArgs) Handles chkSorted.Click
        chkSorted.Checked = Not cboCommands.Sorted
        cboCommands.Sorted = chkSorted.Checked
        txtResult.Clear()
        cboCommands.Items.Clear()
        'cbCommands.Enabled = false;
        cboCommands.Items.AddRange(serv.get_ComandsList(cboHumanNames.SelectedIndex).Split(New String() {vbCrLf}, StringSplitOptions.None))
        Dim rows As String() = serv.get_ComandsList(cboHumanNames.SelectedIndex).Split(New String() {vbCrLf}, StringSplitOptions.None)

        If cboCommands.Items.Count > 0 Then

            If cboCommands.Sorted = True Then
                Array.Sort(rows, StringComparer.InvariantCulture)
                cboCommands.SelectedIndex = 1
            Else
                cboCommands.SelectedIndex = 0
            End If
            command_Name = rows(cboCommands.SelectedIndex)
            get_CommandInfo()
            'this.Refresh();
        End If
    End Sub

    Private Sub btnGetCommandInfo_Click(sender As Object, e As EventArgs) Handles btnGetCommandInfo.Click
        If cboCommands.SelectedIndex <> -1 Then
            Try
                Dim info As String = ""
                If serv.get_CommandInfo(CType(cboCommands.SelectedItem, String), info) = 0 Then
                    txtResult.Text = info
                Else
                    txtResult.Text = "Error: " + serv.lastError_Message
                End If
            Catch
            End Try
        End If
    End Sub

    Private Sub btnGenerateCode_Click(sender As Object, e As EventArgs) Handles btnGenerateCode.Click
        If cboCommands.SelectedIndex <> -1 Then
            txtResult.Clear()
            Try

                Select Case cboCodeType.SelectedIndex
                    Case 0
                        txtResult.Text = serv.generate_SourceCode(CType(cboCommands.SelectedItem, String), TCodeType.CSharp)
                        Exit Select
                    Case 1
                        txtResult.Text = serv.generate_SourceCode(CType(cboCommands.SelectedItem, String), TCodeType.Delphi)
                        Exit Select
                End Select
            Catch
            End Try
        End If
    End Sub

    Private Sub btnSetRAOMode_Click(sender As Object, e As EventArgs) Handles btnSetRAOMode.Click
        Dim tmpResult As Integer
        Dim tmpMessage As String
        Dim tmpBoolean As Boolean

        btnSetRAOMode.Enabled = False
        fMyAfterCaseFlag = True
        tmpResult = -1
        Try
            serv.checkDeviceStatusOnCheckConnection = chkCheckDeviceStatus.Checked

            active_OnAfterCloseConnection = serv.active_OnAfterCloseConnection
            active_OnAfterOpenConnection = serv.active_OnAfterOpenConnection
            active_OnAfterSettingsChange = serv.active_OnAfterSettingsChange
            registerActiveObject = serv.register_ActiveObject_OnStart
            save_Settings_AfterOpenConnection = serv.save_SettingsAfterOpenConnection


            tmpResult = serv.set_BehaviorOnOpenClose(chkRegisterActiveObject.Checked,'
                                                     chkSave_Settings_AfterOpenConnection.Checked,'
                                                     chkActive_OnAfterOpenConnection.Checked,'
                                                     chkActive_OnAfterCloseConnection.Checked,'
                                                     chkActive_OnAfterSettingsChange.Checked)
        Finally
            If tmpResult <> 0 Then
                MessageBox.Show(serv.lastError_Message)
            End If
            tmpBoolean = (active_OnAfterCloseConnection <> chkActive_OnAfterCloseConnection.Checked)
            tmpBoolean = (tmpBoolean OrElse (active_OnAfterOpenConnection <> chkActive_OnAfterOpenConnection.Checked))
            tmpBoolean = tmpBoolean OrElse (active_OnAfterSettingsChange <> chkActive_OnAfterSettingsChange.Checked)
            tmpBoolean = tmpBoolean OrElse (registerActiveObject <> chkRegisterActiveObject.Checked)
            tmpBoolean = tmpBoolean OrElse (save_Settings_AfterOpenConnection <> chkSave_Settings_AfterOpenConnection.Checked)

            If tmpBoolean Then

                tmpMessage = "Important!" + vbCrLf + vbCrLf
                tmpMessage = tmpMessage + " 1. Changing of the 'Register ActiveX Object on start'"
                tmpMessage = tmpMessage + " will change the behavior of the COM server after the"
                tmpMessage = tmpMessage + " restart of the COM server." + vbCrLf + vbCrLf

                tmpMessage = tmpMessage + " 2. Please switch off the connection to the COM server"
                tmpMessage = tmpMessage + " for all currently connected client applications (including"
                tmpMessage = tmpMessage + " this application) !" + vbCrLf + vbCrLf

                tmpMessage = tmpMessage + " 3. If all client applications are switched off from the COM"
                tmpMessage = tmpMessage + " server and the tray icon of the 'DUDE' is still visible:" + vbCrLf
                tmpMessage = tmpMessage + "  - please switch off the 'DUDE' manually from the popup menu;" + vbCrLf
                tmpMessage = tmpMessage + "  - you can start to use the 'DUDE' with all new settings." + vbCrLf + vbCrLf

                tmpMessage = tmpMessage + " 4. If you use 'Register Activex Object on start':" + vbCrLf
                tmpMessage = tmpMessage + "  - the instance and connection to the device will be 'shared'"
                tmpMessage = tmpMessage + " between all connected client applications;" + vbCrLf
                tmpMessage = tmpMessage + "  - the software must be designed for such behavior;" + vbCrLf + vbCrLf

                tmpMessage = tmpMessage + " 5. If you don''t know anything for this settings and for this behavior mode:" + vbCrLf
                tmpMessage = tmpMessage + "   - please call to the support team;" + vbCrLf
                tmpMessage = tmpMessage + "   - please call to the manufacturers of your client application;" + vbCrLf
                MessageBox.Show(tmpMessage)
            End If
            fMyAfterCaseFlag = False
            afterCase = EAfterCase.ac_AfterSettingsChange
            btnSetRAOMode.Enabled = True
        End Try
    End Sub
End Class
