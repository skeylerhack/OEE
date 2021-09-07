namespace OEE
{
    partial class frmDangNhap
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDangNhap));
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule conditionValidationRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule conditionValidationRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule conditionValidationRule3 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidationRule();
            this.panel1 = new System.Windows.Forms.Panel();
            this.imageSlider1 = new DevExpress.XtraEditors.Controls.ImageSlider();
            this.panel2 = new System.Windows.Forms.Panel();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.btnThoat = new DevExpress.XtraEditors.SimpleButton();
            this.btnDangNhap = new DevExpress.XtraEditors.SimpleButton();
            this.cbo_database = new DevExpress.XtraEditors.LookUpEdit();
            this.che_Repass = new System.Windows.Forms.CheckBox();
            this.che_Reuser = new System.Windows.Forms.CheckBox();
            this.pan_pass = new System.Windows.Forms.Panel();
            this.pan_user = new System.Windows.Forms.Panel();
            this.pan_database = new System.Windows.Forms.Panel();
            this.pic_pass = new DevExpress.XtraEditors.PictureEdit();
            this.pic_user = new DevExpress.XtraEditors.PictureEdit();
            this.pic_database = new DevExpress.XtraEditors.PictureEdit();
            this.txt_pass = new DevExpress.XtraEditors.TextEdit();
            this.txt_user = new DevExpress.XtraEditors.TextEdit();
            this.labTitleLogin = new DevExpress.XtraEditors.LabelControl();
            this.dxValidationProvider1 = new DevExpress.XtraEditors.DXErrorProvider.DXValidationProvider(this.components);
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.imageSlider1)).BeginInit();
            this.panel2.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbo_database.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_pass.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_user.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_database.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_pass.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_user.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Gray;
            this.panel1.Controls.Add(this.imageSlider1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(351, 435);
            this.panel1.TabIndex = 0;
            // 
            // imageSlider1
            // 
            this.imageSlider1.AllowLooping = true;
            this.imageSlider1.AutoSlide = DevExpress.XtraEditors.Controls.AutoSlide.Forward;
            this.imageSlider1.AutoSlideInterval = 5000;
            this.imageSlider1.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.imageSlider1.CurrentImageIndex = 0;
            this.imageSlider1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.imageSlider1.Images.Add(((System.Drawing.Image)(resources.GetObject("imageSlider1.Images"))));
            this.imageSlider1.Images.Add(((System.Drawing.Image)(resources.GetObject("imageSlider1.Images1"))));
            this.imageSlider1.Location = new System.Drawing.Point(0, 0);
            this.imageSlider1.Name = "imageSlider1";
            this.imageSlider1.Size = new System.Drawing.Size(351, 435);
            this.imageSlider1.TabIndex = 0;
            this.imageSlider1.Text = "imageSlider1";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.Controls.Add(this.tableLayoutPanel1);
            this.panel2.Controls.Add(this.cbo_database);
            this.panel2.Controls.Add(this.che_Repass);
            this.panel2.Controls.Add(this.che_Reuser);
            this.panel2.Controls.Add(this.pan_pass);
            this.panel2.Controls.Add(this.pan_user);
            this.panel2.Controls.Add(this.pan_database);
            this.panel2.Controls.Add(this.pic_pass);
            this.panel2.Controls.Add(this.pic_user);
            this.panel2.Controls.Add(this.pic_database);
            this.panel2.Controls.Add(this.txt_pass);
            this.panel2.Controls.Add(this.txt_user);
            this.panel2.Controls.Add(this.labTitleLogin);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(351, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(366, 435);
            this.panel2.TabIndex = 1;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 2;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.Controls.Add(this.btnThoat, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.btnDangNhap, 0, 0);
            this.tableLayoutPanel1.Location = new System.Drawing.Point(21, 388);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 1;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(338, 44);
            this.tableLayoutPanel1.TabIndex = 14;
            // 
            // btnThoat
            // 
            this.btnThoat.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnThoat.Location = new System.Drawing.Point(172, 3);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(163, 38);
            this.btnThoat.TabIndex = 13;
            this.btnThoat.Text = "btnThoat";
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnDangNhap
            // 
            this.btnDangNhap.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnDangNhap.Location = new System.Drawing.Point(3, 3);
            this.btnDangNhap.Name = "btnDangNhap";
            this.btnDangNhap.Size = new System.Drawing.Size(163, 38);
            this.btnDangNhap.TabIndex = 12;
            this.btnDangNhap.Text = "btnDangNhap";
            this.btnDangNhap.Click += new System.EventHandler(this.btnDangNhap_Click);
            // 
            // cbo_database
            // 
            this.cbo_database.Location = new System.Drawing.Point(51, 165);
            this.cbo_database.Name = "cbo_database";
            this.cbo_database.Properties.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.cbo_database.Properties.Appearance.Options.UseBackColor = true;
            this.cbo_database.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.cbo_database.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbo_database.Properties.NullText = "Database";
            this.cbo_database.Size = new System.Drawing.Size(302, 26);
            this.cbo_database.TabIndex = 11;
            conditionValidationRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidationRule1.ErrorText = "Please choose Database!";
            this.dxValidationProvider1.SetValidationRule(this.cbo_database, conditionValidationRule1);
            this.cbo_database.Click += new System.EventHandler(this.Cbo_database_Click);
            this.cbo_database.Validated += new System.EventHandler(this.Cbo_database_Validated);
            // 
            // che_Repass
            // 
            this.che_Repass.AutoSize = true;
            this.che_Repass.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.che_Repass.Location = new System.Drawing.Point(177, 332);
            this.che_Repass.Name = "che_Repass";
            this.che_Repass.Size = new System.Drawing.Size(173, 25);
            this.che_Repass.TabIndex = 4;
            this.che_Repass.Text = "Remember Password";
            this.che_Repass.UseVisualStyleBackColor = true;
            // 
            // che_Reuser
            // 
            this.che_Reuser.AutoSize = true;
            this.che_Reuser.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.che_Reuser.Location = new System.Drawing.Point(21, 332);
            this.che_Reuser.Name = "che_Reuser";
            this.che_Reuser.Size = new System.Drawing.Size(137, 25);
            this.che_Reuser.TabIndex = 3;
            this.che_Reuser.Text = "Remember user";
            this.che_Reuser.UseVisualStyleBackColor = true;
            // 
            // pan_pass
            // 
            this.pan_pass.BackColor = System.Drawing.Color.Gray;
            this.pan_pass.Location = new System.Drawing.Point(21, 291);
            this.pan_pass.Name = "pan_pass";
            this.pan_pass.Size = new System.Drawing.Size(338, 2);
            this.pan_pass.TabIndex = 3;
            // 
            // pan_user
            // 
            this.pan_user.BackColor = System.Drawing.Color.Gray;
            this.pan_user.Location = new System.Drawing.Point(21, 241);
            this.pan_user.Name = "pan_user";
            this.pan_user.Size = new System.Drawing.Size(338, 2);
            this.pan_user.TabIndex = 3;
            // 
            // pan_database
            // 
            this.pan_database.BackColor = System.Drawing.Color.Gray;
            this.pan_database.Location = new System.Drawing.Point(21, 191);
            this.pan_database.Name = "pan_database";
            this.pan_database.Size = new System.Drawing.Size(338, 2);
            this.pan_database.TabIndex = 3;
            // 
            // pic_pass
            // 
            this.pic_pass.EditValue = global::OEE.Properties.Resources.icon_pass;
            this.pic_pass.Location = new System.Drawing.Point(18, 259);
            this.pic_pass.Name = "pic_pass";
            this.pic_pass.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.pic_pass.Properties.Appearance.Options.UseBackColor = true;
            this.pic_pass.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pic_pass.Properties.ShowCameraMenuItem = DevExpress.XtraEditors.Controls.CameraMenuItemVisibility.Auto;
            this.pic_pass.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Zoom;
            this.pic_pass.Size = new System.Drawing.Size(34, 40);
            this.pic_pass.TabIndex = 2;
            // 
            // pic_user
            // 
            this.pic_user.EditValue = global::OEE.Properties.Resources.icon_user;
            this.pic_user.Location = new System.Drawing.Point(18, 207);
            this.pic_user.Name = "pic_user";
            this.pic_user.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.pic_user.Properties.Appearance.Options.UseBackColor = true;
            this.pic_user.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pic_user.Properties.ShowCameraMenuItem = DevExpress.XtraEditors.Controls.CameraMenuItemVisibility.Auto;
            this.pic_user.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Zoom;
            this.pic_user.Size = new System.Drawing.Size(34, 40);
            this.pic_user.TabIndex = 2;
            // 
            // pic_database
            // 
            this.pic_database.EditValue = global::OEE.Properties.Resources.icon_data;
            this.pic_database.Location = new System.Drawing.Point(18, 156);
            this.pic_database.Name = "pic_database";
            this.pic_database.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.pic_database.Properties.Appearance.Options.UseBackColor = true;
            this.pic_database.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pic_database.Properties.ShowCameraMenuItem = DevExpress.XtraEditors.Controls.CameraMenuItemVisibility.Auto;
            this.pic_database.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Zoom;
            this.pic_database.Size = new System.Drawing.Size(34, 40);
            this.pic_database.TabIndex = 2;
            // 
            // txt_pass
            // 
            this.txt_pass.EditValue = "Password";
            this.txt_pass.Location = new System.Drawing.Point(51, 266);
            this.txt_pass.Name = "txt_pass";
            this.txt_pass.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.txt_pass.Properties.Appearance.Options.UseBackColor = true;
            this.txt_pass.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.txt_pass.Properties.PasswordChar = '•';
            this.txt_pass.Size = new System.Drawing.Size(302, 26);
            this.txt_pass.TabIndex = 2;
            conditionValidationRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidationRule2.ErrorText = "Please choose Pass Word!";
            this.dxValidationProvider1.SetValidationRule(this.txt_pass, conditionValidationRule2);
            this.txt_pass.Click += new System.EventHandler(this.Txt_pass_Click);
            this.txt_pass.Validated += new System.EventHandler(this.Txt_pass_Validated);
            // 
            // txt_user
            // 
            this.txt_user.EditValue = "Username";
            this.txt_user.Location = new System.Drawing.Point(51, 215);
            this.txt_user.Name = "txt_user";
            this.txt_user.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.txt_user.Properties.Appearance.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(80)))), ((int)(((byte)(80)))), ((int)(((byte)(80)))));
            this.txt_user.Properties.Appearance.Options.UseBackColor = true;
            this.txt_user.Properties.Appearance.Options.UseForeColor = true;
            this.txt_user.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.txt_user.Size = new System.Drawing.Size(302, 26);
            this.txt_user.TabIndex = 1;
            conditionValidationRule3.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidationRule3.ErrorText = "Please choose User Name!";
            this.dxValidationProvider1.SetValidationRule(this.txt_user, conditionValidationRule3);
            this.txt_user.Click += new System.EventHandler(this.Txt_user_Click);
            this.txt_user.Validated += new System.EventHandler(this.Txt_user_Validated);
            // 
            // labTitleLogin
            // 
            this.labTitleLogin.AllowHtmlString = true;
            this.labTitleLogin.AllowHtmlTextInToolTip = DevExpress.Utils.DefaultBoolean.True;
            this.labTitleLogin.Appearance.Font = new System.Drawing.Font("Segoe UI", 30F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labTitleLogin.Appearance.Options.UseFont = true;
            this.labTitleLogin.Appearance.Options.UseTextOptions = true;
            this.labTitleLogin.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.labTitleLogin.Appearance.TextOptions.Trimming = DevExpress.Utils.Trimming.EllipsisCharacter;
            this.labTitleLogin.AppearancePressed.Options.UseTextOptions = true;
            this.labTitleLogin.AppearancePressed.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.labTitleLogin.AppearancePressed.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.labTitleLogin.AutoEllipsis = true;
            this.labTitleLogin.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labTitleLogin.Location = new System.Drawing.Point(0, 71);
            this.labTitleLogin.Name = "labTitleLogin";
            this.labTitleLogin.Size = new System.Drawing.Size(366, 79);
            this.labTitleLogin.TabIndex = 0;
            this.labTitleLogin.Text = "Sign Up";
            // 
            // dxValidationProvider1
            // 
            this.dxValidationProvider1.ValidationMode = DevExpress.XtraEditors.DXErrorProvider.ValidationMode.Auto;
            // 
            // frmDangNhap
            // 
            this.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.Appearance.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.Appearance.Options.UseBackColor = true;
            this.Appearance.Options.UseForeColor = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 21F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.ClientSize = new System.Drawing.Size(717, 435);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            //this.IconOptions.Image = global::OEE.Properties.Resources.ico;
            this.InactiveGlowColor = System.Drawing.Color.Black;
            this.KeyPreview = true;
            this.Name = "frmDangNhap";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmDangNhap";
            this.Load += new System.EventHandler(this.frmDangNhap_Load);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.frmDangNhap_KeyDown);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.imageSlider1)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.tableLayoutPanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.cbo_database.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_pass.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_user.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_database.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_pass.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_user.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private DevExpress.XtraEditors.LabelControl labTitleLogin;
        private DevExpress.XtraEditors.TextEdit txt_user;
        private DevExpress.XtraEditors.TextEdit txt_pass;
        private System.Windows.Forms.Panel pan_database;
        private DevExpress.XtraEditors.PictureEdit pic_database;
        private System.Windows.Forms.CheckBox che_Repass;
        private System.Windows.Forms.CheckBox che_Reuser;
        private System.Windows.Forms.Panel pan_user;
        private System.Windows.Forms.Panel pan_pass;
        private DevExpress.XtraEditors.PictureEdit pic_pass;
        private DevExpress.XtraEditors.PictureEdit pic_user;
        private DevExpress.XtraEditors.Controls.ImageSlider imageSlider1;
        private DevExpress.XtraEditors.LookUpEdit cbo_database;
        private DevExpress.XtraEditors.DXErrorProvider.DXValidationProvider dxValidationProvider1;
        private DevExpress.XtraEditors.SimpleButton btnThoat;
        private DevExpress.XtraEditors.SimpleButton btnDangNhap;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
    }
}