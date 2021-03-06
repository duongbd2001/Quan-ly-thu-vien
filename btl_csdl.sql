USE [master]
GO
/****** Object:  Database [btl_csdl]    Script Date: 5/1/2022 9:23:30 AM ******/
CREATE DATABASE [btl_csdl]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'btl_csdl', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\btl_csdl.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'btl_csdl_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\btl_csdl_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [btl_csdl] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [btl_csdl].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [btl_csdl] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [btl_csdl] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [btl_csdl] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [btl_csdl] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [btl_csdl] SET ARITHABORT OFF 
GO
ALTER DATABASE [btl_csdl] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [btl_csdl] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [btl_csdl] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [btl_csdl] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [btl_csdl] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [btl_csdl] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [btl_csdl] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [btl_csdl] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [btl_csdl] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [btl_csdl] SET  DISABLE_BROKER 
GO
ALTER DATABASE [btl_csdl] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [btl_csdl] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [btl_csdl] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [btl_csdl] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [btl_csdl] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [btl_csdl] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [btl_csdl] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [btl_csdl] SET RECOVERY FULL 
GO
ALTER DATABASE [btl_csdl] SET  MULTI_USER 
GO
ALTER DATABASE [btl_csdl] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [btl_csdl] SET DB_CHAINING OFF 
GO
ALTER DATABASE [btl_csdl] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [btl_csdl] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [btl_csdl] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [btl_csdl] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'btl_csdl', N'ON'
GO
ALTER DATABASE [btl_csdl] SET QUERY_STORE = OFF
GO
USE [btl_csdl]
GO
/****** Object:  Table [dbo].[chi_tiet_phieu_muon]    Script Date: 5/1/2022 9:23:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_phieu_muon](
	[id_phieu] [int] NOT NULL,
	[id_sach] [int] NOT NULL,
	[so_luong] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoi_doc]    Script Date: 5/1/2022 9:23:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoi_doc](
	[id_nguoi_doc] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[ngay_sinh] [nchar](10) NULL,
	[dia_chi] [nvarchar](50) NULL,
	[sđt] [varchar](12) NULL,
	[email] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nguoi_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieu_muon]    Script Date: 5/1/2022 9:23:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieu_muon](
	[id_phieu] [int] IDENTITY(1,1) NOT NULL,
	[id_thu_thu] [int] NULL,
	[id_nguoi_doc] [int] NULL,
	[tien_coc] [int] NULL,
	[ngay_muon] [varchar](10) NULL,
	[ngay_tra] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_phieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sach]    Script Date: 5/1/2022 9:23:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach](
	[id_sach] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[tac_gia] [nvarchar](50) NULL,
	[the_loai] [nvarchar](50) NULL,
	[NXB] [nvarchar](50) NULL,
	[so_luong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thu_thu]    Script Date: 5/1/2022 9:23:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thu_thu](
	[id_thu_thu] [int] IDENTITY(1,1) NOT NULL,
	[ten] [varchar](40) NULL,
	[sđt] [varchar](12) NULL,
	[ngay_sinh] [varchar](10) NULL,
	[dia_chi] [varchar](40) NULL,
	[email] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_thu_thu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 5/1/2022 9:23:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[id] [int] NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chi_tiet_phieu_muon]  WITH CHECK ADD FOREIGN KEY([id_phieu])
REFERENCES [dbo].[phieu_muon] ([id_phieu])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_muon]  WITH CHECK ADD FOREIGN KEY([id_sach])
REFERENCES [dbo].[sach] ([id_sach])
GO
ALTER TABLE [dbo].[phieu_muon]  WITH CHECK ADD FOREIGN KEY([id_nguoi_doc])
REFERENCES [dbo].[nguoi_doc] ([id_nguoi_doc])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[phieu_muon]  WITH CHECK ADD FOREIGN KEY([id_thu_thu])
REFERENCES [dbo].[Thu_thu] ([id_thu_thu])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [btl_csdl] SET  READ_WRITE 
GO
