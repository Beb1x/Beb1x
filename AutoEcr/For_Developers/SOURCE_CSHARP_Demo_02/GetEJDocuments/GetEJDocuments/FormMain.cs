using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using dude;

namespace GetEJDocuments
{
    public partial class fm : Form
    {
        private dude.CFD_DUDE serv;
        private bool invalidCharacter1;
        private byte fSYNCount;
        private byte fAppMessCount;
        private int fComPort;
        private int fBaudRate;

        public int error_Code;

        public fm()
        {
            InitializeComponent();
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

        // check if device is connected
        private int device_Connected()
        {
            int error_Code = 0;
            try
            {
                try
                {
                    if (!serv.connected_ToDevice)
                    {
                        serv.set_TransportType(TTransportProtocol.ctc_RS232);
                        serv.set_RS232(Int32.Parse(tbx_ComPort.Text), Int32.Parse(tbx_BaudRate.Text));
                        error_Code = serv.open_Connection();
                    }
                    return error_Code;
                }
                catch (Exception s)
                {
                    MessageBox.Show(s.Message);
                    return error_Code;
                }
            }
            finally
            {
                if (error_Code != 0) MessageBox.Show(serv.lastError_Message);

            }
        }

        private bool Check_TextBox(TextBox targetTbox)
        {
            int tmpInt;
            bool myBool = true;
            try
            {
                if (!Int32.TryParse(targetTbox.Text, out tmpInt))
                {
                    myBool = false;
                    return false;
                }
                if (tmpInt <= 0)
                {
                    myBool = false;
                    return false;
                }
                return true;
            }
            finally
            {
                if (!myBool)
                {
                    MessageBox.Show("Please, check the input values!");
                    if (targetTbox.Visible && targetTbox.Enabled) targetTbox.Focus();
                }
            }

        }

        private int Check_NumbersIntegrity()
        {
            try
            {
                switch (serv.JEDocumentType)

                {
                    case TDocumentTypes.ejdt_FiscalReceipts:
                    case TDocumentTypes.ejdt_CurrencyBuying:
                    case TDocumentTypes.ejdt_CurrencySelling:
                        {
                            if (!Check_TextBox(tbx_FromNum)) return -9;
                            if (!Check_TextBox(tbx_ToNum)) return -9;
                            serv.DocumentNumber_StartValue = Int32.Parse(tbx_FromNum.Text);
                            serv.DocumentNumber_EndValue = Int32.Parse(tbx_ToNum.Text);

                            if (!Check_TextBox(tbx_FromZRep)) return -9;
                            if (!Check_TextBox(tbx_ToZRep)) return -9;
                            serv.zRange_StartValue = Int32.Parse(tbx_FromZRep.Text);
                            serv.zRange_EndValue = Int32.Parse(tbx_ToZRep.Text);
                            break;
                        }

                    case TDocumentTypes.ejdt_FullEJContent:
                    case TDocumentTypes.ejdt_DailyZReports:
                    case TDocumentTypes.ejdt_LogFile:
                        {
                            if (!Check_TextBox(tbx_FromZRep)) return -9;
                            if (!Check_TextBox(tbx_ToZRep)) return -9;
                            serv.zRange_StartValue = Int32.Parse(tbx_FromZRep.Text);
                            serv.zRange_EndValue = Int32.Parse(tbx_ToZRep.Text);
                            break;
                        }

                    default:
                        {
                            if (!Check_TextBox(tbx_FromNum)) return -9;
                            if (!Check_TextBox(tbx_ToNum)) return -9;
                            serv.DocumentNumber_StartValue = Int32.Parse(tbx_FromNum.Text);
                            serv.DocumentNumber_EndValue = Int32.Parse(tbx_ToNum.Text);
                            break;
                        }
                }
                return 0;

            }
            catch (Exception)
            {

                return -1;
            }
        }

        private bool check_DateTime()
        {
            if (dtp_StartDate.Value.Date > dtp_EndDate.Value.Date)
            {
                MessageBox.Show("Starting date is greater than ending one!");
                //if ((dtp_StartDate.Visible) && (dtp_StartDate.Enabled)) dtp_StartDate.Focus();
                return false;
            }
            else
            {
                if (dtp_StartDate.Value.Date == dtp_EndDate.Value.Date)
                {
                    if (dtp_StartTime.Value.TimeOfDay > dtp_EndTime.Value.TimeOfDay)
                    {
                        MessageBox.Show("Starting time is greater than ending one!");
                        //if ((dtp_StartTime.Visible) && (dtp_StartTime.Enabled)) dtp_StartTime.Focus();
                        return false;
                    }
                }
            }
            return true;
        }

        private void calculate_DocumentType()
        {
            switch (cbx_DocType.SelectedIndex)
            {
                case 0:
                    serv.JEDocumentType = TDocumentTypes.ejdt_All; break;               // '0' - all types;
                case 1:
                    serv.JEDocumentType = TDocumentTypes.ejdt_FiscalReceipts; break;    // '1' - fiscal receipts;
                case 2:
                    serv.JEDocumentType = TDocumentTypes.ejdt_DailyZReports; break;     // '2' - daily z reports;
                case 3:
                    serv.JEDocumentType = TDocumentTypes.ejdt_InvoiceReceipts; break;   // '3' - invoice receipts;
                case 4:
                    serv.JEDocumentType = TDocumentTypes.ejdt_NonFiscalReceipts; break; // '4' - nonfiscal receipts;
                case 5:
                    serv.JEDocumentType = TDocumentTypes.ejdt_FullEJContent; break;     // "20" - full EJ content for Z report specified in {DocNum};
                case 6:
                    serv.JEDocumentType = TDocumentTypes.ejdt_LogFile; break;           // "6" - LOG file(s)
                case 7:
                    serv.JEDocumentType = TDocumentTypes.ejdt_CashInOutReceipts; break;  // "9" - cash in/out
                case 8:
                    serv.JEDocumentType = TDocumentTypes.ejdt_CurrencySelling; break;    // "11" - currency selling
                case 9:
                    serv.JEDocumentType = TDocumentTypes.ejdt_CurrencyBuying; break;     // "10" - currency buying

            }

        }

        private void Check_DateTimeIntegrity()
        {
            string startDate = dtp_StartDate.Value.ToString("dd-MM-yy"); // start date in format "dd-mm-yy"
            string startTime = dtp_StartTime.Value.ToString("HH:mm:ss"); // start time in format "hh:mm:ss"
            string endDate = dtp_EndDate.Value.ToString("dd-MM-yy");     // end date in format "dd-mm-yy"
            string endTime = dtp_EndTime.Value.ToString("HH:mm:ss");     // end time in format "hh:mm:ss"
            string startDT = startDate + " " + startTime;
            string endDT = endDate + " " + endTime;
            serv.DateRange_StartValue = startDT;
            serv.DateRange_EndValue = endDT;
        }

        private void Calculate_Controls()
        {

            void set_DTRangeVCL(bool toValue)
            {

                lb_startingDT.Enabled = toValue;
                dtp_StartDate.Enabled = toValue;
                dtp_StartTime.Enabled = toValue;
                lb_EndingDT.Enabled = toValue;
                dtp_EndDate.Enabled = toValue;
                dtp_EndTime.Enabled = toValue;
            }

            void set_NumRangeVCL(bool toValue)
            {

                lb_FromNum.Enabled = toValue;
                tbx_FromNum.Enabled = toValue;
                lb_ToNum.Enabled = toValue;
                tbx_ToNum.Enabled = toValue;
            }

            void set_ZNumRangeVCL(bool toValue)
            {

                lb_FromZRep.Enabled = toValue;
                tbx_FromZRep.Enabled = toValue;
                lb_EndZRep.Enabled = toValue;
                tbx_ToZRep.Enabled = toValue;
            }

            if (chbx_RangeByNum.Checked)
            {
                set_DTRangeVCL(false);
                set_NumRangeVCL(false);
                set_ZNumRangeVCL(false);

                switch (serv.JEDocumentType)
                {
                    case TDocumentTypes.ejdt_NonFiscalReceipts:
                    case TDocumentTypes.ejdt_CashInOutReceipts:
                    case TDocumentTypes.ejdt_InvoiceReceipts:
                    case TDocumentTypes.ejdt_All:
                        {
                            set_NumRangeVCL(true);
                            break;
                        }
                    case TDocumentTypes.ejdt_CurrencyBuying:
                    case TDocumentTypes.ejdt_CurrencySelling:
                    case TDocumentTypes.ejdt_FiscalReceipts:
                        {
                            set_NumRangeVCL(true);
                            set_ZNumRangeVCL(true);
                            break;
                        }
                    case TDocumentTypes.ejdt_LogFile:
                    case TDocumentTypes.ejdt_DailyZReports:
                        {
                            set_ZNumRangeVCL(true);
                            break;
                        }
                    case TDocumentTypes.ejdt_FullEJContent:
                        {
                            set_ZNumRangeVCL(true);
                            break;
                        }
                }

            }
            else
            {
                set_DTRangeVCL(true);
                set_NumRangeVCL(false);
                set_ZNumRangeVCL(false);
            }



        }
        private void ManageControls(bool Value)
        {
            //btn_StopReading.Enabled = !Value;
            btn_Read.Enabled = Value;
            btn_PrintDoc.Enabled = Value;
            lb_BaudRate.Enabled = Value;
            lb_ComPort.Enabled = Value;
            tbx_ComPort.Enabled = Value;
            tbx_BaudRate.Enabled = Value;
            lb_startingDT.Enabled = Value;
            lb_EndingDT.Enabled = Value;
            lb_DocType.Enabled = Value;
            chbx_RangeByNum.Enabled = Value;
            cbx_DocType.Enabled = Value;
            dtp_StartDate.Enabled = Value;
            dtp_StartTime.Enabled = Value;
            dtp_EndDate.Enabled = Value;
            dtp_EndTime.Enabled = Value;
        }

        private bool Try_ToStartCOMServer()
        {
            try
            {
                serv = new CFD_DUDE();
                return true;
            }
            catch
            {
                MessageBox.Show("The program cannot start DUDE. " + "\r\n" + "Please, check if it is installed!");
                return false;
            }
        }
        private void fm_Load(object sender, EventArgs e)
        {
            if(Try_ToStartCOMServer())
            { 
            invalidCharacter1 = false;
            btn_StopReading.Enabled = false;
            cbx_DocType.SelectedIndex = 0;
            dtp_StartDate.Value = DateTime.Now.AddDays(-1);
            dtp_EndDate.Value = DateTime.Now;
            dtp_StartTime.Value = DateTime.Now;
            dtp_EndTime.Value = DateTime.Now;
            tbx_ComPort.Text = serv.rs232_ComPort.ToString();
            tbx_BaudRate.Text = serv.rs232_BaudRate.ToString();
            btn_PrintDoc.Enabled = true;
            btn_Read.Enabled = !chbx_RangeByNum.Checked;
            serv.JEDocumentType = TDocumentTypes.ejdt_All; //calculate_DocumentType();
            
                if (serv.connected_ToDevice) serv.close_Connection();
                this.serv.OnJETextData += Serv_OnJETextData;
                this.serv.OnFirstProgress_Complete += Serv_OnFirstProgress_Complete;
                this.serv.OnFirstProgress_Init += Serv_OnFirstProgress_Init;
                this.serv.OnFirstProgress_Loop += Serv_OnFirstProgress_Loop;
                this.serv.OnWait += Serv_OnWait;
                this.serv.OnSecondProgress_Complete += Serv_OnSecondProgress_Complete;
                this.serv.OnSecondProgress_Init += Serv_OnSecondProgress_Init;
                this.serv.OnSecondProgress_Loop += Serv_OnSecondProgress_Loop;
            }
            Calculate_Controls();
        }

        private void Serv_OnSecondProgress_Loop(int value_Position)
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                if (value_Position < pbSecond.Maximum)
                    pbSecond.Value = value_Position;
            }));
        }

        private void Serv_OnSecondProgress_Init(int value_Minimum, int value_Maximum, int value_Position)
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                pbSecond.Minimum = value_Minimum;
                pbSecond.Maximum = value_Maximum;
                pbSecond.Value = value_Position;
                pnlProgress.Visible = true;
            }));
        }

        private void Serv_OnSecondProgress_Complete()
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                pbSecond.Value = pbSecond.Maximum;
            }));
        }

        private void Serv_OnWait(byte Value)
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                if (fSYNCount >= 16)
                {

                    fSYNCount = 0;
                    if (fAppMessCount >= 5)
                    {

                        fAppMessCount = 0;
                    }
                    else fAppMessCount++;
                }
                fSYNCount++;
            }));

        }

        private void Serv_OnFirstProgress_Loop(int value_Position)
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                if (value_Position < pbFirst.Maximum)
                    pbFirst.Value = value_Position;
            }));
        }

        private void Serv_OnFirstProgress_Init(int value_Minimum, int value_Maximum, int value_Position)
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                pbFirst.Value = value_Position;
                pbFirst.Minimum = value_Minimum;
                pbFirst.Maximum = value_Maximum;
                pnlProgress.Visible = true;
            }));
        }

        private void Serv_OnFirstProgress_Complete()
        {
            this.BeginInvoke((MethodInvoker)(() =>
            {
                pbFirst.Value = pbFirst.Maximum;
            }));
        }

        private void Serv_OnJETextData(ref string TextData)
        {
            string txData = TextData;
            this.BeginInvoke((MethodInvoker)(() =>
            {
                rtbx_EJ.AppendText(txData + "\r\n");
            }));

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

        private void btn_StopReading_Click(object sender, EventArgs e)
        {
            serv.cancel_Loop();
        }        

        private void chbx_RangeByNum_Click(object sender, EventArgs e)
        {
            if (!chbx_RangeByNum.Enabled) return;
            Calculate_Controls();
        }

        private void cbx_DocType_SelectedIndexChanged(object sender, EventArgs e)
        {
            calculate_DocumentType();
            Calculate_Controls();

        }

        private void tbx_FromNum_KeyDown(object sender, KeyEventArgs e)
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

        private void tbx_ToNum_KeyDown(object sender, KeyEventArgs e)
        {
            int key = e.KeyValue;
            // to accept only digits
            if ((key <= 57 && key >= 48) || e.KeyData == Keys.Back || (e.KeyData >= Keys.NumPad0 && e.KeyData <= Keys.NumPad9))
            {
                invalidCharacter1 = false;
            }
            else
            {
                invalidCharacter1 = true;
            }
        }

        private void tbx_FromZRep_KeyDown(object sender, KeyEventArgs e)
        {
            int key = e.KeyValue;
            // to accept only digits
            if ((key <= 57 && key >= 48) || e.KeyData == Keys.Back || (e.KeyData >= Keys.NumPad0 && e.KeyData <= Keys.NumPad9))
            {
                invalidCharacter1 = false;
            }
            else
            {
                invalidCharacter1 = true;
            }
        }

        private void tbx_ToZRep_KeyDown(object sender, KeyEventArgs e)
        {
            int key = e.KeyValue;
            // to accept only digits
            if ((key <= 57 && key >= 48) || e.KeyData == Keys.Back || (e.KeyData >= Keys.NumPad0 && e.KeyData <= Keys.NumPad9))
            {
                invalidCharacter1 = false;
            }
            else
            {
                invalidCharacter1 = true;
            }
        }

        private void tbx_FromNum_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }

        private void tbx_ToNum_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }

        private void tbx_FromZRep_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }

        private void tbx_ToZRep_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (invalidCharacter1 == true)
            {
                e.Handled = true;
                invalidCharacter1 = false;
            }
        }


        private void btn_PrintDoc_Click(object sender, EventArgs e)
        {
            int printedDocumentsCount = 0;

            if (serv == null) return;
            if (!chbx_RangeByNum.Checked)
            {
                if (!check_DateTime()) return;
            }

            calculate_DocumentType();
            ManageControls(false);

            error_Code = device_Connected();
            if (error_Code != 0) return;
            btn_StopReading.Enabled = true;

            if (chbx_RangeByNum.Checked)
            {
                error_Code = Check_NumbersIntegrity();
                if (error_Code != 0) return;

                if (Int32.Parse(tbx_FromNum.Text) > Int32.Parse(tbx_ToNum.Text))
                {
                    MessageBox.Show("First number of your range is greater than last one." + "\r\n" + "Please, change the values!");
                    tbx_FromNum.Focus();
                    return;
                }

                if ((tbx_FromZRep.Visible && tbx_FromZRep.Enabled) && (tbx_ToZRep.Visible && tbx_ToZRep.Enabled))
                {
                    if (Int32.Parse(tbx_FromZRep.Text) > Int32.Parse(tbx_ToZRep.Text))
                    {
                        MessageBox.Show("First Z number of your range is greater than last one." + "\r\n" + "Please, change the values!");
                        tbx_FromZRep.Focus();
                        return;
                    }
                }

                ThreadPool.QueueUserWorkItem(delegate
                {
                    try
                    {
                        error_Code = serv.print_Documents_ByNumbersRange(ref printedDocumentsCount);
                        MessageBox.Show("Printed documents count: " + printedDocumentsCount.ToString());

                    }
                    finally
                    {
                        this.BeginInvoke((MethodInvoker)(() =>
                        {
                            btn_StopReading.Enabled = false;
                            ManageControls(true);
                            Calculate_Controls();
                            if (error_Code != 0)
                            {
                                MessageBox.Show(serv.get_ErrorMessageByCode(error_Code));
                                return;
                            }
                        }));


                    }
                }, null);
            }

            else
            {
                ThreadPool.QueueUserWorkItem(delegate
                {
                    try
                    {
                        Check_DateTimeIntegrity();
                        error_Code = serv.print_Documents_ByDateRange(ref printedDocumentsCount);
                            //if (error_Code != 0) return;
                            MessageBox.Show("Printed documents count: " + printedDocumentsCount.ToString());

                    }

                    finally
                    {
                        this.BeginInvoke((MethodInvoker)(() =>
                        {
                            btn_StopReading.Enabled = false;
                            ManageControls(true);
                            Calculate_Controls();
                            if (error_Code != 0)
                            {
                                MessageBox.Show(serv.get_ErrorMessageByCode(error_Code));
                                return;
                            }
                        }));


                    }
                }, null);
            }
        }

        private void btn_Read_Click(object sender, EventArgs e)
        {
            int receivedDocuments = 0;
            int errCode = 0;

            rtbx_EJ.Clear();
            ManageControls(false); // Enable/Disable controls
            if (device_Connected() != 0) return;
            calculate_DocumentType();
            btn_StopReading.Enabled = true;
            btn_Read.Enabled = false;
            btn_PrintDoc.Enabled = false;
            if (chbx_RangeByNum.Checked)
            {
                if (Int32.Parse(tbx_FromNum.Text) > Int32.Parse(tbx_ToNum.Text))
                {
                    MessageBox.Show("First number of your range is greater than last one." + "\r\n" + "Please, change the values!");
                    tbx_FromNum.Focus();
                    return;
                }

                if ((tbx_FromZRep.Visible && tbx_FromZRep.Enabled) && (tbx_ToZRep.Visible && tbx_ToZRep.Enabled))
                {
                    if (Int32.Parse(tbx_FromZRep.Text) > Int32.Parse(tbx_ToZRep.Text))
                    {
                        MessageBox.Show("First Z number of your range is greater than last one." + "\r\n" + "Please, change the values!");
                        tbx_FromZRep.Focus();
                        return;
                    }
                }
                ThreadPool.QueueUserWorkItem(delegate
                {
                    try
                    {
                        errCode = Check_NumbersIntegrity();
                        if (errCode != 0) return;
                        errCode = serv.get_Documents_ByNumbersRange(ref receivedDocuments);
                            //if (errCode != 0) return;
                            MessageBox.Show("Received documents: " + receivedDocuments.ToString());
                    }

                    finally
                    {
                        this.BeginInvoke((MethodInvoker)(() =>
                        {
                            btn_StopReading.Enabled = false;
                            ManageControls(true);
                            Calculate_Controls();
                            if (errCode != 0)
                            {
                                MessageBox.Show(serv.get_ErrorMessageByCode(errCode));
                                return;
                            }
                        }));
                    }
                }, null);
            }
            else
            {

                ThreadPool.QueueUserWorkItem(delegate
                {
                    if (!check_DateTime()) return;
                    Check_DateTimeIntegrity();
                    try
                    {
                        errCode = serv.get_Documents_ByDateRange(ref receivedDocuments);
                        MessageBox.Show("Received documents: " + receivedDocuments.ToString());
                    }
                    finally
                    {
                        this.BeginInvoke((MethodInvoker)(() =>
                        {
                            btn_StopReading.Enabled = false;
                            ManageControls(true);
                            Calculate_Controls();
                            if (errCode != 0)
                            {
                                MessageBox.Show(serv.get_ErrorMessageByCode(errCode));
                                return;
                            }
                        }));
                    }
                }, null);
            }
        }

        private void fm_FormClosing(object sender, FormClosingEventArgs e)
        {
            try
            {
                if (serv != null)
                {
                    if (serv.connected_ToDevice) serv.close_Connection();
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
    }
}
