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
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace DXApplication5
{
    public partial class fChangeInfo : DevExpress.XtraEditors.XtraForm
    {
        public string username;
        public fChangeInfo(string _username)
        {
            InitializeComponent();
            this.username = _username;
            DataSet x = Models.LoginCtrl.getInfo(username);
            string name = x.Tables[0].Rows[0]["HoTen"].ToString();
            string SDT= x.Tables[0].Rows[0]["SDT"].ToString();
            string email = x.Tables[0].Rows[0]["email"].ToString();


            boxUsername.Text = this.username;
            boxName.Text= name;
            boxSDT.Text = SDT;
            boxEmail.Text = email;
        }

        private void fChangeInfo_Load(object sender, EventArgs e)
        {

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            string iname = boxName.Text;
            string iSDT = boxSDT.Text;
            string iemail = boxEmail.Text;
            string ipassword = boxPassword.Text;

            
            int i = 0;
            try
            {
                Models.updateInfo x = new Models.updateInfo(this.username, iname, iSDT, iemail);
                i = x.info();
            }
            catch
            { i = 0; }
            


            int j = 0;

            if (ipassword != "")
            {
                try
                {
                    Models.updateInfo x = new Models.updateInfo(this.username, ipassword.GetHashCode().ToString());
                    j = x.PW();
                }
                catch
                { j = 0; }
                boxPassword.Text = "";
            }

            if (i == 1 & j == 1) DevExpress.XtraEditors.XtraMessageBox.Show("Cập nhật THÔNG TIN CÁ NHÂN và MẬT KHẨU MỚI thành công.");
            else if (j==0) DevExpress.XtraEditors.XtraMessageBox.Show("Cập nhật THÔNG TIN CÁ NHÂN thành công.");
            else DevExpress.XtraEditors.XtraMessageBox.Show("Cập nhật thất bại");
            this.Close();
        }
    }
}