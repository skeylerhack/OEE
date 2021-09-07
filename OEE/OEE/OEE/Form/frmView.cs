using DevExpress.XtraEditors;
using DevExpress.XtraPrinting;
using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows.Forms;

namespace OEE
{
    public partial class frmView : DevExpress.XtraEditors.XtraForm
    {
        static string sfind = "-1";  // -1 la view menu <> -1 là view tu menu
        static Boolean bView = true;  //true là viwe form, faorm tu form find
        static int iPQ = 1;  // == 1  full; <> 1 la read only
        //string sPS = "spDMTam";
        string sPS;
        public frmView(int PQ,string Find, string SP)
        {
            if (Find == "-1") bView = true; else bView = false;
            sfind = Find;
            InitializeComponent();
            sPS = SP;
            iPQ = PQ;
            if (iPQ != 1)
            {
                btnIN.Visible = false;
                btnThem.Visible = false;
                btnXoa.Visible = false;
            }
            else
            {
                if (!bView)
                {
                    btnIN.Visible = false;
                    btnThem.Visible = false;
                    btnXoa.Visible = false;
                    txtTim.Text = sfind;
                }
            }
        }

        private void frmView_Load(object sender, EventArgs e)
        {
            LoadData("-1");
            LoadNN();
        }
        

        public void LoadNN()
        {
            Commons.Modules.ObjSystems.ThayDoiNN(this);
            Commons.Modules.ObjSystems.MLoadNNXtraGrid(grvChung, "frmChung");
        }
        private void LoadData(string iID)
        {       
            try
            {
                System.Data.SqlClient.SqlConnection conn;
                conn = new System.Data.SqlClient.SqlConnection(Commons.IConnections.CNStr);
                conn.Open();
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sPS, conn);
                cmd.Parameters.Add("@iLoai", SqlDbType.NVarChar).Value = 1;
                cmd.Parameters.Add("@sDMuc", SqlDbType.NVarChar).Value = this.Tag;
                cmd.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = Commons.Modules.UserName;
                cmd.Parameters.Add("@NNgu", SqlDbType.Int).Value = Commons.Modules.TypeLanguage;
                cmd.CommandType = CommandType.StoredProcedure;
                System.Data.SqlClient.SqlDataAdapter adp = new System.Data.SqlClient.SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                DataTable dtTmp = new DataTable();
                dtTmp = ds.Tables[0].Copy();
                dtTmp.TableName = "DataView";
                dtTmp.PrimaryKey = new DataColumn[] { dtTmp.Columns[0] };
                Boolean bLoad = true;
                try { if (grdChung.DataSource != null) bLoad = false; } catch { }

                if (dtTmp.Columns.Count > 10)
                    Commons.Modules.ObjSystems.MLoadXtraGrid(grdChung, grvChung, dtTmp, false, bLoad, false, false);
                else
                    Commons.Modules.ObjSystems.MLoadXtraGrid(grdChung, grvChung, dtTmp, false, bLoad, true, false);

                //Commons.Modules.ObjSystems.MLoadXtraGrid(grdChung, grvChung, dtTmp, false, true, false, true);

                grvChung.Columns[0].Visible = false;
                if (iID != "-1")
                {
                    int index = dtTmp.Rows.IndexOf(dtTmp.Rows.Find(iID));
                    grvChung.FocusedRowHandle = grvChung.GetRowHandle(index);
                    grvChung.SelectRow(index);
                }
                else
                {
                    grvChung.FocusedRowHandle = 0;
                    grvChung.SelectRow(0);
                }
            }
            catch (Exception ex)
            {
                    XtraMessageBox.Show(ex.Message);
            }


        }

        private void grvChung_DoubleClick(object sender, EventArgs e)
        {
            if (!bView)
            {
                Commons.Modules.sId = grvChung.GetFocusedRowCellValue(grvChung.Columns[0]).ToString();
                this.DialogResult = DialogResult.OK;
                this.Close();
                return;
            }
            try
            {
                if (iPQ != 1) return;

                DataRowView vrow = grvChung.GetRow(grvChung.FocusedRowHandle) as DataRowView;
                DataRow row = grvChung.GetDataRow(grvChung.FocusedRowHandle) as DataRow;
                XtraForm ctl;
                Type newType = Type.GetType("OEE.frmEdit" + this.Tag.ToString().Replace("mnu", ""), true, true);
                object o1 = Activator.CreateInstance(newType, row, false);
                ctl = o1 as XtraForm;
                ctl.StartPosition = FormStartPosition.CenterParent;
                ctl.Tag = this.Tag;
                Commons.Modules.sPS = this.Tag.ToString();
                if (ctl.ShowDialog() == DialogResult.OK)
                {
                    LoadData(Commons.Modules.sId);
                }
            }
            catch { }

        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                XtraForm ctl;
                Type newType = Type.GetType("OEE.frmEdit" + this.Tag.ToString().Replace("mnu", ""), true, true);
                object o1 = Activator.CreateInstance(newType, null, true);
                ctl = o1 as XtraForm;
                ctl.StartPosition = FormStartPosition.CenterParent;
                Commons.Modules.sPS = this.Tag.ToString();
                if (ctl.ShowDialog() == DialogResult.OK)
                {
                    LoadData(Commons.Modules.sId);
                }
            }
            catch { }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                if (grvChung.RowCount == 0)
                {
                    XtraMessageBox.Show(Commons.Modules.ObjLanguages.GetLanguage(this.Name, "msgKhongCoDuLieuDeXoa"), btnXoa.Text);
                    return;
                }
                if (XtraMessageBox.Show(Commons.Modules.ObjLanguages.GetLanguage(this.Name, "msgDeleteDanhMuc"), btnXoa.Text, MessageBoxButtons.YesNo) == DialogResult.No) return;
                #region Xoa
                System.Data.SqlClient.SqlConnection conn;
                conn = new System.Data.SqlClient.SqlConnection(Commons.IConnections.CNStr);
                conn.Open();
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sPS, conn);
                cmd.Parameters.Add("@iID", SqlDbType.BigInt).Value = grvChung.GetFocusedRowCellValue(grvChung.Columns[0].FieldName);
                cmd.Parameters.Add("@sDMuc", SqlDbType.NVarChar).Value = this.Tag.ToString();
                cmd.Parameters.Add("@iLoai", SqlDbType.Int).Value = 2;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                //tra về
                if (Convert.ToInt16(cmd.ExecuteScalar()) == 1)
                {
                    XtraMessageBox.Show(Commons.Modules.ObjLanguages.GetLanguage(this.Name, "msgDelDangSuDung"));
                }


                LoadData("-1");
                #endregion
            }
            catch (Exception ex)
            {
                XtraMessageBox.Show(Commons.Modules.ObjLanguages.GetLanguage(this.Name, "msgDelDangSuDung") + "\n" + ex.Message.ToString(), btnXoa.Text);

            }
        }

        private void btnIN_Click(object sender, EventArgs e)
        {
            if (!grdChung.IsPrintingAvailable)
            {
                MessageBox.Show("The 'DevExpress.XtraPrinting' library is not found", "Error");
                return;
            }
            try
            {
                PrintingSystem printingSystem1 = new PrintingSystem();

                //Set default export option
                //printingSystem1.ExportDefault = PrintingSystemCommand.ExportXls;
                printingSystem1.SetCommandVisibility(PrintingSystemCommand.ExportXls, CommandVisibility.All);

                //printingSystem1.SendDefault = PrintingSystemCommand.SendXls;
                printingSystem1.SetCommandVisibility(PrintingSystemCommand.SendXls, CommandVisibility.All);

                //Create a link to print the Grid control. 
                PrintableComponentLink printableComponentLink1 = new PrintableComponentLink();

                // Specify the link's printable component. 
                printableComponentLink1.Component = grdChung;

                // Assign the printing system to this link. 
                printableComponentLink1.PrintingSystem = printingSystem1;

                //add image
                //Image a = (Image)(new Bitmap(Image.FromFile("d:\\2.jpg"), new Size(50, 50)));
                //printableComponentLink1.Images.Add(a);
                //printableComponentLink1.PaperKind = System.Drawing.Printing.PaperKind.A4;


                int icolVis = 0;
                foreach (DevExpress.XtraGrid.Columns.GridColumn column in grvChung.Columns)
                {
                    if (column.Visible)
                        icolVis++;
                }
                if (icolVis > 5)
                    printableComponentLink1.Landscape = true;

                printableComponentLink1.Margins.Left = 10;
                printableComponentLink1.Margins.Right = 10;
                printableComponentLink1.Margins.Top = 90;
                printableComponentLink1.Margins.Bottom = 40;



                PageHeaderFooter phf = printableComponentLink1.PageHeaderFooter as PageHeaderFooter;
                phf.Header.Content.Clear();

                // Add custom information to the link's header. 
                //string[] sTitle = lab_Link.Text.Split(new Char[] { '/' });
                //phf.Header.Content.AddRange(new string[] { "[Image 0]", sTitle[1].ToString().Trim(), "" });

                //string[] sTitle = lab_Link.Text.Split(new Char[] { '/' });
                phf.Header.Content.AddRange(new string[] { "[Image 0]", this.Text.ToUpper(), "" });

                phf.Header.Font = new Font(phf.Header.Font.Name, 24, FontStyle.Bold);

                phf.Footer.Content.AddRange(new string[] { "Date: [Date Printed]", "", "Pages: [Page # of Pages #]" });

                phf.Header.LineAlignment = BrickAlignment.Center;
                phf.Footer.LineAlignment = BrickAlignment.Far;
                printableComponentLink1.ShowPreview();

            }
            catch (Exception ex)
            {
                XtraMessageBox.Show(ex.Message.ToString());
            }

        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmView_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.F5)
            {
                
                MessageBox.Show(this.Text);
            }
            if (e.KeyCode == Keys.F2 && e.Modifiers == Keys.Alt && e.Modifiers == Keys.Control)
            {
                // Display a pop-up Help topic to provide additional assistance to the user.
                MessageBox.Show("Control key was held down.");
            }

            if (e.KeyCode == Keys.Control && e.KeyCode == Keys.Alt)
            {
                MessageBox.Show("Control key was held down.");
                try
                {
                    //bbiChild.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
                    //bbiChild.Name = item["KEY_MENU"].ToString();
                    //bbiChild.Tag = item["CONTROLS"].ToString();
                    //bbiChild.Id = int.Parse(item["ID_MENU"].ToString());

                    XtraForm ctl = new XtraForm();
                    Type newType = Type.GetType("OEE.frmView", true, true);
                    object o1 = Activator.CreateInstance(newType);
                    ctl = o1 as XtraForm;
                    //ctl.StartPosition = FormStartPosition.CenterParent;

                    Commons.Modules.sPS = "mnuEditLanguages";
                    ctl.MdiParent = this;
                    ctl.Tag = "mnuEditLanguages";

                    ctl.Text = "Edit Languages";
                        ctl.Name = "frmEditLanguages";
                    

                    ctl.Show();
                }
                catch { }
            }
        }
    }
}
