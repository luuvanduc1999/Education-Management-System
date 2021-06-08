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
    class LOPHOC
    {
        protected string MaLop;
        protected string MaGV;
        protected string MaHS;
        protected string ClassName;

        public LOPHOC(string _MaLop)
        {
            this.MaLop = _MaLop;
        }

        public LOPHOC(string _MaLop, string _MaGV, string _ClassName)
        {
            this.MaLop = _MaLop;
            this.MaGV = _MaGV;
            this.ClassName = _ClassName;
            
        }

        public int createClass()
        {
            int i = 0;
            string[] para = new string[3] { "@MaLop", "@MaGV", "@TenLop"};
            object[] value = new object[3] { MaLop, MaGV, ClassName};
            i = Models.Connection.Excute_Sql("createClass", CommandType.StoredProcedure, para, value);
            return i;
        }

        public DataSet getClassGVCN()
        {
            DataSet result = new DataSet();
            string[] para = new string[1] { "@MaLop" };
            object[] value = new object[1] { MaLop };
            result = Models.Connection.FillDataSet("getClassGVCN", CommandType.StoredProcedure, para, value);
            return result;
        }

        public DataSet getClassLoptruong()
        {
            DataSet result = new DataSet();
            string[] para = new string[1] { "@MaLop" };
            object[] value = new object[1] { MaLop };
            result = Models.Connection.FillDataSet("getClassLoptruong", CommandType.StoredProcedure, para, value);
            return result;
        }

        public string getClassSiso()
        {

            string str = "";
            string[] para = new string[1] { "@MaLop" };
            object[] value = new object[1] { MaLop };
            str = Models.Connection.ExcuteScalar("getClassSiso", CommandType.StoredProcedure, para, value);
            return str;
        }
    }
}
