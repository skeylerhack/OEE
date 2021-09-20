using System;
using System.Windows.Forms;
using DevExpress.UserSkins;
using System.Data;
using System.Threading;
namespace OEE
{
    static class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            if (args[0].ToString() == "") return;
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            BonusSkins.Register();
            Commons.Modules.ModuleName = "ECOMAIN";
            DataSet ds = new DataSet();
            ds.ReadXml(AppDomain.CurrentDomain.BaseDirectory + "\\lib\\saveconfig.xml");
            Commons.IConnections.Server = ds.Tables[0].Rows[0]["S"].ToString();
            Commons.IConnections.Database = ds.Tables[0].Rows[0]["D"].ToString();
            Commons.IConnections.Username = ds.Tables[0].Rows[0]["U"].ToString();
            Commons.IConnections.Password = ds.Tables[0].Rows[0]["P"].ToString();
            Commons.Modules.UserName = ds.Tables[0].Rows[0]["US"].ToString();
            Commons.Modules.TypeLanguage = Convert.ToInt32(ds.Tables[0].Rows[0]["LA"]);
            Properties.Settings.Default.lang = Commons.Modules.TypeLanguage;
            //Commons.IConnections.Database = "CMMS_TN";
            //Commons.Modules.TypeLanguage = 1;
            Commons.Modules.sPrivate = @"TRUNGNGUYEN";
            //Commons.Modules.UserName = "admin";
            //1 Full ,2Read Only,3No access.
            Commons.Modules.iPermission = 1;
            Commons.Modules.iSoLeSL = 0;
            Commons.Modules.iSoLeDG = 2;
            Commons.Modules.iSoLeTT = 3;
            Commons.Modules.sSoLeSL = Commons.Modules.ObjSystems.sDinhDangSoLe(Commons.Modules.iSoLeSL); 
            Commons.Modules.sSoLeDG = Commons.Modules.ObjSystems.sDinhDangSoLe(Commons.Modules.iSoLeDG);
            Commons.Modules.sSoLeTT = Commons.Modules.ObjSystems.sDinhDangSoLe(Commons.Modules.iSoLeTT);
            Commons.Modules.sSoLe4 = Commons.Modules.ObjSystems.sDinhDangSoLe(4);
            //Commons.Modules.TypeLanguage = Properties.Settings.Default.lang;
            Thread t = new Thread(() => MRunForm(args[0].ToString()));
            //Thread t = new Thread(() => MRunForm("mnuBaoCaoOEE"));
            t.SetApartmentState(ApartmentState.STA);
            t.Start();
        }
        static void MRunForm(string form)
        {
            try
            {
                switch (form)
                {
                    case "mnuDowntimeType":
                        {
                            Application.Run(new ucDownTimeType());
                            break;
                        }
                    case "mnuDowntimeCause":
                        {
                            Application.Run(new ucDownTimeCause());
                            break;
                        }
                    case "mnuItemGroup":
                        {
                            Application.Run(new ucItemGroup());
                            break;
                        }
                    case "mnuOpreator":
                        {
                            Application.Run(new ucOperator());
                            break;
                        }
                    case "mnuUOM":
                        {
                            Application.Run(new ucUOM());
                            break;
                        }
                    case "mnuUOMConversionGroup":
                        {
                            Application.Run(new ucUOMGroup());
                            break;
                        }
                    case "mnuItemDevices":
                        {
                            Application.Run(new ucItemMay());
                            break;
                        }
                    case "mnuProductionOrder":
                        {
                            Application.Run(new ucProductOrder());
                            break;
                        }
                    case "mnuProductionRun":
                        {
                            Application.Run(new ucProductRun());
                            break;
                        }
                    case "mnuDevicesCause":
                        {
                            Application.Run(new ucDeviceCause());
                            break;
                        }
                    case "mnuTarget":
                        {
                            Application.Run(new ucTarget());
                            break;
                        }
                    case "mnuBaoCaoOEE":
                        {
                            Application.Run(new frmReport());
                            break;
                        }
                    default:
                        break;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}