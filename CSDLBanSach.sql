USE [master]
go
if exists (select * from sysdatabases where name='QLBANSACH')
	drop database QLBANSACH

GO
/****** Object:  Database [QLBANSACH]    Script Date: 03/16/2018 9:09:55 PM ******/
CREATE DATABASE [QLBANSACH] ON  PRIMARY 
( NAME = N'QLBANSACH', FILENAME = N'd:\QLBANSACH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBANSACH_log', FILENAME = N'd:\QLBANSACH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
use QLBANSACH
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTDATHANG]    Script Date: 03/16/2018 9:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDATHANG](
	[SoDH] [int] NOT NULL,
	[Masach] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](9, 2) NULL,
	[Thanhtien]  AS ([SoLuong]*[Dongia]),
 CONSTRAINT [PK_CTDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC,
	[Masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTTHAMDO]    Script Date: 03/16/2018 9:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTHAMDO](
	[MaCH] [int] NOT NULL,
	[STT] [int] NOT NULL,
	[Noidungtraloi] [nvarchar](255) NOT NULL,
	[Solanbinhchon] [int] NULL,
 CONSTRAINT [PK_CTThamDo] PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC,
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 03/16/2018 9:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [smalldatetime] NULL,
	[Trigia] [money] NULL,
	[Dagiao] [bit] NULL,
	[Ngaygiaohang] [smalldatetime] NULL,
	[Tennguoinhan] [varchar](50) NULL,
	[Diachinhan] [nvarchar](1) NULL,
	[Dienthoainhan] [varchar](15) NULL,
	[HTThanhtoan] [bit] NULL,
	[HTGiaohang] [bit] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 03/16/2018 9:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTenKH] [nvarchar](50) NOT NULL,
	[DiachiKH] [nvarchar](50) NULL,
	[DienthoaiKH] [varchar](10) NULL,
	[TenDN] [varchar](15) NULL,
	[Matkhau] [varchar](15) NOT NULL,
	[Ngaysinh] [smalldatetime] NULL,
	[Gioitinh] [bit] NULL,
	[Email] [varchar](50) NULL,
	[Daduyet] [bit] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 03/16/2018 9:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](100) NOT NULL,
	[Diachi] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUANGCAO]    Script Date: 03/16/2018 9:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANGCAO](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenCty] [nvarchar](200) NOT NULL,
	[Hinhminhhoa] [varchar](20) NULL,
	[Href] [varchar](100) NULL,
	[Ngaybatdau] [smalldatetime] NULL,
	[Ngayhethan] [smalldatetime] NULL,
 CONSTRAINT [PK_QuangCao] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SACH]    Script Date: 03/16/2018 9:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[Masach] [int] IDENTITY(1,1) NOT NULL,
	[Tensach] [nvarchar](100) NOT NULL,
	[Donvitinh] [nvarchar](50) NULL,
	[Dongia] [money] NULL,
	[Mota] [ntext] NULL,
	[Hinhminhhoa] [varchar](50) NULL,
	[MaCD] [int] NULL,
	[MaNXB] [int] NULL,
	[Ngaycapnhat] [smalldatetime] NULL,
	[Soluongban] [int] NULL,
	[solanxem] [int] NULL,
	[moi] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[Masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 03/16/2018 9:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[TenTG] [nvarchar](50) NOT NULL,
	[DiachiTG] [nvarchar](100) NULL,
	[DienthoaiTG] [varchar](15) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[THAMDO]    Script Date: 03/16/2018 9:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAMDO](
	[MaCH] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydang] [smalldatetime] NULL,
	[Noidungthamdo] [nvarchar](255) NOT NULL,
	[Tongsobinhchon] [int] NULL,
 CONSTRAINT [PK_ThamDo] PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VIETSACH]    Script Date: 03/16/2018 9:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE Admin
(
UserAdmin varchar(30) primary key,
PassAdmin varchar(30) not null,
Hoten nvarchar(50)
)

CREATE TABLE [dbo].[VIETSACH](
	[MaTG] [int] NOT NULL,
	[Masach] [int] NOT NULL,
	[Vaitro] [nvarchar](30) NULL,
 CONSTRAINT [PK_VietSach] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC,
	[Masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N'Ngoại ngữ')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (2, N'Công nghệ thông tin')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (3, N'Luật')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (4, N'Văn học')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (5, N'Khoa học kỹ thuật')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (6, N'Nông nghiệp')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (7, N'Triết học-Chính trị')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (8, N'Lịch sử, địa lý')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (9, N'Kinh tế')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (10, N'Sách giáo khoa')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (11, N'Nghệ thuật sống')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (12, N'Chính trị')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
INSERT [dbo].[CTDATHANG] ([SoDH], [Masach], [Soluong], [Dongia]) VALUES (1, 19, 1, CAST(25000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [Masach], [Soluong], [Dongia]) VALUES (1, 23, 2, CAST(25000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [Masach], [Soluong], [Dongia]) VALUES (2, 1, 1, CAST(26000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [Masach], [Soluong], [Dongia]) VALUES (2, 17, 3, CAST(18000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [Masach], [Soluong], [Dongia]) VALUES (4, 1, 1, CAST(26000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [Masach], [Soluong], [Dongia]) VALUES (4, 2, 1, CAST(12000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [Masach], [Soluong], [Dongia]) VALUES (4, 6, 1, CAST(21000.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [Trigia], [Dagiao], [Ngaygiaohang], [Tennguoinhan], [Diachinhan], [Dienthoainhan], [HTThanhtoan], [HTGiaohang]) VALUES (1, 1, CAST(N'2010-04-06T00:00:00' AS SmallDateTime), 75000.0000, 0, CAST(N'2010-04-06T00:00:00' AS SmallDateTime), NULL, NULL, NULL, 0, 0)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [Trigia], [Dagiao], [Ngaygiaohang], [Tennguoinhan], [Diachinhan], [Dienthoainhan], [HTThanhtoan], [HTGiaohang]) VALUES (2, 1, CAST(N'2010-06-28T00:00:00' AS SmallDateTime), 80000.0000, 0, CAST(N'2010-06-28T00:00:00' AS SmallDateTime), NULL, NULL, NULL, 0, 0)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [Trigia], [Dagiao], [Ngaygiaohang], [Tennguoinhan], [Diachinhan], [Dienthoainhan], [HTThanhtoan], [HTGiaohang]) VALUES (3, 1, CAST(N'2018-01-26T23:14:00' AS SmallDateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [Trigia], [Dagiao], [Ngaygiaohang], [Tennguoinhan], [Diachinhan], [Dienthoainhan], [HTThanhtoan], [HTGiaohang]) VALUES (4, 1, CAST(N'2018-01-26T23:20:00' AS SmallDateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (1, N'Dương Thành Phết', N'Trần Huy Liệu', N'0918062755', N'phetcm', N'123', CAST(N'1962-07-08T00:00:00' AS SmallDateTime), 1, N'pvkhoa@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (2, N'Nguyễn Tiến Luân', N'Quận 6', N'Chua có', N'thang', N'123456', CAST(N'1974-07-15T00:00:00' AS SmallDateTime), 1, N'ntluan@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (3, N'Đặng Quốc Hòa', N'Sư Vạn Hạnh', N'Chua có', N'dqhoa', N'hoa', CAST(N'1965-07-24T00:00:00' AS SmallDateTime), 1, N'dqhoa@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (4, N'Ngô Ngọc Ngân', N'Khu chung cư', N'0918544699', N'nnngan', N'ngan', CAST(N'1946-08-15T00:00:00' AS SmallDateTime), 1, N'nnngan@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (5, N'Đỗ Quỳnh Hương', N'Cống Quỳnh', N'0908123456', N'dqhuong', N'huong', CAST(N'1982-03-24T00:00:00' AS SmallDateTime), 0, N'dqhuong@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (6, N'Trần Thị Thu Trang', N'Nơ Trang Long', N'Chua có', N'ttttrang       ', N'trang          ', CAST(N'1962-08-05T00:00:00' AS SmallDateTime), 0, N'ttrang@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (7, N'Nguyễn Thiên Thanh', N'Hai Bà Trưng', N'0908320111', N'ntthanh', N'thanh', CAST(N'1979-04-04T00:00:00' AS SmallDateTime), 0, N'ntthanh@t3h.hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (8, N'Trần Thị Hải Yến', N'Trần Hưng Đạo', N'8111111   ', N'tthyen', N'yen', CAST(N'1975-07-15T00:00:00' AS SmallDateTime), 0, N'tthyan@vol.vnn.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (9, N'Nguyễn Thị Thanh Mai', N'Trần Quang Diệu', N'81111222', N'nttmai         ', N'mai            ', CAST(N'1982-09-15T00:00:00' AS SmallDateTime), 0, NULL, 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (10, N'Nguyễn Thành Danh', N'Cộng Hòa', N'8103751   ', N'ntdanh', N'danh', CAST(N'1977-07-16T00:00:00' AS SmallDateTime), 1, N'ntdanh@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (11, N'Phạm Thị Nga', N'Q6 - Tp.HCM', N'0831564512', N'ptnga', N'nga', CAST(N'2003-08-18T00:00:00' AS SmallDateTime), 0, N'ptnhung@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (12, N'Lê Doanh Doanh', N'2Bis Hùng Vương', N'07077865', N'lddoanh', N'doanh', CAST(N'1977-05-06T00:00:00' AS SmallDateTime), 0, N'lddoanh@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (13, N'Đòan Ngọc Minh Tâm', N'2 Đinh Tiên Hòang', N'0909092222', N'dnmtam', N'tam', CAST(N'1978-05-15T00:00:00' AS SmallDateTime), 0, N'ndmtam@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (14, N'Trần Khải Nhi', N'3 Bùi Hữu Nghĩa', N'0909095555', N'tknhi', N'nhi', CAST(N'1980-04-01T00:00:00' AS SmallDateTime), 1, N'tknhi@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (15, N'aa', N'aa', N'11111', N'aaa', N'1111', CAST(N'1999-01-01T00:00:00' AS SmallDateTime), 1, N'itc_nguyen@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (17, N'aa', N'a', N'a', N'a', N'12', CAST(N'1999-02-02T00:00:00' AS SmallDateTime), 1, N'wsss', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (21, N'ty', N'ty', N'123456789', N'ty', N'123', CAST(N'2018-02-06T00:00:00' AS SmallDateTime), NULL, N'ty', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiachiKH], [DienthoaiKH], [TenDN], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Daduyet]) VALUES (23, N'a', N'b', N'987', N'c', N'123', CAST(N'2018-02-21T00:00:00' AS SmallDateTime), NULL, N'e', NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] ON 

INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [Diachi], [DienThoai]) VALUES (1, N'Nhà xuất bản Trẻ', N'124 Nguyễn Văn Cừ Q.1 Tp.HCM', N'19001560')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [Diachi], [DienThoai]) VALUES (2, N'NXB Thống kê', N'Đồng Nai', N'19001511')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [Diachi], [DienThoai]) VALUES (3, N'Kim đồng', N'Tp.HCM', N'19001570')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [Diachi], [DienThoai]) VALUES (4, N'Đại học quốc gia', N'Tp.HCM', N'0908419981')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [Diachi], [DienThoai]) VALUES (5, N'Văn hóa nghệ thuật', N'Đà Nẵng', N'0903118833')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [Diachi], [DienThoai]) VALUES (6, N'Văn hóa', N'Bình Dương', N'0913336677')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [Diachi], [DienThoai]) VALUES (7, N'Lao động - Xã hội', N'Tp.HCM', N'0989888888')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [Diachi], [DienThoai]) VALUES (8, N'Khoa Học & Kỹ Thuật', N'Hà Nội', N'8351056')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [Diachi], [DienThoai]) VALUES (9, N'aa', N'aa', N'122')
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] OFF
SET IDENTITY_INSERT [dbo].[QUANGCAO] ON 

INSERT [dbo].[QUANGCAO] ([STT], [TenCty], [Hinhminhhoa], [Href], [Ngaybatdau], [Ngayhethan]) VALUES (1, N'Thời trang Việt Nam', N'Thoitrang.gif', N'http://www.vietfashion.vn/', CAST(N'2005-05-10T00:00:00' AS SmallDateTime), CAST(N'2009-11-10T00:00:00' AS SmallDateTime))
INSERT [dbo].[QUANGCAO] ([STT], [TenCty], [Hinhminhhoa], [Href], [Ngaybatdau], [Ngayhethan]) VALUES (2, N'Bột giặt Omo', N'Omo.gif', N'http://www.haydetretudo.com.vn/', CAST(N'2005-05-10T00:00:00' AS SmallDateTime), CAST(N'2011-06-10T00:00:00' AS SmallDateTime))
INSERT [dbo].[QUANGCAO] ([STT], [TenCty], [Hinhminhhoa], [Href], [Ngaybatdau], [Ngayhethan]) VALUES (3, N'Bánh Trung thu', N'Trungthu.gif', N'http://demo10.webinvietnam.com/For_Ad/h/hanobaco/', CAST(N'2005-05-10T00:00:00' AS SmallDateTime), CAST(N'2010-12-10T00:00:00' AS SmallDateTime))
INSERT [dbo].[QUANGCAO] ([STT], [TenCty], [Hinhminhhoa], [Href], [Ngaybatdau], [Ngayhethan]) VALUES (4, N'Sữa Cô gái Hà Lan', N'Fristi.gif', N'http://www.dutchlady.com.vn', CAST(N'2005-05-10T00:00:00' AS SmallDateTime), CAST(N'2010-11-10T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[QUANGCAO] OFF
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (1, N'Giáo trình Tin học cơ bản', N'Cuốn', 26000.0000, N'Nội dung của cuốn: Tin Học Cơ Bản Windows XP gồm có 7 chương:
Chương 1: Một số vấn đề cơ bản. 
Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong My Computer và Windows Explorer. 
Chương 3: Các thao tác trong windows XP. 
Chương 4: Các thiết lập trong Windows XP. 
Chương 5: Bảo trì máy tính. 
Chương 6: Các phím tắt 
Chương 7: Hỏi và đáp các thắc mắc.
Xin trân trọng giới thiệu cuốn sách cùng bạn', N'TH001.jpg', 7, 1, CAST(N'2004-07-17T00:00:00' AS SmallDateTime), 120, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (2, N'Giáo trình Tin học văn phòng', N'Cuốn', 12000.0000, N'Cuốn sách này gồm 3 phần sau:
Phần 1: Xử lý văn bản trong Microsoft Office Word 2007. 
Phần 2: Xử lý bảng tính trong Microsoft Office Excel 2007. 
Phần 3: Quản lý cơ sở dữ liệu trong Microsoft Office Access 2007.
Xin trân trọng giới thiệu cùng các bạn.', N'TH004.jpg', 3, 2, CAST(N'2004-06-05T00:00:00' AS SmallDateTime), 25, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (3, N'Lập Trình Cơ Sở Dữ Liệu Với Visual Basic 2005 Và ADO.NET 2.0', N'Cuốn', 11500.0000, N'Cuốn sách "Lập Trình Cơ Sở Dữ Liệu Với Visual Basic 2005 Và ADO.NET 2.0" này giới thiệu các nội dung sau:
Chương 1: Căn bản về cơ sở dữ liệu.
Chương 2: Các bộ kết nối và tương tác dữ liệu.
Chương 3: Bộ chứa dữ liệu DataSet.
Chương 4: Bộ điều hợp dữ liệu DataAdapter.
Chương 5: Sử dụng các điều khiển ràng buộc dữ liệu.
Chương 6: Tạo báo cáo với Crystal Report.
Chương 7: ADO.NET và XML.
Xin trân trọng giới thiệu cùng các bạn.', N'TH003.jpg', 7, 3, CAST(N'2004-07-12T00:00:00' AS SmallDateTime), 23, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (4, N'Visual Basic 2005 Tập 3, Quyển 2: Lập Trình Web', N'Cuốn', 20000.0000, N'"Visual Basic 2005 Tập 3, Quyển 2: Lập Trình Web Với Cơ Sở Dữ Liệu" sẽ cung cấp kỹ thuật và hướng dẫn bạn:
Tự học xây dựng ứng dụng Web quản lý CSDL toàn diện với ADO.NET 2.0 và ASP.NET. 
Khai thác các đối tượng và nguồn dữ liệu dành cho WebForm. 
Sử dụng các điều khiển dữ liệu đặc thù dành riêng cho ASP.NET và Web. 
Làm quen với những khái niệm xử lý dữ liệu hoàn toàn mới. 
Ràng buộc dữ liệu với các thành phần giao diện Web Forms. 
Thiết kế ứng dụng Web "Quản lý CD Shop" trực quan và thực tế. 
Cung cấp một kiến thức hoàn chỉnh về Web cho các bạn yêu thích ngôn ngữ Visual Basic và .NET Framework.
Sách có kèm theo CD-ROM bài tập.
Xin trân trọng giới thiệu cùng các bạn.', N'LTWeb2005.jpg', 8, 4, CAST(N'2004-07-18T00:00:00' AS SmallDateTime), 240, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (5, N'Giáo trình Tin học quản lý 1', N'Cuốn', 21000.0000, N'Mạng Máy Tính Và Hệ Thống Bảo Mật gồm 7 chương:
Chương I: Tổng quan về công nghệ mạng máy tính và mạng cục bộ.
Chương II: Các thiết bị mạng thông dụng và các chuẩn kết nối vật lý.
Chương III: TCP/IP và mạng Internet.
Chương IV: Hệ điều hành mạng đặc điểm của hệ điều hành mạng.
Chương V: Một số vấn đề an toàn và bảo mật thông tin trên mạng máy tính.
Chương VI: Giới thiệu hệ điều hành Windows NT.
Chương VII: Giới thiệu hệ điều hành UNIX.
Trân trọng giới thiệu.', N'TH001.jpg', 3, 1, CAST(N'2004-06-18T00:00:00' AS SmallDateTime), 16, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (6, N'Giáo trình Tin học quản lý 2', N'Cuốn', 21000.0000, N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
Xin trân trọng giới thiệu Tập 1 cùng các bạn.', N'130499.jpg', 10, 5, CAST(N'2004-05-15T00:00:00' AS SmallDateTime), 65, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (7, N'Giáo trình SQL Server', N'Cuốn', 18000.0000, N'Hệ quản trị cơ sở dữ liệu SQl Server 2003
Test thu', N'Gt_Thcb.jpg', 3, 6, CAST(N'2004-08-16T00:00:00' AS SmallDateTime), 5, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (8, N'Phong Cách Quản Lý Kinh Doanh Hiện Đại ', N'Cuốn', 61000.0000, N'Cuốn sách này không đi vào chi tiết những chủ đề quản lý cổ điển đã được nhắc đến trong nhiều cuốn sách khác như tổ chức cuộc họp, cung cấp số liệu, quản lý thời gian. Mục đích của cuốn sách này là mang lại cho bạn "nhiều hơn", một giá trị gia tăng so với những gì bạn đã biết và đã áp dụng, và giúp bạn tối ưu hóa việc quản lý chuyên môn và quản lý nhân sự.
Nội dung sách bao gồm 9 chương:
Chương 1: Bốn cách nhìn quản lý theo sắc màu.
Chương 2: Quản lý các sắc màu của một cộng tác viên.
Chương 3: Quản lý nhóm theo màu sắc.
Chương 4: Quyết định cách thích hợp dựa vào bản thân, người khác và hoàn cảnh.
Chương 5: Phát triển hiệu quả tối ưu theo sắc màu.
Chương 6: Hiểu rõ những sai lệch trong cách quản lý của mình.
Chương 7: Nền tảng cơ sở của hệ thống Success Insights: Bốn màu với tám kiểu.
Chương 8: Nhận biết và quản lý tám kiểu cộng tác viên.
Chương 9: Cải thiện người quản lý.
Xin trân trọng giới thiệu. 
', N'KT0001.jpg', 9, 8, CAST(N'2003-09-16T00:00:00' AS SmallDateTime), 5, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (10, N'Cán Bộ Quản Lý Trong Sản Xuất Công Nghiệp', N'Cuốn', 25000.0000, N'Cuốn sách này gồm những nội dung chính sau:
Phần 1: Quản lý sản xuất công nghiệp trong kinh tế thị trường
- Kinh doanh sản xuất công nghiệp trong kinh tế thị trường
- Sự cần thiết và các chức năng của quản lý nhà nước đối với doanh nghiệp sản xuất công nghiệp
- Nội dung và tính chất của những công việc mà cán bộ quản lý sản xuất công nghiệp phải đảm nhiệm, hoàn thành.
- Kinh nghiệm đào tạo và đánh giá cán bộ quản lý kinh doanh ở Nhật.
Phần 2: Thực trạng và một số giải pháp nhằm nâng cao chất lượng đội ngũ cán bộ quản lý sản xuất công nghiệp Việt Nam
- Thực trạng cán bộ quản lý doanh nghiệp công nghiệp của Việt Nam
- Tiêu chuẩn hóa cán bộ quản lý sản xuất công nghiệp Việt Nam
- Đổi mới căn bản nội dung và phương pháp đào tạo cán bộ quản lý sản xuất công nghiệp Việt Nam
Xin trân trọng giới thiệu. 
 
', N'KT0001.jpg', 5, 6, CAST(N'2003-08-27T00:00:00' AS SmallDateTime), 89, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (11, N'Tư Duy Chiến Lược (Quản Lý - Tại Sao? Thế Nào?', N'Cuốn', 18000.0000, N'Khả năng hoạch định dài hạn đồng thời tối ưu hóa tình hình hoạt động ngắn hạn là một yêu cầu bắt buộc phải có đối với các nhà quản lý.Tư Duy Chiến Lược sẽ giúp bạn vạch ra con đường đến thành công đồng thời giúp hình thành các kỹ năng phân tích và hoạch định theo nhóm. Tất cả các lĩnh vực then chốt để hình thành và thực thi một chiến lược đều được trình bày cặn kẽ trong cuốn sách này, từ việc nghiên cứu và thu thập thông tin nền tảng, hình thành một chiến lược mới đến việc xem xét và ứng dụng chiến lược ấy. Cả thảy có 101 chỉ dẫn nhằm cung cấp cho các bạn những lời khuyên thực tiễn hơn, đồng thời bài tập tự đánh giá sẽ giúp bạn xác định xem mình là một nhà tư duy chiến lược hiệu quả đến mức nào. Khi bạn có nhiều tham vọng hơn về việc hoạch định cho tương lai, cẩm nang này sẽ là quyển sách tham khảo không thể thiếu, giúp suy nghĩ của bạn đi đúng hướng.
Xin trân trọng giới thiệu cuốn sách cùng bạn. ', N'KT0001.jpg', 11, 3, CAST(N'2003-09-19T00:00:00' AS SmallDateTime), 8, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (12, N'Quản Lý Dự Án (Quản Lý - Tại Sao? Thế Nào?) ', N'Cuốn', 61000.0000, N'Để thành công trong môi trường kinh doanh cạnh tranh hiện nay, các giám đốc dự án phải đạt được kết quả trong phạm thời gian và ngân sách đưa ra. Biết cách áp dụng các quy trình, phương pháp và kỹ thuật chỉ dẫn trong cuốn Quản Lý Dự Án này, bạn sẽ tăng tối đa khả năng thực hiện công việc và đảm bảo đạt kết quả tối ưu khi thực hiện dự án.
Được thiết kế phù hợp với tất cả các nhà quản lý ở đủ mọi trình độ, cẩm nang này sẽ trang bị cho bạn những kiến thức cần thiết trong việc quản lý mọi dự án, dù lớn hay nhỏ, để đạt đến thành công. Từ việc khởi xướng một dự án, thúc đẩy, phát triển nhóm dự án đến việc vượt qua những khó khăn, trở ngại; mỗi một khía cạnh của quản lý dự án chuyện nghiệp đều được trình bày một cách rõ nét. Cẩm nang bao gồm các hướng dẫn từng bước về hoạch định dự án và 101 mẹo vặt cung cấp cho bạn những lời khuyên thực tế. 
', N'KT0001.jpg', 4, 8, CAST(N'2003-07-15T00:00:00' AS SmallDateTime), 4, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (13, N'Điều Chỉnh Một Số Chính Sách Kinh Tế Ở Trung Quốc (Giai Đoạn 1992 - 2010)', N'Cuốn', 21000.0000, N'Cuốn sách này tập trung vào một số nội dung chính sau đây:

Tìm hiểu về những nhân tố đòi hỏi Trung Quốc phải điều chỉnh chính sách kinh tế.

Tìm hiểu về những nội dung chính trong điều chỉnh kinh tế ở Trung Quốc giai đoạn từ năm 1992 - 2010.

Tìm hiểu về tác động của việc điều chỉnh chính sách kinh tế của Trung Quốc đối với thế giới và khu vực trong đó có Việt Nam, sau đó rút tỉa một số kinh nghiệm của Trung Quốc trong quá trình điều chỉnh chính sách kinh tế mà Việt Nam có thể tham khảo.
Tập thể tác giả tham gia công trình này đều là những người chuyên nghiên cứu về Trung Quốc, hy vọng sẽ đem lại cho các bạn nhiều thông tin bổ ích.', N'KT0001.jpg', 1, 7, CAST(N'2004-05-15T00:00:00' AS SmallDateTime), 19, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (14, N'30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh', N'Cuốn', 85000.0000, N'30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh là một cuốn sách bài tập dành cho những học sinh/sinh viên nghiêm túc quan tâm đến tầm quan trọng của việc nâng cao những yếu tố kỹ thuật cho kỹ năng viết của mình. Rèn luyện để viết cho tốt chẳng khác gì tự trang bị cho mình một sức mạnh cần thiết để thành công - khi đi học cũng như khi ra ngoài xã hội. Trui rèn được một trình độ viết “cứng” không hề là chuyện bỗng nhiên trời cho mà có được; đó phải là kết quả của một quá trình phấn đấu bền bỉ và rèn luyện chăm chỉ.

Đặc nét của sách này là sử dụng cách tiếp cận những kỹ thuật kết hợp câu cơ bản, có nghĩa là, sách không chỉ quan tâm đến việc tránh những sai lỗi, mà còn đặt mục tiêu tạo dựng được những câu hay, linh hoạt, và thể hiện một phong cách riêng. Cạnh đó, sách còn có những điểm đáng lưu ý như: 

- Bàn thảo rõ ràng về những qui tắc và kỹ thuật giúp viết tốt.

- Giải thích súc tích, hạn chế dùng những thuật ngữ ngữ pháp.

- Lương bài tập phong phú, đa dạng, từ những câu hỏi điền vào chỗ trống với mục đích xác định các từ loại cho đến những câu hỏi kết hợp những câu ngắn thành những câu văn dài hơn, ý tứ “duyên” hơn.

- Đáp án cuối sách nhằm giúp học sinh/sinh viên học và nghiên cứu nhanh chậm theo trình độ và ý thích của mình, đồng thời kiểm tra được bài làm trong quá trình học tập.

Học sinh/sinh viên tiếp thu tốt nhất khi họ tham gia tích cực và quá trình học. Họ rất thích những bài tập nào rèn cho họ được những kỹ năng viết họ cần đồng thời có giá trị thông tin nào đó hoặc vui vui. Đó chính là lý do cuốn sách này sử dụng đủ loại chủ đề thú vị trong các bài tập. Cũng vì lý do tương tự, sách có phần trình bày và giảng giải rất ngắn gọn những đưa ra rất nhiều những ví dụ và minh họa mở rộng.

Sử dụng cuốn 30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh này sẽ giúp học sinh/sinh viên viết “có nghề” và tự tin hơn".', N'TiengAnh01.jpg', 2, 1, CAST(N'2000-09-20T00:00:00' AS SmallDateTime), 7, 0, 1)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (15, N'Tin Học Ứng Dụng: Thành Thạo Oracle 9i - Quản Trị Cơ Sở Dữ Liệu (Tập 1) ', N'Cuốn', 21000.0000, N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
Xin trân trọng giới thiệu Tập 1 cùng các bạn. ', N'TH001.jpg', 1, 2, CAST(N'2003-09-16T00:00:00' AS SmallDateTime), 28, 0, NULL)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (16, N'Mạng Máy Tính Và Hệ Thống Bảo Mật ', N'Cuốn', 23000.0000, N'Mạng Máy Tính Và Hệ Thống Bảo Mật gồm 7 chương:
Chương I: Tổng quan về công nghệ mạng máy tính và mạng cục bộ.
Chương II: Các thiết bị mạng thông dụng và các chuẩn kết nối vật lý.
Chương III: TCP/IP và mạng Internet.
Chương IV: Hệ điều hành mạng đặc điểm của hệ điều hành mạng.
Chương V: Một số vấn đề an toàn và bảo mật thông tin trên mạng máy tính.
Chương VI: Giới thiệu hệ điều hành Windows NT.
Chương VII: Giới thiệu hệ điều hành UNIX.
Trân trọng giới thiệu. 
', N'TH001.jpg', 4, 1, CAST(N'2002-07-16T00:00:00' AS SmallDateTime), 4, 0, NULL)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (17, N'Thủ Thuật Lập Trình Visual Basic 6 ', N'Cuốn', 18000.0000, N'Mục Lục:
Chương 1: Multimedia.
Chương 2: String.
Chương 3: Form.
Chương 4:Windows Control.
Chương 5: Common Control.
Chương 6: System.
Chương 7: Disk - File.
Chương 8: Graphics.
Chương 9: Internet.
Chương 10: Microsoft Office.
Chương 11: Database.
Chương 12: Clipboard.
Chương 13: Các vấn đề khác.
Phụ lục A: Giới thiệu một số ActiveX Control.
Phụ lục B: Một số tiện ích hỗ trợ lập trình Win32 API.
Phụ lục C: Một số vấn đề về đóng gói phần mềm.
Phụ lục D: Giới thiệu một số Website về Visual Basic.
Trân trọng giới thiệu. 
', N'TH001.jpg', 6, 7, CAST(N'2004-09-11T00:00:00' AS SmallDateTime), 5, 0, NULL)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (18, N'Lập Trình Mạng Trên Windows (Ấn bản dành cho sinh viên) ', N'Cuốn', 16800.0000, N'Chào mừng đến với "Lập Trình Mạng Trên Windows (Ấn bản dành cho sinh viên)". Quyển sách này sẽ hướng dẫn bạn sử dụng một cách hiệu quả bao gồm một số lượng lớn và đa dạng các hàm mạng sẵn có trong Windows 95, Windows 98, Windows NT 4, Windows CE, và Windows 2000/XP/. NET. Sách được chủ định viết dành cho những lập trình viên từ trung cấp đến cao cấp, tuy nhiên những lập trình viên mới bắt đầu tìm hiểu lập trình mạng cũng sẽ nhận thấy đây là một quyển sách không thể thiếu cho các bước xây dựng ứng dụng mạng sau này.
', N'TH001.jpg', 5, 5, CAST(N'2004-05-15T00:00:00' AS SmallDateTime), 8, 0, NULL)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (19, N'Căn Bản Về Photoshop CS Tinh Chỉnh Và Xử Lý Màu ', N'Cuốn', 25000.0000, N'"Căn Bản Về Photoshop CS Tinh Chỉnh Và Xử Lý Màu" gồm 12 chương:
Chương 1: Những điểm cơ bản.
Chương 2: Màu Photoshop.
Chương 3: Các tác vụ xử lý ảnh căn bản.
Chương 4: Các điểm cơ bản về pixel.
Chương 5: Các điểm cơ bản về lớp.
Chương 6: Làm việc với các công cụ chọn.
Chương 7: Ghép ảnh.
Chương 8: Làm việc với các palette History.
Chương 9: Các kỹ thuật điều chỉnh hình ảnh.
Chương 10: Chọn các màu.
Chương 11: Tô màu lại.
Chương 12: Làm việc với các công cụ tô vẽ.
Xin trân trọng giới thiệu. ', N'TH002.jpg', 1, 6, CAST(N'2004-08-16T00:00:00' AS SmallDateTime), 56, 0, NULL)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (20, N' Hướng Dẫn Sử Dụng Norton AntiVirus 2004 (Hướng dẫn bằng hình)  
 ', N'Cuốn', 16800.0000, N'"Hướng Dẫn Sử Dụng Norton AntiVirus 2004 (Hướng dẫn bằng hình)" bao gồm 6 phần, 23 chương:
Phần I: Bắt đầu với Norton AntiVirus 2004.
Chương 1: Bắt đầu với Norton AntiVirus 2004.
Chương 2: Cài đặt Norton System Works Professional.
Chương 3: Các điểm cơ bản về Norton AntiVirus 2004.
Chương 4: Các tùy chọn trong Norton SystemWorks.
Chương 5: Cải tiến sự trình duyệt Web và phục hồi đĩa cứng.
Chương 6: Duy trì tính bảo mật password và cập nhật với LiveUpdate.
Phần II: Làm việc với Norton AntiVirus 2004.
Chương 7: Bảo vệ đĩa, file và dữ liệu để tránh bị nhiễm Virus.
Chương 8: Những điều cần làm nếu phát hiện virus.
', N'TH002.jpg', 5, 7, CAST(N'2003-07-15T00:00:00' AS SmallDateTime), 4, 0, NULL)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (21, N'Tin Học Văn Phòng - Microsoft Word 2000 (Tái Bản Lần Thứ Nhất) ', N'Cuốn', 15600.0000, N' ', N'TH002.jpg', 2, 8, CAST(N'2003-02-11T00:00:00' AS SmallDateTime), 6, 0, NULL)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (22, N'Adobe Photoshop 6.0 và ImageReady 3.0 ', N'Cuốn', 21000.0000, N'Cuốn sách Adobe Photoshop 6.0 và ImageReady 3.0 này sẽ giúp bạn tìm hiểu những tính năng tuyệt vời của phiên bản 6.0, nó cũng là con đường ngắn nhất cho những người mới sử dụng Photoshop lần đầu. Với bạn đọc đã sử dụng cuốn sách "Adobe Photoshop 5.5 và ImageReady 2.0" do MK.PUB biên soạn trước đây, cuốn sách này là một cách cập nhật nhanh chóng nhất.
Adobe Photoshop 6.0 và ImageReady 3.0 gồm hai phần chính, đan xen nhau: 

Adobe Photoshop 6.0: trình bày các kỹ thuật xử lý ảnh cao cấp, các tính năng mới, giúp bạn tạo được các ảnh đẹp, rõ nét và mang tính mỹ thuật cao, hỗ trợ đắc lực cho các chương trình dàn trang và tách màu điện tử. Đặc biệt trong phiên bản này, để đáp ứng cho mong mỏi từ lâu của người dùng, các hình thể vector bắt đầu được đưa vào sử dụng trong môi trường Photoshop.

', N'TH002.jpg', 5, 5, CAST(N'2002-04-12T00:00:00' AS SmallDateTime), 8, 0, NULL)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (23, N'Hướng Dẫn Tự Học Photoshop CS (Photoshop 8.0) ', N'Cuốn', 25000.0000, N' ', N'TH003.jpg', 8, 4, CAST(N'2006-09-16T00:00:00' AS SmallDateTime), 9, 0, NULL)
INSERT [dbo].[SACH] ([Masach], [Tensach], [Donvitinh], [Dongia], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [Ngaycapnhat], [Soluongban], [solanxem], [moi]) VALUES (24, N'Tin Học Văn Phòng - Microsoft Excel 2000 (Tái Bản Lần Thứ Nhất)  
 
 
', N'Cuốn', 16800.0000, N'Cuốn sách này gồm những nội dung chính sau:
Chương 1: Giới thiệu
Chương 2: Soạn thảo văn bản
Chương 3: Trình bày Font chữ
Chương 4: Trình bày Paragraph
Chương 5: Trình bày trang in
Chương 6: Bảng biểu - Table
Chương 7: Cột chữ - Column
Chương 8: Hình vẽ
Chương 9: Microsoft Equation
Chương 10: Trình bày văn bản nhanh
Chương 11: Bài tập mẫu
Xin trân trọng giới thiệu. 
', N'TH003.jpg', 6, 5, CAST(N'2003-05-24T00:00:00' AS SmallDateTime), 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[SACH] OFF
SET IDENTITY_INSERT [dbo].[TACGIA] ON 

INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (1, N'Phạm Công Anh', N'197 Trần Hưng Đạo', N'98877668')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (2, N'Nguyễn Thế Giang', N'179 Chánh hưng - F.4 - Q.8 Tp.HCM', N'19001611')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (3, N'Lê Việt Nhân', N'45 Lý Thái Tổ-F2.Q.3 Tp.HCM', N'19001570')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (4, N'Hồng Phúc', N'', N'')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (5, N'Ks.Phạm Quang Huy', N'', N'')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (6, N'Nguyễn Bá Tiến', N'', N'')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (7, N'Phạm Hữu Khang', N'', N'')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (8, N'Nguyễn Minh Đức', NULL, NULL)
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (9, N'Trần Văn Lăng', NULL, NULL)
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (10, N'Quách Tuấn Ngọc', NULL, NULL)
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (11, N'Nguyễn Xuân Huy', NULL, NULL)
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (12, N'Đoàn Khắc Độ', NULL, NULL)
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (13, N'Nguyễn Tấn Tín', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'8504122')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (14, N'Phạm Phan Trung', N'124 Bắc Hải P.6 Q.TB', N'0918121188')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (15, N'TS. Nguyễn Phương Liên', N'', N'')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiachiTG], [DienthoaiTG]) VALUES (16, N'BS. Vũ Thị Uyên Thanh', N'', N'')
SET IDENTITY_INSERT [dbo].[TACGIA] OFF
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (1, 1, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (2, 24, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (3, 1, N'Đồng tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (3, 2, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (4, 1, N'Hiệu đính')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (5, 3, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (5, 4, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (5, 19, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (6, 3, N'Hiệu đính')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (6, 5, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (6, 11, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (7, 8, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (7, 14, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (8, 7, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (8, 20, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (10, 1, N'Chủ biên')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (10, 22, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (11, 10, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (11, 23, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (12, 5, N'Chủ biên')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (12, 15, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (13, 12, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (13, 21, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (14, 2, N'Đồng tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (14, 6, N'Sưu tầm và biên soạn')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (14, 16, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (14, 17, N'Chủ biên')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (15, 17, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (15, 18, N'Tác giả')
INSERT [dbo].[VIETSACH] ([MaTG], [Masach], [Vaitro]) VALUES (16, 13, N'Tác giả')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__4CF96558818B2CCA]    Script Date: 03/16/2018 9:09:55 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__A9D105347F5B6039]    Script Date: 03/16/2018 9:09:55 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTTHAMDO] ADD  DEFAULT ((0)) FOR [Solanbinhchon]
GO
ALTER TABLE [dbo].[DONDATHANG] ADD  DEFAULT ((0)) FOR [Dagiao]
GO
ALTER TABLE [dbo].[DONDATHANG] ADD  DEFAULT ((0)) FOR [HTThanhtoan]
GO
ALTER TABLE [dbo].[DONDATHANG] ADD  DEFAULT ((0)) FOR [HTGiaohang]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  DEFAULT ((1)) FOR [Gioitinh]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  DEFAULT ((0)) FOR [Daduyet]
GO
ALTER TABLE [dbo].[SACH] ADD  DEFAULT ('cu?n') FOR [Donvitinh]
GO
ALTER TABLE [dbo].[SACH] ADD  DEFAULT ((0)) FOR [solanxem]
GO
ALTER TABLE [dbo].[THAMDO] ADD  DEFAULT ((0)) FOR [Tongsobinhchon]
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDatHang_DonDatHang] FOREIGN KEY([SoDH])
REFERENCES [dbo].[DONDATHANG] ([SoDH])
GO
ALTER TABLE [dbo].[CTDATHANG] CHECK CONSTRAINT [FK_CTDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDatHang_Sach] FOREIGN KEY([SoDH])
REFERENCES [dbo].[SACH] ([Masach])
GO
ALTER TABLE [dbo].[CTDATHANG] CHECK CONSTRAINT [FK_CTDatHang_Sach]
GO
ALTER TABLE [dbo].[CTTHAMDO]  WITH CHECK ADD  CONSTRAINT [FK_CTThamDo_ThamDo] FOREIGN KEY([MaCH])
REFERENCES [dbo].[THAMDO] ([MaCH])
GO
ALTER TABLE [dbo].[CTTHAMDO] CHECK CONSTRAINT [FK_CTThamDo_ThamDo]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChuDe] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDE] ([MaCD])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_Sach_ChuDe]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NHAXUATBAN] ([MaNXB])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[VIETSACH]  WITH CHECK ADD  CONSTRAINT [FK_VietSach_Sach] FOREIGN KEY([Masach])
REFERENCES [dbo].[SACH] ([Masach])
GO
ALTER TABLE [dbo].[VIETSACH] CHECK CONSTRAINT [FK_VietSach_Sach]
GO
ALTER TABLE [dbo].[VIETSACH]  WITH CHECK ADD  CONSTRAINT [FK_VietSach_TacGia] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TACGIA] ([MaTG])
GO
ALTER TABLE [dbo].[VIETSACH] CHECK CONSTRAINT [FK_VietSach_TacGia]
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD CHECK  (([Trigia]>(0)))
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD CHECK  (([Soluongban]>(0)))
GO
/****** Object:  StoredProcedure [dbo].[chia]    Script Date: 03/16/2018 9:09:55 PM ******/
 
Insert into Admin values ('admin','123456','Dương Thành Phết')
Insert into Admin values ('user','654321','Mr Phết')