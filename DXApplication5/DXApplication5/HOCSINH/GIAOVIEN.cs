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
    class GIAOVIEN
    {
        protected string MaGV;
        protected string HoTen;
        protected DateTime NgaySinh;
        protected int GioiTinh;
        protected string QueQuan;
        protected string DanToc;
        protected DateTime NgayBatDau;
        protected int TrangThai;
        protected string DiaChiThuongTru;
        protected string SDTLienHe;
        protected string TrinhDoCapBac;



        public GIAOVIEN(string _HoTen, DateTime _NgaySinh, int _GioiTinh, string _QueQuan, string _DanToc, DateTime _NgayBatDau, string _DiaChiThuongTru, string _SDTLienHe, string _TrinhDoCapBac)
        {
            this.HoTen = _HoTen;
            this.NgaySinh = _NgaySinh;
            this.GioiTinh = _GioiTinh;
            this.QueQuan = _QueQuan;
            this.DanToc = _DanToc;
            this.NgayBatDau = _NgayBatDau;
            this.DiaChiThuongTru = _DiaChiThuongTru;
            this.SDTLienHe = _SDTLienHe;
            this.TrinhDoCapBac = _TrinhDoCapBac;
        }


        public GIAOVIEN(string _MaGV, string _HoTen, DateTime _NgaySinh, int _GioiTinh, string _QueQuan, string _DanToc, DateTime _NgayBatDau, int _TrangThai, string _DiaChiThuongTru, string _SDTLienHe, string _TrinhDoCapBac)
        {
            this.MaGV = _MaGV;
            this.HoTen = _HoTen;
            this.NgaySinh = _NgaySinh;
            this.GioiTinh = _GioiTinh;
            this.QueQuan = _QueQuan;
            this.DanToc = _DanToc;
            this.NgayBatDau = _NgayBatDau;
            this.TrangThai = _TrangThai;
            this.DiaChiThuongTru = _DiaChiThuongTru;
            this.SDTLienHe = _SDTLienHe;
            this.TrinhDoCapBac = _TrinhDoCapBac;
        }

        public GIAOVIEN(string _MaGV)
        {
            this.MaGV = _MaGV;
        }

        public int creatGV()
        {
            int i = 0;
            string[] para = new string[9] { "@HoTen", "@NgaySinh", "@GioiTinh", "@QueQuan", "@DanToc", "@NgayBatDau", "@DiaChiThuongTru", "@SDTLienHe", "@TrinhDoCapBac" };
            object[] value = new object[9] { HoTen, NgaySinh, GioiTinh, QueQuan, DanToc, NgayBatDau, DiaChiThuongTru, SDTLienHe, TrinhDoCapBac };
            i = Models.Connection.Excute_Sql("insertGV", CommandType.StoredProcedure, para, value);
            return i;
        }

        public int deleteGV()
        {
            int i = 0;
            string[] para = new string[1] { "@MaGV" };
            object[] value = new object[1] { MaGV };
            i = Models.Connection.Excute_Sql("delGV", CommandType.StoredProcedure, para, value);
            return i;
        }

        
        public DataSet getGVInfo()
        {
            DataSet result = new DataSet();
            string[] para = new string[1] { "@MaGV" };
            object[] value = new object[1] { MaGV };
            result = Models.Connection.FillDataSet("getGVInfo", CommandType.StoredProcedure, para, value);
            return result;
        }

        public int updateGV()
        {
            int i = 0;
            string[] para = new string[11] { "MaGV", "@HoTen", "@NgaySinh", "@GioiTinh", "@QueQuan", "@DanToc", "@NgayBatDau", "@TrangThai", "@DiaChiThuongTru", "@SDTLienHe", "TrinhDoCapBac" };
            object[] value = new object[11] { MaGV, HoTen, NgaySinh, GioiTinh, QueQuan, DanToc, NgayBatDau, TrangThai, DiaChiThuongTru, SDTLienHe, TrinhDoCapBac };
            i = Models.Connection.Excute_Sql("updateGV", CommandType.StoredProcedure, para, value);
            return i;
        }


    }






}
