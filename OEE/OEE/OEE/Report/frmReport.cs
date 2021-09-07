using DevExpress.LookAndFeel;
using DevExpress.XtraBars.Navigation;
using DevExpress.XtraEditors;
using Microsoft.ApplicationBlocks.Data;
using System;
using System.Data;
using System.Reflection;
using System.Windows.Forms;

namespace OEE
{
    public partial class frmReport : DevExpress.XtraBars.FluentDesignSystem.FluentDesignForm
    {
        public string sLoad = "";
        public frmReport()
        {
            InitializeComponent();
            UserLookAndFeel.Default.SkinName = Properties.Settings.Default.ApplicationSkinName;

        }
        public void LoadMenu()
        {
            accorMenuleft.Elements.Clear();
            DataTable dt = new DataTable();
            dt.Load(SqlHelper.ExecuteReader(Commons.IConnections.CNStr, "SP_GET_MENU_OEE", Commons.Modules.UserName));
            foreach (DataRow item in dt.Rows)
            {
                AccordionControlElement element = new AccordionControlElement();
                element.Expanded = true;
                if (Commons.Modules.TypeLanguage == 0)
                {
                    element.Text = item["MENU_TEXT"].ToString();
                }
                else
                {
                    element.Text = item["MENU_ENGLISH"].ToString();
                }
                element.Name = item["MENU_ID"].ToString();
                accorMenuleft.Elements.Add(element);
                element.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
                element.Tag = item["ID_PERMISION"].ToString();
                element.Click += Element_Click1;
            }
        }
        private void Element_Click1(object sender, EventArgs e)
        {
            Element_Click(sender, null);
        }
        public void AddChill(AccordionControlElement Root, DataTable dtchill)
        {
            foreach (DataRow itemchill in dtchill.Rows)
            {
                DataTable dt = new DataTable();
                AccordionControlElement element = new AccordionControlElement();
                //kiểm tra có còn thèn con nào không
                dt.Load(SqlHelper.ExecuteReader(Commons.IConnections.CNStr, "SP_GET_MENU_OF_PARENT_OEE", itemchill["MENU_ID"], Commons.Modules.UserName));
                if (Commons.Modules.TypeLanguage == 0)
                {
                    element.Text = itemchill["MENU_TEXT"].ToString();
                }
                else
                {
                    element.Text = itemchill["MENU_ENGLISH"].ToString();
                }
                element.Name = itemchill["MENU_ID"].ToString();
                element.Tag = itemchill["ID_PERMISION"].ToString();
                Root.Elements.Add(element);
                if (dt.Rows.Count == 0)
                {
                    element.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
                    element.Click += Element_Click;
                }
                else
                {
                    element.Style = DevExpress.XtraBars.Navigation.ElementStyle.Group;
                    AddChill(element, dt);
                }
            }
        }
        private void Element_Click(object sender, System.EventArgs e)
        {
            try
            {
                var button = sender as AccordionControlElement;
                if (sLoad == button.Name) return;
                sLoad = button.Name;
                Commons.Modules.ObjSystems.ShowWaitForm(this);
                switch (button.Name)
                {
                    case "mnuBCTinhHinhSanXuat":
                        {
                            Adduac(new ucBaoCaoTinhHinhSanXuat(),Convert.ToInt32(button.Tag));
                            break;
                        }
                    case "mnuBCTongHopHieuXuat":
                        {
                            Adduac(new ucBaoCaoTongHopHieuXuat(), Convert.ToInt32(button.Tag));
                            break;
                        }
                    case "mnuPareto":
                        {
                            Adduac(new ucBaocaoPareto(), Convert.ToInt32(button.Tag));
                            break;
                        }
                    case "mnuBaoCaoTienDoSanXuat":
                        {
                            Adduac(new ucBaoCaoTienDoSanXuat(), Convert.ToInt32(button.Tag));
                            break;
                        }
                    case "mnuucBaocaoDoThiOEE":
                        {
                            Adduac(new ucBaocaoDoThiOEE(), Convert.ToInt32(button.Tag));
                            break;
                        }
                    default:
                        break;
                }
                Commons.Modules.ObjSystems.HideWaitForm();
            }
            catch (System.Exception ex)
            {
                XtraMessageBox.Show(MethodBase.GetCurrentMethod().Name + ": " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void Adduac(XtraUserControl ctr, int per)
        {
            Commons.Modules.iPermission = per;
            fluentMain.Controls.Clear();
            fluentMain.Controls.Add(ctr);
            ctr.Dock = DockStyle.Fill;
        }
        private void frmReport_Load(object sender, System.EventArgs e)
        {
            LoadMenu();
            barButtonUser.Caption = Commons.Modules.UserName;
            barButtonData.Caption = Commons.IConnections.Database;
            try
            {
                accorMenuleft.SelectElement(accorMenuleft.Elements[0]);
                Element_Click(accorMenuleft.Elements[0], null);
            }
            catch
            {
            }


        }
        private void frmReport_FormClosing(object sender, FormClosingEventArgs e)
        {
            //SqlHelper.ExecuteNonQuery(Commons.IConnections.CNStr, CommandType.Text, "DELETE dbo.LOGIN WHERE USER_LOGIN ='" + Commons.Modules.UserName + "'");
            Properties.Settings.Default.ApplicationSkinName = UserLookAndFeel.Default.SkinName;
            Properties.Settings.Default.Save();
        }


        private void barVN_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //viet nam
            try
            {
                if (Commons.Modules.TypeLanguage == 0)
                    return;
                Properties.Settings.Default.lang = 0;
                Commons.Modules.TypeLanguage = 0;
                //LoadMenu();

                foreach (XtraUserControl vFrm in fluentMain.Controls)
                    Commons.Modules.ObjSystems.ThayDoiNN(vFrm);
            }
            catch (Exception ex)
            {
                XtraMessageBox.Show(MethodBase.GetCurrentMethod().Name + ": " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void barEL_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //english
            try
            {
                if (Commons.Modules.TypeLanguage == 1)
                    return;
                Commons.Modules.TypeLanguage = 1;
                Properties.Settings.Default.lang = 1;
                LoadMenu();
                foreach (XtraUserControl vFrm in fluentMain.Controls)
                    Commons.Modules.ObjSystems.ThayDoiNN(vFrm);
            }
            catch (Exception ex)
            {
                XtraMessageBox.Show(MethodBase.GetCurrentMethod().Name + ": " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void barThoat_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //thoát
            Application.Exit();
        }
    }
}
