namespace OEE
{
    partial class frmChangePass
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
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule conditionValidationRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule conditionValidationRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule conditionValidationRule3 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule();
            this.tablePanel1 = new DevExpress.Utils.Layout.TablePanel();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btnCapnhat = new DevExpress.XtraEditors.SimpleButton();
            this.btnThoat = new DevExpress.XtraEditors.SimpleButton();
            this.btnChooseMay = new DevExpress.XtraEditors.SimpleButton();
            this.btnGhi = new DevExpress.XtraEditors.SimpleButton();
            this.txtUsername = new DevExpress.XtraEditors.TextEdit();
            this.lblUserName = new DevExpress.XtraEditors.LabelControl();
            this.lblPassold = new DevExpress.XtraEditors.LabelControl();
            this.lblPassnew = new DevExpress.XtraEditors.LabelControl();
            this.lblPassnew1 = new DevExpress.XtraEditors.LabelControl();
            this.txtPassold = new DevExpress.XtraEditors.TextEdit();
            this.txtPassnew = new DevExpress.XtraEditors.TextEdit();
            this.txtPassnew1 = new DevExpress.XtraEditors.TextEdit();
            this.dxValidationProvider1 = new DevExpress.XtraEditors.DXErrorProvider.DXValidationProvider(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).BeginInit();
            this.tablePanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtUsername.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassold.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassnew.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassnew1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider1)).BeginInit();
            this.SuspendLayout();
            // 
            // tablePanel1
            // 
            this.tablePanel1.Columns.AddRange(new DevExpress.Utils.Layout.TablePanelColumn[] {
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 120F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 100F)});
            this.tablePanel1.Controls.Add(this.panelControl1);
            this.tablePanel1.Controls.Add(this.txtUsername);
            this.tablePanel1.Controls.Add(this.lblUserName);
            this.tablePanel1.Controls.Add(this.lblPassold);
            this.tablePanel1.Controls.Add(this.lblPassnew);
            this.tablePanel1.Controls.Add(this.lblPassnew1);
            this.tablePanel1.Controls.Add(this.txtPassold);
            this.tablePanel1.Controls.Add(this.txtPassnew);
            this.tablePanel1.Controls.Add(this.txtPassnew1);
            this.tablePanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tablePanel1.Location = new System.Drawing.Point(0, 0);
            this.tablePanel1.Name = "tablePanel1";
            this.tablePanel1.Rows.AddRange(new DevExpress.Utils.Layout.TablePanelRow[] {
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 8F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 26F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 26F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 26F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 26F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 37F)});
            this.tablePanel1.Size = new System.Drawing.Size(336, 152);
            this.tablePanel1.TabIndex = 0;
            // 
            // panelControl1
            // 
            this.panelControl1.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.tablePanel1.SetColumn(this.panelControl1, 0);
            this.tablePanel1.SetColumnSpan(this.panelControl1, 2);
            this.panelControl1.Controls.Add(this.btnCapnhat);
            this.panelControl1.Controls.Add(this.btnThoat);
            this.panelControl1.Controls.Add(this.btnChooseMay);
            this.panelControl1.Controls.Add(this.btnGhi);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl1.Location = new System.Drawing.Point(3, 115);
            this.panelControl1.Name = "panelControl1";
            this.tablePanel1.SetRow(this.panelControl1, 5);
            this.panelControl1.Size = new System.Drawing.Size(330, 34);
            this.panelControl1.TabIndex = 2;
            // 
            // btnCapnhat
            // 
            this.btnCapnhat.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCapnhat.Location = new System.Drawing.Point(119, 3);
            this.btnCapnhat.Name = "btnCapnhat";
            this.btnCapnhat.Size = new System.Drawing.Size(104, 30);
            this.btnCapnhat.TabIndex = 13;
            this.btnCapnhat.Text = "btnCapnhat";
            this.btnCapnhat.Click += new System.EventHandler(this.btnCapnhat_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnThoat.Location = new System.Drawing.Point(224, 3);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(104, 30);
            this.btnThoat.TabIndex = 14;
            this.btnThoat.Text = "btnThoat";
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnChooseMay
            // 
            this.btnChooseMay.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnChooseMay.Location = new System.Drawing.Point(119, 2);
            this.btnChooseMay.Name = "btnChooseMay";
            this.btnChooseMay.Size = new System.Drawing.Size(104, 30);
            this.btnChooseMay.TabIndex = 12;
            this.btnChooseMay.Text = "btnChooseMay";
            // 
            // btnGhi
            // 
            this.btnGhi.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnGhi.Location = new System.Drawing.Point(224, 2);
            this.btnGhi.Name = "btnGhi";
            this.btnGhi.Size = new System.Drawing.Size(104, 30);
            this.btnGhi.TabIndex = 15;
            this.btnGhi.Text = "btnGhi";
            // 
            // txtUsername
            // 
            this.tablePanel1.SetColumn(this.txtUsername, 1);
            this.txtUsername.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtUsername.Location = new System.Drawing.Point(123, 11);
            this.txtUsername.Name = "txtUsername";
            this.txtUsername.Properties.ReadOnly = true;
            this.tablePanel1.SetRow(this.txtUsername, 1);
            this.txtUsername.Size = new System.Drawing.Size(210, 20);
            this.txtUsername.TabIndex = 1;
            // 
            // lblUserName
            // 
            this.tablePanel1.SetColumn(this.lblUserName, 0);
            this.lblUserName.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblUserName.Location = new System.Drawing.Point(3, 11);
            this.lblUserName.Name = "lblUserName";
            this.tablePanel1.SetRow(this.lblUserName, 1);
            this.lblUserName.Size = new System.Drawing.Size(114, 20);
            this.lblUserName.TabIndex = 0;
            this.lblUserName.Text = "lblUserName";
            // 
            // lblPassold
            // 
            this.tablePanel1.SetColumn(this.lblPassold, 0);
            this.lblPassold.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblPassold.Location = new System.Drawing.Point(3, 37);
            this.lblPassold.Name = "lblPassold";
            this.tablePanel1.SetRow(this.lblPassold, 2);
            this.lblPassold.Size = new System.Drawing.Size(114, 20);
            this.lblPassold.TabIndex = 0;
            this.lblPassold.Text = "lblPassold";
            // 
            // lblPassnew
            // 
            this.tablePanel1.SetColumn(this.lblPassnew, 0);
            this.lblPassnew.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblPassnew.Location = new System.Drawing.Point(3, 63);
            this.lblPassnew.Name = "lblPassnew";
            this.tablePanel1.SetRow(this.lblPassnew, 3);
            this.lblPassnew.Size = new System.Drawing.Size(114, 20);
            this.lblPassnew.TabIndex = 0;
            this.lblPassnew.Text = "lblPassnew";
            // 
            // lblPassnew1
            // 
            this.tablePanel1.SetColumn(this.lblPassnew1, 0);
            this.lblPassnew1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblPassnew1.Location = new System.Drawing.Point(3, 89);
            this.lblPassnew1.Name = "lblPassnew1";
            this.tablePanel1.SetRow(this.lblPassnew1, 4);
            this.lblPassnew1.Size = new System.Drawing.Size(114, 20);
            this.lblPassnew1.TabIndex = 0;
            this.lblPassnew1.Text = "lblPassnew1";
            // 
            // txtPassold
            // 
            this.tablePanel1.SetColumn(this.txtPassold, 1);
            this.txtPassold.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtPassold.Location = new System.Drawing.Point(123, 37);
            this.txtPassold.Name = "txtPassold";
            this.txtPassold.Properties.PasswordChar = '•';
            this.tablePanel1.SetRow(this.txtPassold, 2);
            this.txtPassold.Size = new System.Drawing.Size(210, 20);
            this.txtPassold.TabIndex = 1;
            conditionValidationRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidationRule1.ErrorText = "This value is not valid";
            conditionValidationRule1.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider1.SetValidationRule(this.txtPassold, conditionValidationRule1);
            // 
            // txtPassnew
            // 
            this.tablePanel1.SetColumn(this.txtPassnew, 1);
            this.txtPassnew.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtPassnew.Location = new System.Drawing.Point(123, 63);
            this.txtPassnew.Name = "txtPassnew";
            this.txtPassnew.Properties.PasswordChar = '•';
            this.tablePanel1.SetRow(this.txtPassnew, 3);
            this.txtPassnew.Size = new System.Drawing.Size(210, 20);
            this.txtPassnew.TabIndex = 1;
            conditionValidationRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidationRule2.ErrorText = "This value is not valid";
            conditionValidationRule2.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider1.SetValidationRule(this.txtPassnew, conditionValidationRule2);
            // 
            // txtPassnew1
            // 
            this.tablePanel1.SetColumn(this.txtPassnew1, 1);
            this.txtPassnew1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtPassnew1.Location = new System.Drawing.Point(123, 89);
            this.txtPassnew1.Name = "txtPassnew1";
            this.txtPassnew1.Properties.PasswordChar = '•';
            this.tablePanel1.SetRow(this.txtPassnew1, 4);
            this.txtPassnew1.Size = new System.Drawing.Size(210, 20);
            this.txtPassnew1.TabIndex = 1;
            conditionValidationRule3.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidationRule3.ErrorText = "This value is not valid";
            conditionValidationRule3.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider1.SetValidationRule(this.txtPassnew1, conditionValidationRule3);
            // 
            // dxValidationProvider1
            // 
            this.dxValidationProvider1.ValidationMode = DevExpress.XtraEditors.DXErrorProvider.ValidationMode.Auto;
            // 
            // frmChangePass
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(336, 152);
            this.Controls.Add(this.tablePanel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmChangePass";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmChangePass";
            this.Load += new System.EventHandler(this.frmChangePass_Load);
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).EndInit();
            this.tablePanel1.ResumeLayout(false);
            this.tablePanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.txtUsername.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassold.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassnew.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassnew1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.Utils.Layout.TablePanel tablePanel1;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.TextEdit txtUsername;
        private DevExpress.XtraEditors.LabelControl lblUserName;
        private DevExpress.XtraEditors.LabelControl lblPassold;
        private DevExpress.XtraEditors.LabelControl lblPassnew;
        private DevExpress.XtraEditors.LabelControl lblPassnew1;
        private DevExpress.XtraEditors.TextEdit txtPassold;
        private DevExpress.XtraEditors.TextEdit txtPassnew;
        private DevExpress.XtraEditors.TextEdit txtPassnew1;
        private DevExpress.XtraEditors.SimpleButton btnCapnhat;
        private DevExpress.XtraEditors.SimpleButton btnThoat;
        private DevExpress.XtraEditors.SimpleButton btnChooseMay;
        private DevExpress.XtraEditors.SimpleButton btnGhi;
        private DevExpress.XtraEditors.DXErrorProvider.DXValidationProvider dxValidationProvider1;
    }
}