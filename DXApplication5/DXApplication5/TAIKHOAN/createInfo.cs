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
    class createInfo
    {
        protected string username;
        protected string password;
        protected string name;
        protected string SDT;
        protected string email;
        protected string type;

        public createInfo(string _user, string _pass, string _type, string _name, string _SDT, string _email)
        {
           this.username = _user;
           this.password = _pass;
            this.type = _type;
            this.name = _name;
            this.SDT = _SDT;
            this.email = _email;
        }

        public createInfo(string _user, string _type, string _name, string _SDT, string _email)
        {
            this.username = _user;
            this.type = _type;
            this.name = _name;
            this.SDT = _SDT;
            this.email = _email;
        }

        public int create()
        {
            int i = 0;
            string[] para = new string[6] { "@Username", "@Password", "@PhanQuyen", "@HoTen", "@SDT", "@email" };
            object[] values = new object[6] { username, password, type, name, SDT, email };
            i = Models.Connection.Excute_Sql("insertAccount", CommandType.StoredProcedure, para, values);
            return i;

        }

        public int updateInfo()
        {
            int i = 0;
            string[] para = new string[5] { "@Username", "@PhanQuyen", "@HoTen", "@SDT", "@email" };
            object[] values = new object[5] { username, type, name, SDT, email };
            i = Models.Connection.Excute_Sql("editInfo", CommandType.StoredProcedure, para, values);
            return i;


        }

    }
}
