USE [master]
GO
/****** Object:  Database [QuanLyKyTucXa]    Script Date: 07/10/2021 10:55:14 CH ******/
CREATE DATABASE [QuanLyKyTucXa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyKyTucXa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS2012\MSSQL\DATA\QuanLyKyTucXa.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyKyTucXa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS2012\MSSQL\DATA\QuanLyKyTucXa_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyKyTucXa] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyKyTucXa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyKyTucXa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyKyTucXa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyKyTucXa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyKyTucXa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyKyTucXa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyKyTucXa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyKyTucXa] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyKyTucXa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyKyTucXa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyKyTucXa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyKyTucXa] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLyKyTucXa]
GO
/****** Object:  Table [dbo].[ChiTietDichVu]    Script Date: 07/10/2021 10:55:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDichVu](
	[MaCTDV] [int] IDENTITY(1,1) NOT NULL,
	[MaDatPhong] [int] NOT NULL,
	[MaDichVu] [nvarchar](50) NOT NULL,
	[DonGia] [money] NOT NULL,
	[SoLuong] [float] NOT NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_ChiTietDichVu] PRIMARY KEY CLUSTERED 
(
	[MaCTDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietLuong]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLuong](
	[MaChiTietLuong] [nvarchar](50) NOT NULL,
	[MaNhanVien] [nvarchar](50) NULL,
	[SoNgayNghi] [int] NULL,
	[SoNgayLam] [int] NULL,
	[NgayNhanLuong] [date] NULL,
	[TongNhan] [money] NULL,
 CONSTRAINT [PK_NhanLuong] PRIMARY KEY CLUSTERED 
(
	[MaChiTietLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatPhong]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatPhong](
	[MaDatPhong] [int] IDENTITY(1,1) NOT NULL,
	[MaSinhVien] [nvarchar](50) NOT NULL,
	[MaPhong] [nvarchar](50) NOT NULL,
	[LoaiHinhThue] [bit] NULL,
	[NgayThue] [datetime] NULL,
	[NgayRaDuKien] [datetime] NULL,
	[SoNguoi] [int] NULL,
	[TenUser] [nvarchar](50) NOT NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[TienDatCoc] [money] NULL,
 CONSTRAINT [PK_DatPhong] PRIMARY KEY CLUSTERED 
(
	[MaDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDichVu] [nvarchar](50) NOT NULL,
	[TenDichVu] [nvarchar](50) NOT NULL,
	[DonVi] [nvarchar](50) NOT NULL,
	[DonGia] [money] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaDatPhong] [int] NOT NULL,
	[TenUser] [nvarchar](50) NOT NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[MaPhong] [nvarchar](50) NOT NULL,
	[SoNgayThue] [float] NULL,
	[SoGioThue] [float] NULL,
	[TienPhong] [money] NULL,
	[PhuThuCheckin] [money] NULL,
	[PhuThuCheckout] [money] NULL,
	[TienDichVu] [money] NULL,
	[ThanhTien] [money] NOT NULL,
	[NgayThanhToan] [date] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khac]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GiaTriSo] [float] NULL,
	[GiaTriTG] [time](7) NULL,
	[MoTa] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [nvarchar](50) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NOT NULL,
	[GiuongDon] [int] NULL,
	[GiuongDoi] [int] NULL,
	[GiaTheoGio] [money] NULL,
	[GiaTheoNgay] [money] NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSinhVien]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSinhVien](
	[MaLoaiSV] [nvarchar](50) NOT NULL,
	[TenLoaiSV] [nvarchar](50) NOT NULL,
	[TienGiam] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Luong]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luong](
	[MaLuong] [nvarchar](50) NOT NULL,
	[LuongTheoGio] [money] NOT NULL,
	[SoGioLam] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Luong] PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](10) NULL,
	[MaLuong] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Hinh] [nvarchar](max) NULL,
	[NgayBatDauLam] [date] NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [nvarchar](50) NOT NULL,
	[MaLoaiPhong] [nvarchar](50) NOT NULL,
	[DienTich] [int] NULL,
	[MaTang] [int] NULL,
	[GiuongDon] [int] NULL,
	[GiuongDoi] [int] NULL,
	[Hinh] [nvarchar](max) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](255) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSinhVien] [nvarchar](50) NOT NULL,
	[MaLoaiSinhVien] [nvarchar](50) NOT NULL,
	[TenSinhVien] [nvarchar](50) NOT NULL,
	[Tuoi] [int] NULL,
	[GioiTinh] [bit] NULL,
	[SoDienThoai] [char](10) NULL,
	[SoCMND] [char](12) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 07/10/2021 10:55:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[TenUser] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[NgayLap] [date] NOT NULL,
	[MaQuyen] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
	[MaNhanVien] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[TenUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ChiTietDichVu] ADD  CONSTRAINT [DF_ChiTietDichVu_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[DatPhong] ADD  CONSTRAINT [DF_DatPhong_NgayThue]  DEFAULT (getdate()) FOR [NgayThue]
GO
ALTER TABLE [dbo].[DatPhong] ADD  CONSTRAINT [DF_DatPhong_SoNguoi]  DEFAULT ((1)) FOR [SoNguoi]
GO
ALTER TABLE [dbo].[DatPhong] ADD  CONSTRAINT [DF_DatPhong_TinhTrang]  DEFAULT (N'Chưa thanh toán') FOR [TinhTrang]
GO
ALTER TABLE [dbo].[DatPhong] ADD  CONSTRAINT [DF_DatPhong_TienDatCoc]  DEFAULT ((0)) FOR [TienDatCoc]
GO
ALTER TABLE [dbo].[Luong] ADD  CONSTRAINT [DF_Luong_NgayBatDauLam]  DEFAULT (getdate()) FOR [GhiChu]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_GioiTinh]  DEFAULT ('true') FOR [GioiTinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_NgayBatDauLam]  DEFAULT (getdate()) FOR [NgayBatDauLam]
GO
ALTER TABLE [dbo].[Phong] ADD  CONSTRAINT [DF_Phong_MaTang]  DEFAULT ((1)) FOR [MaTang]
GO
ALTER TABLE [dbo].[Phong] ADD  CONSTRAINT [DF_Phong_GiuongDon]  DEFAULT ((0)) FOR [GiuongDon]
GO
ALTER TABLE [dbo].[Phong] ADD  CONSTRAINT [DF_Phong_GiuongDoi]  DEFAULT ((0)) FOR [GiuongDoi]
GO
ALTER TABLE [dbo].[Phong] ADD  CONSTRAINT [DF_Phong_TinhTrang]  DEFAULT (N'trống') FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [DF_KhachHang_GioiTinh]  DEFAULT ('true') FOR [GioiTinh]
GO
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [DF_KhachHang_SoDienThoai]  DEFAULT (N'0123456789') FOR [SoDienThoai]
GO
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [DF_KhachHang_SoCMND]  DEFAULT (N'123456789111') FOR [SoCMND]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_NgayLap]  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDichVu_DatPhong] FOREIGN KEY([MaDatPhong])
REFERENCES [dbo].[DatPhong] ([MaDatPhong])
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [FK_ChiTietDichVu_DatPhong]
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDichVu_DichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DichVu] ([MaDichVu])
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [FK_ChiTietDichVu_DichVu]
GO
ALTER TABLE [dbo].[ChiTietLuong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLuong_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ChiTietLuong] CHECK CONSTRAINT [FK_ChiTietLuong_NhanVien]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_KhachHang] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SinhVien] ([MaSinhVien])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_KhachHang]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_Phong]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_User] FOREIGN KEY([TenUser])
REFERENCES [dbo].[User] ([TenUser])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_User]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DatPhong] FOREIGN KEY([MaDatPhong])
REFERENCES [dbo].[DatPhong] ([MaDatPhong])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DatPhong]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Luong] FOREIGN KEY([MaLuong])
REFERENCES [dbo].[Luong] ([MaLuong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Luong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_LoaiKhachHang] FOREIGN KEY([MaLoaiSinhVien])
REFERENCES [dbo].[LoaiSinhVien] ([MaLoaiSV])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_KhachHang_LoaiKhachHang]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_NhanVien]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Quyen]
GO
USE [master]
GO
ALTER DATABASE [QuanLyKyTucXa] SET  READ_WRITE 
GO
