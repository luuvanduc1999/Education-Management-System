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
    class HOCSINH
    {
        protected string MaHS;
        protected string HoTen;
        protected DateTime NgaySinh;
        protected int GioiTinh;
        protected string QueQuan;
        protected string DanToc;
        protected DateTime NgayNhapHoc;
        protected int TrangThai;
        protected string MaLopHoc;
        protected string DiaChiThuongTru;
        protected string SDTLienHe;

        protected string HoTenBo;
        protected string NamSinhBo;
        protected string NgheNghiepBo;
        protected string SDTBo;

        protected string HoTenMe;
        protected string NamSinhMe;
        protected string NgheNghiepMe;
        protected string SDTMe;


        public HOCSINH(string _HoTen, DateTime _NgaySinh, int _GioiTinh, string _QueQuan, string _DanToc, DateTime _NgayNhapHoc, string _MaLopHoc, string _DiaChiThuongTru, string _SDTLienHe, string _HoTenBo, string _NamSinhBo, string _NgheNghiepBo, string _SDTBo, string _HoTenMe, string _NamSinhMe, string _NgheNghiepMe, string _SDTMe)
        {
            this.HoTen = _HoTen;
            this.NgaySinh = _NgaySinh;
            this.GioiTinh = _GioiTinh;
            this.QueQuan = _QueQuan;
            this.DanToc = _DanToc;
            this.NgayNhapHoc = _NgayNhapHoc;
            this.MaLopHoc = _MaLopHoc;
            this.DiaChiThuongTru = _DiaChiThuongTru;
            this.SDTLienHe = _SDTLienHe;
            this.HoTenBo = _HoTenBo;
            this.NamSinhBo = _NamSinhBo;
            this.NgheNghiepBo = _NgheNghiepBo;
            this.SDTBo = _SDTBo;
            this.HoTenMe = _HoTenMe;
            this.NamSinhMe = _NamSinhMe;
            this.NgheNghiepMe = _NgheNghiepMe;
            this.SDTMe = _SDTMe;
        }

        public HOCSINH(string _MaHS, string _HoTen, DateTime _NgaySinh, int _GioiTinh, string _QueQuan, string _DanToc, DateTime _NgayNhapHoc, int _TrangThai, string _MaLopHoc, string _DiaChiThuongTru, string _SDTLienHe, string _HoTenBo, string _NamSinhBo, string _NgheNghiepBo, string _SDTBo, string _HoTenMe, string _NamSinhMe, string _NgheNghiepMe, string _SDTMe)
        {
            this.MaHS = _MaHS;
            this.HoTen = _HoTen;
            this.NgaySinh = _NgaySinh;
            this.GioiTinh = _GioiTinh;
            this.QueQuan = _QueQuan;
            this.DanToc = _DanToc;
            this.NgayNhapHoc = _NgayNhapHoc;
            this.TrangThai = _TrangThai;
            this.MaLopHoc = _MaLopHoc;
            this.DiaChiThuongTru = _DiaChiThuongTru;
            this.SDTLienHe = _SDTLienHe;
            this.HoTenBo = _HoTenBo;
            this.NamSinhBo = _NamSinhBo;
            this.NgheNghiepBo = _NgheNghiepBo;
            this.SDTBo = _SDTBo;
            this.HoTenMe = _HoTenMe;
            this.NamSinhMe = _NamSinhMe;
            this.NgheNghiepMe = _NgheNghiepMe;
            this.SDTMe = _SDTMe;
        }

        public HOCSINH(string _MaHS)
        {
            this.MaHS = _MaHS;
        }

        public int creatHS()
        {
            int i = 0;
            string[] para = new string[17] { "@HoTen", "@NgaySinh", "@GioiTinh", "@QueQuan", "@DanToc", "@NgayNhapHoc", "@MaLopHoc", "@DiaChiThuongTru", "@SDTLienHe", "@HoTenBo", "@NamSinhBo", "@NgheNghiepBo", "@SDTBo", "@HoTenMe", "@NamSinhMe", "@NgheNghiepMe", "@SDTMe"};
            object[] value = new object[17] { HoTen, NgaySinh, GioiTinh, QueQuan, DanToc, NgayNhapHoc, MaLopHoc, DiaChiThuongTru, SDTLienHe, HoTenBo, NamSinhBo, NgheNghiepBo, SDTBo, HoTenMe, NamSinhMe, NgheNghiepMe, SDTMe };
            i = Models.Connection.Excute_Sql("insertHS", CommandType.StoredProcedure, para, value);
            return i;
        }

        public int deleteStudent()
        {
            int i = 0;
            string[] para = new string[1] { "@MaHS" };
            object[] value = new object[1] { MaHS };
            i = Models.Connection.Excute_Sql("delHS", CommandType.StoredProcedure, para, value);
            return i;
        }

        public DataSet getClassList()
        {
            DataSet result = new DataSet();
            string[] para = new string[1] { "@MaHS" };
            object[] value = new object[1] { MaHS };
            result = Models.Connection.FillDataSet("getMaLopList", CommandType.StoredProcedure, para, value);
            return result;
        }

        public DataSet getStudentInfo()
        {
            DataSet result = new DataSet();
            string[] para = new string[1] { "@MaHS" };
            object[] value = new object[1] { MaHS };
            result = Models.Connection.FillDataSet("getStudentInfo", CommandType.StoredProcedure, para, value);
            return result;
        }

        public int updateStudent()
        {
            int i = 0;
            string[] para = new string[19] { "MaHS", "@HoTen", "@NgaySinh", "@GioiTinh", "@QueQuan", "@DanToc", "@NgayNhapHoc", "@TrangThai", "@MaLopHoc", "@DiaChiThuongTru", "@SDTLienHe", "@HoTenBo", "@NamSinhBo", "@NgheNghiepBo", "@SDTBo", "@HoTenMe", "@NamSinhMe", "@NgheNghiepMe", "@SDTMe" };
            object[] value = new object[19] { MaHS, HoTen, NgaySinh, GioiTinh, QueQuan, DanToc, NgayNhapHoc, TrangThai, MaLopHoc, DiaChiThuongTru, SDTLienHe, HoTenBo, NamSinhBo, NgheNghiepBo, SDTBo, HoTenMe, NamSinhMe, NgheNghiepMe, SDTMe };
            i = Models.Connection.Excute_Sql("updateStudent", CommandType.StoredProcedure, para, value);
            return i;
        }


    }






}
