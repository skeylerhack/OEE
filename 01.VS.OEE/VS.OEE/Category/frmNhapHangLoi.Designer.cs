namespace VS.OEE
{
    partial class frmNhapHangLoi
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
            this.btnThoat = new DevExpress.XtraEditors.SimpleButton();
            this.btnKhongGhi = new DevExpress.XtraEditors.SimpleButton();
            this.btnGhi = new DevExpress.XtraEditors.SimpleButton();
            this.btnXoa = new DevExpress.XtraEditors.SimpleButton();
            this.txtDocNum = new DevExpress.XtraEditors.ButtonEdit();
            this.grdChung = new DevExpress.XtraGrid.GridControl();
            this.grvChung = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.dedQCDate = new DevExpress.XtraEditors.DateEdit();
            this.txtQCName = new DevExpress.XtraEditors.TextEdit();
            this.lblQCName = new DevExpress.XtraEditors.LabelControl();
            this.lblQCDate = new DevExpress.XtraEditors.LabelControl();
            this.lblDocNum = new DevExpress.XtraEditors.LabelControl();
            this.dxValidationProvider1 = new DevExpress.XtraEditors.DXErrorProvider.DXValidationProvider(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).BeginInit();
            this.tablePanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtDocNum.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.grdChung)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.grvChung)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dedQCDate.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dedQCDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtQCName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider1)).BeginInit();
            this.SuspendLayout();
            // 
            // tablePanel1
            // 
            this.tablePanel1.Columns.AddRange(new DevExpress.Utils.Layout.TablePanelColumn[] {
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 20F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 30F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 20F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 30F)});
            this.tablePanel1.Controls.Add(this.panelControl1);
            this.tablePanel1.Controls.Add(this.txtDocNum);
            this.tablePanel1.Controls.Add(this.grdChung);
            this.tablePanel1.Controls.Add(this.dedQCDate);
            this.tablePanel1.Controls.Add(this.txtQCName);
            this.tablePanel1.Controls.Add(this.lblQCName);
            this.tablePanel1.Controls.Add(this.lblQCDate);
            this.tablePanel1.Controls.Add(this.lblDocNum);
            this.tablePanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tablePanel1.Location = new System.Drawing.Point(0, 0);
            this.tablePanel1.Name = "tablePanel1";
            this.tablePanel1.Rows.AddRange(new DevExpress.Utils.Layout.TablePanelRow[] {
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 26F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 26F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 100F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 35F)});
            this.tablePanel1.Size = new System.Drawing.Size(708, 444);
            this.tablePanel1.TabIndex = 0;
            // 
            // panelControl1
            // 
            this.tablePanel1.SetColumn(this.panelControl1, 0);
            this.tablePanel1.SetColumnSpan(this.panelControl1, 4);
            this.panelControl1.Controls.Add(this.btnThoat);
            this.panelControl1.Controls.Add(this.btnKhongGhi);
            this.panelControl1.Controls.Add(this.btnGhi);
            this.panelControl1.Controls.Add(this.btnXoa);
            this.panelControl1.Location = new System.Drawing.Point(3, 412);
            this.panelControl1.Name = "panelControl1";
            this.tablePanel1.SetRow(this.panelControl1, 3);
            this.panelControl1.Size = new System.Drawing.Size(702, 29);
            this.panelControl1.TabIndex = 9;
            // 
            // btnThoat
            // 
            this.btnThoat.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnThoat.Location = new System.Drawing.Point(620, 2);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(80, 26);
            this.btnThoat.TabIndex = 2;
            this.btnThoat.Text = "btnThoat";
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnKhongGhi
            // 
            this.btnKhongGhi.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnKhongGhi.Location = new System.Drawing.Point(539, 2);
            this.btnKhongGhi.Name = "btnKhongGhi";
            this.btnKhongGhi.Size = new System.Drawing.Size(80, 26);
            this.btnKhongGhi.TabIndex = 3;
            this.btnKhongGhi.Text = "btnKhongGhi";
            this.btnKhongGhi.Click += new System.EventHandler(this.btnKhongGhi_Click);
            // 
            // btnGhi
            // 
            this.btnGhi.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnGhi.Location = new System.Drawing.Point(457, 2);
            this.btnGhi.Name = "btnGhi";
            this.btnGhi.Size = new System.Drawing.Size(80, 26);
            this.btnGhi.TabIndex = 4;
            this.btnGhi.Text = "btnGhi";
            this.btnGhi.Click += new System.EventHandler(this.btnGhi_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnXoa.Location = new System.Drawing.Point(376, 2);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(80, 26);
            this.btnXoa.TabIndex = 5;
            this.btnXoa.Text = "btnXoa";
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // txtDocNum
            // 
            this.tablePanel1.SetColumn(this.txtDocNum, 1);
            this.txtDocNum.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtDocNum.Location = new System.Drawing.Point(145, 3);
            this.txtDocNum.Name = "txtDocNum";
            this.txtDocNum.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.tablePanel1.SetRow(this.txtDocNum, 0);
            this.txtDocNum.Size = new System.Drawing.Size(206, 20);
            this.txtDocNum.TabIndex = 8;
            conditionValidationRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidationRule1.ErrorText = "This value is not valid";
            conditionValidationRule1.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider1.SetValidationRule(this.txtDocNum, conditionValidationRule1);
            this.txtDocNum.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.txtDocNum_ButtonClick);
            // 
            // grdChung
            // 
            this.tablePanel1.SetColumn(this.grdChung, 0);
            this.tablePanel1.SetColumnSpan(this.grdChung, 4);
            this.grdChung.Dock = System.Windows.Forms.DockStyle.Fill;
            this.grdChung.Location = new System.Drawing.Point(3, 55);
            this.grdChung.MainView = this.grvChung;
            this.grdChung.Name = "grdChung";
            this.tablePanel1.SetRow(this.grdChung, 2);
            this.grdChung.Size = new System.Drawing.Size(702, 351);
            this.grdChung.TabIndex = 6;
            this.grdChung.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.grvChung});
            this.grdChung.KeyDown += new System.Windows.Forms.KeyEventHandler(this.grdChung_KeyDown);
            // 
            // grvChung
            // 
            this.grvChung.DetailHeight = 303;
            this.grvChung.GridControl = this.grdChung;
            this.grvChung.Name = "grvChung";
            this.grvChung.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Top;
            this.grvChung.OptionsView.ShowGroupPanel = false;
            this.grvChung.InitNewRow += new DevExpress.XtraGrid.Views.Grid.InitNewRowEventHandler(this.grvChung_InitNewRow);
            this.grvChung.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.grvChung_CellValueChanged);
            this.grvChung.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.grvChung_ValidateRow);
            // 
            // dedQCDate
            // 
            this.tablePanel1.SetColumn(this.dedQCDate, 3);
            this.dedQCDate.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dedQCDate.EditValue = null;
            this.dedQCDate.Location = new System.Drawing.Point(499, 29);
            this.dedQCDate.Name = "dedQCDate";
            this.dedQCDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dedQCDate.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.tablePanel1.SetRow(this.dedQCDate, 1);
            this.dedQCDate.Size = new System.Drawing.Size(206, 20);
            this.dedQCDate.TabIndex = 5;
            conditionValidationRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidationRule2.ErrorText = "This value is not valid";
            conditionValidationRule2.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider1.SetValidationRule(this.dedQCDate, conditionValidationRule2);
            // 
            // txtQCName
            // 
            this.tablePanel1.SetColumn(this.txtQCName, 3);
            this.txtQCName.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtQCName.Location = new System.Drawing.Point(499, 3);
            this.txtQCName.Name = "txtQCName";
            this.tablePanel1.SetRow(this.txtQCName, 0);
            this.txtQCName.Size = new System.Drawing.Size(206, 20);
            this.txtQCName.TabIndex = 4;
            conditionValidationRule3.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidationRule3.ErrorText = "This value is not valid";
            conditionValidationRule3.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider1.SetValidationRule(this.txtQCName, conditionValidationRule3);
            // 
            // lblQCName
            // 
            this.tablePanel1.SetColumn(this.lblQCName, 2);
            this.lblQCName.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblQCName.Location = new System.Drawing.Point(357, 3);
            this.lblQCName.Name = "lblQCName";
            this.tablePanel1.SetRow(this.lblQCName, 0);
            this.lblQCName.Size = new System.Drawing.Size(136, 20);
            this.lblQCName.TabIndex = 2;
            this.lblQCName.Text = "lblQCName";
            // 
            // lblQCDate
            // 
            this.tablePanel1.SetColumn(this.lblQCDate, 2);
            this.lblQCDate.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblQCDate.Location = new System.Drawing.Point(357, 29);
            this.lblQCDate.Name = "lblQCDate";
            this.tablePanel1.SetRow(this.lblQCDate, 1);
            this.lblQCDate.Size = new System.Drawing.Size(136, 20);
            this.lblQCDate.TabIndex = 1;
            this.lblQCDate.Text = "lblQCDate";
            // 
            // lblDocNum
            // 
            this.tablePanel1.SetColumn(this.lblDocNum, 0);
            this.lblDocNum.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblDocNum.Location = new System.Drawing.Point(3, 3);
            this.lblDocNum.Name = "lblDocNum";
            this.tablePanel1.SetRow(this.lblDocNum, 0);
            this.lblDocNum.Size = new System.Drawing.Size(136, 20);
            this.lblDocNum.TabIndex = 0;
            this.lblDocNum.Text = "lblID";
            // 
            // frmNhapHangLoi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(708, 444);
            this.Controls.Add(this.tablePanel1);
            this.IconOptions.Image = global::VS.OEE.Properties.Resources.OEE;
            this.Name = "frmNhapHangLoi";
            this.Text = "frmNhapHangLoi";
            this.Load += new System.EventHandler(this.frmNhapHangLoi_Load);
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).EndInit();
            this.tablePanel1.ResumeLayout(false);
            this.tablePanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.txtDocNum.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.grdChung)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.grvChung)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dedQCDate.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dedQCDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtQCName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.Utils.Layout.TablePanel tablePanel1;
        private DevExpress.XtraGrid.GridControl grdChung;
        private DevExpress.XtraGrid.Views.Grid.GridView grvChung;
        private DevExpress.XtraEditors.DateEdit dedQCDate;
        private DevExpress.XtraEditors.TextEdit txtQCName;
        private DevExpress.XtraEditors.LabelControl lblQCName;
        private DevExpress.XtraEditors.LabelControl lblQCDate;
        private DevExpress.XtraEditors.LabelControl lblDocNum;
        private DevExpress.XtraEditors.SimpleButton btnThoat;
        private DevExpress.XtraEditors.SimpleButton btnKhongGhi;
        private DevExpress.XtraEditors.SimpleButton btnGhi;
        private DevExpress.XtraEditors.SimpleButton btnXoa;
        private DevExpress.XtraEditors.ButtonEdit txtDocNum;
        private DevExpress.XtraEditors.DXErrorProvider.DXValidationProvider dxValidationProvider1;
        private DevExpress.XtraEditors.PanelControl panelControl1;
    }
}