namespace GetEJDocuments
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
            this.tbx_BaudRate = new System.Windows.Forms.TextBox();
            this.tbx_ComPort = new System.Windows.Forms.TextBox();
            this.lb_BaudRate = new System.Windows.Forms.Label();
            this.lb_ComPort = new System.Windows.Forms.Label();
            this.btn_StopReading = new System.Windows.Forms.Button();
            this.pnl_Settings = new System.Windows.Forms.Panel();
            this.tbx_ToZRep = new System.Windows.Forms.TextBox();
            this.tbx_FromZRep = new System.Windows.Forms.TextBox();
            this.lb_EndZRep = new System.Windows.Forms.Label();
            this.lb_FromZRep = new System.Windows.Forms.Label();
            this.grbx_Connection = new System.Windows.Forms.GroupBox();
            this.tbx_ToNum = new System.Windows.Forms.TextBox();
            this.lb_DocType = new System.Windows.Forms.Label();
            this.tbx_FromNum = new System.Windows.Forms.TextBox();
            this.cbx_DocType = new System.Windows.Forms.ComboBox();
            this.lb_startingDT = new System.Windows.Forms.Label();
            this.lb_EndingDT = new System.Windows.Forms.Label();
            this.lb_ToNum = new System.Windows.Forms.Label();
            this.dtp_StartDate = new System.Windows.Forms.DateTimePicker();
            this.lb_FromNum = new System.Windows.Forms.Label();
            this.dtp_StartTime = new System.Windows.Forms.DateTimePicker();
            this.chbx_RangeByNum = new System.Windows.Forms.CheckBox();
            this.dtp_EndDate = new System.Windows.Forms.DateTimePicker();
            this.dtp_EndTime = new System.Windows.Forms.DateTimePicker();
            this.pnl_Output = new System.Windows.Forms.Panel();
            this.rtbx_EJ = new System.Windows.Forms.RichTextBox();
            this.pnl_Buttons = new System.Windows.Forms.Panel();
            this.btn_Read = new System.Windows.Forms.Button();
            this.btn_PrintDoc = new System.Windows.Forms.Button();
            this.pnlProgress = new System.Windows.Forms.Panel();
            this.pbFirst = new System.Windows.Forms.ProgressBar();
            this.pbSecond = new System.Windows.Forms.ProgressBar();
            this.pnl_Settings.SuspendLayout();
            this.grbx_Connection.SuspendLayout();
            this.pnl_Output.SuspendLayout();
            this.pnl_Buttons.SuspendLayout();
            this.pnlProgress.SuspendLayout();
            this.SuspendLayout();
            // 
            // tbx_BaudRate
            // 
            this.tbx_BaudRate.Location = new System.Drawing.Point(67, 39);
            this.tbx_BaudRate.Name = "tbx_BaudRate";
            this.tbx_BaudRate.Size = new System.Drawing.Size(144, 20);
            this.tbx_BaudRate.TabIndex = 17;
            this.tbx_BaudRate.Text = "115200";
            this.tbx_BaudRate.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_BaudRate_KeyDown);
            this.tbx_BaudRate.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_BaudRate_KeyPress);
            // 
            // tbx_ComPort
            // 
            this.tbx_ComPort.Location = new System.Drawing.Point(67, 13);
            this.tbx_ComPort.Name = "tbx_ComPort";
            this.tbx_ComPort.Size = new System.Drawing.Size(144, 20);
            this.tbx_ComPort.TabIndex = 16;
            this.tbx_ComPort.Text = "7";
            this.tbx_ComPort.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_ComPort_KeyDown);
            this.tbx_ComPort.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_ComPort_KeyPress);
            // 
            // lb_BaudRate
            // 
            this.lb_BaudRate.AutoSize = true;
            this.lb_BaudRate.Location = new System.Drawing.Point(8, 42);
            this.lb_BaudRate.Name = "lb_BaudRate";
            this.lb_BaudRate.Size = new System.Drawing.Size(56, 13);
            this.lb_BaudRate.TabIndex = 15;
            this.lb_BaudRate.Text = "Baud rate:";
            // 
            // lb_ComPort
            // 
            this.lb_ComPort.AutoSize = true;
            this.lb_ComPort.Location = new System.Drawing.Point(6, 16);
            this.lb_ComPort.Name = "lb_ComPort";
            this.lb_ComPort.Size = new System.Drawing.Size(55, 13);
            this.lb_ComPort.TabIndex = 14;
            this.lb_ComPort.Text = "COM port:";
            // 
            // btn_StopReading
            // 
            this.btn_StopReading.Location = new System.Drawing.Point(281, 13);
            this.btn_StopReading.Name = "btn_StopReading";
            this.btn_StopReading.Size = new System.Drawing.Size(130, 23);
            this.btn_StopReading.TabIndex = 13;
            this.btn_StopReading.Text = "Stop execution";
            this.btn_StopReading.UseVisualStyleBackColor = true;
            this.btn_StopReading.Click += new System.EventHandler(this.btn_StopReading_Click);
            // 
            // pnl_Settings
            // 
            this.pnl_Settings.Controls.Add(this.tbx_ToZRep);
            this.pnl_Settings.Controls.Add(this.tbx_FromZRep);
            this.pnl_Settings.Controls.Add(this.lb_EndZRep);
            this.pnl_Settings.Controls.Add(this.lb_FromZRep);
            this.pnl_Settings.Controls.Add(this.grbx_Connection);
            this.pnl_Settings.Controls.Add(this.tbx_ToNum);
            this.pnl_Settings.Controls.Add(this.lb_DocType);
            this.pnl_Settings.Controls.Add(this.tbx_FromNum);
            this.pnl_Settings.Controls.Add(this.cbx_DocType);
            this.pnl_Settings.Controls.Add(this.lb_startingDT);
            this.pnl_Settings.Controls.Add(this.lb_EndingDT);
            this.pnl_Settings.Controls.Add(this.lb_ToNum);
            this.pnl_Settings.Controls.Add(this.dtp_StartDate);
            this.pnl_Settings.Controls.Add(this.lb_FromNum);
            this.pnl_Settings.Controls.Add(this.dtp_StartTime);
            this.pnl_Settings.Controls.Add(this.chbx_RangeByNum);
            this.pnl_Settings.Controls.Add(this.dtp_EndDate);
            this.pnl_Settings.Controls.Add(this.dtp_EndTime);
            this.pnl_Settings.Location = new System.Drawing.Point(0, 0);
            this.pnl_Settings.Name = "pnl_Settings";
            this.pnl_Settings.Size = new System.Drawing.Size(257, 359);
            this.pnl_Settings.TabIndex = 18;
            // 
            // tbx_ToZRep
            // 
            this.tbx_ToZRep.Enabled = false;
            this.tbx_ToZRep.Location = new System.Drawing.Point(86, 283);
            this.tbx_ToZRep.MaxLength = 4;
            this.tbx_ToZRep.Name = "tbx_ToZRep";
            this.tbx_ToZRep.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.tbx_ToZRep.Size = new System.Drawing.Size(129, 20);
            this.tbx_ToZRep.TabIndex = 39;
            // 
            // tbx_FromZRep
            // 
            this.tbx_FromZRep.Enabled = false;
            this.tbx_FromZRep.Location = new System.Drawing.Point(86, 257);
            this.tbx_FromZRep.MaxLength = 4;
            this.tbx_FromZRep.Name = "tbx_FromZRep";
            this.tbx_FromZRep.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.tbx_FromZRep.Size = new System.Drawing.Size(129, 20);
            this.tbx_FromZRep.TabIndex = 38;
            // 
            // lb_EndZRep
            // 
            this.lb_EndZRep.AutoSize = true;
            this.lb_EndZRep.Enabled = false;
            this.lb_EndZRep.Location = new System.Drawing.Point(10, 286);
            this.lb_EndZRep.Name = "lb_EndZRep";
            this.lb_EndZRep.Size = new System.Drawing.Size(63, 13);
            this.lb_EndZRep.TabIndex = 37;
            this.lb_EndZRep.Text = "To Z report:";
            // 
            // lb_FromZRep
            // 
            this.lb_FromZRep.AutoSize = true;
            this.lb_FromZRep.Enabled = false;
            this.lb_FromZRep.Location = new System.Drawing.Point(9, 260);
            this.lb_FromZRep.Name = "lb_FromZRep";
            this.lb_FromZRep.Size = new System.Drawing.Size(73, 13);
            this.lb_FromZRep.TabIndex = 36;
            this.lb_FromZRep.Text = "From Z report:";
            // 
            // grbx_Connection
            // 
            this.grbx_Connection.Controls.Add(this.lb_ComPort);
            this.grbx_Connection.Controls.Add(this.tbx_ComPort);
            this.grbx_Connection.Controls.Add(this.tbx_BaudRate);
            this.grbx_Connection.Controls.Add(this.lb_BaudRate);
            this.grbx_Connection.Location = new System.Drawing.Point(3, 3);
            this.grbx_Connection.Name = "grbx_Connection";
            this.grbx_Connection.Size = new System.Drawing.Size(251, 68);
            this.grbx_Connection.TabIndex = 18;
            this.grbx_Connection.TabStop = false;
            this.grbx_Connection.Text = "Connect to device";
            // 
            // tbx_ToNum
            // 
            this.tbx_ToNum.Enabled = false;
            this.tbx_ToNum.Location = new System.Drawing.Point(86, 336);
            this.tbx_ToNum.MaxLength = 8;
            this.tbx_ToNum.Name = "tbx_ToNum";
            this.tbx_ToNum.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.tbx_ToNum.Size = new System.Drawing.Size(129, 20);
            this.tbx_ToNum.TabIndex = 33;
            this.tbx_ToNum.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_ToNum_KeyDown);
            this.tbx_ToNum.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_ToNum_KeyPress);
            // 
            // lb_DocType
            // 
            this.lb_DocType.AutoSize = true;
            this.lb_DocType.Location = new System.Drawing.Point(9, 84);
            this.lb_DocType.Name = "lb_DocType";
            this.lb_DocType.Size = new System.Drawing.Size(82, 13);
            this.lb_DocType.TabIndex = 19;
            this.lb_DocType.Text = "Document type:";
            // 
            // tbx_FromNum
            // 
            this.tbx_FromNum.Enabled = false;
            this.tbx_FromNum.Location = new System.Drawing.Point(86, 309);
            this.tbx_FromNum.MaxLength = 8;
            this.tbx_FromNum.Name = "tbx_FromNum";
            this.tbx_FromNum.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.tbx_FromNum.Size = new System.Drawing.Size(129, 20);
            this.tbx_FromNum.TabIndex = 32;
            this.tbx_FromNum.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbx_FromNum_KeyDown);
            this.tbx_FromNum.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbx_FromNum_KeyPress);
            // 
            // cbx_DocType
            // 
            this.cbx_DocType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbx_DocType.FormattingEnabled = true;
            this.cbx_DocType.Items.AddRange(new object[] {
            "All documents",
            "Fiscal receipts",
            "Z reports",
            "Invoice receipts",
            "Non fiscal receipts",
            "Full EJ content per Z report",
            "LOG file(s)",
            "Cash In/Out receipts",
            "Currency selling",
            "Currency buying"});
            this.cbx_DocType.Location = new System.Drawing.Point(12, 100);
            this.cbx_DocType.Name = "cbx_DocType";
            this.cbx_DocType.Size = new System.Drawing.Size(203, 21);
            this.cbx_DocType.TabIndex = 20;
            this.cbx_DocType.SelectedIndexChanged += new System.EventHandler(this.cbx_DocType_SelectedIndexChanged);
            // 
            // lb_startingDT
            // 
            this.lb_startingDT.AutoSize = true;
            this.lb_startingDT.Location = new System.Drawing.Point(10, 133);
            this.lb_startingDT.Name = "lb_startingDT";
            this.lb_startingDT.Size = new System.Drawing.Size(89, 13);
            this.lb_startingDT.TabIndex = 21;
            this.lb_startingDT.Text = "Starting datetime:";
            // 
            // lb_EndingDT
            // 
            this.lb_EndingDT.AutoSize = true;
            this.lb_EndingDT.Location = new System.Drawing.Point(11, 172);
            this.lb_EndingDT.Name = "lb_EndingDT";
            this.lb_EndingDT.Size = new System.Drawing.Size(86, 13);
            this.lb_EndingDT.TabIndex = 22;
            this.lb_EndingDT.Text = "Ending datetime:";
            // 
            // lb_ToNum
            // 
            this.lb_ToNum.AutoSize = true;
            this.lb_ToNum.Enabled = false;
            this.lb_ToNum.Location = new System.Drawing.Point(10, 339);
            this.lb_ToNum.Name = "lb_ToNum";
            this.lb_ToNum.Size = new System.Drawing.Size(61, 13);
            this.lb_ToNum.TabIndex = 29;
            this.lb_ToNum.Text = "To number:";
            // 
            // dtp_StartDate
            // 
            this.dtp_StartDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtp_StartDate.Location = new System.Drawing.Point(12, 149);
            this.dtp_StartDate.Name = "dtp_StartDate";
            this.dtp_StartDate.Size = new System.Drawing.Size(121, 20);
            this.dtp_StartDate.TabIndex = 23;
            // 
            // lb_FromNum
            // 
            this.lb_FromNum.AutoSize = true;
            this.lb_FromNum.Enabled = false;
            this.lb_FromNum.Location = new System.Drawing.Point(9, 312);
            this.lb_FromNum.Name = "lb_FromNum";
            this.lb_FromNum.Size = new System.Drawing.Size(71, 13);
            this.lb_FromNum.TabIndex = 28;
            this.lb_FromNum.Text = "From number:";
            // 
            // dtp_StartTime
            // 
            this.dtp_StartTime.Format = System.Windows.Forms.DateTimePickerFormat.Time;
            this.dtp_StartTime.Location = new System.Drawing.Point(139, 149);
            this.dtp_StartTime.Name = "dtp_StartTime";
            this.dtp_StartTime.ShowUpDown = true;
            this.dtp_StartTime.Size = new System.Drawing.Size(76, 20);
            this.dtp_StartTime.TabIndex = 24;
            // 
            // chbx_RangeByNum
            // 
            this.chbx_RangeByNum.AutoSize = true;
            this.chbx_RangeByNum.Location = new System.Drawing.Point(12, 231);
            this.chbx_RangeByNum.Name = "chbx_RangeByNum";
            this.chbx_RangeByNum.Size = new System.Drawing.Size(126, 17);
            this.chbx_RangeByNum.TabIndex = 27;
            this.chbx_RangeByNum.Text = "By document number";
            this.chbx_RangeByNum.UseVisualStyleBackColor = true;
            this.chbx_RangeByNum.Click += new System.EventHandler(this.chbx_RangeByNum_Click);
            // 
            // dtp_EndDate
            // 
            this.dtp_EndDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtp_EndDate.Location = new System.Drawing.Point(12, 188);
            this.dtp_EndDate.Name = "dtp_EndDate";
            this.dtp_EndDate.Size = new System.Drawing.Size(121, 20);
            this.dtp_EndDate.TabIndex = 25;
            // 
            // dtp_EndTime
            // 
            this.dtp_EndTime.Format = System.Windows.Forms.DateTimePickerFormat.Time;
            this.dtp_EndTime.Location = new System.Drawing.Point(139, 188);
            this.dtp_EndTime.Name = "dtp_EndTime";
            this.dtp_EndTime.ShowUpDown = true;
            this.dtp_EndTime.Size = new System.Drawing.Size(76, 20);
            this.dtp_EndTime.TabIndex = 26;
            // 
            // pnl_Output
            // 
            this.pnl_Output.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnl_Output.Controls.Add(this.rtbx_EJ);
            this.pnl_Output.Location = new System.Drawing.Point(257, 0);
            this.pnl_Output.Name = "pnl_Output";
            this.pnl_Output.Size = new System.Drawing.Size(480, 410);
            this.pnl_Output.TabIndex = 19;
            // 
            // rtbx_EJ
            // 
            this.rtbx_EJ.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.rtbx_EJ.Font = new System.Drawing.Font("Courier New", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.rtbx_EJ.Location = new System.Drawing.Point(0, 3);
            this.rtbx_EJ.Name = "rtbx_EJ";
            this.rtbx_EJ.Size = new System.Drawing.Size(480, 402);
            this.rtbx_EJ.TabIndex = 0;
            this.rtbx_EJ.Text = "";
            this.rtbx_EJ.WordWrap = false;
            // 
            // pnl_Buttons
            // 
            this.pnl_Buttons.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnl_Buttons.Controls.Add(this.btn_Read);
            this.pnl_Buttons.Controls.Add(this.btn_PrintDoc);
            this.pnl_Buttons.Controls.Add(this.btn_StopReading);
            this.pnl_Buttons.Location = new System.Drawing.Point(3, 416);
            this.pnl_Buttons.Name = "pnl_Buttons";
            this.pnl_Buttons.Size = new System.Drawing.Size(734, 46);
            this.pnl_Buttons.TabIndex = 20;
            // 
            // btn_Read
            // 
            this.btn_Read.Location = new System.Drawing.Point(145, 13);
            this.btn_Read.Name = "btn_Read";
            this.btn_Read.Size = new System.Drawing.Size(130, 23);
            this.btn_Read.TabIndex = 15;
            this.btn_Read.Text = "Read documents";
            this.btn_Read.UseVisualStyleBackColor = true;
            this.btn_Read.Click += new System.EventHandler(this.btn_Read_Click);
            // 
            // btn_PrintDoc
            // 
            this.btn_PrintDoc.Location = new System.Drawing.Point(9, 13);
            this.btn_PrintDoc.Name = "btn_PrintDoc";
            this.btn_PrintDoc.Size = new System.Drawing.Size(130, 23);
            this.btn_PrintDoc.TabIndex = 14;
            this.btn_PrintDoc.Text = "Print documents";
            this.btn_PrintDoc.UseVisualStyleBackColor = true;
            this.btn_PrintDoc.Click += new System.EventHandler(this.btn_PrintDoc_Click);
            // 
            // pnlProgress
            // 
            this.pnlProgress.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.pnlProgress.Controls.Add(this.pbFirst);
            this.pnlProgress.Controls.Add(this.pbSecond);
            this.pnlProgress.Location = new System.Drawing.Point(0, 362);
            this.pnlProgress.Name = "pnlProgress";
            this.pnlProgress.Size = new System.Drawing.Size(257, 48);
            this.pnlProgress.TabIndex = 21;
            this.pnlProgress.Visible = false;
            // 
            // pbFirst
            // 
            this.pbFirst.ForeColor = System.Drawing.Color.Aqua;
            this.pbFirst.Location = new System.Drawing.Point(3, 26);
            this.pbFirst.Name = "pbFirst";
            this.pbFirst.Size = new System.Drawing.Size(251, 17);
            this.pbFirst.Style = System.Windows.Forms.ProgressBarStyle.Continuous;
            this.pbFirst.TabIndex = 1;
            // 
            // pbSecond
            // 
            this.pbSecond.ForeColor = System.Drawing.Color.Lime;
            this.pbSecond.Location = new System.Drawing.Point(3, 3);
            this.pbSecond.Name = "pbSecond";
            this.pbSecond.Size = new System.Drawing.Size(251, 17);
            this.pbSecond.Style = System.Windows.Forms.ProgressBarStyle.Continuous;
            this.pbSecond.TabIndex = 0;
            // 
            // fm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(737, 464);
            this.Controls.Add(this.pnlProgress);
            this.Controls.Add(this.pnl_Buttons);
            this.Controls.Add(this.pnl_Output);
            this.Controls.Add(this.pnl_Settings);
            this.MinimumSize = new System.Drawing.Size(736, 498);
            this.Name = "fm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.fm_FormClosing);
            this.Load += new System.EventHandler(this.fm_Load);
            this.pnl_Settings.ResumeLayout(false);
            this.pnl_Settings.PerformLayout();
            this.grbx_Connection.ResumeLayout(false);
            this.grbx_Connection.PerformLayout();
            this.pnl_Output.ResumeLayout(false);
            this.pnl_Buttons.ResumeLayout(false);
            this.pnlProgress.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TextBox tbx_BaudRate;
        private System.Windows.Forms.TextBox tbx_ComPort;
        private System.Windows.Forms.Label lb_BaudRate;
        private System.Windows.Forms.Label lb_ComPort;
        private System.Windows.Forms.Button btn_StopReading;
        private System.Windows.Forms.Panel pnl_Settings;
        private System.Windows.Forms.ComboBox cbx_DocType;
        private System.Windows.Forms.Label lb_DocType;
        private System.Windows.Forms.GroupBox grbx_Connection;
        private System.Windows.Forms.Label lb_startingDT;
        private System.Windows.Forms.TextBox tbx_ToNum;
        private System.Windows.Forms.TextBox tbx_FromNum;
        private System.Windows.Forms.Label lb_ToNum;
        private System.Windows.Forms.Label lb_FromNum;
        private System.Windows.Forms.CheckBox chbx_RangeByNum;
        private System.Windows.Forms.DateTimePicker dtp_EndTime;
        private System.Windows.Forms.DateTimePicker dtp_EndDate;
        private System.Windows.Forms.DateTimePicker dtp_StartTime;
        private System.Windows.Forms.DateTimePicker dtp_StartDate;
        private System.Windows.Forms.Label lb_EndingDT;
        private System.Windows.Forms.Panel pnl_Output;
        private System.Windows.Forms.Panel pnl_Buttons;
        private System.Windows.Forms.Button btn_PrintDoc;
        private System.Windows.Forms.RichTextBox rtbx_EJ;
        private System.Windows.Forms.Panel pnlProgress;
        private System.Windows.Forms.ProgressBar pbFirst;
        private System.Windows.Forms.ProgressBar pbSecond;
        private System.Windows.Forms.TextBox tbx_ToZRep;
        private System.Windows.Forms.TextBox tbx_FromZRep;
        private System.Windows.Forms.Label lb_EndZRep;
        private System.Windows.Forms.Label lb_FromZRep;
        private System.Windows.Forms.Button btn_Read;
    }
}

