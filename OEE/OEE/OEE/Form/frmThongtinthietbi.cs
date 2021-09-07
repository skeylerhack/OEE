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

namespace OEE
{
    public partial class frmThongtinthietbi : DevExpress.XtraEditors.XtraForm
    {
        public frmThongtinthietbi()
        {
            InitializeComponent();
        }

        private void frmThongtinthietbi_Load(object sender, EventArgs e)
        {
            ucDMTBi uc = new ucDMTBi();
            this.Controls.Add(uc);
            uc.Dock = DockStyle.Fill;
            Commons.Modules.ObjSystems.ThayDoiNN(this);
        }
    }
}