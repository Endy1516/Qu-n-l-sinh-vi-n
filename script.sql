USE [master]
GO
/****** Object:  Database [Quản lí sinh viên]    Script Date: 13/04/2024 10:08:48 SA ******/
CREATE DATABASE [Quản lí sinh viên]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Quản lí sinh viên', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.LACIA\MSSQL\DATA\Quản lí sinh viên.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Quản lí sinh viên_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.LACIA\MSSQL\DATA\Quản lí sinh viên_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Quản lí sinh viên] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quản lí sinh viên].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quản lí sinh viên] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quản lí sinh viên] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quản lí sinh viên] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Quản lí sinh viên] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quản lí sinh viên] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET RECOVERY FULL 
GO
ALTER DATABASE [Quản lí sinh viên] SET  MULTI_USER 
GO
ALTER DATABASE [Quản lí sinh viên] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quản lí sinh viên] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quản lí sinh viên] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quản lí sinh viên] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Quản lí sinh viên] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Quản lí sinh viên] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Quản lí sinh viên', N'ON'
GO
ALTER DATABASE [Quản lí sinh viên] SET QUERY_STORE = ON
GO
ALTER DATABASE [Quản lí sinh viên] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Quản lí sinh viên]
GO
USE [Quản lí sinh viên]
GO
/****** Object:  Sequence [dbo].[MaSinhvien]    Script Date: 13/04/2024 10:08:49 SA ******/
CREATE SEQUENCE [dbo].[MaSinhvien] 
 AS [bigint]
 START WITH 220
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 13/04/2024 10:08:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[Ngaytao] [datetime] NULL,
	[Nguoitao] [varchar](50) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Nguoicapnhat] [varchar](50) NULL,
	[MaMH] [int] IDENTITY(1,1) NOT NULL,
	[MaGV] [int] NOT NULL,
	[MaSV] [varchar](50) NOT NULL,
	[Solanhoc] [int] NOT NULL,
	[Diemlan1] [float] NULL,
	[Diemlan2] [float] NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC,
	[MaGV] ASC,
	[MaSV] ASC,
	[Solanhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemDanh]    Script Date: 13/04/2024 10:08:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemDanh](
	[ID] [int] NOT NULL,
	[MaSV] [int] NOT NULL,
	[LopHocID] [int] NOT NULL,
	[Ngay] [date] NOT NULL,
	[CoMat] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 13/04/2024 10:08:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[Ngaytao] [datetime] NULL,
	[Nguoitao] [varchar](50) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Nguoicapnhat] [varchar](50) NULL,
	[MaGV] [int] IDENTITY(1,1) NOT NULL,
	[Ho] [nvarchar](20) NOT NULL,
	[Tendem] [nvarchar](20) NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[Gioitinh] [tinyint] NULL,
	[Ngaysinh] [date] NULL,
	[Sdt] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Diachi] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 13/04/2024 10:08:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[Ngaytao] [datetime] NULL,
	[Nguoitao] [varchar](50) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Nguoicapnhat] [varchar](50) NULL,
	[MaMH] [int] IDENTITY(1,1) NOT NULL,
	[TenMH] [nvarchar](100) NOT NULL,
	[SoTC] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinhvien]    Script Date: 13/04/2024 10:08:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinhvien](
	[Ngaytao] [datetime] NULL,
	[Nguoitao] [varchar](50) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Nguoicapnhat] [varchar](50) NULL,
	[MaSV] [varchar](50) NOT NULL,
	[Ho] [nvarchar](20) NOT NULL,
	[Tendem] [nvarchar](20) NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[Ngaysinh] [date] NULL,
	[Gioitinh] [tinyint] NULL,
	[Quequan] [nvarchar](100) NULL,
	[Diachi] [nvarchar](100) NULL,
	[SDT] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_Sinhvien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 13/04/2024 10:08:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTK] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GiaoVien] ON 

INSERT [dbo].[GiaoVien] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaGV], [Ho], [Tendem], [Ten], [Gioitinh], [Ngaysinh], [Sdt], [Email], [Diachi]) VALUES (CAST(N'2024-04-06T04:07:48.500' AS DateTime), N'admin', CAST(N'2024-04-06T04:07:48.500' AS DateTime), N'admin', 7, N'Nguyễn', N'Hoàng', N'Nam', 1, CAST(N'1985-05-05' AS Date), N'0345234124', N'Hoangnam1985@gmail.com', N'Thủ dầu một Bình Dương')
INSERT [dbo].[GiaoVien] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaGV], [Ho], [Tendem], [Ten], [Gioitinh], [Ngaysinh], [Sdt], [Email], [Diachi]) VALUES (CAST(N'2024-04-06T04:07:48.510' AS DateTime), N'admin', CAST(N'2024-04-06T04:07:48.510' AS DateTime), N'admin', 8, N'Đặng', N'Trường', N'An', 1, CAST(N'1980-10-10' AS Date), N'0345234125', N'Truongan1980@gmail.com', N'Thủ dầu một Bình Dương')
INSERT [dbo].[GiaoVien] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaGV], [Ho], [Tendem], [Ten], [Gioitinh], [Ngaysinh], [Sdt], [Email], [Diachi]) VALUES (CAST(N'2024-04-06T04:07:48.510' AS DateTime), N'admin', CAST(N'2024-04-06T04:07:48.510' AS DateTime), N'admin', 9, N'Nguyễn', N'Hoàng', N'Quốc', 1, CAST(N'1987-03-05' AS Date), N'0345234126', N'Hoangquoc1987@gmail.com', N'Thủ dầu một Bình Dương')
INSERT [dbo].[GiaoVien] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaGV], [Ho], [Tendem], [Ten], [Gioitinh], [Ngaysinh], [Sdt], [Email], [Diachi]) VALUES (CAST(N'2024-04-06T04:07:48.510' AS DateTime), N'admin', CAST(N'2024-04-06T04:07:48.510' AS DateTime), N'admin', 10, N'Lê', N'Thị Tuyết', N'Linh', 1, CAST(N'1992-05-03' AS Date), N'0345234127', N'Tuyetlinh1992@gmail.com', N'Thủ dầu một Bình Dương')
SET IDENTITY_INSERT [dbo].[GiaoVien] OFF
GO
SET IDENTITY_INSERT [dbo].[MonHoc] ON 

INSERT [dbo].[MonHoc] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaMH], [TenMH], [SoTC]) VALUES (CAST(N'2024-04-13T03:24:42.680' AS DateTime), N'admin', CAST(N'2024-04-13T03:24:42.680' AS DateTime), N'admin', 1, N'Nhập môn CNTT', 2)
INSERT [dbo].[MonHoc] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaMH], [TenMH], [SoTC]) VALUES (CAST(N'2024-04-13T03:24:42.683' AS DateTime), N'admin', CAST(N'2024-04-13T03:24:42.683' AS DateTime), N'admin', 2, N'Cơ sở lập trình', 2)
INSERT [dbo].[MonHoc] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaMH], [TenMH], [SoTC]) VALUES (CAST(N'2024-04-13T03:24:42.683' AS DateTime), N'admin', CAST(N'2024-04-13T03:24:42.683' AS DateTime), N'admin', 3, N'Kĩ thuật lập trình', 2)
INSERT [dbo].[MonHoc] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaMH], [TenMH], [SoTC]) VALUES (CAST(N'2024-04-13T03:24:42.683' AS DateTime), N'admin', CAST(N'2024-04-13T03:24:42.683' AS DateTime), N'admin', 4, N'Cấu trúc dữ liệu và giải thuật', 3)
INSERT [dbo].[MonHoc] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaMH], [TenMH], [SoTC]) VALUES (CAST(N'2024-04-13T03:24:42.683' AS DateTime), N'admin', CAST(N'2024-04-13T03:24:42.683' AS DateTime), N'admin', 5, N'Lập trình hướng đối tượng', 3)
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
GO
INSERT [dbo].[Sinhvien] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaSV], [Ho], [Tendem], [Ten], [Ngaysinh], [Gioitinh], [Quequan], [Diachi], [SDT], [Email]) VALUES (CAST(N'2024-04-13T03:43:52.423' AS DateTime), N'admin', CAST(N'2024-04-13T03:43:52.423' AS DateTime), N'admin', N'D22221', N'Nguyễn', N'Văn', N'Lộc', CAST(N'2004-12-04' AS Date), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sinhvien] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaSV], [Ho], [Tendem], [Ten], [Ngaysinh], [Gioitinh], [Quequan], [Diachi], [SDT], [Email]) VALUES (CAST(N'2024-04-13T03:44:44.967' AS DateTime), N'admin', CAST(N'2024-04-13T03:44:44.967' AS DateTime), N'admin', N'D22222', N'Nguyễn', N'Văn', N'Linh', CAST(N'2004-07-04' AS Date), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sinhvien] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaSV], [Ho], [Tendem], [Ten], [Ngaysinh], [Gioitinh], [Quequan], [Diachi], [SDT], [Email]) VALUES (CAST(N'2024-04-13T03:45:10.547' AS DateTime), N'admin', CAST(N'2024-04-13T03:45:10.547' AS DateTime), N'admin', N'D22223', N'Lê', N'Thị Tuyết', N'Linh', CAST(N'2004-06-04' AS Date), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sinhvien] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaSV], [Ho], [Tendem], [Ten], [Ngaysinh], [Gioitinh], [Quequan], [Diachi], [SDT], [Email]) VALUES (CAST(N'2024-04-13T03:45:41.887' AS DateTime), N'admin', CAST(N'2024-04-13T03:45:41.887' AS DateTime), N'admin', N'D22224', N'Võ', N'Ngọc Quỳnh', N'Như', CAST(N'2004-04-04' AS Date), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sinhvien] ([Ngaytao], [Nguoitao], [Ngaycapnhat], [Nguoicapnhat], [MaSV], [Ho], [Tendem], [Ten], [Ngaysinh], [Gioitinh], [Quequan], [Diachi], [SDT], [Email]) VALUES (CAST(N'2024-04-13T03:46:22.290' AS DateTime), N'admin', CAST(N'2024-04-13T03:46:22.290' AS DateTime), N'admin', N'D22225', N'Lê', N'Văn', N'Nam', CAST(N'2004-05-04' AS Date), 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [Password]) VALUES (N'admin', N'admin')
GO
ALTER TABLE [dbo].[Diem] ADD  CONSTRAINT [DF_Diem_Ngaytao]  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[Diem] ADD  CONSTRAINT [DF_Diem_Nguoitao]  DEFAULT ('admin') FOR [Nguoitao]
GO
ALTER TABLE [dbo].[Diem] ADD  CONSTRAINT [DF_Diem_Ngaycapnhat]  DEFAULT (getdate()) FOR [Ngaycapnhat]
GO
ALTER TABLE [dbo].[Diem] ADD  CONSTRAINT [DF_Diem_Nguoicapnhat]  DEFAULT ('admin') FOR [Nguoicapnhat]
GO
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF_GiaoVien_Ngaytao]  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF_GiaoVien_Nguoitao]  DEFAULT ('admin') FOR [Nguoitao]
GO
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF_GiaoVien_Ngaycapnhat]  DEFAULT (getdate()) FOR [Ngaycapnhat]
GO
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF_GiaoVien_Nguoicapnhat]  DEFAULT ('admin') FOR [Nguoicapnhat]
GO
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF_MonHoc_Ngaytao]  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF_MonHoc_Nguoitao]  DEFAULT ('admin') FOR [Nguoitao]
GO
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF_MonHoc_Ngaycapnhat]  DEFAULT (getdate()) FOR [Ngaycapnhat]
GO
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF_MonHoc_Nguoicapnhat]  DEFAULT ('admin') FOR [Nguoicapnhat]
GO
ALTER TABLE [dbo].[Sinhvien] ADD  CONSTRAINT [DF_Sinhvien_Ngaytao]  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[Sinhvien] ADD  CONSTRAINT [DF_Sinhvien_Nguoitao]  DEFAULT ('admin') FOR [Nguoitao]
GO
ALTER TABLE [dbo].[Sinhvien] ADD  CONSTRAINT [DF_Sinhvien_Ngaycapnhat]  DEFAULT (getdate()) FOR [Ngaycapnhat]
GO
ALTER TABLE [dbo].[Sinhvien] ADD  CONSTRAINT [DF_Sinhvien_Nguoicapnhat]  DEFAULT ('admin') FOR [Nguoicapnhat]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_GiaoVien]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_MonHoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_MonHoc]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_Sinhvien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[Sinhvien] ([MaSV])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_Sinhvien]
GO
/****** Object:  StoredProcedure [dbo].[SelectallSinhvien]    Script Date: 13/04/2024 10:08:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SelectallSinhvien]
As
select 
MaSV,
	case
		when Len(Tendem) > 0 then
		CONCAT(Ho,' ',Tendem,' ',Ten)
		else CONCAT(Ho,' ',Ten)
		end as hoten,
		convert (varchar(10), ngaysinh,103) as ngaysinh,
	case
		when Gioitinh = 1 then N'Nam'
		else N'Nữ'
		end as gioitinh, 
Quequan,
Diachi,
SDT,
Email
from Sinhvien
Go;
GO
USE [master]
GO
ALTER DATABASE [Quản lí sinh viên] SET  READ_WRITE 
GO
