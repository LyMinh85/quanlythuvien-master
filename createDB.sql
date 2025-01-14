USE [master]
GO
/****** Object:  Database [QuanLyThuVien]    Script Date: 5/7/2024 4:40:52 PM ******/
CREATE DATABASE [QuanLyThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyThuVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyThuVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyThuVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyThuVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyThuVien] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyThuVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyThuVien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyThuVien] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyThuVien] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyThuVien]
GO
/****** Object:  Table [dbo].[CT_PHIEU_MUON]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEU_MUON](
	[idSach] [int] NOT NULL,
	[idPhieuMuon] [int] NOT NULL,
	[soLuong] [int] NULL,
 CONSTRAINT [PK_CTPM] PRIMARY KEY CLUSTERED 
(
	[idSach] ASC,
	[idPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEU_TRA]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEU_TRA](
	[idSach] [int] NOT NULL,
	[idPhieuTra] [int] NOT NULL,
	[soLuong] [int] NULL,
	[trangThaiSach] [tinyint] NULL,
 CONSTRAINT [PK_CTPT] PRIMARY KEY CLUSTERED 
(
	[idSach] ASC,
	[idPhieuTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_SACH_TG]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_SACH_TG](
	[idTacGia] [int] NOT NULL,
	[idSach] [int] NOT NULL,
 CONSTRAINT [PK_CT_S_TG] PRIMARY KEY CLUSTERED 
(
	[idTacGia] ASC,
	[idSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHO]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHO](
	[id] [int] NOT NULL,
	[tenKho] [nvarchar](100) NULL,
	[viTri] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_SACH]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_SACH](
	[id] [int] NOT NULL,
	[tenLoai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOI_DOC]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOI_DOC](
	[id] [int] NOT NULL,
	[sdt] [nvarchar](15) NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](100) NULL,
	[hoTen] [nvarchar](100) NULL,
	[cmnd] [nvarchar](20) NULL,
	[hanSuDung] [date] NULL,
	[soLuongMuonChoPhep] [tinyint] NULL,
	[trangThaiViPham] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHA_XUAT_BAN]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHA_XUAT_BAN](
	[id] [int] NOT NULL,
	[ten] [nvarchar](100) NULL,
	[diaChi] [nvarchar](100) NULL,
	[sdt] [char](15) NULL,
	[email] [varchar](320) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN_VIEN](
	[id] [int] NOT NULL,
	[hoTen] [nvarchar](100) NULL,
	[ngaySinh] [nvarchar](100) NULL,
	[diaChi] [nvarchar](100) NULL,
	[cmnd] [nvarchar](20) NULL,
	[vaiTro] [tinyint] NULL,
	[matKhau] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_MUON]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_MUON](
	[id] [int] NOT NULL,
	[idNhanVien] [int] NULL,
	[idNguoiDoc] [int] NULL,
	[ngayMuon] [date] NULL,
	[ngayTra] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_TRA]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_TRA](
	[id] [int] NOT NULL,
	[idNguoiDoc] [int] NULL,
	[ngayTraThatSu] [date] NULL,
	[tienPhat] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[id] [int] NOT NULL,
	[tenSach] [nvarchar](100) NULL,
	[giaSach] [money] NULL,
	[soLuong] [int] NULL,
	[trangThai] [tinyint] NULL,
	[idTacGia] [int] NULL,
	[idNhaXuatBan] [int] NULL,
	[idLoaiSach] [int] NULL,
	[idKho] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAC_GIA]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAC_GIA](
	[id] [int] NOT NULL,
	[hoTen] [nvarchar](100) NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAI_KHOAN]    Script Date: 5/7/2024 4:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAI_KHOAN](
	[id] [int] NOT NULL,
	[matKhau] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (1, 1, 2)
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (1, 3, 3)
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (2, 2, 5)
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (2, 3, 1)
INSERT [dbo].[CT_PHIEU_MUON] ([idSach], [idPhieuMuon], [soLuong]) VALUES (3, 2, 5)
GO
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (1, 1, 2, 0)
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (1, 3, 1, 0)
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (2, 2, 5, 0)
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (2, 3, 0, 0)
INSERT [dbo].[CT_PHIEU_TRA] ([idSach], [idPhieuTra], [soLuong], [trangThaiSach]) VALUES (3, 2, 5, 0)
GO
INSERT [dbo].[KHO] ([id], [tenKho], [viTri]) VALUES (0, N'Ko', N'ko')
GO
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (1, N'Kinh dị')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (2, N'Ngôn tình')
INSERT [dbo].[LOAI_SACH] ([id], [tenLoai]) VALUES (3, N'Trinh tham')
GO
INSERT [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham]) VALUES (1, N'09322223849385', CAST(N'2024-05-16' AS Date), N'230 Quan 5', N'Ly Tuan Minh', N'12345', CAST(N'2025-05-04' AS Date), 20, 0)
INSERT [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham]) VALUES (2, N'34', CAST(N'2024-05-07' AS Date), N'4 á', N'Nam chu lanh', N'3466', CAST(N'2025-05-06' AS Date), 20, 0)
INSERT [dbo].[NGUOI_DOC] ([id], [sdt], [ngaySinh], [diaChi], [hoTen], [cmnd], [hanSuDung], [soLuongMuonChoPhep], [trangThaiViPham]) VALUES (3, N'24', CAST(N'2024-05-01' AS Date), N'ew', N'QN', N'576', CAST(N'2025-05-06' AS Date), 20, 0)
GO
INSERT [dbo].[NHA_XUAT_BAN] ([id], [ten], [diaChi], [sdt], [email]) VALUES (1, N'nha meo', N'094', N'Q1             ', N'nhaMeo@gmail.com')
INSERT [dbo].[NHA_XUAT_BAN] ([id], [ten], [diaChi], [sdt], [email]) VALUES (2, N'Cao', N'45', N'35             ', N'?')
INSERT [dbo].[NHA_XUAT_BAN] ([id], [ten], [diaChi], [sdt], [email]) VALUES (3, N'dfg', N'5', N'hg             ', N'gf')
GO
INSERT [dbo].[NHAN_VIEN] ([id], [hoTen], [ngaySinh], [diaChi], [cmnd], [vaiTro], [matKhau]) VALUES (1, N'Nam :)', N'2002-12-16', N'EW', N'565', 1, N'123456')
INSERT [dbo].[NHAN_VIEN] ([id], [hoTen], [ngaySinh], [diaChi], [cmnd], [vaiTro], [matKhau]) VALUES (2, N'Meo', N'2003-04-23', N'KOBIET', N'12365', 0, N'123')
GO
INSERT [dbo].[PHIEU_MUON] ([id], [idNhanVien], [idNguoiDoc], [ngayMuon], [ngayTra]) VALUES (1, 1, 1, CAST(N'2024-05-07' AS Date), CAST(N'2024-05-22' AS Date))
INSERT [dbo].[PHIEU_MUON] ([id], [idNhanVien], [idNguoiDoc], [ngayMuon], [ngayTra]) VALUES (2, 1, 2, CAST(N'2024-05-07' AS Date), CAST(N'2024-05-22' AS Date))
INSERT [dbo].[PHIEU_MUON] ([id], [idNhanVien], [idNguoiDoc], [ngayMuon], [ngayTra]) VALUES (3, 2, 3, CAST(N'2024-05-07' AS Date), CAST(N'2024-05-22' AS Date))
GO
INSERT [dbo].[PHIEU_TRA] ([id], [idNguoiDoc], [ngayTraThatSu], [tienPhat]) VALUES (1, 1, CAST(N'2024-05-07' AS Date), 0.0000)
INSERT [dbo].[PHIEU_TRA] ([id], [idNguoiDoc], [ngayTraThatSu], [tienPhat]) VALUES (2, 2, CAST(N'2024-05-07' AS Date), 0.0000)
INSERT [dbo].[PHIEU_TRA] ([id], [idNguoiDoc], [ngayTraThatSu], [tienPhat]) VALUES (3, 2, CAST(N'2024-05-07' AS Date), 6500.0000)
GO
INSERT [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (1, N'Ma nu', 1000.0000, 17, 0, 1, 1, 1, 0)
INSERT [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (2, N'Ma nam', 4500.0000, 6, 0, 1, 1, 2, 0)
INSERT [dbo].[SACH] ([id], [tenSach], [giaSach], [soLuong], [trangThai], [idTacGia], [idNhaXuatBan], [idLoaiSach], [idKho]) VALUES (3, N'Meo gia', 5900.0000, 5, 0, 1, 1, 3, 0)
GO
INSERT [dbo].[TAC_GIA] ([id], [hoTen], [ngaySinh], [diaChi]) VALUES (1, N'Hong phan', CAST(N'2024-05-01' AS Date), N'Hehe')
GO
INSERT [dbo].[TAI_KHOAN] ([id], [matKhau]) VALUES (1, N'123456')
INSERT [dbo].[TAI_KHOAN] ([id], [matKhau]) VALUES (2, N'123456')
GO
ALTER TABLE [dbo].[CT_PHIEU_MUON]  WITH CHECK ADD FOREIGN KEY([idPhieuMuon])
REFERENCES [dbo].[PHIEU_MUON] ([id])
GO
ALTER TABLE [dbo].[CT_PHIEU_MUON]  WITH CHECK ADD FOREIGN KEY([idSach])
REFERENCES [dbo].[SACH] ([id])
GO
ALTER TABLE [dbo].[CT_PHIEU_TRA]  WITH CHECK ADD FOREIGN KEY([idPhieuTra])
REFERENCES [dbo].[PHIEU_TRA] ([id])
GO
ALTER TABLE [dbo].[CT_PHIEU_TRA]  WITH CHECK ADD FOREIGN KEY([idSach])
REFERENCES [dbo].[SACH] ([id])
GO
ALTER TABLE [dbo].[CT_SACH_TG]  WITH CHECK ADD FOREIGN KEY([idSach])
REFERENCES [dbo].[SACH] ([id])
GO
ALTER TABLE [dbo].[CT_SACH_TG]  WITH CHECK ADD FOREIGN KEY([idTacGia])
REFERENCES [dbo].[TAC_GIA] ([id])
GO
ALTER TABLE [dbo].[PHIEU_MUON]  WITH CHECK ADD FOREIGN KEY([idNguoiDoc])
REFERENCES [dbo].[NGUOI_DOC] ([id])
GO
ALTER TABLE [dbo].[PHIEU_MUON]  WITH CHECK ADD FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[NHAN_VIEN] ([id])
GO
ALTER TABLE [dbo].[PHIEU_TRA]  WITH CHECK ADD FOREIGN KEY([idNguoiDoc])
REFERENCES [dbo].[NGUOI_DOC] ([id])
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([idKho])
REFERENCES [dbo].[KHO] ([id])
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([idLoaiSach])
REFERENCES [dbo].[LOAI_SACH] ([id])
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([idNhaXuatBan])
REFERENCES [dbo].[NHA_XUAT_BAN] ([id])
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([idTacGia])
REFERENCES [dbo].[TAC_GIA] ([id])
GO
ALTER TABLE [dbo].[TAI_KHOAN]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[NHAN_VIEN] ([id])
GO
USE [master]
GO
ALTER DATABASE [QuanLyThuVien] SET  READ_WRITE 
GO
