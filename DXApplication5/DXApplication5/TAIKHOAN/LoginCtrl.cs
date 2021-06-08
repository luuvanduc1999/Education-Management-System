using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace DXApplication5.Models
{
    class LoginCtrl
    {
        public static string CheckDangNhap(string _user, string _pass)
        {
            try
            {
                Models.LoginMod login = new Models.LoginMod(_user, _pass);
                return login.CheckLogin();
            }
            catch { return ""; }
        }

        public static DataSet getInfo(string _user)
        {
            try
            {
                Models.GetInfo info = new Models.GetInfo(_user);
                return info.getInfo();
            }
            catch { return null; }
        }

        
    }
}
