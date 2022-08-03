USE [master]
GO
DROP DATABASE [MotelDB]
GO
/****** Object:  Database [MotelDB]    Script Date: 8/2/2022 10:37:49 PM ******/
CREATE DATABASE [MotelDB]
GO
ALTER DATABASE [MotelDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MotelDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MotelDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MotelDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MotelDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MotelDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MotelDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MotelDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MotelDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MotelDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MotelDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MotelDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MotelDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MotelDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MotelDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MotelDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MotelDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MotelDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MotelDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MotelDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MotelDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MotelDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MotelDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MotelDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MotelDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MotelDB] SET  MULTI_USER 
GO
ALTER DATABASE [MotelDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MotelDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MotelDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MotelDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MotelDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MotelDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MotelDB', N'ON'
GO
ALTER DATABASE [MotelDB] SET QUERY_STORE = OFF
GO
USE [MotelDB]
GO
/****** Object:  Table [dbo].[tblBooking]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBooking](
	[BookingID] [varchar](10) NOT NULL,
	[BookingDate] [datetime] NULL,
	[Desct] [nvarchar](1500) NULL,
	[Total] [decimal](10, 0) NULL,
	[Status] [int] NULL,
	[UserID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBookingDetail]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBookingDetail](
	[BookingDetailID] [varchar](10) NOT NULL,
	[RoomID] [varchar](10) NOT NULL,
	[BookingID] [varchar](10) NOT NULL,
	[Time] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBookingServiceDetail]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBookingServiceDetail](
	[BookingSeviceDetailID] [varchar](10) NOT NULL,
	[ServiceID] [varchar](10) NOT NULL,
	[BookingID] [varchar](10) NOT NULL,
	[Quantity] [int] NULL,
	[Total] [decimal](10, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingSeviceDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCity](
	[CityID] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDistrict]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDistrict](
	[DistrictID] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CityID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFeedBack]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFeedBack](
	[FeedbackID] [varchar](10) NOT NULL,
	[Desct] [nvarchar](1500) NULL,
	[Ratings] [decimal](2, 1) NULL,
	[MotelID] [varchar](10) NOT NULL,
	[BookingID] [varchar](10) NOT NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMotel]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMotel](
	[MotelID] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [varchar](10) NULL,
	[Desct] [nvarchar](max) NULL,
	[Image] [nvarchar](1000) NULL,
	[Address] [nvarchar](200) NULL,
	[DistrictID] [varchar](10) NOT NULL,
	[Ratings] [decimal](2, 1) NULL,
	[OwnerID] [varchar](10) NOT NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MotelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNotification]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotification](
	[AnnouncementID] [varchar](10) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Desct] [nvarchar](1500) NULL,
	[Date] [date] NULL,
	[OwnerID] [varchar](10) NOT NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnnouncementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPayment]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPayment](
	[PaymentID] [varchar](10) NOT NULL,
	[Desct] [nvarchar](1500) NULL,
	[PaymentTime] [date] NULL,
	[Sender] [nvarchar](50) NULL,
	[Receiver] [nvarchar](50) NULL,
	[PaymentTypeName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport](
	[ReportID] [varchar](10) NOT NULL,
	[UserID] [varchar](10) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Desct] [nvarchar](1500) NULL,
	[Date] [date] NULL,
	[Status] [int] NULL,
	[MotelID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoom]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoom](
	[RoomID] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[RoomTypeID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoomType]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoomType](
	[RoomTypeID] [varchar](10) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
	[Price] [decimal](10, 0) NULL,
	[Image] [nvarchar](1000) NULL,
	[Desct] [nvarchar](1500) NULL,
	[MotelID] [varchar](10) NOT NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblService]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblService](
	[ServiceID] [varchar](10) NOT NULL,
	[ServiceName] [nvarchar](50) NULL,
	[Price] [decimal](10, 0) NOT NULL,
	[Status] [int] NULL,
	[MotelID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserID] [varchar](10) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](255) NULL,
	[DateOfBirth] [date] NULL,
	[CitizenNumber] [varchar](12) NULL,
	[Gender] [bit] NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [varchar](12) NULL,
	[Gmail] [varchar](50) NULL,
	[Password] [varchar](20) NULL,
	[Role] [nvarchar](10) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visit_tracking]    Script Date: 8/2/2022 10:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visit_tracking](
	[id] [varchar](20) NOT NULL,
	[time] [bigint] NULL,
	[ip] [nvarchar](255) NULL,
	[date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'1140668', CAST(N'2022-08-02T15:25:46.000' AS DateTime), N'nothing', CAST(147000 AS Decimal(10, 0)), 0, N'tuan04')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'2034015', CAST(N'2022-08-02T22:13:13.000' AS DateTime), N'', CAST(300000 AS Decimal(10, 0)), 1, N'Lamm44')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'365910', CAST(N'2022-07-29T00:20:28.000' AS DateTime), N'111', CAST(45000 AS Decimal(10, 0)), 3, N'thuy03')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'512664', CAST(N'2022-08-02T15:19:23.000' AS DateTime), N'không cần', CAST(255000 AS Decimal(10, 0)), 0, N'doan03')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'5450065', CAST(N'2022-08-01T16:15:40.000' AS DateTime), N'nothing', CAST(160000 AS Decimal(10, 0)), 1, N'ngochai')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'6602627', CAST(N'2022-07-29T16:06:19.000' AS DateTime), N'11111', CAST(80000 AS Decimal(10, 0)), 1, N'ngochai')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'6832755', CAST(N'2022-08-02T22:11:59.000' AS DateTime), N'', CAST(300000 AS Decimal(10, 0)), 1, N'Lamm44')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'7006572', CAST(N'2022-08-02T22:16:35.000' AS DateTime), N'q', CAST(196000 AS Decimal(10, 0)), 0, N'chuongmai')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'7465599', CAST(N'2022-08-01T16:20:01.000' AS DateTime), N'thuy', CAST(125000 AS Decimal(10, 0)), 1, N'thuy03')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'7468372', CAST(N'2022-08-01T20:43:14.310' AS DateTime), N'khach dat tai cho', CAST(50000 AS Decimal(10, 0)), 1, N'7504908')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'818041', CAST(N'2022-08-02T15:23:30.000' AS DateTime), N'không cần', CAST(240000 AS Decimal(10, 0)), 1, N'doan03')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'9474410', CAST(N'2022-08-02T22:15:53.000' AS DateTime), N'11111', CAST(280000 AS Decimal(10, 0)), 0, N'chuongmai')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'9617647', CAST(N'2022-07-22T13:14:56.000' AS DateTime), N'11111111', CAST(160000 AS Decimal(10, 0)), 1, N'thuy03')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'booking01', CAST(N'2022-08-01T00:00:00.000' AS DateTime), N'Booking table', CAST(420900 AS Decimal(10, 0)), 1, N'duy05')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'booking02', CAST(N'2022-07-28T00:00:00.000' AS DateTime), N'Booking table', CAST(710900 AS Decimal(10, 0)), 1, N'duy05')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'booking03', CAST(N'2022-08-01T00:00:00.000' AS DateTime), N'Booking table', CAST(138000 AS Decimal(10, 0)), 0, N'ngochai')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'booking04', CAST(N'2002-07-31T00:00:00.000' AS DateTime), N'Booking table', CAST(642900 AS Decimal(10, 0)), 2, N'tuan04')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'booking05', CAST(N'2022-08-02T00:00:00.000' AS DateTime), N'khach nhan phong', CAST(340900 AS Decimal(10, 0)), 0, N'Lamm44')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'booking06', CAST(N'2022-08-03T00:00:00.000' AS DateTime), N'khach nhan cung ngay', CAST(349300 AS Decimal(10, 0)), 0, N'ngochai')
INSERT [dbo].[tblBooking] ([BookingID], [BookingDate], [Desct], [Total], [Status], [UserID]) VALUES (N'booking07', CAST(N'2022-07-31T00:00:00.000' AS DateTime), N'khach nhan phong', CAST(157900 AS Decimal(10, 0)), 1, N'Lamm44')
GO
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'229786', N'225657877', N'7006572', 4)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'2681956', N'124858468', N'6602627', 2)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'2840206', N'012414785', N'6832755', 12)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'4338305', N'249632785', N'9474410', 7)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'6178591', N'326556884', N'5450065', 4)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'6417406', N'249632785', N'818041', 6)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'6612979', N'487621547', N'6602627', 2)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'7389088', N'012414754', N'512664', 9)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'7550010', N'249632785', N'9617647', 4)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'7601670', N'012414754', N'7468372', 2)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'7796126', N'012414754', N'7465599', 5)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'8743307', N'215487599', N'1140668', 3)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'9157906', N'112547695', N'2034015', 12)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'9515807', N'124525876', N'365910', 1)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'bookDt01', N'012414785', N'booking01', 2)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'bookDt02', N'765324124', N'booking02', 1)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'bookDt03', N'248425478', N'booking03', 2)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'bookDt04', N'842565836', N'booking04', 1)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'bookDt05', N'323565985', N'booking05', 5)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'bookDt06', N'332369568', N'booking06', 7)
INSERT [dbo].[tblBookingDetail] ([BookingDetailID], [RoomID], [BookingID], [Time]) VALUES (N'bookDt07', N'225657877', N'booking07', 1)
GO
INSERT [dbo].[tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID], [BookingID], [Quantity], [Total]) VALUES (N'1', N'489656859', N'booking01', 3, CAST(15000 AS Decimal(10, 0)))
INSERT [dbo].[tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID], [BookingID], [Quantity], [Total]) VALUES (N'2', N'021586822', N'booking02', 2, CAST(10000 AS Decimal(10, 0)))
INSERT [dbo].[tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID], [BookingID], [Quantity], [Total]) VALUES (N'3', N'565468569', N'booking03', 5, CAST(17000 AS Decimal(10, 0)))
INSERT [dbo].[tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID], [BookingID], [Quantity], [Total]) VALUES (N'4', N'489656859', N'booking04', 1, CAST(15000 AS Decimal(10, 0)))
INSERT [dbo].[tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID], [BookingID], [Quantity], [Total]) VALUES (N'4791968', N'489656859', N'512664', 2, CAST(30000 AS Decimal(10, 0)))
INSERT [dbo].[tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID], [BookingID], [Quantity], [Total]) VALUES (N'6840873', N'563958176', N'booking04', 2, CAST(100000 AS Decimal(10, 0)))
INSERT [dbo].[tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID], [BookingID], [Quantity], [Total]) VALUES (N'8240404', N'556558557', N'512664', 12, CAST(180000 AS Decimal(10, 0)))
GO
INSERT [dbo].[tblCity] ([CityID], [Name]) VALUES (N'1', N'TP Hồ Chí Minh')
GO
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'1', N'Bình Tân', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'10', N'Quận Bình Thạnh', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'11', N'Quận Phú Nhuận', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'12', N'Quận 6', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'2', N'Gò Vấp', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'3', N'Tân Bình', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'4', N'Quận 1', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'5', N'Quận 3', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'6', N'Quận 6', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'7', N'Thành phố Thủ Đức', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'8', N'Quận 7', N'1')
INSERT [dbo].[tblDistrict] ([DistrictID], [Name], [CityID]) VALUES (N'9', N'Quận 8', N'1')
GO
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'1', N'Nhà trọ chất lượng tốt', CAST(5.0 AS Decimal(2, 1)), N'587416594', N'booking01', 1)
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'2', N'Đánh giá 5 sao', CAST(5.0 AS Decimal(2, 1)), N'842578129', N'booking02', 1)
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'3', N'Dịch vụ tốt', CAST(5.0 AS Decimal(2, 1)), N'486258478', N'booking03', 1)
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'3116340', N'PhÃ²ng á» ke', CAST(5.0 AS Decimal(2, 1)), N'587416594', N'7465599', 1)
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'3464868', N'Phong rat tot', CAST(5.0 AS Decimal(2, 1)), N'587416594', N'7465599', 1)
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'4', N'Phòng rất sạch sẽ', CAST(4.0 AS Decimal(2, 1)), N'587416594', N'booking04', 1)
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'5', N'Nhân viên phục vụ tốt', CAST(4.0 AS Decimal(2, 1)), N'861435762', N'booking01', 1)
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'6', N'Phòng rất đẹp', CAST(4.0 AS Decimal(2, 1)), N'861435762', N'booking01', 1)
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'7262465', N'Dịch vụ tốt, nhà trọ tốt', CAST(5.0 AS Decimal(2, 1)), N'587416594', N'7465599', 1)
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'7900613', N'ddffff', CAST(5.0 AS Decimal(2, 1)), N'587416594', N'7465599', 1)
INSERT [dbo].[tblFeedBack] ([FeedbackID], [Desct], [Ratings], [MotelID], [BookingID], [Status]) VALUES (N'8783426', N'Khach san rat on , moi nguoi nen dung', CAST(5.0 AS Decimal(2, 1)), N'842578129', N'9617647', 1)
GO
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'1456189', N'Nhà nghỉ Ánh Trăng', N'0396421905', N'<p>nothing&nbsp;<img alt="" src="images/motel-6.jpg" style="height:733px; width:1280px" /></p>
', N'images/motel-6.jpg', N'Quận Gò Vấp', N'1', NULL, N'leminhquan', 0)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'2713670', N'Nhà nghỉ Ánh Trăng', N'0396421902', N'<p>nothing<img alt="" src="images/motel-6.jpg" style="height:733px; width:1280px" /></p>
', N'images/', N'123 Trần Hưng Đạo', N'1', NULL, N'leminhquan', 0)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'473658715', N'Nhà Trọ Vạn Phúc', N'0478523645', N'Desction motel', N'images/motel-5.jpg', N'91 Vạn Phúc, phường Liễu Giai', N'6', CAST(3.8 AS Decimal(2, 1)), N'Quang09', 1)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'486258478', N'Nhà Trọ Gia Lai', N'0248996587', N'<p>Tọa lạc tại vị tr&iacute; l&yacute; tưởng ở Quận 1 thuộc Th&agrave;nh phố Hồ Ch&iacute; Minh, Saigon Hanoi Central Hotel nằm c&aacute;ch Chợ ẩm thực đường phố Bến Th&agrave;nh 500 m, C&ocirc;ng vi&ecirc;n Tao Đ&agrave;n 500 m v&agrave; Bảo t&agrave;ng Th&agrave;nh phố Hồ Ch&iacute; Minh 800 m. Chỗ nghỉ n&agrave;y c&ograve;n c&oacute; một số tiện nghi như nh&agrave; h&agrave;ng, lễ t&acirc;n 24 giờ, dịch vụ ph&ograve;ng cũng như WiFi miễn ph&iacute; trong to&agrave;n bộ khu&ocirc;n vi&ecirc;n. Kh&aacute;ch sạn cung cấp c&aacute;c ph&ograve;ng gia đ&igrave;nh.</p>
<p>Tất cả ph&ograve;ng nghỉ tại kh&aacute;ch sạn c&oacute; m&aacute;y điều h&ograve;a, TV truyền h&igrave;nh vệ tinh m&agrave;n h&igrave;nh phẳng, tủ lạnh, ấm đun nước, vòi sen, dép v&agrave; tủ để quần &aacute;o. C&aacute;c ph&ograve;ng c&oacute; ph&ograve;ng tắm ri&ecirc;ng, m&aacute;y sấy t&oacute;c v&agrave; ga trải giường.</p>
<p>Kh&aacute;ch sạn cung cấp bữa s&aacute;ng buffet hoặc bữa s&aacute;ng kiểu Mỹ.</p>
<p>C&aacute;c điểm tham quan nổi tiếng gần Saigon Hanoi Central Hotel bao gồm Chợ Bến Th&agrave;nh, trung t&acirc;m thương mại Takashimaya Việt Nam v&agrave; Trung t&acirc;m Thương mại Union Square. S&acirc;n bay gần nhất l&agrave; s&acirc;n bay quốc tế T&acirc;n Sơn Nhất, c&aacute;ch đ&oacute; 12 km, v&agrave; chỗ nghỉ cung cấp dịch vụ đưa đ&oacute;n s&acirc;n bay với một khoản phụ ph&iacute;.</p>
<p>Đ&acirc;y l&agrave; khu vực ở TP. H&ocirc;̀ Chí Minh m&agrave; kh&aacute;ch y&ecirc;u th&iacute;ch, theo c&aacute;c đ&aacute;nh gi&aacute; độc lập.</p>
<p>C&aacute;c cặp đ&ocirc;i đặc biệt th&iacute;ch địa điểm n&agrave;y &mdash; họ cho điểm&nbsp;<strong>8,8</strong>&nbsp;cho kỳ nghỉ d&agrave;nh cho 2 người.</p>
', N'images/motel-4.jpg', N'345/55 Trần Hưng Đạo, Cầu Kho', N'3', CAST(4.1 AS Decimal(2, 1)), N'tu06', 1)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'548762589', N'Nhà Trọ Ladalat', N'0147586325', N'<p><strong>Nh&agrave; Trọ Ladala</strong>t tọa lạc ở th&agrave;nh phố Đ&agrave; Lạt, c&aacute;ch Vườn hoa Đ&agrave; Lạt 3,2 km v&agrave; Quảng trường L&acirc;m Vi&ecirc;n 3,4 km. Chỗ nghỉ n&agrave;y nằm trong b&aacute;n k&iacute;nh 3,6 km từ Hồ Xu&acirc;n Hương, 3,7 km từ C&ocirc;ng vi&ecirc;n Yersin v&agrave; 7 km từ Thiền viện Tr&uacute;c L&acirc;m. Chỗ nghỉ cung cấp miễn ph&iacute; WiFi v&agrave; dịch vụ ph&ograve;ng.</p>
<p>Ph&ograve;ng nghỉ tại khách sạn được trang bị b&agrave;n l&agrave;m việc, TV m&agrave;n h&igrave;nh phẳng, ph&ograve;ng tắm ri&ecirc;ng, ga trải giường, khăn tắm v&agrave; ấm đun nước. Ivy Hotel Dalat cung cấp một số ph&ograve;ng c&oacute; tầm nh&igrave;n ra quang cảnh th&agrave;nh phố.</p>
<p>Hồ Tuyền L&acirc;m nằm c&aacute;ch chỗ nghỉ 7 km trong khi N&uacute;i Lang Bian c&aacute;ch đ&oacute; 8 km. S&acirc;n bay gần nhất l&agrave; s&acirc;n bay Li&ecirc;n Khương, nằm trong b&aacute;n k&iacute;nh 31 km từ Ivy Hotel Dalat.</p>
<p>C&aacute;c cặp đ&ocirc;i đặc biệt th&iacute;ch địa điểm n&agrave;y &mdash; họ cho điểm&nbsp;<strong>8,0</strong>&nbsp;cho kỳ nghỉ d&agrave;nh cho 2 người.</p>
', N'images/motel-6.jpg', N'263, Số 19, đường Hoa Hồng, hồ Tuyền Lâm, phường 4', N'5', CAST(3.9 AS Decimal(2, 1)), N'phuc08', 1)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'587416594', N'Nhà Trọ Ngọc Quân', N'0948484848', N'<p>Nằm c&aacute;ch C&ocirc;ng vi&ecirc;n Yersin 1,2 km,<strong> Nh&agrave; Trọ Ngọc Qu&acirc;n&nbsp;</strong> c&oacute; chỗ nghỉ với sảnh kh&aacute;ch chung, khu vườn v&agrave; lễ t&acirc;n 24 giờ để tạo thuận tiện cho kh&aacute;ch. Chỗ nghỉ n&agrave;y cung cấp WiFi miễn ph&iacute;.</p>

<p>Mỗi căn tại đ&acirc;y đều được bố tr&iacute; ph&ograve;ng tắm ri&ecirc;ng với v&ograve;i xịt/chậu rửa vệ sinh, dép đi trong phòng, m&aacute;y sấy t&oacute;c v&agrave; đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;.</p>

<p>C&aacute;c điểm tham quan nổi tiếng gần Trọng Nguyễn villa bao gồm Hồ Xu&acirc;n Hương, Quảng trường L&acirc;m Vi&ecirc;n v&agrave; Vườn hoa Đ&agrave; Lạt. S&acirc;n bay gần nhất l&agrave; s&acirc;n bay Li&ecirc;n Khương, nằm trong b&aacute;n k&iacute;nh 23 km từ kh&aacute;ch sạn căn hộ n&agrave;y, v&agrave; chỗ nghỉ cung cấp dịch vụ đưa đ&oacute;n s&acirc;n bay với một khoản phụ ph&iacute;.</p>

<p>Cung cấp c&aacute;c ph&ograve;ng nghỉ trang nh&atilde; v&agrave; thoải m&aacute;i với Wi-Fi miễn ph&iacute; tại c&aacute;c khu vực chung. Nơi nghỉ n&agrave;y c&oacute; lễ t&acirc;n 24 giờ v&agrave; chỗ đỗ xe m&aacute;y miễn ph&iacute;.</p>
', N'images/motel-1.jpg', N'111 đình phong phú,tăng nhơn phú B', N'1', CAST(4.8 AS Decimal(2, 1)), N'leminhquan', 1)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'587624587', N'Nhà Trọ Kỳ Nam', N'0985635353', N'<p><strong>Nh&agrave; Trọ NgocLan </strong>Nguyễn C&ocirc;ng Trứ The Bitexco Neighbour nằm trong b&aacute;n k&iacute;nh 30 ph&uacute;t l&aacute;i xe từ S&acirc;n bay Quốc tế T&acirc;n Sơn Nhất v&agrave; 700 m từ c&aacute;c điểm tham quan như Dinh Độc Lập cũng như Nh&agrave; thờ Đức B&agrave;.</p>
<p>C&aacute;c ph&ograve;ng m&aacute;y lạnh tại đ&acirc;y c&oacute; s&agrave;n l&aacute;t gạch v&agrave; ph&ograve;ng tắm ri&ecirc;ng. Trong ph&ograve;ng được trang bị truyền h&igrave;nh c&aacute;p, minibar v&agrave; m&aacute;y pha tr&agrave;/c&agrave; ph&ecirc;. Đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;, m&aacute;y sấy t&oacute;c v&agrave; d&eacute;p cũng được cung cấp trong ph&ograve;ng. Một số ph&ograve;ng nh&igrave;n ra quang cảnh th&agrave;nh phố.</p>
<p>Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện của Anh Duy c&oacute; thể hỗ trợ kh&aacute;ch sắp xếp c&aacute;c tour du lịch v&agrave; đặt v&eacute;. Ngo&agrave;i ra, kh&aacute;ch c&ograve;n được cung cấp dịch vụ cho thu&ecirc; xe đạp v&agrave; xe hơi cũng như giặt l&agrave;. Dịch vụ ph&ograve;ng cũng c&oacute; tại đ&acirc;y v&agrave; bữa s&aacute;ng c&oacute; thể được phục vụ ngay trong ph&ograve;ng nghỉ của kh&aacute;ch.</p>
', N'images/motel-2.jpg', N'Hùng Vương, Phường Thanh Hà', N'9', CAST(3.4 AS Decimal(2, 1)), N'chuongmai', 1)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'625781458', N'Nhà Trọ NgocLan', N'0985364865', N'<p>Tọa lạc tại vị tr&iacute; trung t&acirc;m ở Quận 1 của Th&agrave;nh phố Hồ Ch&iacute; Minh, kh&aacute;ch sạn cung cấp c&aacute;c ph&ograve;ng được trang bị nội thất giản dị với Wi-Fi miễn ph&iacute;. Nằm c&aacute;ch Chợ Bến Th&agrave;nh 5 ph&uacute;t đi bộ, nơi đ&acirc;y c&oacute; nh&agrave; h&agrave;ng phục vụ c&aacute;c m&oacute;n ăn Việt Nam.</p>
<p><strong>Nh&agrave; Trọ NgocLan </strong>Nguyễn C&ocirc;ng Trứ The Bitexco Neighbour nằm trong b&aacute;n k&iacute;nh 30 ph&uacute;t l&aacute;i xe từ S&acirc;n bay Quốc tế T&acirc;n Sơn Nhất v&agrave; 700 m từ c&aacute;c điểm tham quan như Dinh Độc Lập cũng như Nh&agrave; thờ Đức B&agrave;.</p>
<p>C&aacute;c ph&ograve;ng m&aacute;y lạnh tại đ&acirc;y c&oacute; s&agrave;n l&aacute;t gạch v&agrave; ph&ograve;ng tắm ri&ecirc;ng. Trong ph&ograve;ng được trang bị truyền h&igrave;nh c&aacute;p, minibar v&agrave; m&aacute;y pha tr&agrave;/c&agrave; ph&ecirc;. Đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;, m&aacute;y sấy t&oacute;c v&agrave; d&eacute;p cũng được cung cấp trong ph&ograve;ng. Một số ph&ograve;ng nh&igrave;n ra quang cảnh th&agrave;nh phố.</p>
<p>Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện của Anh Duy c&oacute; thể hỗ trợ kh&aacute;ch sắp xếp c&aacute;c tour du lịch v&agrave; đặt v&eacute;. Ngo&agrave;i ra, kh&aacute;ch c&ograve;n được cung cấp dịch vụ cho thu&ecirc; xe đạp v&agrave; xe hơi cũng như giặt l&agrave;. Dịch vụ ph&ograve;ng cũng c&oacute; tại đ&acirc;y v&agrave; bữa s&aacute;ng c&oacute; thể được phục vụ ngay trong ph&ograve;ng nghỉ của kh&aacute;ch.</p>
<p>Đ&acirc;y l&agrave; khu vực ở TP. H&ocirc;̀ Chí Minh m&agrave; kh&aacute;ch y&ecirc;u th&iacute;ch, theo c&aacute;c đ&aacute;nh gi&aacute; độc lập.</p>
', N'images/motel-3.jpg', N'Đặng Huy Trứ, Phường Vĩnh Nguyên', N'8', CAST(4.1 AS Decimal(2, 1)), N'nhatvuong', 1)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'785146827', N'Nhà Trọ VinHome', N'0745898989', N'<p>Tọa lạc tại vị tr&iacute; trung t&acirc;m ở Quận 1 của Th&agrave;nh phố Hồ Ch&iacute; Minh, kh&aacute;ch sạn cung cấp c&aacute;c ph&ograve;ng được trang bị nội thất giản dị với Wi-Fi miễn ph&iacute;. Nằm c&aacute;ch Chợ Bến Th&agrave;nh 5 ph&uacute;t đi bộ, nơi đ&acirc;y c&oacute; nh&agrave; h&agrave;ng phục vụ c&aacute;c m&oacute;n ăn Việt Nam.</p>
<p><strong>Nh&agrave; Trọ NgocLan </strong>Nguyễn C&ocirc;ng Trứ The Bitexco Neighbour nằm trong b&aacute;n k&iacute;nh 30 ph&uacute;t l&aacute;i xe từ S&acirc;n bay Quốc tế T&acirc;n Sơn Nhất v&agrave; 700 m từ c&aacute;c điểm tham quan như Dinh Độc Lập cũng như Nh&agrave; thờ Đức B&agrave;.</p>
<p>C&aacute;c ph&ograve;ng m&aacute;y lạnh tại đ&acirc;y c&oacute; s&agrave;n l&aacute;t gạch v&agrave; ph&ograve;ng tắm ri&ecirc;ng. Trong ph&ograve;ng được trang bị truyền h&igrave;nh c&aacute;p, minibar v&agrave; m&aacute;y pha tr&agrave;/c&agrave; ph&ecirc;. Đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;, m&aacute;y sấy t&oacute;c v&agrave; d&eacute;p cũng được cung cấp trong ph&ograve;ng. Một số ph&ograve;ng nh&igrave;n ra quang cảnh th&agrave;nh phố.</p>
<p>Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện của Anh Duy c&oacute; thể hỗ trợ kh&aacute;ch sắp xếp c&aacute;c tour du lịch v&agrave; đặt v&eacute;. Ngo&agrave;i ra, kh&aacute;ch c&ograve;n được cung cấp dịch vụ cho thu&ecirc; xe đạp v&agrave; xe hơi cũng như giặt l&agrave;. Dịch vụ ph&ograve;ng cũng c&oacute; tại đ&acirc;y v&agrave; bữa s&aacute;ng c&oacute; thể được phục vụ ngay trong ph&ograve;ng nghỉ của kh&aacute;ch.</p>
<p>Đ&acirc;y l&agrave; khu vực ở TP. H&ocirc;̀ Chí Minh m&agrave; kh&aacute;ch y&ecirc;u th&iacute;ch, theo c&aacute;c đ&aacute;nh gi&aacute; độc lập.</p>
', N'images/motel-4.jpg', N'Đường 30 Tháng 4, Phường Hưng Lợi', N'7', CAST(4.4 AS Decimal(2, 1)), N'nhatvuong', 1)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'8369007', N'Nhà nghỉ Ánh Trăng', N'0396421902', N'<p>nothing<img alt="" src="images/motel-6.jpg" style="height:100%; width:100%" /></p>
', N'images/', N'123 Trần Hưng Đạo', N'1', NULL, N'leminhquan', 0)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'842578129', N'Nhà Trọ Ánh Dương', N'0328787878', N'<p>C&oacute; vị tr&iacute; thuận tiện ở Quận 1, <strong>&Aacute;nh Dương </strong>cung cấp c&aacute;c ph&ograve;ng nghỉ trang nh&atilde; v&agrave; thoải m&aacute;i với Wi-Fi miễn ph&iacute; tại c&aacute;c khu vực chung. Nơi nghỉ n&agrave;y c&oacute; lễ t&acirc;n 24 giờ v&agrave; chỗ đỗ xe m&aacute;y miễn ph&iacute;.</p>

<p><img alt="" src="images/motel-6.jpg" /></p>

<div class="ddict_btn" style="left:746.514px; top:50px"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>
', N'images/motel-5.jpg', N'143A Mỹ Đức,Bình Phú', N'2', CAST(4.5 AS Decimal(2, 1)), N'leminhquan', 1)
INSERT [dbo].[tblMotel] ([MotelID], [Name], [Phone], [Desct], [Image], [Address], [DistrictID], [Ratings], [OwnerID], [Status]) VALUES (N'861435762', N'Nhà Trọ Malibu Beach', N'0344989898', N'Desction motel', N'images/motel-7.jpg', N'263, Lê Hồng Phong', N'4', CAST(4.1 AS Decimal(2, 1)), N'chuongmai', 1)
GO
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'1140668', N'Đặt phòng thành công', N'Đơn hàng đặt thành công có mã :1140668', CAST(N'2022-08-02' AS Date), N'leminhquan', 1)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'2034015', N'Đặt phòng thành công', N'Đơn hàng đặt thành công có mã :2034015', CAST(N'2022-08-02' AS Date), N'leminhquan', 1)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'365910', N'Đơn đặt hàng thành công', N'Đơn hàng đặt thành công có mã 365910', CAST(N'2022-07-28' AS Date), N'tu06', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'512664', N'Đặt phòng thành công', N'Đơn hàng đặt thành công có mã :512664', CAST(N'2022-08-02' AS Date), N'leminhquan', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'5450065', N'Đơn đặt hàng thành công', N'Đơn hàng đặt thành công có mã 5450065', CAST(N'2022-08-01' AS Date), N'leminhquan', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'6602627', N'Xác nhận đặt phòng', N'Đã xử lý', CAST(N'2022-07-21' AS Date), N'leminhquan', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'6832755', N'Đặt phòng thành công', N'Đơn hàng đặt thành công có mã :6832755', CAST(N'2022-08-02' AS Date), N'leminhquan', 1)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'7006572', N'Đặt phòng thành công', N'Đơn hàng đặt thành công có mã :7006572', CAST(N'2022-08-02' AS Date), N'leminhquan', 1)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'7465599', N'Đơn đặt hàng thành công', N'Đơn hàng đặt thành công có mã 7465599', CAST(N'2022-08-01' AS Date), N'leminhquan', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'818041', N'Đặt phòng thành công', N'Đơn hàng đặt thành công có mã :818041', CAST(N'2022-08-02' AS Date), N'leminhquan', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'9474410', N'Đặt phòng thành công', N'Đơn hàng đặt thành công có mã :9474410', CAST(N'2022-08-02' AS Date), N'leminhquan', 1)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'9617647', N'Xác nhận đặt phòng', N'Đã xử lý', CAST(N'2022-07-22' AS Date), N'leminhquan', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'booking01', N'Đơn đặt hàng thành công', N'Đơn hàng đặt thành công có mã booking01', CAST(N'2002-08-01' AS Date), N'tu06', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'booking02', N'Bạn vừa trả phòng', N'Bạn vừa trả phòng hãy đánh giá', CAST(N'2002-07-24' AS Date), N'tu06', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'booking03', N'Xác nhận đặt phòng', N'Đã xử lý', CAST(N'2002-08-07' AS Date), N'leminhquan', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'booking04', N'Đơn đặt hàng thành công', N'Đơn hàng đặt thành công có mã booking04', CAST(N'2002-01-07' AS Date), N'leminhquan', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'booking05', N'Xác nhận đặt phòng', N'Đơn hàng đặt thành công có mã booking05', CAST(N'2022-08-02' AS Date), N'leminhquan', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'booking06', N'Đơn đặt hàng thành công', N'Bạn vừa trả phòng hãy đánh giá', CAST(N'2002-07-24' AS Date), N'tu06', 0)
INSERT [dbo].[tblNotification] ([AnnouncementID], [Title], [Desct], [Date], [OwnerID], [Status]) VALUES (N'booking07', N'Đơn đặt hàng thành công', N'Bạn vừa đặt phòng xong, vui lòng kiểm tra lại hóa đơn chi tiết', CAST(N'2022-07-20' AS Date), N'Quang09', 0)
GO
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'booking01', N'đã thanh toán', CAST(N'2022-07-22' AS Date), N'Nguyen Huu Tuan', N'Tran Ngoc Tu', N'Tiền Mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'booking02', N'payment01 table', CAST(N'2021-02-02' AS Date), N'Nguyen Huu Tuan', N'Tran Ngoc Tu', N'Chuyển khoản')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'booking03', N'payment01 table', CAST(N'2021-02-02' AS Date), N'Tran Ngoc Hai', N'Le Quan', N'Chuyển khoản')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'booking04', N'payment01 table', CAST(N'2021-02-02' AS Date), N'Nguyen Huu Doan', N'Le Quan', N'Tien mat')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'booking05', N'payment in day', CAST(N'2022-12-11' AS Date), N'Tran Van Lam', N'Le Quan', N'Tien mat')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'booking06', N'payment01 table', CAST(N'2021-02-02' AS Date), N'Tran Ngoc Hai', N'Tran Ngoc Tu', N'Chuyển khoản')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'booking07', N'đã thanh toán', CAST(N'2022-08-01' AS Date), N'Tran Ngoc Hai', N'Nguyen Quang', N'Tiền Mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'6602627', N'đã thanh toán', CAST(N'2022-07-27' AS Date), N'Phuong Hong', N'Khanh Duy', N'Tiền Mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'9617647', N'đã thanh toán', CAST(N'2022-08-01' AS Date), N'Phuong Nhung', N'Phuong Nhung', N'Tiền Mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'365910', N'111', CAST(N'2022-07-28' AS Date), N'Ngoc Hai', N'Phuong Nhung', N'Tiền mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'5450065', N'đã thanh toán', CAST(N'2022-08-02' AS Date), N'Hai', N'Tran Ngoc Hai', N'Tiền Mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'7465599', N'đã thanh toán', CAST(N'2022-08-01' AS Date), N'Thuy Phuong', N'Phuong Thuy', N'Tiền Mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'7468372', N'đã thanh toán', CAST(N'2022-08-01' AS Date), N'7504908', N'leminhquan', N'Tiền Mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'512664', N'không cần', CAST(N'2022-08-02' AS Date), N'Hữu Đoan', N'', N'Tiền mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'818041', N'đã thanh toán', CAST(N'2022-08-02' AS Date), N'Hữu Đoan', N'', N'Tiền Mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'1140668', N'nothing', CAST(N'2022-08-02' AS Date), N'Hữu Phạm Tuân', N'', N'Tiền mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'6832755', N'', CAST(N'2022-08-02' AS Date), N'test', N'', N'Tiền mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'2034015', N'', CAST(N'2022-08-02' AS Date), N'test', N'', N'Tiền mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'9474410', N'11111', CAST(N'2022-08-02' AS Date), N'test', N'', N'Tiền mặt')
INSERT [dbo].[tblPayment] ([PaymentID], [Desct], [PaymentTime], [Sender], [Receiver], [PaymentTypeName]) VALUES (N'7006572', N'q', CAST(N'2022-08-02' AS Date), N'test', N'', N'Tiền mặt')
GO
INSERT [dbo].[tblReport] ([ReportID], [UserID], [Title], [Desct], [Date], [Status], [MotelID]) VALUES (N'1', N'doan03', N'bao cao owner', N'Owner nay khong tot', CAST(N'2022-05-05' AS Date), 0, N'587624587')
INSERT [dbo].[tblReport] ([ReportID], [UserID], [Title], [Desct], [Date], [Status], [MotelID]) VALUES (N'2', N'duy05', N'bao cao owner', N'Nhà trọ không đúng như mô tả', CAST(N'2021-05-05' AS Date), 0, N'625781458')
INSERT [dbo].[tblReport] ([ReportID], [UserID], [Title], [Desct], [Date], [Status], [MotelID]) VALUES (N'3', N'tuan04', N'bao cao owner', N'Owner nay khong tot', CAST(N'2022-05-05' AS Date), 1, N'625781458')
INSERT [dbo].[tblReport] ([ReportID], [UserID], [Title], [Desct], [Date], [Status], [MotelID]) VALUES (N'4', N'doan03', N'bao cao owner', N'Nhà trọ này chém giá', CAST(N'2022-05-05' AS Date), 1, N'587624587')
INSERT [dbo].[tblReport] ([ReportID], [UserID], [Title], [Desct], [Date], [Status], [MotelID]) VALUES (N'5', N'ngochai', N'bao cao owner', N'Owner nay khong tot', CAST(N'2022-05-05' AS Date), 1, N'587624587')
INSERT [dbo].[tblReport] ([ReportID], [UserID], [Title], [Desct], [Date], [Status], [MotelID]) VALUES (N'7905389', N'ngochai', N'Phản ánh ', N'Phòng trọ này không như mô tả, chủ trọ không tốt. Khá thất vọng. ', CAST(N'2022-07-20' AS Date), 0, N'842578129')
GO
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'012414754', N'NO 1', 1, N'1')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'012414785', N'01', 0, N'1')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'112547695', N'num 10', 0, N'1')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'124525876', N'NO 6', 0, N'6')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'124569832', N'num 3', 0, N'7')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'124858468', N'phòng số 5', 0, N'4')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'215487599', N'phòng số 9', 1, N'3')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'216587125', N'02', 0, N'1')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'219657756', N'03', 0, N'1')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'225657877', N'Room 07', 1, N'3')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'236587157', N'phong 5', 0, N'1')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'236854824', N'phong 6', 0, N'2')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'244714724', N'06', 0, N'2')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'245782168', N'phòng số 1', 0, N'1')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'247965765', N'08', 0, N'3')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'248425478', N'phong 3', 1, N'11')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'249632785', N'NO 5', 1, N'5')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'323565985', N'Room 10', 1, N'12')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'325487958', N'num 5', 0, N'9')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'326556884', N'phòng số 11', 0, N'5')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'326584957', N'phong 9', 0, N'2')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'332369568', N'Room 12', 1, N'8')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'336598852', N'Room 05', 0, N'8')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'365982589', N'num 11', 0, N'2')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'421578965', N'NO 4', 0, N'5')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'452713658', N'phong 10', 0, N'3')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'456257895', N'phong 2', 0, N'10')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'487621547', N'NO 2', 0, N'4')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'521477856', N'Room 02', 0, N'7')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'521487545', N'Room 01', 0, N'6')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'528495989', N'phòng số 7', 0, N'10')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'548587526', N'phong 8', 0, N'1')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'587953254', N'phong 1', 0, N'9')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'626356896', N'phòng số 2', 0, N'11')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'632356985', N'Room 03', 0, N'1')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'632548789', N'num 2', 0, N'6')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'632577896', N'Room 08', 0, N'4')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'632658452', N'NO 7', 0, N'7')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'632658744', N'NO 3', 0, N'4')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'642766983', N'phòng số 6', 0, N'5')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'658715137', N'07', 0, N'3')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'663289984', N'phòng số 8', 0, N'2')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'735947138', N'09', 0, N'3')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'745447857', N'Room 06', 0, N'10')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'747569865', N'Room 11', 0, N'7')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'758624864', N'NO 8', 0, N'8')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'765324124', N'04', 2, N'2')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'784125569', N'Room 04', 0, N'9')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'842565836', N'phòng số 3', 1, N'2')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'845764818', N'num 1', 0, N'5')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'851658754', N'phong 4', 0, N'12')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'854577756', N'phòng số 10', 0, N'4')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'865741253', N'num 4', 0, N'8')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'871245872', N'num 8', 0, N'12')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'895365765', N'05', 0, N'2')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'895621458', N'phong 7', 0, N'3')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'895658269', N'phòng số 4', 0, N'3')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'956325478', N'num 7', 2, N'11')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'985568725', N'num 9', 0, N'13')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'986525487', N'num 6', 0, N'10')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'986554787', N'phong 11', 0, N'4')
INSERT [dbo].[tblRoom] ([RoomID], [Name], [Status], [RoomTypeID]) VALUES (N'996532157', N'Room 09', 0, N'5')
GO
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'1', N'Phòng đơn Ngọc Quân', CAST(25000 AS Decimal(10, 0)), N'images/motel-1.jpg', N'1 giường đơn ,20 m²,Tầm nhìn ra khung cảnh
	<p>B&ocirc;̀n tắm hoặc Vòi sen, đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;</p>
', N'587416594', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'10', N'Phòng đôi Vạn Phúc', CAST(31000 AS Decimal(10, 0)), N'images/motel-2.jpg', N'1 giường đôi ,30 m²,Tầm nhìn ra khung cảnh', N'473658715', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'11', N'Phòng VinHome', CAST(69000 AS Decimal(10, 0)), N'images/motel-1.jpg', N'2 giường đôi ,30 m²,Tầm nhìn ra khung cảnh', N'785146827', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'12', N'Phòng đơn NgocLan', CAST(25000 AS Decimal(10, 0)), N'images/motel-2.jpg', N'1 giường đơn ,20 m²,Tầm nhìn ra khung cảnh', N'625781458', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'13', N'Phòng đôi Kỳ Nam', CAST(24500 AS Decimal(10, 0)), N'images/motel-2.jpg', N'<p>32 m&sup2; -Nh&igrave;n ra địa danh nổi tiếng</p>
<p>Nh&igrave;n ra th&agrave;nh phố -Nh&igrave;n ra s&ocirc;ng</p>
<p>Điều h&ograve;a kh&ocirc;ng kh&iacute;-Ph&ograve;ng tắm ri&ecirc;ng trong ph&ograve;ng</p>
<p>TV m&agrave;n h&igrave;nh phẳng- Hệ thống c&aacute;ch &acirc;m</p>
', N'587624587', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'2', N'Phòng đôi Ngọc Quân', CAST(35000 AS Decimal(10, 0)), N'images/motel-1.jpg', N'1 giường đôi ,30 m²,Tầm nhìn ra khung cảnh
	<p>Đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;</p>
', N'587416594', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'3', N'Phòng gia đình Ngọc Quân', CAST(49000 AS Decimal(10, 0)), N'images/motel-1.jpg', N'2 giường đôi ,30 m²,Tầm nhìn ra khung cảnh', N'587416594', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'4', N'Phòng đơn Ánh Dương', CAST(20000 AS Decimal(10, 0)), N'images/motel-2.jpg', N'<p>Máy s&acirc;́y tóc</p>
	<p>Khăn tắm/Bộ khăn trải giường (c&oacute; thu ph&iacute;)</p>
', N'842578129', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'5', N'Phòng đôi Ánh Dương', CAST(40000 AS Decimal(10, 0)), N'images/motel-2.jpg', N'1 giường đôi ,30 m²,Tầm nhìn ra khung cảnh', N'842578129', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'6', N'Phòng đơn Gia Lai', CAST(45000 AS Decimal(10, 0)), N'images/motel-1.jpg', N'1 giường đơn ,20 m²,Tầm nhìn ra khung cảnh', N'486258478', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'7', N'Phòng đôi Malibu Beach', CAST(55000 AS Decimal(10, 0)), N'images/motel-1.jpg', N'1 giường đôi ,30 m²,Tầm nhìn ra khung cảnh<br> <p>32 m&sup2; -Nh&igrave;n ra địa danh nổi tiếng</p>
<p>Điều h&ograve;a kh&ocirc;ng kh&iacute;-Ph&ograve;ng tắm ri&ecirc;ng trong ph&ograve;ng</p>
<p>TV m&agrave;n h&igrave;nh phẳng- Hệ thống c&aacute;ch &acirc;m</p>
', N'861435762', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'8', N'Phòng gia đình Ladalat', CAST(49900 AS Decimal(10, 0)), N'images/motel-1.jpg', N'<p>32 m&sup2; -Nh&igrave;n ra địa danh nổi tiếng</p>
<p>Nh&igrave;n ra th&agrave;nh phố -Nh&igrave;n ra s&ocirc;ng</p>
<p>Điều h&ograve;a kh&ocirc;ng kh&iacute;-Ph&ograve;ng tắm ri&ecirc;ng trong ph&ograve;ng</p>
<p>TV m&agrave;n h&igrave;nh phẳng- Hệ thống c&aacute;ch &acirc;m</p>
', N'548762589', 1)
INSERT [dbo].[tblRoomType] ([RoomTypeID], [TypeName], [Price], [Image], [Desct], [MotelID], [Status]) VALUES (N'9', N'Phòng đơn Vạn Phúc', CAST(19800 AS Decimal(10, 0)), N'images/motel-2.jpg', N'<p>32 m&sup2; -Nh&igrave;n ra địa danh nổi tiếng</p>
<p>Nh&igrave;n ra th&agrave;nh phố -Nh&igrave;n ra s&ocirc;ng</p>
<p>Điều h&ograve;a kh&ocirc;ng kh&iacute;-Ph&ograve;ng tắm ri&ecirc;ng trong ph&ograve;ng</p>
<p>TV m&agrave;n h&igrave;nh phẳng- Hệ thống c&aacute;ch &acirc;m</p>
', N'473658715', 1)
GO
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'012495547', N'Tiệc tối', CAST(15000 AS Decimal(10, 0)), 1, N'842578129')
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'021586822', N'lavie', CAST(10000 AS Decimal(10, 0)), 0, N'587416594')
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'323201578', N'Phần bánh Ánh Dương', CAST(5000 AS Decimal(10, 0)), 1, N'842578129')
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'489656859', N'Giữ xe', CAST(15000 AS Decimal(10, 0)), 1, N'587416594')
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'556558557', N'Phục vụ đặc biệt', CAST(15000 AS Decimal(10, 0)), 1, N'587416594')
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'558579558', N'Giữ xe', CAST(15000 AS Decimal(10, 0)), 1, N'842578129')
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'563958176', N'Tiệc chiều Ngọc Quân', CAST(50000 AS Decimal(10, 0)), 1, N'587416594')
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'565468569', N'Bánh nhẹ', CAST(17000 AS Decimal(10, 0)), 1, N'587416594')
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'632452177', N'Bữa nhẹ', CAST(10000 AS Decimal(10, 0)), 1, N'842578129')
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'986587453', N'Bánh Ánh Dương', CAST(17000 AS Decimal(10, 0)), 1, N'842578129')
GO
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'7504908', N'Phuong Hong', NULL, NULL, N'45217891', NULL, N'Binh Dinh', N'0396421901', NULL, NULL, N'US', 0)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'admin@@', N'Administrator - Thuy', N'images/girl.png', CAST(N'2001-04-02' AS Date), N'45217896', 1, N'166/46d2 Thích Quảng Đức, Phú Nhuận , HCM', N'0852135789', N'vntphuongthuy.is@gmail.com', N'12345', N'AD', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'chuongmai', N'Huy Chuong', N'assets/img/avatar.jpg', CAST(N'2002-01-14' AS Date), N'214536587', 1, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'0975841354', N'chuongmai@gmail.com', N'12345', N'US', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'doan03', N'Nguyen Huu Doan', N'images/man.png', CAST(N'2001-09-17' AS Date), N'712465325', 0, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'0965852413', N'phuongthuytyty@gmail.com', N'12345', N'US', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'duy05', N'Ho Khanh Duy', N'images/duy.png', CAST(N'2001-01-25' AS Date), N'452874365', 0, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'0963756841', N'Devilgamer@gmail.com', N'12345', N'US', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'Lamm44', N'Dang Son Lam', N'images/man.png', CAST(N'1989-05-07' AS Date), N'58213647', 1, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'014752368', N'liontee@gmail.com', N'12345', N'US', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'leminh   ', N'cao thuy ha2', NULL, NULL, NULL, NULL, NULL, N'0396421901', N'thuyctp123@gmail.com', N'12345', N'US', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'leminhquan', N'Le Minh Quan', N'images/man.png', CAST(N'2001-05-07' AS Date), N'321615057', 0, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'0942949219', N'hoangquan9851@gmail.com', N'12345', N'OW', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'ngochai', N'Tran Ngoc Hai', N'images/man.png', CAST(N'2001-10-15' AS Date), N'3541258749', 1, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'0347895634', N'tranhaihk00@gmail.com', N'12345', N'US', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'nhatvuong', N'Pham Nhat Vuong', N'images/man.png', CAST(N'1989-01-14' AS Date), N'248762544', 1, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'0248998745', N'vuong@GMAIL.COM', N'12345', N'OW', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'phuc08', N'Lam Son Phuc', N'assets/img/avatar.jpg', CAST(N'2001-02-14' AS Date), N'235478154', 1, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'01478523654', N'phucson223@gmail.com', N'12345', N'OW', 0)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'phungth', N'nagement', NULL, NULL, NULL, NULL, NULL, N'0374373917', N'nagement@gmail.com', N'12345', N'OW', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'Quang09', N'Do Duy Quang', N'images/man.png', CAST(N'1998-05-14' AS Date), N'25479864', 1, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'0365258417', N'quang744@gmail.com', N'12345', N'OW', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'thuy03', N'Thuy Cao', N'images/man.png', CAST(N'1999-11-24' AS Date), N'7468512', 1, N'Số 71 đường c18 P12 Tân Bình, HCM', N'0942741653', N'nhatcao796569@gmail.com', N'12345', N'US', 1)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'tu06', N'Nguyen Doan Tu', N'images/man.png', CAST(N'2001-05-26' AS Date), N'78523465', 1, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'01945876325', N'tutu988@gmail.com', N'12345', N'OW', 0)
INSERT [dbo].[tblUser] ([UserID], [FullName], [Image], [DateOfBirth], [CitizenNumber], [Gender], [Address], [Phone], [Gmail], [Password], [Role], [Status]) VALUES (N'tuan04', N'Nguyen Huu Pham Tuan', N'images/man.png', CAST(N'2001-07-07' AS Date), N'47853265', 1, N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm', N'01653992966', N'tuapham.25201@gmail.com', N'12345', N'US', 1)
GO
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1', 1655978934, N'81.209.177.145', CAST(N'2022-07-18' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'10', 1656153799, N'114.119.132.18', CAST(N'2022-07-20' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1078100', 1659345159887, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'11', 1656153809, N'114.119.132.161', CAST(N'2022-07-21' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1124029', 1659345566044, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1183936', 1658394722648, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-21' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'12', 1656153819, N'103.131.71.238', CAST(N'2022-07-21' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'13', 1656154240, N'66.249.71.216', CAST(N'2022-07-24' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1315352', 1659348610835, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'135212', 1659370955021, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'14', 1656178897, N'66.249.71.216', CAST(N'2022-07-24' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1543700', 1659361082610, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1557792', 1659369643036, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1564276', 1659451794803, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1568196', 1658467978327, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'16', 1655978934, N'81.209.177.145', CAST(N'2022-07-25' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1612416', 1658941587726, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-28' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1656740', 1659359817461, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'17', 1655978943, N'81.209.177.145', CAST(N'2022-07-30' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'17267', 1659346152348, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'18', 1655978953, N'40.77.167.62', CAST(N'2022-07-31' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1809343', 1659345288001, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'1833094', 1659371022190, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'187979', 1659428794942, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'19', 1655978963, N'205.210.31.150', CAST(N'2022-08-10' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2', 1655978943, N'81.209.177.145', CAST(N'2022-07-18' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'20', 1656176340, N'103.131.71.144', CAST(N'2022-07-29' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2087236', 1659427063530, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'21', 1656176785, N'114.119.132.161', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2158476', 1659345635302, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2172623', 1659454008644, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'22', 1656178150, N'66.249.66.86', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2271744', 1658942369752, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-28' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'23', 1656178897, N'207.46.13.197', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2321778', 1658468039849, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'24', 1656153799, N'114.119.132.18', CAST(N'2022-07-12' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2414340', 1659346239099, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2467009', 1659428571656, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'25', 1656153809, N'114.119.132.161', CAST(N'2022-07-11' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2541673', 1659344718759, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'26', 1656153819, N'103.131.71.238', CAST(N'2022-07-17' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'27', 1656154240, N'66.249.71.216', CAST(N'2022-07-16' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2700113', 1658470764827, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'28', 1655978934, N'81.209.177.145', CAST(N'2022-07-17' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2809129', 1659433833774, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'29', 1655978943, N'81.209.177.145', CAST(N'2022-07-16' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2907046', 1659428298347, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'292005', 1659433714300, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'2985206', 1659427972260, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3', 1655978953, N'40.77.167.62', CAST(N'2022-07-18' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'30', 1655978953, N'40.77.167.62', CAST(N'2022-07-15' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3041777', 1659359207218, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3076185', 1658471122865, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3085644', 1659426187371, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3098837', 1659274311135, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-31' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'31', 1655978963, N'205.210.31.150', CAST(N'2022-07-15' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3111476', 1659344307989, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'32', 1656176340, N'103.131.71.144', CAST(N'2022-07-14' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'33', 1656176785, N'114.119.132.161', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'34', 1656178150, N'66.249.66.86', CAST(N'2022-08-03' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3406036', 1659100430147, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-29' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'35', 1656178897, N'207.46.13.197', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'36', 1656153799, N'114.119.132.18', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3634422', 1659446509564, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3642707', 1659345381393, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3652336', 1659451286655, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3699557', 1658942582184, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-28' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'37', 1656153809, N'114.119.132.161', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3707674', 1659427634215, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'37676', 1659427144694, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'38', 1656153819, N'103.131.71.238', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3800672', 1659444566982, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3898568', 1658470283757, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'39', 1656154240, N'66.249.71.216', CAST(N'2022-07-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3923770', 1659428688875, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'3987711', 1659428664775, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'4', 1655978963, N'205.210.31.150', CAST(N'2022-07-19' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'40', 1656154240, N'66.249.71.216', CAST(N'2022-07-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'41', 1656154240, N'66.249.71.216', CAST(N'2022-07-03' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'4133178', 1659345091158, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'4152602', 1658940537395, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-27' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'4170611', 1659427351396, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'42', 1656154240, N'66.249.71.216', CAST(N'2022-07-04' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'43', 1656154240, N'66.249.71.216', CAST(N'2022-07-05' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'44', 1656154240, N'66.249.71.216', CAST(N'2022-07-06' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'44002', 1659100652744, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-29' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'45', 1656154240, N'66.249.71.216', CAST(N'2022-07-07' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'46', 1656154240, N'66.249.71.216', CAST(N'2022-07-08' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'4632428', 1658471101730, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'47', 1656154240, N'66.249.71.216', CAST(N'2022-07-09' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'4756110', 1659453318669, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'4772729', 1659433795396, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'48', 1656154240, N'66.249.71.216', CAST(N'2022-07-10' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'49', 1656154240, N'66.249.71.216', CAST(N'2022-07-09' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'4932170', 1659349076665, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5024150', 1659454199209, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5160736', 1658942763055, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-28' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5199549', 1659346040848, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5199600', 1659372588113, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5325690', 1659425583289, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
GO
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'538279', 1659445889714, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5477385', 1659361029107, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5583562', 1659362498197, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5602744', 1659436986722, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5606713', 1659433881288, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5655098', 1659427943049, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5662414', 1658940075818, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-27' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5868490', 1659436702769, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'5902860', 1658467157850, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6', 1656176340, N'103.131.71.144', CAST(N'2022-07-19' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6136762', 1659453258355, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6245048', 1659453411639, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6371677', 1658939831270, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-27' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6430984', 1659451853244, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6523629', 1658941543399, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-28' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6574718', 1659372590583, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6629870', 1658940398936, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-27' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6630344', 1659360697952, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6640849', 1659453310209, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6800281', 1659370787342, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6895679', 1659347994641, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6896807', 1659432565438, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'6990571', 1658467920911, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7', 1656176785, N'114.119.132.161', CAST(N'2022-07-19' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7025341', 1659454115854, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7062361', 1659366835575, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7098420', 1658940580262, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-27' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7237736', 1659363186822, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7362772', 1659347938739, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7375652', 1659448107007, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7497882', 1659447169482, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7516084', 1659436681061, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'776427', 1659433449433, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7857604', 1659106729828, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-29' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7917575', 1659106920240, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-29' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'7964969', 1659453074789, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'8', 1656178150, N'66.249.66.86', CAST(N'2022-07-20' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'80272', 1659360774948, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'8171158', 1658940209270, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-27' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'8250016', 1659426300659, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'8657535', 1659452088905, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'8804314', 1658470458636, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'8829601', 1658470440720, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'8917741', 1658471029040, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'8982385', 1659451845685, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'9', 1656178897, N'207.46.13.197', CAST(N'2022-07-20' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'9038946', 1658471573356, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'9098552', 1658470592050, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'9326164', 1659426421567, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'9455924', 1658470417423, N'0:0:0:0:0:0:0:1', CAST(N'2022-07-22' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'9464493', 1659372321233, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'9687712', 1659370187430, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'9693022', 1659346456470, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'9981889', 1659444586400, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[visit_tracking] ([id], [time], [ip], [date]) VALUES (N'9998075', 1659369683736, N'0:0:0:0:0:0:0:1', CAST(N'2022-08-01' AS Date))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tblPayme__9B556A59387DBBC9]    Script Date: 8/2/2022 10:37:49 PM ******/
ALTER TABLE [dbo].[tblPayment] ADD UNIQUE NONCLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblBookingDetail]  WITH CHECK ADD FOREIGN KEY([BookingID])
REFERENCES [dbo].[tblBooking] ([BookingID])
GO
ALTER TABLE [dbo].[tblBookingDetail]  WITH CHECK ADD FOREIGN KEY([RoomID])
REFERENCES [dbo].[tblRoom] ([RoomID])
GO
ALTER TABLE [dbo].[tblBookingServiceDetail]  WITH CHECK ADD FOREIGN KEY([BookingID])
REFERENCES [dbo].[tblBooking] ([BookingID])
GO
ALTER TABLE [dbo].[tblBookingServiceDetail]  WITH CHECK ADD FOREIGN KEY([ServiceID])
REFERENCES [dbo].[tblService] ([ServiceID])
GO
ALTER TABLE [dbo].[tblDistrict]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[tblCity] ([CityID])
GO
ALTER TABLE [dbo].[tblFeedBack]  WITH CHECK ADD FOREIGN KEY([BookingID])
REFERENCES [dbo].[tblBooking] ([BookingID])
GO
ALTER TABLE [dbo].[tblFeedBack]  WITH CHECK ADD FOREIGN KEY([MotelID])
REFERENCES [dbo].[tblMotel] ([MotelID])
GO
ALTER TABLE [dbo].[tblMotel]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[tblDistrict] ([DistrictID])
GO
ALTER TABLE [dbo].[tblMotel]  WITH CHECK ADD FOREIGN KEY([OwnerID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblNotification]  WITH CHECK ADD FOREIGN KEY([OwnerID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblNotification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Booking] FOREIGN KEY([AnnouncementID])
REFERENCES [dbo].[tblBooking] ([BookingID])
GO
ALTER TABLE [dbo].[tblNotification] CHECK CONSTRAINT [FK_Notification_Booking]
GO
ALTER TABLE [dbo].[tblPayment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Booking] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[tblBooking] ([BookingID])
GO
ALTER TABLE [dbo].[tblPayment] CHECK CONSTRAINT [FK_Payment_Booking]
GO
ALTER TABLE [dbo].[tblReport]  WITH CHECK ADD FOREIGN KEY([MotelID])
REFERENCES [dbo].[tblMotel] ([MotelID])
GO
ALTER TABLE [dbo].[tblReport]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblRoom]  WITH CHECK ADD FOREIGN KEY([RoomTypeID])
REFERENCES [dbo].[tblRoomType] ([RoomTypeID])
GO
ALTER TABLE [dbo].[tblRoomType]  WITH CHECK ADD FOREIGN KEY([MotelID])
REFERENCES [dbo].[tblMotel] ([MotelID])
GO
ALTER TABLE [dbo].[tblService]  WITH CHECK ADD FOREIGN KEY([MotelID])
REFERENCES [dbo].[tblMotel] ([MotelID])
GO
ALTER TABLE [dbo].[tblMotel]  WITH CHECK ADD  CONSTRAINT [chk_Ratings] CHECK  (([Ratings]>=(0) AND [Ratings]<=(5)))
GO
ALTER TABLE [dbo].[tblMotel] CHECK CONSTRAINT [chk_Ratings]
GO
USE [master]
GO
ALTER DATABASE [MotelDB] SET  READ_WRITE 
GO
