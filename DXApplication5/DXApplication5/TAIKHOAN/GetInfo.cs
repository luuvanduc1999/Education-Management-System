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
    class GetInfo
    {
        protected string username;

        public GetInfo(string _user)
        {
            this.username = _user;

        }
        public DataSet getInfo()
        {
            DataSet result = new DataSet();
            string[] para = new string[1] { "@Username" };
            object[] value = new object[1] { username };
            result = Models.Connection.FillDataSet("_getInfo", CommandType.StoredProcedure, para, value);
            return result;
        }

        public DataSet getDelInfo()
        {
            DataSet result = new DataSet();
            string[] para = new string[1] { "@Username" };
            object[] value = new object[1] { username };
            result = Models.Connection.FillDataSet("getDelInfo", CommandType.StoredProcedure, para, value);
            return result;
        }

        public int delete()
        {
            int i = 0;
            string[] para = new string[1] { "@Username" };
            object[] value = new object[1] { username };
            i = Models.Connection.Excute_Sql("deleteAccount", CommandType.StoredProcedure, para, value);
            return i;
        }
    }
}
