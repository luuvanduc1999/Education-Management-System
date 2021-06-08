using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DXApplication5.Models
{
    class LoginMod
    {
        protected string username;
        protected string password;

        public LoginMod(string _user, string _pass)
        {
            this.username = _user;
            this.password = _pass;

        }

        public LoginMod(string _user)
        {
            this.username = _user;

        }

        public string CheckLogin()
        {
            string hashpass = password.GetHashCode().ToString();
            string str = "";
            
            string[] para = new string[2] { "@Username", "@Password" };
            object[] value = new object[2] { username, hashpass };
            str = Models.Connection.ExcuteScalar("_checkLogin", System.Data.CommandType.StoredProcedure, para, value);
            return str;
        }

        public string getPhanQuyen()
        {
            string str = "";

            string[] para = new string[1] { "@Username"};
            object[] value = new object[1] { username };
            str = Models.Connection.ExcuteScalar("getPhanQuyen", System.Data.CommandType.StoredProcedure, para, value);
            return str;
        }


    }


}
