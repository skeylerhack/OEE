namespace OEE
{
    partial class frmReport
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmReport));
            this.fluentMain = new DevExpress.XtraBars.FluentDesignSystem.FluentDesignFormContainer();
            this.accorMenuleft = new DevExpress.XtraBars.Navigation.AccordionControl();
            this.accordionControlSeparator1 = new DevExpress.XtraBars.Navigation.AccordionControlSeparator();
            this.fluentDesignFormControl1 = new DevExpress.XtraBars.FluentDesignSystem.FluentDesignFormControl();
            this.barButtonUser = new DevExpress.XtraBars.BarStaticItem();
            this.barStaticItem1 = new DevExpress.XtraBars.BarStaticItem();
            this.barButtonData = new DevExpress.XtraBars.BarStaticItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barLanguage = new DevExpress.XtraBars.BarSubItem();
            this.barVN = new DevExpress.XtraBars.BarButtonItem();
            this.barEL = new DevExpress.XtraBars.BarButtonItem();
            this.barskin = new DevExpress.XtraBars.SkinBarSubItem();
            this.barThoat = new DevExpress.XtraBars.BarButtonItem();
            this.barLogout = new DevExpress.XtraBars.BarButtonItem();
            this.barChangepass = new DevExpress.XtraBars.BarButtonItem();
            this.fluentFormDefaultManager1 = new DevExpress.XtraBars.FluentDesignSystem.FluentFormDefaultManager(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.accorMenuleft)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fluentDesignFormControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fluentFormDefaultManager1)).BeginInit();
            this.SuspendLayout();
            // 
            // fluentMain
            // 
            this.fluentMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.fluentMain.Location = new System.Drawing.Point(40, 29);
            this.fluentMain.Margin = new System.Windows.Forms.Padding(2);
            this.fluentMain.Name = "fluentMain";
            this.fluentMain.Size = new System.Drawing.Size(995, 432);
            this.fluentMain.TabIndex = 0;
            // 
            // accorMenuleft
            // 
            this.accorMenuleft.AllowItemSelection = true;
            this.accorMenuleft.Dock = System.Windows.Forms.DockStyle.Left;
            this.accorMenuleft.Elements.AddRange(new DevExpress.XtraBars.Navigation.AccordionControlElement[] {
            this.accordionControlSeparator1});
            this.accorMenuleft.Location = new System.Drawing.Point(0, 29);
            this.accorMenuleft.Margin = new System.Windows.Forms.Padding(2);
            this.accorMenuleft.Name = "accorMenuleft";
            this.accorMenuleft.OptionsMinimizing.State = DevExpress.XtraBars.Navigation.AccordionControlState.Minimized;
            this.accorMenuleft.ScrollBarMode = DevExpress.XtraBars.Navigation.ScrollBarMode.Hidden;
            this.accorMenuleft.ShowFilterControl = DevExpress.XtraBars.Navigation.ShowFilterControl.Always;
            this.accorMenuleft.ShowItemExpandButtons = false;
            this.accorMenuleft.Size = new System.Drawing.Size(40, 432);
            this.accorMenuleft.TabIndex = 1;
            this.accorMenuleft.ViewType = DevExpress.XtraBars.Navigation.AccordionControlViewType.HamburgerMenu;
            // 
            // accordionControlSeparator1
            // 
            this.accordionControlSeparator1.Name = "accordionControlSeparator1";
            // 
            // fluentDesignFormControl1
            // 
            this.fluentDesignFormControl1.FluentDesignForm = this;
            this.fluentDesignFormControl1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonUser,
            this.barStaticItem1,
            this.barButtonData,
            this.barSubItem1,
            this.barLanguage,
            this.barVN,
            this.barEL,
            this.barskin,
            this.barThoat,
            this.barLogout,
            this.barChangepass});
            this.fluentDesignFormControl1.Location = new System.Drawing.Point(0, 0);
            this.fluentDesignFormControl1.Manager = this.fluentFormDefaultManager1;
            this.fluentDesignFormControl1.Margin = new System.Windows.Forms.Padding(2);
            this.fluentDesignFormControl1.Name = "fluentDesignFormControl1";
            this.fluentDesignFormControl1.Size = new System.Drawing.Size(1035, 29);
            this.fluentDesignFormControl1.TabIndex = 2;
            this.fluentDesignFormControl1.TabStop = false;
            this.fluentDesignFormControl1.TitleItemLinks.Add(this.barButtonUser);
            this.fluentDesignFormControl1.TitleItemLinks.Add(this.barStaticItem1);
            this.fluentDesignFormControl1.TitleItemLinks.Add(this.barButtonData);
            this.fluentDesignFormControl1.TitleItemLinks.Add(this.barSubItem1);
            // 
            // barButtonUser
            // 
            this.barButtonUser.Caption = "barButtonUser";
            this.barButtonUser.Id = 70;
            this.barButtonUser.ImageOptions.Image = global::OEE.Properties.Resources.employee_16x16;
            this.barButtonUser.ImageOptions.LargeImage = global::OEE.Properties.Resources.employee_32x32;
            this.barButtonUser.Name = "barButtonUser";
            this.barButtonUser.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // barStaticItem1
            // 
            this.barStaticItem1.Caption = "|";
            this.barStaticItem1.Id = 71;
            this.barStaticItem1.Name = "barStaticItem1";
            // 
            // barButtonData
            // 
            this.barButtonData.Caption = "barButtonData";
            this.barButtonData.Id = 72;
            this.barButtonData.ImageOptions.Image = global::OEE.Properties.Resources.database_16x161;
            this.barButtonData.ImageOptions.LargeImage = global::OEE.Properties.Resources.database_32x321;
            this.barButtonData.Name = "barButtonData";
            this.barButtonData.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // barSubItem1
            // 
            this.barSubItem1.Alignment = DevExpress.XtraBars.BarItemLinkAlignment.Right;
            this.barSubItem1.Caption = "barSubItem1";
            this.barSubItem1.Id = 73;
            this.barSubItem1.ImageOptions.Image = global::OEE.Properties.Resources.properties_16x16;
            this.barSubItem1.ImageOptions.LargeImage = global::OEE.Properties.Resources.properties_32x32;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barLanguage),
            new DevExpress.XtraBars.LinkPersistInfo(this.barskin),
            new DevExpress.XtraBars.LinkPersistInfo(this.barThoat)});
            this.barSubItem1.Name = "barSubItem1";
            this.barSubItem1.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionInMenu;
            // 
            // barLanguage
            // 
            this.barLanguage.Caption = "Langguage";
            this.barLanguage.Id = 74;
            this.barLanguage.ImageOptions.Image = global::OEE.Properties.Resources.language_16x161;
            this.barLanguage.ImageOptions.LargeImage = global::OEE.Properties.Resources.language_32x321;
            this.barLanguage.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barVN),
            new DevExpress.XtraBars.LinkPersistInfo(this.barEL)});
            this.barLanguage.Name = "barLanguage";
            // 
            // barVN
            // 
            this.barVN.Caption = "Vietnamese";
            this.barVN.Id = 75;
            this.barVN.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("barVN.ImageOptions.Image")));
            this.barVN.Name = "barVN";
            this.barVN.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barVN_ItemClick);
            // 
            // barEL
            // 
            this.barEL.Caption = "English";
            this.barEL.Id = 76;
            this.barEL.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("barEL.ImageOptions.Image")));
            this.barEL.Name = "barEL";
            this.barEL.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barEL_ItemClick);
            // 
            // barskin
            // 
            this.barskin.Caption = "Thems styles";
            this.barskin.Id = 77;
            this.barskin.ImageOptions.SvgImage = global::OEE.Properties.Resources.changefontstyle;
            this.barskin.Name = "barskin";
            // 
            // barThoat
            // 
            this.barThoat.Caption = "Exits";
            this.barThoat.Id = 78;
            this.barThoat.ImageOptions.Image = global::OEE.Properties.Resources.close_16x16;
            this.barThoat.ImageOptions.LargeImage = global::OEE.Properties.Resources.close_32x321;
            this.barThoat.Name = "barThoat";
            this.barThoat.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barThoat_ItemClick);
            // 
            // barLogout
            // 
            this.barLogout.Id = 83;
            this.barLogout.Name = "barLogout";
            // 
            // barChangepass
            // 
            this.barChangepass.Id = 84;
            this.barChangepass.Name = "barChangepass";
            // 
            // fluentFormDefaultManager1
            // 
            this.fluentFormDefaultManager1.DockingEnabled = false;
            this.fluentFormDefaultManager1.Form = this;
            this.fluentFormDefaultManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonUser,
            this.barStaticItem1,
            this.barButtonData,
            this.barSubItem1,
            this.barLanguage,
            this.barVN,
            this.barEL,
            this.barskin,
            this.barThoat,
            this.barLogout,
            this.barChangepass});
            this.fluentFormDefaultManager1.MaxItemId = 85;
            // 
            // frmReport
            // 
            this.Appearance.Options.UseFont = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1035, 461);
            this.ControlContainer = this.fluentMain;
            this.Controls.Add(this.fluentMain);
            this.Controls.Add(this.accorMenuleft);
            this.Controls.Add(this.fluentDesignFormControl1);
            this.FluentDesignFormControl = this.fluentDesignFormControl1;
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.IconOptions.ShowIcon = false;
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "frmReport";
            this.NavigationControl = this.accorMenuleft;
            this.ShowText = false;
            this.Text = "Main";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmReport_FormClosing);
            this.Load += new System.EventHandler(this.frmReport_Load);
            ((System.ComponentModel.ISupportInitialize)(this.accorMenuleft)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fluentDesignFormControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fluentFormDefaultManager1)).EndInit();
            this.ResumeLayout(false);

        }
        #endregion
        private DevExpress.XtraBars.FluentDesignSystem.FluentDesignFormContainer fluentMain;
        private DevExpress.XtraBars.Navigation.AccordionControl accorMenuleft;
        private DevExpress.XtraBars.FluentDesignSystem.FluentDesignFormControl fluentDesignFormControl1;
        private DevExpress.XtraBars.FluentDesignSystem.FluentFormDefaultManager fluentFormDefaultManager1;
        private DevExpress.XtraBars.Navigation.AccordionControlSeparator accordionControlSeparator1;
        private DevExpress.XtraBars.BarStaticItem barButtonUser;
        private DevExpress.XtraBars.BarStaticItem barStaticItem1;
        private DevExpress.XtraBars.BarStaticItem barButtonData;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarSubItem barLanguage;
        private DevExpress.XtraBars.BarButtonItem barVN;
        private DevExpress.XtraBars.BarButtonItem barEL;
        private DevExpress.XtraBars.SkinBarSubItem barskin;
        private DevExpress.XtraBars.BarButtonItem barThoat;
        private DevExpress.XtraBars.BarButtonItem barLogout;
        private DevExpress.XtraBars.BarButtonItem barChangepass;
    }
}

