using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraBars;
using DevExpress.XtraEditors.Repository;
using Microsoft.ApplicationBlocks.Data;
using DevExpress.XtraTabbedMdi;
using DevExpress.XtraBars.Docking2010;
using DevExpress.XtraBars.Docking2010.Views.NativeMdi;

namespace OEE
{
    public partial class frmMain : DevExpress.XtraEditors.XtraForm
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            foreach (Control ctl in this.Controls)
            {
                if (ctl is MdiClient)
                {

                    ctl.BackgroundImage = global::OEE.Properties.Resources.backmain;
                    ctl.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
                    break;
                }
            }
            AddBarItems();

            //foreach (Control ctrlControl in this.Controls)
            //{
            //    if (ctrlControl is MdiClient)
            //    {
            //        ctrlControl.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            //        BackgroundImage = Properties.Resources.main_interface;
            //    }
            //}

        }

        private void AddBarItems()
        {

            DataTable dtRoot = new DataTable();

            string sSql = "	SELECT DISTINCT T1.ID_MENU, KEY_MENU,CASE " + Commons.Modules.TypeLanguage.ToString() + " WHEN 0 THEN T1.TEN_MENU WHEN 1 THEN ISNULL(NULLIF(T1.TEN_MENU_A,''),TEN_MENU) ELSE ISNULL(NULLIF(T1.TEN_MENU_H,''),T1.TEN_MENU) END AS TEN_MENU,T1.MENU_PARENT, HIDE, BACK_COLOR, IMG, STT_MENU, CONTROLS,ISNULL(MENU_LINE,0) AS MENU_LINE, T1.MENU_PARAMETER,T1.HOT_KEY FROM dbo.MENU_OEE T1 	INNER JOIN dbo.NHOM_MENU_OEE T2 ON T1.ID_MENU = T2.ID_MENU INNER JOIN dbo.USERS T3 ON T3.GROUP_ID = T2.ID_NHOM 	WHERE (ISNULL(MENU_PARENT,'') = '0' ) AND (ISNULL(HIDE,0) = 0) AND INACTIVE = 0	AND (T3.USERNAME = '" + Commons.Modules.UserName + "') 	ORDER BY STT_MENU ";
            dtRoot.Load(SqlHelper.ExecuteReader(Commons.IConnections.CNStr, CommandType.Text, sSql));


            foreach (DataRow item in dtRoot.Rows)
            {
                bm.BeginUpdate();
                BarSubItem bsRoot = new BarSubItem(bm, item["TEN_MENU"].ToString());
                bsRoot.Name = item["KEY_MENU"].ToString();
                bsRoot.Tag = item["CONTROLS"].ToString();
                bsRoot.Id = int.Parse(item["ID_MENU"].ToString());
                bsRoot.Description = item["MENU_PARAMETER"].ToString();
                bm.MainMenu.AddItem(bsRoot);
                AddBarChild(bsRoot);
                bm.EndUpdate();

            }




            //#region Status Bar
            //BarStaticItem bsiLinePos = new BarStaticItem()
            //{
            //    Caption = "Line: 0 Position: 0",
            //    Alignment = BarItemLinkAlignment.Left,
            //    Width = 150,
            //    AutoSize = BarStaticItemSize.None,
            //    TextAlignment = System.Drawing.StringAlignment.Center
            //};
            //BarStaticItem bsiReady = new BarStaticItem()
            //{
            //    Caption = "Ready",
            //    Alignment = BarItemLinkAlignment.Right,
            //    Width = 80,
            //    AutoSize = BarStaticItemSize.None,
            //    TextAlignment = System.Drawing.StringAlignment.Far,
            //    Border = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder
            //};
            //BarEditItem beiZoom = new BarEditItem(bm, new RepositoryItemZoomTrackBar())
            //{
            //    EditWidth = 150,
            //    Alignment = BarItemLinkAlignment.Right
            //};
            //beiZoom.Edit.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            //bm.StatusBar.AddItems(new BarItem[] { bsiLinePos, beiZoom, bsiReady });
            //#endregion
        }


        private void AddBarChild(BarSubItem bsiRoot)
        {

            DataTable dtChild = new DataTable();
            string sSql = "	SELECT T1.ID_MENU, KEY_MENU,CASE " + Commons.Modules.TypeLanguage.ToString() + " WHEN 0 THEN T1.TEN_MENU WHEN 1 THEN ISNULL(NULLIF(T1.TEN_MENU_A,''),TEN_MENU) ELSE ISNULL(NULLIF(T1.TEN_MENU_H,''),T1.TEN_MENU) END AS TEN_MENU,T1.MENU_PARENT, HIDE, BACK_COLOR, IMG, STT_MENU, CONTROLS,ISNULL(MENU_LINE,0) AS MENU_LINE, T1.MENU_PARAMETER,T1.HOT_KEY FROM dbo.MENU_OEE T1 	INNER JOIN dbo.NHOM_MENU_OEE T2 ON T1.ID_MENU = T2.ID_MENU INNER JOIN dbo.USERS T3 ON T3.GROUP_ID = T2.ID_NHOM 	WHERE (ISNULL(MENU_PARENT,'') = N'" + bsiRoot.Name + "' ) AND (ISNULL(HIDE,0) = 0) AND INACTIVE = 0	AND (T3.USERNAME = '" + Commons.Modules.UserName + "') 	ORDER BY STT_MENU ";
            dtChild.Load(SqlHelper.ExecuteReader(Commons.IConnections.CNStr, CommandType.Text, sSql));
            foreach (DataRow item in dtChild.Rows)
            {
                DataTable dt = new DataTable();
                sSql = "	SELECT T1.ID_MENU, KEY_MENU,CASE " + Commons.Modules.TypeLanguage.ToString() + " WHEN 0 THEN T1.TEN_MENU WHEN 1 THEN ISNULL(NULLIF(T1.TEN_MENU_A,''),TEN_MENU) ELSE ISNULL(NULLIF(T1.TEN_MENU_H,''),T1.TEN_MENU) END AS TEN_MENU,T1.MENU_PARENT, HIDE, BACK_COLOR, IMG, STT_MENU, CONTROLS,ISNULL(MENU_LINE,0) AS MENU_LINE, T1.MENU_PARAMETER,T1.HOT_KEY FROM dbo.MENU_OEE T1 	INNER JOIN dbo.NHOM_MENU_OEE T2 ON T1.ID_MENU = T2.ID_MENU INNER JOIN dbo.USERS T3 ON T3.GROUP_ID = T2.ID_NHOM 	WHERE (ISNULL(MENU_PARENT,'') = N'" + item["KEY_MENU"].ToString() + "' ) AND (ISNULL(HIDE,0) = 0) AND INACTIVE = 0	AND (T3.USERNAME = '" + Commons.Modules.UserName + "') 	ORDER BY STT_MENU ";
                dt.Load(SqlHelper.ExecuteReader(Commons.IConnections.CNStr, CommandType.Text, sSql));
                if (dt.Rows.Count == 0)
                {
                    BarButtonItem bbiChild = new BarButtonItem(bm, item["TEN_MENU"].ToString());
                    bbiChild.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
                    bbiChild.Name = item["KEY_MENU"].ToString();
                    bbiChild.Tag = item["CONTROLS"].ToString();
                    bbiChild.Id = int.Parse(item["ID_MENU"].ToString());
                    bbiChild.Description = item["MENU_PARAMETER"].ToString();
                    bbiChild.Category.Name = bsiRoot.Name;
                    bbiChild.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bbiChild_ItemClick);
                    if (int.Parse(item["MENU_LINE"].ToString()) == 1)
                        bsiRoot.AddItem(bbiChild).BeginGroup = true;
                    else
                        bsiRoot.AddItem(bbiChild);
                }
                else
                {

                    BarSubItem bsRoot1 = new BarSubItem(bm, item["TEN_MENU"].ToString());
                    bsRoot1.Name = item["KEY_MENU"].ToString();
                    bsRoot1.Tag = item["CONTROLS"].ToString();
                    bsRoot1.Id = int.Parse(item["ID_MENU"].ToString());
                    bsRoot1.Description = item["MENU_PARAMETER"].ToString() + "DASDA";
                    bsRoot1.Category.Name = bsiRoot.Name;
                    if (int.Parse(item["MENU_LINE"].ToString()) == 1)
                        bsiRoot.AddItem(bsRoot1).BeginGroup = true;
                    else
                        bsiRoot.AddItem(bsRoot1);

                    AddBarChild(bsRoot1);
                }
            }
        }

        private void bbiChild_ItemClick(object sender, ItemClickEventArgs e)
        {

            try
            {
                if (e.Item.Name.ToUpper() == "mnuthoat".ToUpper())
                {
                    if (Commons.Modules.msgHoi("msgBanCoChacThoatPhanMem") == DialogResult.No) return;
                    try
                    {
                        Commons.Modules.sPS = "0Load";
                        Environment.Exit(Environment.ExitCode);
                        //if (System.Windows.Forms.Application.MessageLoop)
                        //{
                        //    System.Windows.Forms.Application.Exit();
                        //}
                        //else
                        //{
                        //    System.Environment.Exit(1);
                        //}
                    }
                    catch { }
                    return;
                }
                XtraForm ctl = new XtraForm();
                //form dang nhap
                if (e.Item.Name.ToUpper() == "mnuDangNhap".ToUpper())
                {
                    //Xóa tài khoản đăng nhập
                    System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(Commons.IConnections.CNStr);
                    conn.Open();
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("spNguoiDung", conn);
                    cmd.Parameters.Add("@sDMuc", SqlDbType.NVarChar).Value = "mnuDangNhap";
                    cmd.Parameters.Add("@iLoai", SqlDbType.Int).Value = 2;
                    cmd.Parameters.Add("@COT1", SqlDbType.NVarChar).Value = Commons.Modules.UserName;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();

                    //Load frmDangNHap
                    frmDangNhap frmDN = new frmDangNhap(1);
                    //Xóa các form con
                    if (frmDN.ShowDialog() == DialogResult.OK)
                    {
                        bm.Items.Clear();
                        AddBarItems();

                        FormCollection formCollection = Application.OpenForms;
                        List<Form> ListFormToClose = new List<Form>();
                        foreach (Form form in formCollection)
                        {
                            if (form.Name != "frmMain" && form.Name != e.Item.Name.Replace("mnu", "frm"))
                            {
                                ListFormToClose.Add(form);
                            }
                        }
                        ListFormToClose.ForEach(f => f.Close());
                    }
                    return;
                }

                //Doi Ngon Ngu
                if (e.Item.Name.ToUpper() == "mnuNgonNguViet".ToUpper())
                {

                    FormCollection formCollection = Application.OpenForms;
                    List<Form> ListFormToClose = new List<Form>();
                    foreach (Form form in formCollection)
                    {
                        //Type newType = Type.GetType(form.Name.ToString(), true, true);
                        //object o1 = Activator.CreateInstance(newType, 1);
                        //ctl = o1 as XtraForm;

                    }


                    return;
                }

                //form doi mat khau
                if (e.Item.Name.ToUpper() == "mnuDoiMatKhau".ToUpper())
                {
                    frmDoiMatKhau frm = new frmDoiMatKhau(Commons.Modules.UserName, 0);
                    frm.ShowDialog();
                    return;
                }

                string sSql = " SELECT TOP 1 T1.ID_PERMISSION FROM dbo.NHOM_MENU_OEE T1 INNER JOIN dbo.MENU_OEE T2 ON T2.ID_MENU = T1.ID_MENU INNER JOIN dbo.USERS T3 ON T3.GROUP_ID = T1.ID_NHOM WHERE	T2.KEY_MENU = N'" + e.Item.Name.ToString() + "' AND T3.USERNAME = N'" + Commons.Modules.UserName + "'";
                try
                {
                    sSql = Convert.ToString(SqlHelper.ExecuteScalar(Commons.IConnections.CNStr, CommandType.Text, sSql).ToString());
                }
                catch { sSql = "1"; }


                //Neu SQL = 0 -- Khong có quyền truy cập
                if (sSql == "0")
                {
                    Commons.Modules.msgChung("msgBanKhongCoQuyenTruyCapForm");
                    return;
                }
                Form fc = Application.OpenForms[e.Item.Tag.ToString().Substring(4, e.Item.Tag.ToString().Length -4)];
                //if (fc == null) return;
                this.Cursor = Cursors.WaitCursor;
                Type newType = Type.GetType(e.Item.Tag.ToString(), true, true);
                object o1 = Activator.CreateInstance(newType);
                ctl = o1 as XtraForm;
                Commons.Modules.sPS = e.Item.Name;
                ctl.MdiParent = this;
                ctl.Tag = e.Item.Name;

                ctl.Text = e.Item.ToString();
                ctl.Name = e.Item.Name;

                //int iH = Convert.ToInt16(this.Size.Height - 103);
                //int iW = Convert.ToInt16(iH * 1.8);


                ////1018\585
                //ctl.Size = new System.Drawing.Size(iW, iH);
                //ctl.StartPosition = FormStartPosition.Manual;
                //ctl.Location = new Point(0, 0);

                ctl.Show();

                this.Cursor = Cursors.Default;
            }
            catch (Exception ex)
            { XtraMessageBox.Show(ex.Message); }
            this.Cursor = Cursors.Default;
        }


        private void frmMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            Environment.Exit(Environment.ExitCode);

            //if (System.Windows.Forms.Application.MessageLoop)
            //{
            //    System.Windows.Forms.Application.Exit();
            //}
            //else
            //{
            //    System.Environment.Exit(1);
            //}
        }

        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (Commons.Modules.sPS == "0Load") return;
            if (Commons.Modules.msgHoi("msgBanCoChacThoatPhanMem") == DialogResult.No)
            {
                e.Cancel = true;
                return;
            }
        }
    }
}