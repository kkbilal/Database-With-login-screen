USE [master]
GO
/****** Object:  Database [Sirket DB]    Script Date: 22.05.2023 17:44:10 ******/
CREATE DATABASE [Sirket DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sirket database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Sirket database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sirket database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Sirket database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Sirket DB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sirket DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sirket DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sirket DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sirket DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sirket DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sirket DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sirket DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sirket DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sirket DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sirket DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sirket DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sirket DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sirket DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sirket DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sirket DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sirket DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sirket DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sirket DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sirket DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sirket DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sirket DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sirket DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sirket DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sirket DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sirket DB] SET  MULTI_USER 
GO
ALTER DATABASE [Sirket DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sirket DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sirket DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sirket DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sirket DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sirket DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Sirket DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [Sirket DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Sirket DB]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 22.05.2023 17:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[yoneticiadi] [varchar](50) NOT NULL,
	[yoneticisifre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[birim]    Script Date: 22.05.2023 17:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[birim](
	[birim_no] [int] IDENTITY(1,1) NOT NULL,
	[birim_ad] [varchar](20) NOT NULL,
 CONSTRAINT [PK__birim__09A4AFDCD3787C3A] PRIMARY KEY CLUSTERED 
(
	[birim_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cocuk]    Script Date: 22.05.2023 17:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cocuk](
	[cocuk_no] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](25) NOT NULL,
	[soyad] [varchar](25) NOT NULL,
	[cinsiyet] [char](1) NOT NULL,
	[dogum_tarihi] [date] NOT NULL,
	[dogu_yeri] [int] NOT NULL,
	[personel_no] [int] NOT NULL,
 CONSTRAINT [PK__cocuk__0B900185D8800BE6] PRIMARY KEY CLUSTERED 
(
	[cocuk_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gorevlendirme]    Script Date: 22.05.2023 17:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gorevlendirme](
	[gorevlendirme_no] [int] IDENTITY(1,1) NOT NULL,
	[proje_no] [int] NOT NULL,
	[personel_no] [int] NOT NULL,
 CONSTRAINT [PK__gorevlen__DC6F46D86EDE809E] PRIMARY KEY CLUSTERED 
(
	[gorevlendirme_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[il]    Script Date: 22.05.2023 17:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[il](
	[il_no] [char](2) NOT NULL,
	[il_ad] [varchar](20) NOT NULL,
 CONSTRAINT [PK__il__ACA8AD707EAAC82A] PRIMARY KEY CLUSTERED 
(
	[il_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilce]    Script Date: 22.05.2023 17:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilce](
	[ilce_no] [int] IDENTITY(1,1) NOT NULL,
	[ilce_ad] [varchar](20) NOT NULL,
	[il_no] [char](2) NOT NULL,
 CONSTRAINT [PK__ilce__441DEE1B6CB7C61E] PRIMARY KEY CLUSTERED 
(
	[ilce_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personel]    Script Date: 22.05.2023 17:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personel](
	[personel_no] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](25) NOT NULL,
	[soyad] [varchar](25) NOT NULL,
	[cinsiyet] [char](1) NOT NULL,
	[dogum_tarihi] [date] NOT NULL,
	[dogum_yeri] [int] NOT NULL,
	[baslama_tarihi] [date] NOT NULL,
	[birim_no] [int] NOT NULL,
	[unvan_no] [int] NOT NULL,
	[calisma_saati] [tinyint] NOT NULL,
	[maas] [money] NOT NULL,
	[prim] [money] NOT NULL,
 CONSTRAINT [PK__personel__48A636E4B1A9C8EE] PRIMARY KEY CLUSTERED 
(
	[personel_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proje]    Script Date: 22.05.2023 17:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proje](
	[proje_no] [int] IDENTITY(1,1) NOT NULL,
	[proje_ad] [varchar](20) NOT NULL,
	[baslama_tarihi] [date] NOT NULL,
	[planlanan_bitis_tarihi] [date] NOT NULL,
 CONSTRAINT [PK__proje__5188B8C92E0F400C] PRIMARY KEY CLUSTERED 
(
	[proje_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unvan]    Script Date: 22.05.2023 17:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unvan](
	[unvan_no] [int] IDENTITY(1,1) NOT NULL,
	[unvan_ad] [varchar](20) NOT NULL,
 CONSTRAINT [PK__unvan__EB1947C7D9EE62B0] PRIMARY KEY CLUSTERED 
(
	[unvan_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [yoneticiadi], [yoneticisifre]) VALUES (1, N'admin', N'12345')
INSERT [dbo].[admin] ([id], [yoneticiadi], [yoneticisifre]) VALUES (2, N'bilal', N'bilal123')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[birim] ON 

INSERT [dbo].[birim] ([birim_no], [birim_ad]) VALUES (3, N'ARGE')
INSERT [dbo].[birim] ([birim_no], [birim_ad]) VALUES (2, N'İDARİ')
INSERT [dbo].[birim] ([birim_no], [birim_ad]) VALUES (1, N'KALİTE')
INSERT [dbo].[birim] ([birim_no], [birim_ad]) VALUES (4, N'TEKNİK')
SET IDENTITY_INSERT [dbo].[birim] OFF
GO
SET IDENTITY_INSERT [dbo].[gorevlendirme] ON 

INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (1, 1, 3)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (2, 1, 5)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (3, 1, 7)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (4, 1, 8)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (5, 1, 11)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (6, 2, 1)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (7, 2, 3)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (8, 2, 5)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (9, 2, 10)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (10, 2, 12)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (11, 2, 13)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (12, 3, 3)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (13, 3, 4)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (14, 3, 9)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (15, 3, 15)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (16, 3, 19)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (17, 3, 21)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (18, 3, 25)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (19, 3, 27)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (20, 4, 2)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (21, 4, 3)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (22, 4, 8)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (23, 4, 10)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (24, 4, 20)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (25, 4, 27)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (26, 5, 3)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (27, 5, 5)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (28, 5, 11)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (29, 5, 21)
INSERT [dbo].[gorevlendirme] ([gorevlendirme_no], [proje_no], [personel_no]) VALUES (30, 5, 26)
SET IDENTITY_INSERT [dbo].[gorevlendirme] OFF
GO
INSERT [dbo].[il] ([il_no], [il_ad]) VALUES (N'06', N'ANKARA')
INSERT [dbo].[il] ([il_no], [il_ad]) VALUES (N'34', N'İSTANBUL')
INSERT [dbo].[il] ([il_no], [il_ad]) VALUES (N'35', N'İZMİR')
GO
SET IDENTITY_INSERT [dbo].[ilce] ON 

INSERT [dbo].[ilce] ([ilce_no], [ilce_ad], [il_no]) VALUES (4, N'AVCILAR', N'34')
INSERT [dbo].[ilce] ([ilce_no], [ilce_ad], [il_no]) VALUES (5, N'BEYLİKDÜZÜ', N'34')
INSERT [dbo].[ilce] ([ilce_no], [ilce_ad], [il_no]) VALUES (7, N'BUCA', N'35')
INSERT [dbo].[ilce] ([ilce_no], [ilce_ad], [il_no]) VALUES (1, N'ÇANKAYA', N'06')
INSERT [dbo].[ilce] ([ilce_no], [ilce_ad], [il_no]) VALUES (6, N'ESENYURT', N'34')
INSERT [dbo].[ilce] ([ilce_no], [ilce_ad], [il_no]) VALUES (8, N'KARŞIYAKA', N'35')
INSERT [dbo].[ilce] ([ilce_no], [ilce_ad], [il_no]) VALUES (9, N'KONAK', N'35')
INSERT [dbo].[ilce] ([ilce_no], [ilce_ad], [il_no]) VALUES (2, N'POLATLI', N'06')
INSERT [dbo].[ilce] ([ilce_no], [ilce_ad], [il_no]) VALUES (3, N'YENİMAHALLE', N'06')
SET IDENTITY_INSERT [dbo].[ilce] OFF
GO
SET IDENTITY_INSERT [dbo].[personel] ON 

INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (1, N'Ahmet Ali', N'EKİNCİ', N'E', CAST(N'1985-03-25' AS Date), 2, CAST(N'2002-03-01' AS Date), 1, 1, 35, 2500.0000, 4500000.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (2, N'Burak', N'TURHAN', N'E', CAST(N'1980-04-15' AS Date), 3, CAST(N'2002-05-03' AS Date), 2, 2, 30, 2800.0000, 250.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (3, N'Ceyda', N'SAKARYA', N'K', CAST(N'1983-03-23' AS Date), 7, CAST(N'2005-05-12' AS Date), 2, 3, 30, 3000.0000, 250.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (4, N'Demet Naz', N'ÇOLAK', N'K', CAST(N'1982-05-05' AS Date), 5, CAST(N'2005-06-17' AS Date), 3, 3, 40, 2800.0000, 350.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (5, N'Evrim', N'ÇITAK', N'K', CAST(N'1987-12-05' AS Date), 1, CAST(N'2000-01-12' AS Date), 2, 1, 30, 4500.0000, 500.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (7, N'Galip', N'TANAR', N'E', CAST(N'1983-02-28' AS Date), 9, CAST(N'1997-05-07' AS Date), 1, 2, 35, 5200.0000, 450.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (8, N'Emir', N'YANIK', N'E', CAST(N'1975-05-07' AS Date), 2, CAST(N'2010-07-17' AS Date), 2, 2, 45, 4500.0000, 450.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (9, N'Ilgın', N'ACI', N'E', CAST(N'1974-05-01' AS Date), 2, CAST(N'2000-08-18' AS Date), 3, 2, 40, 4200.0000, 400.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (10, N'İskender', N'TAŞ', N'E', CAST(N'1974-07-02' AS Date), 7, CAST(N'1995-09-05' AS Date), 4, 1, 40, 4400.0000, 400.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (11, N'Jale', N'CAN', N'K', CAST(N'1976-09-18' AS Date), 5, CAST(N'1998-10-12' AS Date), 2, 2, 45, 3250.0000, 450.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (12, N'Kamil', N'ALBAYRAK', N'E', CAST(N'1976-08-19' AS Date), 9, CAST(N'2000-11-25' AS Date), 1, 2, 30, 5200.0000, 250.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (13, N'Leman', N'HASKIRIŞ', N'K', CAST(N'1978-09-20' AS Date), 6, CAST(N'1999-10-27' AS Date), 1, 2, 35, 4200.0000, 350.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (14, N'Meltem', N'UYSAL', N'K', CAST(N'1985-08-04' AS Date), 6, CAST(N'2000-05-27' AS Date), 1, 2, 30, 2500.0000, 100.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (15, N'Necati', N'UYSAL', N'E', CAST(N'1990-12-01' AS Date), 4, CAST(N'2000-03-06' AS Date), 2, 1, 30, 2000.0000, 150.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (16, N'Osman', N'UYSAL', N'E', CAST(N'1982-02-15' AS Date), 6, CAST(N'1995-05-12' AS Date), 4, 3, 30, 4800.0000, 150.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (17, N'Ömer', N'BUZDAĞ', N'E', CAST(N'1980-10-30' AS Date), 5, CAST(N'2001-08-10' AS Date), 1, 2, 40, 4800.0000, 400.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (19, N'Ramiz', N'ÇAKIR', N'E', CAST(N'1981-11-19' AS Date), 7, CAST(N'2001-07-30' AS Date), 4, 3, 30, 2700.0000, 300.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (20, N'Sertaç', N'KÖSEDAĞ', N'E', CAST(N'1981-12-20' AS Date), 9, CAST(N'2002-12-20' AS Date), 3, 2, 30, 2900.0000, 350.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (21, N'Şefik', N'ÇAPANOĞLU', N'E', CAST(N'1982-02-20' AS Date), 6, CAST(N'1998-05-25' AS Date), 3, 3, 30, 4800.0000, 200.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (22, N'Taner', N'BOZOKLU', N'E', CAST(N'1983-07-21' AS Date), 5, CAST(N'2005-09-05' AS Date), 1, 2, 30, 3000.0000, 200.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (23, N'Utku', N'DUMAN', N'E', CAST(N'1975-06-13' AS Date), 6, CAST(N'2005-03-05' AS Date), 1, 3, 30, 2800.0000, 200.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (24, N'Ümit', N'ŞİRİN', N'E', CAST(N'1978-04-02' AS Date), 7, CAST(N'1998-04-04' AS Date), 2, 2, 35, 3300.0000, 250.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (25, N'Veysel', N'ERTÜZÜN', N'E', CAST(N'1980-07-03' AS Date), 3, CAST(N'2002-07-18' AS Date), 4, 3, 35, 3100.0000, 300.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (26, N'Yakup', N'GÖKÇE', N'E', CAST(N'1975-06-18' AS Date), 2, CAST(N'2002-03-25' AS Date), 4, 3, 35, 3100.0000, 450.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (27, N'Zeliha', N'CANİŞ', N'K', CAST(N'1978-03-03' AS Date), 5, CAST(N'2005-08-13' AS Date), 1, 3, 40, 2500.0000, 500.0000)
INSERT [dbo].[personel] ([personel_no], [ad], [soyad], [cinsiyet], [dogum_tarihi], [dogum_yeri], [baslama_tarihi], [birim_no], [unvan_no], [calisma_saati], [maas], [prim]) VALUES (29, N'Bilal', N'KARAGÜN', N'E', CAST(N'2002-06-09' AS Date), 2, CAST(N'2022-02-03' AS Date), 1, 1, 35, 4000.0000, 300.0000)
SET IDENTITY_INSERT [dbo].[personel] OFF
GO
SET IDENTITY_INSERT [dbo].[proje] ON 

INSERT [dbo].[proje] ([proje_no], [proje_ad], [baslama_tarihi], [planlanan_bitis_tarihi]) VALUES (1, N'TEMİZ DÜNYA', CAST(N'2015-01-20' AS Date), CAST(N'2017-01-11' AS Date))
INSERT [dbo].[proje] ([proje_no], [proje_ad], [baslama_tarihi], [planlanan_bitis_tarihi]) VALUES (2, N'GÜVENLİ INTERNET', CAST(N'2017-05-15' AS Date), CAST(N'2020-06-09' AS Date))
INSERT [dbo].[proje] ([proje_no], [proje_ad], [baslama_tarihi], [planlanan_bitis_tarihi]) VALUES (3, N'MUTLU ŞEHİR', CAST(N'2017-07-11' AS Date), CAST(N'2019-11-29' AS Date))
INSERT [dbo].[proje] ([proje_no], [proje_ad], [baslama_tarihi], [planlanan_bitis_tarihi]) VALUES (4, N'AKILLI EVLER', CAST(N'2018-02-10' AS Date), CAST(N'2021-11-29' AS Date))
INSERT [dbo].[proje] ([proje_no], [proje_ad], [baslama_tarihi], [planlanan_bitis_tarihi]) VALUES (5, N'SESSİZ ORTAM', CAST(N'2018-03-01' AS Date), CAST(N'2019-11-29' AS Date))
SET IDENTITY_INSERT [dbo].[proje] OFF
GO
SET IDENTITY_INSERT [dbo].[unvan] ON 

INSERT [dbo].[unvan] ([unvan_no], [unvan_ad]) VALUES (2, N'İK UZMANI')
INSERT [dbo].[unvan] ([unvan_no], [unvan_ad]) VALUES (1, N'MÜHENDİS')
INSERT [dbo].[unvan] ([unvan_no], [unvan_ad]) VALUES (3, N'TEKNİSYEN')
SET IDENTITY_INSERT [dbo].[unvan] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__birim__09A4B74CB69B0756]    Script Date: 22.05.2023 17:44:10 ******/
ALTER TABLE [dbo].[birim] ADD  CONSTRAINT [UQ__birim__09A4B74CB69B0756] UNIQUE NONCLUSTERED 
(
	[birim_ad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__cocuk__DEC82C45B463EF2D]    Script Date: 22.05.2023 17:44:10 ******/
ALTER TABLE [dbo].[cocuk] ADD  CONSTRAINT [UQ__cocuk__DEC82C45B463EF2D] UNIQUE NONCLUSTERED 
(
	[dogum_tarihi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [projePersonelTekil]    Script Date: 22.05.2023 17:44:10 ******/
ALTER TABLE [dbo].[gorevlendirme] ADD  CONSTRAINT [projePersonelTekil] UNIQUE NONCLUSTERED 
(
	[proje_no] ASC,
	[personel_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__il__ACA87A34BBE58525]    Script Date: 22.05.2023 17:44:10 ******/
ALTER TABLE [dbo].[il] ADD  CONSTRAINT [UQ__il__ACA87A34BBE58525] UNIQUE NONCLUSTERED 
(
	[il_ad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ilceTekil]    Script Date: 22.05.2023 17:44:10 ******/
ALTER TABLE [dbo].[ilce] ADD  CONSTRAINT [ilceTekil] UNIQUE NONCLUSTERED 
(
	[ilce_ad] ASC,
	[il_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__proje__518BD245DBB3F286]    Script Date: 22.05.2023 17:44:10 ******/
ALTER TABLE [dbo].[proje] ADD  CONSTRAINT [UQ__proje__518BD245DBB3F286] UNIQUE NONCLUSTERED 
(
	[proje_ad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__unvan__EB18F55A9F175922]    Script Date: 22.05.2023 17:44:10 ******/
ALTER TABLE [dbo].[unvan] ADD  CONSTRAINT [UQ__unvan__EB18F55A9F175922] UNIQUE NONCLUSTERED 
(
	[unvan_ad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[personel] ADD  CONSTRAINT [DF__personel__prim__4CA06362]  DEFAULT ((0)) FOR [prim]
GO
ALTER TABLE [dbo].[cocuk]  WITH CHECK ADD  CONSTRAINT [FK__cocuk__dogu_yeri__5070F446] FOREIGN KEY([dogu_yeri])
REFERENCES [dbo].[ilce] ([ilce_no])
GO
ALTER TABLE [dbo].[cocuk] CHECK CONSTRAINT [FK__cocuk__dogu_yeri__5070F446]
GO
ALTER TABLE [dbo].[cocuk]  WITH CHECK ADD  CONSTRAINT [FK__cocuk__personel___5165187F] FOREIGN KEY([personel_no])
REFERENCES [dbo].[personel] ([personel_no])
GO
ALTER TABLE [dbo].[cocuk] CHECK CONSTRAINT [FK__cocuk__personel___5165187F]
GO
ALTER TABLE [dbo].[gorevlendirme]  WITH CHECK ADD  CONSTRAINT [FK__gorevlend__perso__5629CD9C] FOREIGN KEY([personel_no])
REFERENCES [dbo].[personel] ([personel_no])
GO
ALTER TABLE [dbo].[gorevlendirme] CHECK CONSTRAINT [FK__gorevlend__perso__5629CD9C]
GO
ALTER TABLE [dbo].[gorevlendirme]  WITH CHECK ADD  CONSTRAINT [FK__gorevlend__proje__5535A963] FOREIGN KEY([proje_no])
REFERENCES [dbo].[proje] ([proje_no])
GO
ALTER TABLE [dbo].[gorevlendirme] CHECK CONSTRAINT [FK__gorevlend__proje__5535A963]
GO
ALTER TABLE [dbo].[ilce]  WITH CHECK ADD  CONSTRAINT [FK__ilce__il_no__440B1D61] FOREIGN KEY([il_no])
REFERENCES [dbo].[il] ([il_no])
GO
ALTER TABLE [dbo].[ilce] CHECK CONSTRAINT [FK__ilce__il_no__440B1D61]
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD  CONSTRAINT [FK__personel__birim___4AB81AF0] FOREIGN KEY([birim_no])
REFERENCES [dbo].[birim] ([birim_no])
GO
ALTER TABLE [dbo].[personel] CHECK CONSTRAINT [FK__personel__birim___4AB81AF0]
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD  CONSTRAINT [FK__personel__dogum___49C3F6B7] FOREIGN KEY([dogum_yeri])
REFERENCES [dbo].[ilce] ([ilce_no])
GO
ALTER TABLE [dbo].[personel] CHECK CONSTRAINT [FK__personel__dogum___49C3F6B7]
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD  CONSTRAINT [FK__personel__unvan___4BAC3F29] FOREIGN KEY([unvan_no])
REFERENCES [dbo].[unvan] ([unvan_no])
GO
ALTER TABLE [dbo].[personel] CHECK CONSTRAINT [FK__personel__unvan___4BAC3F29]
GO
USE [master]
GO
ALTER DATABASE [Sirket DB] SET  READ_WRITE 
GO
