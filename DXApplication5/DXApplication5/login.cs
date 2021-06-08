using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;


namespace DXApplication5
{
    public partial class login : DevExpress.XtraEditors.XtraForm
    {
        public static string username;
        public static string password;
        public login()
        {
            InitializeComponent();
        }

        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textEdit1_EditValueChanged(object sender, EventArgs e)
        {

        }



        private void btnDelete_Click(object sender, EventArgs e)
        {
            boxUsername.Text = "";
            boxPassword.Text = "";
            
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            username = boxUsername.Text;
            password = boxPassword.Text;

            do
            {
                if (username == "" & password == "")
                {
                    lbUsername.Text = "*TÊN TÀI KHOẢN không được để trống";
                    lbPassword.Text = "*MẬT KHẨU không được để trống";
                    return;
                }

                if (username == "")
                {
                    lbPassword.Text = "";
                    lbUsername.Text="*TÊN TÀI KHOẢN không được để trống";

                    return;
                }
                if (password == "")
                {
                    lbUsername.Text = "";
                    lbPassword.Text="*MẬT KHẨU không được để trống";
                    return;
                }
                lbUsername.Text = "";
                lbPassword.Text = "";
                break;
            }
            while (1 == 1);

            string PhanQuyen = "";
            try
            {
                Models.LoginMod login = new Models.LoginMod(username);
                PhanQuyen= login.getPhanQuyen();
            }
            catch { PhanQuyen= ""; }
            
            string check = Models.LoginCtrl.CheckDangNhap(username, password);
            if (check=="")
            {
                DevExpress.XtraEditors.XtraMessageBox.Show("Tài khoản hoặc mật khẩu không đúng.");
            }
            else
            {
                this.Hide();

                if (PhanQuyen == "QTV")
                {
                    homeQTV maini = new homeQTV(username, check);
                    maini.Show();

                }
                if (PhanQuyen == "GV")
                {
                    homeGV maini = new homeGV(username, check);
                    maini.Show();
                }
                if (PhanQuyen == "VPT")
                {
                    homeVPT maini = new homeVPT(username, check);
                    maini.Show();
                }
                
                this.Hide();
            }





        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void login_Load(object sender, EventArgs e)
        {

        }

        private void boxPassword_EditValueChanged(object sender, EventArgs e)
        {

        }
    }
}
