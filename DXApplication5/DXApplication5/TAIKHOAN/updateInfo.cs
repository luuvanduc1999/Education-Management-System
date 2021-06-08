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
    class updateInfo
    {
        protected string username;
        protected string password;
        protected string name;
        protected string SDT;
        protected string email;

        public updateInfo(string _user, string _pass)
        {
            this.username = _user;
            this.password = _pass;
        }

        public updateInfo(string _user, string _name, string _SDT, string _email)
        {
            this.username = _user;
            this.name = _name;
            this.SDT = _SDT;
            this.email = _email;
        }
        public int info()
        {
            int i = 0;
            string[] para = new string[4] { "@Username", "@HoTen", "@SDT", "@email" };
            object[] value = new object[4] { username, name, SDT, email };
            i = Models.Connection.Excute_Sql("updateInfo", CommandType.StoredProcedure, para, value);
            return i;
        }

        public int PW()
        {
            int i = 0;
            string[] para = new string[2] { "@Username", "@Password" };
            object[] value = new object[2] { username, password};
            i = Models.Connection.Excute_Sql("updatePassword", CommandType.StoredProcedure, para, value);
            return i;
        }

    }
}
