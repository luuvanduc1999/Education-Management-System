USE [master]
GO
/****** Object:  Database [qldt2019]    Script Date: 17-Dec-19 10:51:13 PM ******/
CREATE DATABASE [qldt2019]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qldt2019', FILENAME = N'D:\rdsdbdata\DATA\qldt2019.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qldt2019_log', FILENAME = N'D:\rdsdbdata\DATA\qldt2019_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [qldt2019] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qldt2019].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qldt2019] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qldt2019] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qldt2019] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qldt2019] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qldt2019] SET ARITHABORT OFF 
GO
ALTER DATABASE [qldt2019] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qldt2019] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qldt2019] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qldt2019] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qldt2019] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qldt2019] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qldt2019] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qldt2019] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qldt2019] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qldt2019] SET  ENABLE_BROKER 
GO
ALTER DATABASE [qldt2019] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qldt2019] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qldt2019] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qldt2019] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qldt2019] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qldt2019] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qldt2019] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qldt2019] SET RECOVERY FULL 
GO
ALTER DATABASE [qldt2019] SET  MULTI_USER 
GO
ALTER DATABASE [qldt2019] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qldt2019] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qldt2019] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qldt2019] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qldt2019] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qldt2019] SET QUERY_STORE = OFF
GO
USE [qldt2019]
GO
/****** Object:  User [admin]    Script Date: 17-Dec-19 10:51:17 PM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
USE [qldt2019]
GO
/****** Object:  Sequence [dbo].[seq_sam_HS]    Script Date: 17-Dec-19 10:51:18 PM ******/
CREATE SEQUENCE [dbo].[seq_sam_HS] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[DEMO_GRID]    Script Date: 17-Dec-19 10:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEMO_GRID](
	[id] [int] NOT NULL,
	[name] [nvarchar](200) NULL,
	[ccheck] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MaGV] [varchar](15) NOT NULL,
	[HoTen] [nvarchar](200) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[QueQuan] [nvarchar](200) NULL,
	[DanToc] [nvarchar](100) NULL,
	[NgayBatDau] [date] NULL,
	[TrangThai] [bit] NULL,
	[DiaChiThuongTru] [nvarchar](500) NULL,
	[SDTLienHe] [varchar](15) NULL,
	[TrinhDoCapBac] [nvarchar](200) NULL,
 CONSTRAINT [PK_GV] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[MaHS] [varchar](15) NOT NULL,
	[HoTen] [nvarchar](200) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[QueQuan] [nvarchar](200) NULL,
	[DanToc] [nvarchar](100) NULL,
	[NgayNhapHoc] [date] NULL,
	[TrangThai] [bit] NULL,
	[MaLopHoc] [varchar](10) NOT NULL,
	[DiaChiThuongTru] [nvarchar](500) NULL,
	[SDTLienHe] [varchar](15) NULL,
	[HoTenBo] [nvarchar](200) NULL,
	[NamSinhBo] [varchar](5) NULL,
	[NgheNghiepBo] [nvarchar](100) NULL,
	[SDTBo] [varchar](15) NULL,
	[HoTenMe] [nvarchar](200) NULL,
	[NamSinhMe] [varchar](5) NULL,
	[NgheNghiepMe] [nvarchar](100) NULL,
	[SDTMe] [varchar](15) NULL,
 CONSTRAINT [PK_HS] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KQHT]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KQHT](
	[MaHS] [varchar](15) NOT NULL,
	[NamHoc] [varchar](10) NOT NULL,
	[ToanHK1] [int] NULL,
	[DanhGiaToanHK1] [varchar](10) NULL,
	[ToanCuoiNam] [int] NULL,
	[DanhGiaToanCuoiNam] [varchar](10) NULL,
	[TiengVietHK1] [int] NULL,
	[DanhGiaTiengVietHK1] [varchar](10) NULL,
	[TiengVietCuoiNam] [int] NULL,
	[DanhGiaTiengVietCuoiNam] [varchar](10) NULL,
	[DanhGiaHocTapHK1] [varchar](10) NULL,
	[DanhGiaPhamChatHK1] [varchar](10) NULL,
	[DanhGiaHocTapNamHoc] [varchar](10) NULL,
	[DanhGiaPhamChatNamHoc] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC,
	[NamHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MaLop] [varchar](10) NOT NULL,
	[MaGV] [varchar](15) NULL,
	[MaHS] [varchar](15) NULL,
	[TenLop] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NULL,
	[Password] [nvarchar](200) NOT NULL,
	[PhanQuyen] [varchar](10) NULL,
	[HoTen] [nvarchar](200) NULL,
	[SDT] [varchar](15) NULL,
	[email] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GIAOVIEN] ADD  CONSTRAINT [const_seq_sam_GV]  DEFAULT (format(NEXT VALUE FOR [seq_sam_HS],'GV000#')) FOR [MaGV]
GO
ALTER TABLE [dbo].[GIAOVIEN] ADD  DEFAULT ((1)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[GIAOVIEN] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[HOCSINH] ADD  CONSTRAINT [const_seq_sam_HS]  DEFAULT (format(NEXT VALUE FOR [seq_sam_HS],'201900#')) FOR [MaHS]
GO
ALTER TABLE [dbo].[HOCSINH] ADD  DEFAULT ((1)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[HOCSINH] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[HOCSINH] ADD  DEFAULT ('0000A') FOR [MaLopHoc]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD FOREIGN KEY([MaLopHoc])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD FOREIGN KEY([MaLopHoc])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[KQHT]  WITH CHECK ADD FOREIGN KEY([MaHS])
REFERENCES [dbo].[HOCSINH] ([MaHS])
GO
ALTER TABLE [dbo].[KQHT]  WITH CHECK ADD FOREIGN KEY([MaHS])
REFERENCES [dbo].[HOCSINH] ([MaHS])
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD FOREIGN KEY([MaHS])
REFERENCES [dbo].[HOCSINH] ([MaHS])
GO
/****** Object:  StoredProcedure [dbo].[_checkLogin]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[_checkLogin]
	(
		@Username	varchar(100),
		@Password	nvarchar(200)

	)
as
Begin
	select HoTen from TAIKHOAN lg
	where	lg.Username=@Username
	and		lg.Password=@Password
End
GO
/****** Object:  StoredProcedure [dbo].[_getinfo]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[_getinfo]
	(
		@Username	varchar(100)
	)
as
Begin
	select HoTen, SDT, Email from TAIKHOAN lg
	where	lg.Username=@Username
End
GO
/****** Object:  StoredProcedure [dbo].[checkLogin]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[checkLogin]
	(
		@Username	varchar(100),
		@Password	nvarchar(200)

	)
as
Begin
	select * from TAIKHOAN lg
	where	lg.Username=@Username
	and		lg.Password=@Password
End
GO
/****** Object:  StoredProcedure [dbo].[checkLoginNow]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[checkLoginNow]
	(
		@Username	varchar(100),
		@Password	nvarchar(200)

	)
as
Begin
	select Username from TAIKHOAN lg
	where	lg.Username=@Username
	and		lg.Password=@Password
End
GO
/****** Object:  StoredProcedure [dbo].[createClass]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[createClass]
(
	@MaLop	VARCHAR(10),
	@MaGV	VARCHAR(15),
	@TenLop	VARCHAR(10)
)
as
BEGIN
	INSERT INTO LOP(MaLop, MaGV, TenLop)
	VALUES(@MaLop, @MaGV, @TenLop)
END
GO
/****** Object:  StoredProcedure [dbo].[deleteAccount]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[deleteAccount]
	(
		@Username	varchar(100)
	)
as
Begin
	delete from TAIKHOAN
	where Username=@Username
End
GO
/****** Object:  StoredProcedure [dbo].[delGV]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[delGV](
	@MaGV		VARCHAR(15)
)
as
	Begin
		DELETE FROM GIAOVIEN
		WHERE MaGV=@MaGV
	End
GO
/****** Object:  StoredProcedure [dbo].[delHS]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[delHS](
	@MaHS		VARCHAR(15)
)
as
	Begin
		DELETE FROM HOCSINH
		WHERE MaHs=@MaHS
	End
GO
/****** Object:  StoredProcedure [dbo].[editInfo]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editInfo]
	(
		@Username	varchar(100),
		@HoTen		nvarchar(200),
		@PhanQuyen	varchar(10),
		@SDT		varchar(15),
		@email		varchar(200)
	)
as
Begin
	update TAIKHOAN set
		HoTen = @HoTen,
		PhanQuyen= @PhanQuyen,
		SDT = @SDT,
		email= @email
	where username=@username
End
GO
/****** Object:  StoredProcedure [dbo].[getClassGVCN]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[getClassGVCN]
(
	@MaLop	VARCHAR(10)
)
as
BEGIN
	SELECT LOP.TenLop, GIAOVIEN.HoTen, GIAOVIEN.SDTLienHe FROM 
	(LOP
	INNER JOIN GIAOVIEN ON LOP.MaGV = GIAOVIEN.MaGV)
	WHERE (LOP.MaLop=@MaLop);
END
GO
/****** Object:  StoredProcedure [dbo].[getClassLoptruong]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getClassLoptruong]
(
	@MaLop	VARCHAR(10)
)
as
BEGIN
	SELECT LOP.MaLop, HOCSINH.HoTen, HOCSINH.SDTLienHe FROM 
	(LOP
	INNER JOIN HOCSINH ON LOP.MaHS = HOCSINH.MaHS)
	WHERE (LOP.MaLop=@MaLop);
END
GO
/****** Object:  StoredProcedure [dbo].[getClassSiso]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getClassSiso]
(
	@MaLop	VARCHAR(10)
)
as
BEGIN
	SELECT COUNT(MaHS) FROM HOCSINH
	WHERE MaLopHoc=@MaLop
END
GO
/****** Object:  StoredProcedure [dbo].[getDelInfo]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getDelInfo]
	(
		@Username	varchar(100)
	)
as
Begin
	select PhanQuyen, HoTen, SDT, Email from TAIKHOAN lg
	where	lg.Username=@Username
End
GO
/****** Object:  StoredProcedure [dbo].[getGVInfo]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getGVInfo](
	@MaGV		VARCHAR(15)
)
as
	Begin
		SELECT HoTen,NgaySinh,GioiTinh,QueQuan,DanToc,NgayBatDau,TrangThai,DiaChiThuongTru,SDTLienHe,TrinhDoCapBac
		FROM GIAOVIEN WHERE MaGV=@MaGV
	End
GO
/****** Object:  StoredProcedure [dbo].[getInfoHS]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getInfoHS](
	@MaHS		VARCHAR(15)
)
as
	Begin
		SELECT HoTen,NgaySinh,GioiTinh,QueQuan,DanToc,NgayNhapHoc,TrangThai,MaLopHoc, DiaChiThuongTru,SDTLienHe,HoTenBo,NamSinhBo,NgheNghiepBo,SDTBo, HoTenMe,NamSinhMe,NgheNghiepMe,SDTMe
		FROM HOCSINH
	End
GO
/****** Object:  StoredProcedure [dbo].[getMalopList]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getMalopList](
	@MaHS		VARCHAR(15)
)
as
	Begin
		SELECT MaLop FROM LOP;
	End
GO
/****** Object:  StoredProcedure [dbo].[getPhanQuyen]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getPhanQuyen]
(
	@Username	VARCHAR(10)
)
as
BEGIN
	SELECT PhanQuyen FROM TAIKHOAN
	WHERE Username=@Username
END
GO
/****** Object:  StoredProcedure [dbo].[getStudentInfo]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getStudentInfo](
	@MaHS		VARCHAR(15)
)
as
	Begin
		SELECT HoTen,NgaySinh,GioiTinh,QueQuan,DanToc,NgayNhapHoc,TrangThai,MaLopHoc, DiaChiThuongTru,SDTLienHe,HoTenBo,NamSinhBo,NgheNghiepBo,SDTBo, HoTenMe,NamSinhMe,NgheNghiepMe,SDTMe
		FROM HOCSINH WHERE MaHs=@MaHS
	End
GO
/****** Object:  StoredProcedure [dbo].[getYearList]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getYearList](
@NamHoc	VARCHAR(10)
)
as
	Begin
		SELECT DISTINCT NamHoc
		FROM KQHT
	End
GO
/****** Object:  StoredProcedure [dbo].[insertAccount]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertAccount]
	(	
		@Username	varchar(100),
		@Password	nvarchar(200),
		@PhanQuyen	varchar(10),
		@HoTen		nvarchar(200),
		@SDT		varchar(15),
		@email		varchar(200)
	)
as
	Begin
		insert into TAIKHOAN(Username, Password, PhanQuyen, HoTen, SDT, email)
		values (@Username, @Password, @PhanQuyen, @HoTen, @SDT, @email)
	End
GO
/****** Object:  StoredProcedure [dbo].[insertGV]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertGV](
@HoTen		NVARCHAR(200),
@NgaySinh	DATE,
@GioiTinh	BIT,
@QueQuan		NVARCHAR(200),
@DanToc		NVARCHAR(100),
@NgayBatDau	DATE,
@DiaChiThuongTru	NVARCHAR(500),
@SDTLienHe	VARCHAR(15),
@TrinhDoCapBac	NVARCHAR(200)
)
as
	Begin
		insert into GIAOVIEN(HoTen,NgaySinh,GioiTinh,QueQuan,DanToc,NgayBatDau,DiaChiThuongTru,SDTLienHe,TrinhDoCapBac)
		values (@HoTen,@NgaySinh,@GioiTinh,@QueQuan,@DanToc,@NgayBatDau,@DiaChiThuongTru,@SDTLienHe,@TrinhDoCapBac)
	End
GO
/****** Object:  StoredProcedure [dbo].[insertHS]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertHS](
@HoTen		NVARCHAR(200),
@NgaySinh	DATE,
@GioiTinh	BIT,
@QueQuan		NVARCHAR(200),
@DanToc		NVARCHAR(100),
@NgayNhapHoc	DATE,
@MaLopHoc	VARCHAR(10),
@DiaChiThuongTru	NVARCHAR(500),
@SDTLienHe	VARCHAR(15),
@HoTenBo		NVARCHAR(200),
@NamSinhBo	VARCHAR(5),
@NgheNghiepBo	NVARCHAR(100),
@SDTBo		VARCHAR(15),
@HoTenMe		NVARCHAR(200),
@NamSinhMe	VARCHAR(5),
@NgheNghiepMe	NVARCHAR(100),
@SDTMe		VARCHAR(15)
)
as
	Begin
		insert into HOCSINH(HoTen,NgaySinh,GioiTinh,QueQuan,DanToc,NgayNhapHoc,MaLopHoc,DiaChiThuongTru,SDTLienHe,HoTenBo,NamSinhBo,NgheNghiepBo,SDTBo, HoTenMe,NamSinhMe,NgheNghiepMe,SDTMe)
		values (@HoTen,@NgaySinh,@GioiTinh,@QueQuan,@DanToc,@NgayNhapHoc,@MaLopHoc,@DiaChiThuongTru,@SDTLienHe,@HoTenBo,@NamSinhBo,@NgheNghiepBo,@SDTBo, @HoTenMe,@NamSinhMe,@NgheNghiepMe,@SDTMe)
	End
GO
/****** Object:  StoredProcedure [dbo].[insertloginto]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertloginto]
	(	
		@id	INT,
		@Username	varchar(100),
		@Password	nvarchar(200),
		@PhanQuyen	varchar(10),
		@HoTen		nvarchar(200),
		@SDT		varchar(15),
		@email		varchar(200)
	)
as
	Begin
		insert into TAIKHOAN(id, Username, Password, PhanQuyen, HoTen, SDT, email)
		values (@id, @Username, @Password, @PhanQuyen, @HoTen, @SDT, @email)
	End
GO
/****** Object:  StoredProcedure [dbo].[insertNamHoc]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertNamHoc](
@NamHoc	VARCHAR(10)
)
as
	Begin
		INSERT INTO KQHT(MaHS,NamHoc)
		SELECT MaHS,@NamHoc FROM HOCSINH  t1
		WHERE (TrangThai=1) AND (
		NOT EXISTS(SELECT MaHS,NamHoc
                    FROM KQHT t2
                   WHERE t2.MaHS = t1.MaHS
				   AND	t2.NamHoc=@NamHoc));
	End
GO
/****** Object:  StoredProcedure [dbo].[updateGV]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateGV](
@MaGV		VARCHAR(15),
@HoTen		NVARCHAR(200),
@NgaySinh	DATE,
@GioiTinh	BIT,
@QueQuan		NVARCHAR(200),
@DanToc		NVARCHAR(100),
@NgayBatDau	DATE,
@TrangThai	BIT,
@DiaChiThuongTru	NVARCHAR(500),
@SDTLienHe	VARCHAR(15),
@TrinhDoCapBac	NVARCHAR(200)
)
as
	Begin
		UPDATE GIAOVIEN 
		SET
				HoTen=@HoTen,		
				NgaySinh=@NgaySinh,	
				GioiTinh=@GioiTinh,
				QueQuan=@QueQuan,		
				DanToc=@DanToc,		
				NgayBatDau=@NgayBatDau,	
				TrangThai=@TrangThai,	
				DiaChiThuongTru=@DiaChiThuongTru,	
				SDTLienHe=@SDTLienHe,	
				TrinhDoCapBac=@TrinhDoCapBac	
		WHERE MaGV=@MaGV;
	End
GO
/****** Object:  StoredProcedure [dbo].[updateHS]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateHS](
@MaHS		VARCHAR(15),
@HoTen		NVARCHAR(200),
@NgaySinh	DATE,
@GioiTinh	BIT,
@QueQuan		NVARCHAR(200),
@DanToc		NVARCHAR(100),
@NgayNhapHoc	DATE,
@TrangThai	BIT,
@MaLopHoc	VARCHAR(10),
@DiaChiThuongTru	NVARCHAR(500),
@SDTLienHe	VARCHAR(15),
@HoTenBo		NVARCHAR(200),
@NamSinhBo	VARCHAR(5),
@NgheNghiepBo	NVARCHAR(100),
@SDTBo		VARCHAR(15),
@HoTenMe		NVARCHAR(200),
@NamSinhMe	VARCHAR(5),
@NgheNghiepMe	NVARCHAR(100),
@SDTMe		VARCHAR(15)
)
as
	Begin
		UPDATE HOCSINH 
		SET
				MaHS=@MaHS,		
				HoTen=@HoTen,		
				NgaySinh=@NgaySinh,	
				GioiTinh=@GioiTinh,
				QueQuan=@QueQuan,		
				DanToc=@DanToc,		
				NgayNhapHoc=@NgayNhapHoc,	
				TrangThai=@TrangThai,	
				MaLopHoc=@MaLopHoc,	
				DiaChiThuongTru=@DiaChiThuongTru,	
				SDTLienHe=@SDTLienHe,	
				HoTenBo=@HoTenBo,		
				NamSinhBo=@NamSinhBo,	
				NgheNghiepBo=@NgheNghiepBo,	
				SDTBo=@SDTBo	,	
				HoTenMe=@HoTenMe,		
				NamSinhMe=@NamSinhMe,	
				NgheNghiepMe=@NgheNghiepMe,	
				SDTMe=@SDTMe		
		WHERE MaHS=@MaHS;
	End
GO
/****** Object:  StoredProcedure [dbo].[updateInfo]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateInfo]
	(
		@Username	varchar(100),
		@HoTen		nvarchar(200),
		@SDT		varchar(15),
		@email		varchar(200)
	)
as
Begin
	update TAIKHOAN set
		HoTen = @HoTen,
		SDT = @SDT,
		email= @email
	where username=@username
End
GO
/****** Object:  StoredProcedure [dbo].[updatePassword]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[updatePassword]
	(
		@Username	varchar(100),
		@Password	nvarchar(200)
	)
as
Begin
	update TAIKHOAN set
		Password = @Password
	where username=@username
End
GO
/****** Object:  StoredProcedure [dbo].[updateStudent]    Script Date: 17-Dec-19 10:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateStudent](
@MaHS		VARCHAR(15),
@HoTen		NVARCHAR(200),
@NgaySinh	DATE,
@GioiTinh	BIT,
@QueQuan		NVARCHAR(200),
@DanToc		NVARCHAR(100),
@NgayNhapHoc	DATE,
@TrangThai	BIT,
@MaLopHoc	VARCHAR(10),
@DiaChiThuongTru	NVARCHAR(500),
@SDTLienHe	VARCHAR(15),
@HoTenBo		NVARCHAR(200),
@NamSinhBo	VARCHAR(5),
@NgheNghiepBo	NVARCHAR(100),
@SDTBo		VARCHAR(15),
@HoTenMe		NVARCHAR(200),
@NamSinhMe	VARCHAR(5),
@NgheNghiepMe	NVARCHAR(100),
@SDTMe		VARCHAR(15)
)
as
	Begin
		UPDATE HOCSINH 
		SET
				HoTen=@HoTen,		
				NgaySinh=@NgaySinh,	
				GioiTinh=@GioiTinh,
				QueQuan=@QueQuan,		
				DanToc=@DanToc,		
				NgayNhapHoc=@NgayNhapHoc,	
				TrangThai=@TrangThai,	
				MaLopHoc=@MaLopHoc,	
				DiaChiThuongTru=@DiaChiThuongTru,	
				SDTLienHe=@SDTLienHe,	
				HoTenBo=@HoTenBo,		
				NamSinhBo=@NamSinhBo,	
				NgheNghiepBo=@NgheNghiepBo,	
				SDTBo=@SDTBo,	
				HoTenMe=@HoTenMe,		
				NamSinhMe=@NamSinhMe,	
				NgheNghiepMe=@NgheNghiepMe,	
				SDTMe=@SDTMe		
		WHERE MaHS=@MaHS;
	End
GO
USE [master]
GO
ALTER DATABASE [qldt2019] SET  READ_WRITE 
GO
