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
    class NAMHOC
    {
        protected string NamHoc;
        public NAMHOC(string _NamHoc)
        {
            this.NamHoc = _NamHoc;
        }

        public int creatNamhoc()
        {
            int i = 0;
            string[] para = new string[1] { "NamHoc" };
            object[] value = new object[1] { NamHoc };
            i = Models.Connection.Excute_Sql("insertNamHoc", CommandType.StoredProcedure, para, value);
            return i;
        }

        public DataSet getYearList()
        {
            DataSet result = new DataSet();
            string[] para = new string[1] { "@NamHoc" };
            object[] value = new object[1] { NamHoc };
            result = Models.Connection.FillDataSet("getYearList", CommandType.StoredProcedure, para, value);
            return result;
        }

    }
}
