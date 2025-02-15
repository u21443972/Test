USE [master]
GO
/****** Object:  Database [GalleryArtBar]    Script Date: 2024/07/01 11:20:47 ******/
CREATE DATABASE [GalleryArtBar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GalleryArtBar', FILENAME = N'C:\Users\Callum.Mitchlley\OneDrive - Konsise\Documents\Uni\MSSQL16.SQLEXPRESS\MSSQL\DATA\GalleryArtBar.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GalleryArtBar_log', FILENAME = N'C:\Users\Callum.Mitchlley\OneDrive - Konsise\Documents\Uni\MSSQL16.SQLEXPRESS\MSSQL\DATA\GalleryArtBar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GalleryArtBar] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GalleryArtBar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GalleryArtBar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GalleryArtBar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GalleryArtBar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GalleryArtBar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GalleryArtBar] SET ARITHABORT OFF 
GO
ALTER DATABASE [GalleryArtBar] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GalleryArtBar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GalleryArtBar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GalleryArtBar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GalleryArtBar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GalleryArtBar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GalleryArtBar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GalleryArtBar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GalleryArtBar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GalleryArtBar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GalleryArtBar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GalleryArtBar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GalleryArtBar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GalleryArtBar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GalleryArtBar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GalleryArtBar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GalleryArtBar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GalleryArtBar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GalleryArtBar] SET  MULTI_USER 
GO
ALTER DATABASE [GalleryArtBar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GalleryArtBar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GalleryArtBar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GalleryArtBar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GalleryArtBar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GalleryArtBar] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GalleryArtBar] SET QUERY_STORE = ON
GO
ALTER DATABASE [GalleryArtBar] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GalleryArtBar]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bartender_Deduction_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bartender_Deduction_Line](
	[Bartender_Deduction_Line_ID] [int] IDENTITY(1,1) NOT NULL,
	[Bartender_Deductions_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Bartender_Deduction_Line_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bartender_Deductions]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bartender_Deductions](
	[Bartender_Deductions_ID] [int] IDENTITY(1,1) NOT NULL,
	[Bartender_Tip_ID] [int] NULL,
	[Total_Deductions] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Bartender_Deductions_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bartender_Tip_Deduction_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bartender_Tip_Deduction_Line](
	[Bartender_Tip_Deduction_Line_ID] [int] IDENTITY(1,1) NOT NULL,
	[Bartender_Tip_ID] [int] NULL,
	[Bartender_Deductions_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Bartender_Tip_Deduction_Line_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bartender_Tips]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bartender_Tips](
	[Bartender_Tip_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cash_tips] [decimal](10, 2) NOT NULL,
	[Card_Tips] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Bartender_Tip_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Base_Rate]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Base_Rate](
	[Base_Rate_ID] [int] IDENTITY(1,1) NOT NULL,
	[Staff_Type_ID] [int] NULL,
	[Base_Rate_Amount] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Base_Rate_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CashCount]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CashCount](
	[Cash_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[CashFloat_ID] [int] NULL,
	[Total_Cash] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cash_Count_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CashFloat]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CashFloat](
	[CashFloat_ID] [int] IDENTITY(1,1) NOT NULL,
	[Opening_Balance] [decimal](10, 2) NOT NULL,
	[Amount_of_floats] [int] NOT NULL,
	[Closing_Balance] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CashFloat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CashFloats_Used]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CashFloats_Used](
	[CashFloats_Used_ID] [int] IDENTITY(1,1) NOT NULL,
	[Floats_Used] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CashFloats_Used_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clocked_In]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clocked_In](
	[Clocked_In_ID] [int] IDENTITY(1,1) NOT NULL,
	[Staff_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Clocked_In_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Closing_Inventory]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Closing_Inventory](
	[Closing_Inventory_ID] [int] IDENTITY(1,1) NOT NULL,
	[Closing_Inventory_Date] [date] NOT NULL,
	[Closing_Storeroom_Count] [int] NOT NULL,
	[Closing_Bar_Open_Bottles] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Closing_Inventory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Closing_Stock_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Closing_Stock_Line](
	[Closing_Stock_ID] [int] IDENTITY(1,1) NOT NULL,
	[Stock_Take_ID] [int] NULL,
	[Inventory_Name] [varchar](255) NOT NULL,
	[Closing_Inventory_Value] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Closing_Stock_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Closing_Weighted_Bottles]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Closing_Weighted_Bottles](
	[Closing_Weighted_Bottles_ID] [int] IDENTITY(1,1) NOT NULL,
	[Weighted_Bottles_ID] [int] NULL,
	[Closing_Inventory_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Closing_Weighted_Bottles_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Name] [varchar](255) NOT NULL,
	[Customer_Email] [varchar](255) NOT NULL,
	[Customer_PhoneNumber] [varchar](225) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Table_Booking]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Table_Booking](
	[Customer_Table_Booking_ID] [int] IDENTITY(1,1) NOT NULL,
	[Table_Booking_ID] [int] NULL,
	[Customer_ID] [int] NULL,
	[Booking_Date] [datetime] NOT NULL,
	[Staff_Name] [varchar](255) NOT NULL,
	[Table_Number] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_Table_Booking_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Image_ID] [int] IDENTITY(1,1) NOT NULL,
	[Image_Name] [varchar](225) NOT NULL,
	[Image_URL] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Image_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[Inventory_ID] [int] IDENTITY(1,1) NOT NULL,
	[Inventory_Name] [varchar](255) NOT NULL,
	[Inventory_Type_ID] [int] NULL,
	[Inventory_Requirements_ID] [int] NULL,
	[Amount_Available] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Category]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Category](
	[Inventory_Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Inventory_Category_Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventory_Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Discrepancy]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Discrepancy](
	[Inventory_Discrepancy_ID] [int] IDENTITY(1,1) NOT NULL,
	[Type_Of_Discrepancy] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventory_Discrepancy_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Discrepancy_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Discrepancy_Line](
	[Inventory_Discrepancy_Line_ID] [int] IDENTITY(1,1) NOT NULL,
	[Inventory_Discrepancy_ID] [int] NULL,
	[Inventory_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventory_Discrepancy_Line_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Order_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Order_Line](
	[Inventory_Order_Line_ID] [int] IDENTITY(1,1) NOT NULL,
	[Inventory_Orders_ID] [int] NULL,
	[Inventory_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventory_Order_Line_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Orders]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Orders](
	[Inventory_Orders_ID] [int] IDENTITY(1,1) NOT NULL,
	[Inventory_ID] [int] NULL,
	[Inventory_Type_ID] [int] NULL,
	[Inventory_Category_ID] [int] NULL,
	[Inventory_Order_Price] [decimal](10, 2) NOT NULL,
	[Inventory_Order_Date] [datetime] NOT NULL,
	[Inventory_Order_Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventory_Orders_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Requirements]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Requirements](
	[Inventory_Requirements_ID] [int] IDENTITY(1,1) NOT NULL,
	[Requirement_Value] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventory_Requirements_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Status]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Status](
	[Inventory_Status_ID] [int] IDENTITY(1,1) NOT NULL,
	[Inventory_Status] [varchar](255) NOT NULL,
	[Inventory_Orders_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Supplier_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Supplier_Line](
	[Inventory_Supplier_Line_ID] [int] IDENTITY(1,1) NOT NULL,
	[Inventory_Orders_ID] [int] NULL,
	[Supplier_ID] [int] NULL,
	[Inventory_Name] [varchar](255) NOT NULL,
	[Inventory_Order_Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventory_Supplier_Line_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Type]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Type](
	[Inventory_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Inventory_Type_Name] [varchar](225) NOT NULL,
	[Inventory_Category_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventory_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opening_Inventory]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opening_Inventory](
	[Opening_Inventory_ID] [int] IDENTITY(1,1) NOT NULL,
	[Opening_Inventory_Date] [date] NOT NULL,
	[Opening_Storeroom_Count] [int] NOT NULL,
	[Opening_Bar_Open_Bottles] [int] NOT NULL,
	[Opening_Weighted_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Opening_Inventory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opening_Stock_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opening_Stock_Line](
	[Opening_Stock_ID] [int] IDENTITY(1,1) NOT NULL,
	[Stock_Take_ID] [int] NULL,
	[Inventory_Name] [varchar](255) NOT NULL,
	[Opening_Inventory_Value] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Opening_Stock_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opening_Weighted_Bottles]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opening_Weighted_Bottles](
	[Opening_Weighted_ID] [int] IDENTITY(1,1) NOT NULL,
	[Weighted_Bottles_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Opening_Weighted_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Payment_ID] [int] IDENTITY(1,1) NOT NULL,
	[Payment_Type_ID] [int] NULL,
	[Bartender_Tip_ID] [int] NULL,
	[Payment_Date] [datetime] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Vat_ID] [int] NULL,
	[Total_Payment_Amount] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Line](
	[Payment_Line_ID] [int] IDENTITY(1,1) NOT NULL,
	[Payment_ID] [int] NULL,
	[Sales_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_Line_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Type]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Type](
	[Payment_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Payment_Type_Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prices]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prices](
	[Prices_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cost_Price] [decimal](10, 2) NOT NULL,
	[Selling_Price] [decimal](10, 2) NOT NULL,
	[Inventory_ID] [int] NULL,
	[Product_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Prices_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [varchar](255) NOT NULL,
	[Selling_Price] [decimal](10, 2) NOT NULL,
	[Product_Type_ID] [int] NULL,
	[Product_Category_ID] [int] NULL,
	[Amount_Available] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Category]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Category](
	[Product_Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_Category_Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Inventory_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Inventory_Line](
	[Inventory_Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_ID] [int] NULL,
	[Inventory_ID] [int] NULL,
	[Product_Name] [varchar](255) NOT NULL,
	[Selling_Price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventory_Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Type]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Type](
	[Product_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_Type_Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale_Line](
	[Sale_Line_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sales_ID] [int] NULL,
	[Product_ID] [int] NULL,
	[Product_Name] [varchar](255) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Sale_Total] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sale_Line_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[Sales_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sale_Date] [datetime] NOT NULL,
	[Staff_ID] [int] NULL,
	[Staff_Type_ID] [int] NULL,
	[Sales_Type_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sales_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Type]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Type](
	[Sales_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sales_Type_Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sales_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shift_Booking]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift_Booking](
	[Shift_Booking_ID] [int] IDENTITY(1,1) NOT NULL,
	[Booking_Date] [date] NOT NULL,
	[Positions_Available] [int] NOT NULL,
	[Shift_Booking_Status_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Shift_Booking_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shift_Booking_Status]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift_Booking_Status](
	[Shift_Booking_Status_ID] [int] IDENTITY(1,1) NOT NULL,
	[Book_Shift_Status] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Shift_Booking_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shift_Change_Request]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift_Change_Request](
	[Shift_Change_ID] [int] IDENTITY(1,1) NOT NULL,
	[Shift_Roster_ID] [int] NULL,
	[Shift_Change_Status_ID] [int] NULL,
	[Shift_Change_Request_Date] [datetime] NOT NULL,
	[Staff_Name] [varchar](255) NOT NULL,
	[Shift_Change_Description] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Shift_Change_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shift_Change_Status]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift_Change_Status](
	[Shift_Change_Status_ID] [int] IDENTITY(1,1) NOT NULL,
	[Shift_Change_Status] [varchar](255) NOT NULL,
	[Shift_Change_Reason] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Shift_Change_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shift_Roster]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift_Roster](
	[Shift_Roster_ID] [int] IDENTITY(1,1) NOT NULL,
	[Shift_Date] [date] NOT NULL,
	[Available_Shift_Time] [datetime] NOT NULL,
	[Number_Of_Employees] [int] NOT NULL,
	[Shift_Booking_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Shift_Roster_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Staff_ID] [int] IDENTITY(1,1) NOT NULL,
	[Staff_Name] [varchar](255) NOT NULL,
	[Staff_Age] [int] NOT NULL,
	[Date_Of_Birth] [date] NOT NULL,
	[Staff_Email] [varchar](255) NOT NULL,
	[Staff_Photo] [varchar](255) NOT NULL,
	[Staff_Passcode] [varchar](255) NOT NULL,
	[Staff_Type_ID] [int] NULL,
	[Token] [varchar](255) NULL,
	[Tokens] [varchar](max) NULL,
	[IsTwoFactorAuthenticated] [bit] NOT NULL,
	[TwoFactorMethod] [nvarchar](max) NULL,
	[TwoFactorContact] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Payment]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Payment](
	[Staff_Payment_ID] [int] IDENTITY(1,1) NOT NULL,
	[Shift_Date] [date] NOT NULL,
	[Staff_ID] [int] NULL,
	[Base_Rate_ID] [int] NULL,
	[Cash_Tips] [decimal](10, 2) NOT NULL,
	[Card_Tips] [decimal](10, 2) NOT NULL,
	[Payment_Amount] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_Payment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Shift_Booking_Line]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Shift_Booking_Line](
	[Staff_Shift_Booking_ID] [int] IDENTITY(1,1) NOT NULL,
	[Staff_ID] [int] NULL,
	[Staff_Name] [varchar](255) NOT NULL,
	[Booking_Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_Shift_Booking_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Type]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Type](
	[Staff_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Staff_Type_Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock_Take]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Take](
	[Stock_Take_ID] [int] IDENTITY(1,1) NOT NULL,
	[Inventory_ID] [int] NULL,
	[Opening_Inventory_ID] [int] NULL,
	[Weighted_Stock_ID] [int] NULL,
	[Closing_Inventory_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Stock_Take_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Supplier_ID] [int] IDENTITY(1,1) NOT NULL,
	[Supplier_Name] [varchar](255) NOT NULL,
	[Supplier_Email] [varchar](255) NOT NULL,
	[Supplier_PhoneNumber] [varchar](255) NOT NULL,
	[Supplier_Address] [varchar](255) NOT NULL,
	[Supplier_Type_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Supplier_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_Type]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Type](
	[Supplier_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Supplier_Type] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Supplier_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Booking]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Booking](
	[Table_Booking_ID] [int] IDENTITY(1,1) NOT NULL,
	[TableBooking_Date] [datetime] NOT NULL,
	[Table_Number] [varchar](255) NOT NULL,
	[Table_Booking_Status_ID] [int] NULL,
	[Staff_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Table_Booking_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Booking_Status]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Booking_Status](
	[Table_Booking_Status_ID] [int] IDENTITY(1,1) NOT NULL,
	[Table_Booking_Status] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Table_Booking_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vat]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vat](
	[Vat_ID] [int] IDENTITY(1,1) NOT NULL,
	[Vat_Amount] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Vat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weighted_Bottles]    Script Date: 2024/07/01 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weighted_Bottles](
	[Weighted_Bottles_ID] [int] IDENTITY(1,1) NOT NULL,
	[Weighing_Date] [int] NOT NULL,
	[Weighted_Value] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Weighted_Bottles_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bartender_Deduction_Line] ON 

INSERT [dbo].[Bartender_Deduction_Line] ([Bartender_Deduction_Line_ID], [Bartender_Deductions_ID]) VALUES (1, 2)
INSERT [dbo].[Bartender_Deduction_Line] ([Bartender_Deduction_Line_ID], [Bartender_Deductions_ID]) VALUES (2, 3)
INSERT [dbo].[Bartender_Deduction_Line] ([Bartender_Deduction_Line_ID], [Bartender_Deductions_ID]) VALUES (3, 4)
INSERT [dbo].[Bartender_Deduction_Line] ([Bartender_Deduction_Line_ID], [Bartender_Deductions_ID]) VALUES (4, 5)
INSERT [dbo].[Bartender_Deduction_Line] ([Bartender_Deduction_Line_ID], [Bartender_Deductions_ID]) VALUES (5, 6)
INSERT [dbo].[Bartender_Deduction_Line] ([Bartender_Deduction_Line_ID], [Bartender_Deductions_ID]) VALUES (6, 7)
INSERT [dbo].[Bartender_Deduction_Line] ([Bartender_Deduction_Line_ID], [Bartender_Deductions_ID]) VALUES (7, 8)
INSERT [dbo].[Bartender_Deduction_Line] ([Bartender_Deduction_Line_ID], [Bartender_Deductions_ID]) VALUES (8, 9)
INSERT [dbo].[Bartender_Deduction_Line] ([Bartender_Deduction_Line_ID], [Bartender_Deductions_ID]) VALUES (9, 10)
INSERT [dbo].[Bartender_Deduction_Line] ([Bartender_Deduction_Line_ID], [Bartender_Deductions_ID]) VALUES (10, 11)
SET IDENTITY_INSERT [dbo].[Bartender_Deduction_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Bartender_Deductions] ON 

INSERT [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID], [Bartender_Tip_ID], [Total_Deductions]) VALUES (2, 1, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID], [Bartender_Tip_ID], [Total_Deductions]) VALUES (3, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID], [Bartender_Tip_ID], [Total_Deductions]) VALUES (4, 3, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID], [Bartender_Tip_ID], [Total_Deductions]) VALUES (5, 4, CAST(75.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID], [Bartender_Tip_ID], [Total_Deductions]) VALUES (6, 5, CAST(70.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID], [Bartender_Tip_ID], [Total_Deductions]) VALUES (7, 6, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID], [Bartender_Tip_ID], [Total_Deductions]) VALUES (8, 7, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID], [Bartender_Tip_ID], [Total_Deductions]) VALUES (9, 8, CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID], [Bartender_Tip_ID], [Total_Deductions]) VALUES (10, 9, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID], [Bartender_Tip_ID], [Total_Deductions]) VALUES (11, 10, CAST(115.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Bartender_Deductions] OFF
GO
SET IDENTITY_INSERT [dbo].[Bartender_Tip_Deduction_Line] ON 

INSERT [dbo].[Bartender_Tip_Deduction_Line] ([Bartender_Tip_Deduction_Line_ID], [Bartender_Tip_ID], [Bartender_Deductions_ID]) VALUES (2, 2, 2)
INSERT [dbo].[Bartender_Tip_Deduction_Line] ([Bartender_Tip_Deduction_Line_ID], [Bartender_Tip_ID], [Bartender_Deductions_ID]) VALUES (3, 1, 2)
INSERT [dbo].[Bartender_Tip_Deduction_Line] ([Bartender_Tip_Deduction_Line_ID], [Bartender_Tip_ID], [Bartender_Deductions_ID]) VALUES (5, 5, 3)
INSERT [dbo].[Bartender_Tip_Deduction_Line] ([Bartender_Tip_Deduction_Line_ID], [Bartender_Tip_ID], [Bartender_Deductions_ID]) VALUES (6, 2, 6)
INSERT [dbo].[Bartender_Tip_Deduction_Line] ([Bartender_Tip_Deduction_Line_ID], [Bartender_Tip_ID], [Bartender_Deductions_ID]) VALUES (7, 1, 2)
INSERT [dbo].[Bartender_Tip_Deduction_Line] ([Bartender_Tip_Deduction_Line_ID], [Bartender_Tip_ID], [Bartender_Deductions_ID]) VALUES (8, 6, 6)
INSERT [dbo].[Bartender_Tip_Deduction_Line] ([Bartender_Tip_Deduction_Line_ID], [Bartender_Tip_ID], [Bartender_Deductions_ID]) VALUES (9, 4, 2)
INSERT [dbo].[Bartender_Tip_Deduction_Line] ([Bartender_Tip_Deduction_Line_ID], [Bartender_Tip_ID], [Bartender_Deductions_ID]) VALUES (10, 9, 6)
INSERT [dbo].[Bartender_Tip_Deduction_Line] ([Bartender_Tip_Deduction_Line_ID], [Bartender_Tip_ID], [Bartender_Deductions_ID]) VALUES (11, 2, 2)
INSERT [dbo].[Bartender_Tip_Deduction_Line] ([Bartender_Tip_Deduction_Line_ID], [Bartender_Tip_ID], [Bartender_Deductions_ID]) VALUES (12, 10, 10)
SET IDENTITY_INSERT [dbo].[Bartender_Tip_Deduction_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Bartender_Tips] ON 

INSERT [dbo].[Bartender_Tips] ([Bartender_Tip_ID], [Cash_tips], [Card_Tips]) VALUES (1, CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Tips] ([Bartender_Tip_ID], [Cash_tips], [Card_Tips]) VALUES (2, CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Tips] ([Bartender_Tip_ID], [Cash_tips], [Card_Tips]) VALUES (3, CAST(12.00 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Tips] ([Bartender_Tip_ID], [Cash_tips], [Card_Tips]) VALUES (4, CAST(5.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Tips] ([Bartender_Tip_ID], [Cash_tips], [Card_Tips]) VALUES (5, CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Tips] ([Bartender_Tip_ID], [Cash_tips], [Card_Tips]) VALUES (6, CAST(20.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Tips] ([Bartender_Tip_ID], [Cash_tips], [Card_Tips]) VALUES (7, CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Tips] ([Bartender_Tip_ID], [Cash_tips], [Card_Tips]) VALUES (8, CAST(15.00 AS Decimal(10, 2)), CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Tips] ([Bartender_Tip_ID], [Cash_tips], [Card_Tips]) VALUES (9, CAST(25.00 AS Decimal(10, 2)), CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[Bartender_Tips] ([Bartender_Tip_ID], [Cash_tips], [Card_Tips]) VALUES (10, CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Bartender_Tips] OFF
GO
SET IDENTITY_INSERT [dbo].[Base_Rate] ON 

INSERT [dbo].[Base_Rate] ([Base_Rate_ID], [Staff_Type_ID], [Base_Rate_Amount]) VALUES (1, 1, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Base_Rate] ([Base_Rate_ID], [Staff_Type_ID], [Base_Rate_Amount]) VALUES (2, 2, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[Base_Rate] ([Base_Rate_ID], [Staff_Type_ID], [Base_Rate_Amount]) VALUES (4, 3, CAST(500.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Base_Rate] OFF
GO
SET IDENTITY_INSERT [dbo].[CashCount] ON 

INSERT [dbo].[CashCount] ([Cash_Count_ID], [CashFloat_ID], [Total_Cash]) VALUES (1, 11, CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashCount] ([Cash_Count_ID], [CashFloat_ID], [Total_Cash]) VALUES (3, 12, CAST(14000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashCount] ([Cash_Count_ID], [CashFloat_ID], [Total_Cash]) VALUES (4, 13, CAST(25000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashCount] ([Cash_Count_ID], [CashFloat_ID], [Total_Cash]) VALUES (5, 14, CAST(9000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashCount] ([Cash_Count_ID], [CashFloat_ID], [Total_Cash]) VALUES (6, 15, CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashCount] ([Cash_Count_ID], [CashFloat_ID], [Total_Cash]) VALUES (7, 16, CAST(300000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashCount] ([Cash_Count_ID], [CashFloat_ID], [Total_Cash]) VALUES (8, 17, CAST(11000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashCount] ([Cash_Count_ID], [CashFloat_ID], [Total_Cash]) VALUES (9, 18, CAST(31500.00 AS Decimal(10, 2)))
INSERT [dbo].[CashCount] ([Cash_Count_ID], [CashFloat_ID], [Total_Cash]) VALUES (10, 19, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashCount] ([Cash_Count_ID], [CashFloat_ID], [Total_Cash]) VALUES (11, 20, CAST(17000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[CashCount] OFF
GO
SET IDENTITY_INSERT [dbo].[CashFloat] ON 

INSERT [dbo].[CashFloat] ([CashFloat_ID], [Opening_Balance], [Amount_of_floats], [Closing_Balance]) VALUES (11, CAST(10000.00 AS Decimal(10, 2)), 2, CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashFloat] ([CashFloat_ID], [Opening_Balance], [Amount_of_floats], [Closing_Balance]) VALUES (12, CAST(9000.00 AS Decimal(10, 2)), 2, CAST(14000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashFloat] ([CashFloat_ID], [Opening_Balance], [Amount_of_floats], [Closing_Balance]) VALUES (13, CAST(12500.00 AS Decimal(10, 2)), 3, CAST(25000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashFloat] ([CashFloat_ID], [Opening_Balance], [Amount_of_floats], [Closing_Balance]) VALUES (14, CAST(5000.00 AS Decimal(10, 2)), 1, CAST(9000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashFloat] ([CashFloat_ID], [Opening_Balance], [Amount_of_floats], [Closing_Balance]) VALUES (15, CAST(12750.00 AS Decimal(10, 2)), 3, CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashFloat] ([CashFloat_ID], [Opening_Balance], [Amount_of_floats], [Closing_Balance]) VALUES (16, CAST(20000.00 AS Decimal(10, 2)), 4, CAST(300000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashFloat] ([CashFloat_ID], [Opening_Balance], [Amount_of_floats], [Closing_Balance]) VALUES (17, CAST(8700.00 AS Decimal(10, 2)), 2, CAST(11000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashFloat] ([CashFloat_ID], [Opening_Balance], [Amount_of_floats], [Closing_Balance]) VALUES (18, CAST(23000.00 AS Decimal(10, 2)), 4, CAST(31500.00 AS Decimal(10, 2)))
INSERT [dbo].[CashFloat] ([CashFloat_ID], [Opening_Balance], [Amount_of_floats], [Closing_Balance]) VALUES (19, CAST(1000.00 AS Decimal(10, 2)), 1, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[CashFloat] ([CashFloat_ID], [Opening_Balance], [Amount_of_floats], [Closing_Balance]) VALUES (20, CAST(9500.00 AS Decimal(10, 2)), 3, CAST(17000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[CashFloat] OFF
GO
SET IDENTITY_INSERT [dbo].[CashFloats_Used] ON 

INSERT [dbo].[CashFloats_Used] ([CashFloats_Used_ID], [Floats_Used]) VALUES (1, 10000)
INSERT [dbo].[CashFloats_Used] ([CashFloats_Used_ID], [Floats_Used]) VALUES (2, 9000)
INSERT [dbo].[CashFloats_Used] ([CashFloats_Used_ID], [Floats_Used]) VALUES (3, 12500)
INSERT [dbo].[CashFloats_Used] ([CashFloats_Used_ID], [Floats_Used]) VALUES (4, 5000)
INSERT [dbo].[CashFloats_Used] ([CashFloats_Used_ID], [Floats_Used]) VALUES (5, 12750)
INSERT [dbo].[CashFloats_Used] ([CashFloats_Used_ID], [Floats_Used]) VALUES (6, 20000)
INSERT [dbo].[CashFloats_Used] ([CashFloats_Used_ID], [Floats_Used]) VALUES (7, 8700)
INSERT [dbo].[CashFloats_Used] ([CashFloats_Used_ID], [Floats_Used]) VALUES (8, 23000)
INSERT [dbo].[CashFloats_Used] ([CashFloats_Used_ID], [Floats_Used]) VALUES (9, 1000)
INSERT [dbo].[CashFloats_Used] ([CashFloats_Used_ID], [Floats_Used]) VALUES (10, 9500)
SET IDENTITY_INSERT [dbo].[CashFloats_Used] OFF
GO
SET IDENTITY_INSERT [dbo].[Clocked_In] ON 

INSERT [dbo].[Clocked_In] ([Clocked_In_ID], [Staff_ID]) VALUES (5, 34)
INSERT [dbo].[Clocked_In] ([Clocked_In_ID], [Staff_ID]) VALUES (6, 16)
INSERT [dbo].[Clocked_In] ([Clocked_In_ID], [Staff_ID]) VALUES (7, 33)
INSERT [dbo].[Clocked_In] ([Clocked_In_ID], [Staff_ID]) VALUES (8, 17)
INSERT [dbo].[Clocked_In] ([Clocked_In_ID], [Staff_ID]) VALUES (9, 30)
INSERT [dbo].[Clocked_In] ([Clocked_In_ID], [Staff_ID]) VALUES (10, 18)
INSERT [dbo].[Clocked_In] ([Clocked_In_ID], [Staff_ID]) VALUES (11, 29)
INSERT [dbo].[Clocked_In] ([Clocked_In_ID], [Staff_ID]) VALUES (12, 19)
INSERT [dbo].[Clocked_In] ([Clocked_In_ID], [Staff_ID]) VALUES (13, 28)
INSERT [dbo].[Clocked_In] ([Clocked_In_ID], [Staff_ID]) VALUES (14, 27)
SET IDENTITY_INSERT [dbo].[Clocked_In] OFF
GO
SET IDENTITY_INSERT [dbo].[Closing_Inventory] ON 

INSERT [dbo].[Closing_Inventory] ([Closing_Inventory_ID], [Closing_Inventory_Date], [Closing_Storeroom_Count], [Closing_Bar_Open_Bottles]) VALUES (1, CAST(N'2024-07-05' AS Date), 500, 25)
INSERT [dbo].[Closing_Inventory] ([Closing_Inventory_ID], [Closing_Inventory_Date], [Closing_Storeroom_Count], [Closing_Bar_Open_Bottles]) VALUES (2, CAST(N'2024-07-06' AS Date), 235, 12)
INSERT [dbo].[Closing_Inventory] ([Closing_Inventory_ID], [Closing_Inventory_Date], [Closing_Storeroom_Count], [Closing_Bar_Open_Bottles]) VALUES (3, CAST(N'2024-07-07' AS Date), 200, 7)
INSERT [dbo].[Closing_Inventory] ([Closing_Inventory_ID], [Closing_Inventory_Date], [Closing_Storeroom_Count], [Closing_Bar_Open_Bottles]) VALUES (4, CAST(N'2024-07-12' AS Date), 512, 32)
INSERT [dbo].[Closing_Inventory] ([Closing_Inventory_ID], [Closing_Inventory_Date], [Closing_Storeroom_Count], [Closing_Bar_Open_Bottles]) VALUES (5, CAST(N'2024-07-13' AS Date), 365, 22)
INSERT [dbo].[Closing_Inventory] ([Closing_Inventory_ID], [Closing_Inventory_Date], [Closing_Storeroom_Count], [Closing_Bar_Open_Bottles]) VALUES (6, CAST(N'2024-07-19' AS Date), 611, 40)
INSERT [dbo].[Closing_Inventory] ([Closing_Inventory_ID], [Closing_Inventory_Date], [Closing_Storeroom_Count], [Closing_Bar_Open_Bottles]) VALUES (7, CAST(N'2024-07-20' AS Date), 198, 9)
INSERT [dbo].[Closing_Inventory] ([Closing_Inventory_ID], [Closing_Inventory_Date], [Closing_Storeroom_Count], [Closing_Bar_Open_Bottles]) VALUES (8, CAST(N'2024-07-27' AS Date), 440, 29)
INSERT [dbo].[Closing_Inventory] ([Closing_Inventory_ID], [Closing_Inventory_Date], [Closing_Storeroom_Count], [Closing_Bar_Open_Bottles]) VALUES (9, CAST(N'2024-07-28' AS Date), 199, 9)
INSERT [dbo].[Closing_Inventory] ([Closing_Inventory_ID], [Closing_Inventory_Date], [Closing_Storeroom_Count], [Closing_Bar_Open_Bottles]) VALUES (10, CAST(N'2024-08-04' AS Date), 312, 19)
SET IDENTITY_INSERT [dbo].[Closing_Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Closing_Stock_Line] ON 

INSERT [dbo].[Closing_Stock_Line] ([Closing_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Closing_Inventory_Value]) VALUES (3, 4, N'January', 10000)
INSERT [dbo].[Closing_Stock_Line] ([Closing_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Closing_Inventory_Value]) VALUES (4, 5, N'Feb', 950)
INSERT [dbo].[Closing_Stock_Line] ([Closing_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Closing_Inventory_Value]) VALUES (5, 6, N'March', 1200)
INSERT [dbo].[Closing_Stock_Line] ([Closing_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Closing_Inventory_Value]) VALUES (6, 7, N'April', 875)
INSERT [dbo].[Closing_Stock_Line] ([Closing_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Closing_Inventory_Value]) VALUES (7, 8, N'May', 245)
INSERT [dbo].[Closing_Stock_Line] ([Closing_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Closing_Inventory_Value]) VALUES (8, 9, N'June', 2000)
INSERT [dbo].[Closing_Stock_Line] ([Closing_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Closing_Inventory_Value]) VALUES (9, 10, N'July', 4560)
INSERT [dbo].[Closing_Stock_Line] ([Closing_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Closing_Inventory_Value]) VALUES (10, 11, N'August', 6670)
INSERT [dbo].[Closing_Stock_Line] ([Closing_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Closing_Inventory_Value]) VALUES (11, 12, N'September', 199)
INSERT [dbo].[Closing_Stock_Line] ([Closing_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Closing_Inventory_Value]) VALUES (12, 13, N'October', 1010)
SET IDENTITY_INSERT [dbo].[Closing_Stock_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Closing_Weighted_Bottles] ON 

INSERT [dbo].[Closing_Weighted_Bottles] ([Closing_Weighted_Bottles_ID], [Weighted_Bottles_ID], [Closing_Inventory_ID]) VALUES (3, 2, 1)
INSERT [dbo].[Closing_Weighted_Bottles] ([Closing_Weighted_Bottles_ID], [Weighted_Bottles_ID], [Closing_Inventory_ID]) VALUES (6, 4, 2)
INSERT [dbo].[Closing_Weighted_Bottles] ([Closing_Weighted_Bottles_ID], [Weighted_Bottles_ID], [Closing_Inventory_ID]) VALUES (7, 5, 3)
INSERT [dbo].[Closing_Weighted_Bottles] ([Closing_Weighted_Bottles_ID], [Weighted_Bottles_ID], [Closing_Inventory_ID]) VALUES (8, 6, 4)
INSERT [dbo].[Closing_Weighted_Bottles] ([Closing_Weighted_Bottles_ID], [Weighted_Bottles_ID], [Closing_Inventory_ID]) VALUES (9, 7, 5)
INSERT [dbo].[Closing_Weighted_Bottles] ([Closing_Weighted_Bottles_ID], [Weighted_Bottles_ID], [Closing_Inventory_ID]) VALUES (10, 8, 6)
INSERT [dbo].[Closing_Weighted_Bottles] ([Closing_Weighted_Bottles_ID], [Weighted_Bottles_ID], [Closing_Inventory_ID]) VALUES (11, 9, 7)
INSERT [dbo].[Closing_Weighted_Bottles] ([Closing_Weighted_Bottles_ID], [Weighted_Bottles_ID], [Closing_Inventory_ID]) VALUES (12, 10, 8)
INSERT [dbo].[Closing_Weighted_Bottles] ([Closing_Weighted_Bottles_ID], [Weighted_Bottles_ID], [Closing_Inventory_ID]) VALUES (13, 11, 9)
INSERT [dbo].[Closing_Weighted_Bottles] ([Closing_Weighted_Bottles_ID], [Weighted_Bottles_ID], [Closing_Inventory_ID]) VALUES (15, 6, 10)
SET IDENTITY_INSERT [dbo].[Closing_Weighted_Bottles] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Customer_Email], [Customer_PhoneNumber]) VALUES (1, N'Connor', N'conner@gmail.com', N'1111111111')
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Customer_Email], [Customer_PhoneNumber]) VALUES (2, N'Matthew', N'matthew@gmaul.com', N'2222222222')
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Customer_Email], [Customer_PhoneNumber]) VALUES (3, N'Justine', N'justine@gmail.com', N'3333333333')
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Customer_Email], [Customer_PhoneNumber]) VALUES (4, N'Micheal', N'micheal@gmail.com', N'4444444444')
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Customer_Email], [Customer_PhoneNumber]) VALUES (5, N'Shannon', N'shan@gmail.com', N'5555555555')
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Customer_Email], [Customer_PhoneNumber]) VALUES (6, N'Josh', N'josh@gmail.com', N'6666666666')
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Customer_Email], [Customer_PhoneNumber]) VALUES (7, N'Tom', N'tom@gmail.com', N'7777777777')
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Customer_Email], [Customer_PhoneNumber]) VALUES (8, N'Gaby', N'gaby@gmail.com', N'8888888888')
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Customer_Email], [Customer_PhoneNumber]) VALUES (9, N'Rozhin', N'rozhin@gmail.com', N'9999999999')
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Customer_Email], [Customer_PhoneNumber]) VALUES (10, N'Chris', N'chris@gmail.com', N'1010101010')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Table_Booking] ON 

INSERT [dbo].[Customer_Table_Booking] ([Customer_Table_Booking_ID], [Table_Booking_ID], [Customer_ID], [Booking_Date], [Staff_Name], [Table_Number]) VALUES (3, 1, 1, CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'Bradley', 1)
INSERT [dbo].[Customer_Table_Booking] ([Customer_Table_Booking_ID], [Table_Booking_ID], [Customer_ID], [Booking_Date], [Staff_Name], [Table_Number]) VALUES (4, 2, 2, CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'Sam', 2)
INSERT [dbo].[Customer_Table_Booking] ([Customer_Table_Booking_ID], [Table_Booking_ID], [Customer_ID], [Booking_Date], [Staff_Name], [Table_Number]) VALUES (5, 3, 3, CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'Mandla', 3)
INSERT [dbo].[Customer_Table_Booking] ([Customer_Table_Booking_ID], [Table_Booking_ID], [Customer_ID], [Booking_Date], [Staff_Name], [Table_Number]) VALUES (6, 4, 4, CAST(N'2024-08-03T00:00:00.000' AS DateTime), N'Shaun', 1)
INSERT [dbo].[Customer_Table_Booking] ([Customer_Table_Booking_ID], [Table_Booking_ID], [Customer_ID], [Booking_Date], [Staff_Name], [Table_Number]) VALUES (8, 5, 5, CAST(N'2024-08-03T00:00:00.000' AS DateTime), N'Brad', 2)
INSERT [dbo].[Customer_Table_Booking] ([Customer_Table_Booking_ID], [Table_Booking_ID], [Customer_ID], [Booking_Date], [Staff_Name], [Table_Number]) VALUES (9, 6, 6, CAST(N'2024-09-14T00:00:00.000' AS DateTime), N'Sam', 1)
INSERT [dbo].[Customer_Table_Booking] ([Customer_Table_Booking_ID], [Table_Booking_ID], [Customer_ID], [Booking_Date], [Staff_Name], [Table_Number]) VALUES (10, 7, 7, CAST(N'2024-09-14T00:00:00.000' AS DateTime), N'Brad', 2)
INSERT [dbo].[Customer_Table_Booking] ([Customer_Table_Booking_ID], [Table_Booking_ID], [Customer_ID], [Booking_Date], [Staff_Name], [Table_Number]) VALUES (12, 8, 8, CAST(N'2024-09-14T00:00:00.000' AS DateTime), N'Mandla', 3)
INSERT [dbo].[Customer_Table_Booking] ([Customer_Table_Booking_ID], [Table_Booking_ID], [Customer_ID], [Booking_Date], [Staff_Name], [Table_Number]) VALUES (13, 9, 9, CAST(N'2024-09-20T00:00:00.000' AS DateTime), N'Mitch', 2)
SET IDENTITY_INSERT [dbo].[Customer_Table_Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Image_ID], [Image_Name], [Image_URL]) VALUES (2, N'Shaun', N'shaun_photo')
INSERT [dbo].[Images] ([Image_ID], [Image_Name], [Image_URL]) VALUES (3, N'Brad', N'brad_photo')
INSERT [dbo].[Images] ([Image_ID], [Image_Name], [Image_URL]) VALUES (4, N'Mandla', N'mandla_photo')
INSERT [dbo].[Images] ([Image_ID], [Image_Name], [Image_URL]) VALUES (5, N'Sam', N'sam_photo')
INSERT [dbo].[Images] ([Image_ID], [Image_Name], [Image_URL]) VALUES (6, N'Mitch', N'mitch_photo')
INSERT [dbo].[Images] ([Image_ID], [Image_Name], [Image_URL]) VALUES (7, N'Mike', N'mike_photo')
INSERT [dbo].[Images] ([Image_ID], [Image_Name], [Image_URL]) VALUES (8, N'Tommy', N'tommy_photo')
INSERT [dbo].[Images] ([Image_ID], [Image_Name], [Image_URL]) VALUES (9, N'Josh', N'josh_photo')
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([Inventory_ID], [Inventory_Name], [Inventory_Type_ID], [Inventory_Requirements_ID], [Amount_Available]) VALUES (1, N'Beer', 1, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory] ([Inventory_ID], [Inventory_Name], [Inventory_Type_ID], [Inventory_Requirements_ID], [Amount_Available]) VALUES (2, N'Vodka', 1, 2, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory] ([Inventory_ID], [Inventory_Name], [Inventory_Type_ID], [Inventory_Requirements_ID], [Amount_Available]) VALUES (3, N'Brandy', 1, 4, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory] ([Inventory_ID], [Inventory_Name], [Inventory_Type_ID], [Inventory_Requirements_ID], [Amount_Available]) VALUES (4, N'Tequilla', 1, 1, CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory] ([Inventory_ID], [Inventory_Name], [Inventory_Type_ID], [Inventory_Requirements_ID], [Amount_Available]) VALUES (5, N'Rum', 1, 5, CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory] ([Inventory_ID], [Inventory_Name], [Inventory_Type_ID], [Inventory_Requirements_ID], [Amount_Available]) VALUES (6, N'Vapes', 4, 3, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory] ([Inventory_ID], [Inventory_Name], [Inventory_Type_ID], [Inventory_Requirements_ID], [Amount_Available]) VALUES (7, N'Hub', 4, 10, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory] ([Inventory_ID], [Inventory_Name], [Inventory_Type_ID], [Inventory_Requirements_ID], [Amount_Available]) VALUES (8, N'Pepporini', 3, 8, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory] ([Inventory_ID], [Inventory_Name], [Inventory_Type_ID], [Inventory_Requirements_ID], [Amount_Available]) VALUES (9, N'Cheese', 3, 7, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory] ([Inventory_ID], [Inventory_Name], [Inventory_Type_ID], [Inventory_Requirements_ID], [Amount_Available]) VALUES (10, N'Coke', 2, 2, CAST(3000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Category] ON 

INSERT [dbo].[Inventory_Category] ([Inventory_Category_ID], [Inventory_Category_Name]) VALUES (1, N'Alcohol')
INSERT [dbo].[Inventory_Category] ([Inventory_Category_ID], [Inventory_Category_Name]) VALUES (2, N'Non-Alcoholic')
INSERT [dbo].[Inventory_Category] ([Inventory_Category_ID], [Inventory_Category_Name]) VALUES (3, N'Pizza')
INSERT [dbo].[Inventory_Category] ([Inventory_Category_ID], [Inventory_Category_Name]) VALUES (4, N'Smoking')
INSERT [dbo].[Inventory_Category] ([Inventory_Category_ID], [Inventory_Category_Name]) VALUES (5, N'')
INSERT [dbo].[Inventory_Category] ([Inventory_Category_ID], [Inventory_Category_Name]) VALUES (6, N'')
INSERT [dbo].[Inventory_Category] ([Inventory_Category_ID], [Inventory_Category_Name]) VALUES (7, N'')
INSERT [dbo].[Inventory_Category] ([Inventory_Category_ID], [Inventory_Category_Name]) VALUES (8, N'')
INSERT [dbo].[Inventory_Category] ([Inventory_Category_ID], [Inventory_Category_Name]) VALUES (9, N'')
INSERT [dbo].[Inventory_Category] ([Inventory_Category_ID], [Inventory_Category_Name]) VALUES (10, N'')
SET IDENTITY_INSERT [dbo].[Inventory_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Discrepancy] ON 

INSERT [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID], [Type_Of_Discrepancy]) VALUES (1, N'Spill')
INSERT [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID], [Type_Of_Discrepancy]) VALUES (2, N'Thieft')
INSERT [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID], [Type_Of_Discrepancy]) VALUES (3, N'Special')
INSERT [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID], [Type_Of_Discrepancy]) VALUES (4, N'Broken')
INSERT [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID], [Type_Of_Discrepancy]) VALUES (5, N'Voided')
SET IDENTITY_INSERT [dbo].[Inventory_Discrepancy] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Discrepancy_Line] ON 

INSERT [dbo].[Inventory_Discrepancy_Line] ([Inventory_Discrepancy_Line_ID], [Inventory_Discrepancy_ID], [Inventory_ID]) VALUES (1, 1, 2)
INSERT [dbo].[Inventory_Discrepancy_Line] ([Inventory_Discrepancy_Line_ID], [Inventory_Discrepancy_ID], [Inventory_ID]) VALUES (2, 1, 2)
INSERT [dbo].[Inventory_Discrepancy_Line] ([Inventory_Discrepancy_Line_ID], [Inventory_Discrepancy_ID], [Inventory_ID]) VALUES (3, 1, 4)
INSERT [dbo].[Inventory_Discrepancy_Line] ([Inventory_Discrepancy_Line_ID], [Inventory_Discrepancy_ID], [Inventory_ID]) VALUES (4, 1, 5)
INSERT [dbo].[Inventory_Discrepancy_Line] ([Inventory_Discrepancy_Line_ID], [Inventory_Discrepancy_ID], [Inventory_ID]) VALUES (5, 2, 4)
INSERT [dbo].[Inventory_Discrepancy_Line] ([Inventory_Discrepancy_Line_ID], [Inventory_Discrepancy_ID], [Inventory_ID]) VALUES (6, 2, 7)
INSERT [dbo].[Inventory_Discrepancy_Line] ([Inventory_Discrepancy_Line_ID], [Inventory_Discrepancy_ID], [Inventory_ID]) VALUES (7, 4, 1)
INSERT [dbo].[Inventory_Discrepancy_Line] ([Inventory_Discrepancy_Line_ID], [Inventory_Discrepancy_ID], [Inventory_ID]) VALUES (8, 4, 6)
INSERT [dbo].[Inventory_Discrepancy_Line] ([Inventory_Discrepancy_Line_ID], [Inventory_Discrepancy_ID], [Inventory_ID]) VALUES (9, 5, 6)
INSERT [dbo].[Inventory_Discrepancy_Line] ([Inventory_Discrepancy_Line_ID], [Inventory_Discrepancy_ID], [Inventory_ID]) VALUES (10, 5, 8)
SET IDENTITY_INSERT [dbo].[Inventory_Discrepancy_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Order_Line] ON 

INSERT [dbo].[Inventory_Order_Line] ([Inventory_Order_Line_ID], [Inventory_Orders_ID], [Inventory_ID]) VALUES (1, 3, 1)
INSERT [dbo].[Inventory_Order_Line] ([Inventory_Order_Line_ID], [Inventory_Orders_ID], [Inventory_ID]) VALUES (2, 4, 2)
INSERT [dbo].[Inventory_Order_Line] ([Inventory_Order_Line_ID], [Inventory_Orders_ID], [Inventory_ID]) VALUES (3, 5, 3)
INSERT [dbo].[Inventory_Order_Line] ([Inventory_Order_Line_ID], [Inventory_Orders_ID], [Inventory_ID]) VALUES (4, 6, 4)
INSERT [dbo].[Inventory_Order_Line] ([Inventory_Order_Line_ID], [Inventory_Orders_ID], [Inventory_ID]) VALUES (6, 8, 5)
INSERT [dbo].[Inventory_Order_Line] ([Inventory_Order_Line_ID], [Inventory_Orders_ID], [Inventory_ID]) VALUES (7, 9, 6)
INSERT [dbo].[Inventory_Order_Line] ([Inventory_Order_Line_ID], [Inventory_Orders_ID], [Inventory_ID]) VALUES (8, 11, 7)
INSERT [dbo].[Inventory_Order_Line] ([Inventory_Order_Line_ID], [Inventory_Orders_ID], [Inventory_ID]) VALUES (9, 12, 8)
INSERT [dbo].[Inventory_Order_Line] ([Inventory_Order_Line_ID], [Inventory_Orders_ID], [Inventory_ID]) VALUES (10, 13, 9)
INSERT [dbo].[Inventory_Order_Line] ([Inventory_Order_Line_ID], [Inventory_Orders_ID], [Inventory_ID]) VALUES (11, 14, 10)
SET IDENTITY_INSERT [dbo].[Inventory_Order_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Orders] ON 

INSERT [dbo].[Inventory_Orders] ([Inventory_Orders_ID], [Inventory_ID], [Inventory_Type_ID], [Inventory_Category_ID], [Inventory_Order_Price], [Inventory_Order_Date], [Inventory_Order_Quantity]) VALUES (3, 1, 1, 1, CAST(5000.00 AS Decimal(10, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime), 500)
INSERT [dbo].[Inventory_Orders] ([Inventory_Orders_ID], [Inventory_ID], [Inventory_Type_ID], [Inventory_Category_ID], [Inventory_Order_Price], [Inventory_Order_Date], [Inventory_Order_Quantity]) VALUES (4, 2, 1, 1, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime), 120)
INSERT [dbo].[Inventory_Orders] ([Inventory_Orders_ID], [Inventory_ID], [Inventory_Type_ID], [Inventory_Category_ID], [Inventory_Order_Price], [Inventory_Order_Date], [Inventory_Order_Quantity]) VALUES (5, 3, 1, 1, CAST(3000.00 AS Decimal(10, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime), 50)
INSERT [dbo].[Inventory_Orders] ([Inventory_Orders_ID], [Inventory_ID], [Inventory_Type_ID], [Inventory_Category_ID], [Inventory_Order_Price], [Inventory_Order_Date], [Inventory_Order_Quantity]) VALUES (6, 4, 1, 1, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime), 120)
INSERT [dbo].[Inventory_Orders] ([Inventory_Orders_ID], [Inventory_ID], [Inventory_Type_ID], [Inventory_Category_ID], [Inventory_Order_Price], [Inventory_Order_Date], [Inventory_Order_Quantity]) VALUES (8, 5, 1, 1, CAST(2500.00 AS Decimal(10, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime), 40)
INSERT [dbo].[Inventory_Orders] ([Inventory_Orders_ID], [Inventory_ID], [Inventory_Type_ID], [Inventory_Category_ID], [Inventory_Order_Price], [Inventory_Order_Date], [Inventory_Order_Quantity]) VALUES (9, 6, 4, 4, CAST(7500.00 AS Decimal(10, 2)), CAST(N'2024-07-04T00:00:00.000' AS DateTime), 100)
INSERT [dbo].[Inventory_Orders] ([Inventory_Orders_ID], [Inventory_ID], [Inventory_Type_ID], [Inventory_Category_ID], [Inventory_Order_Price], [Inventory_Order_Date], [Inventory_Order_Quantity]) VALUES (11, 7, 4, 4, CAST(2000.00 AS Decimal(10, 2)), CAST(N'2024-07-04T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[Inventory_Orders] ([Inventory_Orders_ID], [Inventory_ID], [Inventory_Type_ID], [Inventory_Category_ID], [Inventory_Order_Price], [Inventory_Order_Date], [Inventory_Order_Quantity]) VALUES (12, 8, 3, 3, CAST(1000.00 AS Decimal(10, 2)), CAST(N'2024-07-01T00:00:00.000' AS DateTime), 40)
INSERT [dbo].[Inventory_Orders] ([Inventory_Orders_ID], [Inventory_ID], [Inventory_Type_ID], [Inventory_Category_ID], [Inventory_Order_Price], [Inventory_Order_Date], [Inventory_Order_Quantity]) VALUES (13, 9, 3, 3, CAST(1000.00 AS Decimal(10, 2)), CAST(N'2024-07-01T00:00:00.000' AS DateTime), 40)
INSERT [dbo].[Inventory_Orders] ([Inventory_Orders_ID], [Inventory_ID], [Inventory_Type_ID], [Inventory_Category_ID], [Inventory_Order_Price], [Inventory_Order_Date], [Inventory_Order_Quantity]) VALUES (14, 10, 2, 2, CAST(20000.00 AS Decimal(10, 2)), CAST(N'2024-07-01T00:00:00.000' AS DateTime), 2000)
SET IDENTITY_INSERT [dbo].[Inventory_Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Requirements] ON 

INSERT [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID], [Requirement_Value]) VALUES (1, CAST(15000.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID], [Requirement_Value]) VALUES (2, CAST(22000.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID], [Requirement_Value]) VALUES (3, CAST(7500.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID], [Requirement_Value]) VALUES (4, CAST(10000.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID], [Requirement_Value]) VALUES (5, CAST(9250.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID], [Requirement_Value]) VALUES (6, CAST(11121.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID], [Requirement_Value]) VALUES (7, CAST(9891.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID], [Requirement_Value]) VALUES (8, CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID], [Requirement_Value]) VALUES (9, CAST(12500.00 AS Decimal(10, 2)))
INSERT [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID], [Requirement_Value]) VALUES (10, CAST(3673.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Inventory_Requirements] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Status] ON 

INSERT [dbo].[Inventory_Status] ([Inventory_Status_ID], [Inventory_Status], [Inventory_Orders_ID]) VALUES (6, N'High', 3)
INSERT [dbo].[Inventory_Status] ([Inventory_Status_ID], [Inventory_Status], [Inventory_Orders_ID]) VALUES (7, N'High', 4)
INSERT [dbo].[Inventory_Status] ([Inventory_Status_ID], [Inventory_Status], [Inventory_Orders_ID]) VALUES (8, N'Low', 5)
INSERT [dbo].[Inventory_Status] ([Inventory_Status_ID], [Inventory_Status], [Inventory_Orders_ID]) VALUES (9, N'Ordered', 6)
INSERT [dbo].[Inventory_Status] ([Inventory_Status_ID], [Inventory_Status], [Inventory_Orders_ID]) VALUES (10, N'Ordered', 8)
INSERT [dbo].[Inventory_Status] ([Inventory_Status_ID], [Inventory_Status], [Inventory_Orders_ID]) VALUES (11, N'High', 9)
INSERT [dbo].[Inventory_Status] ([Inventory_Status_ID], [Inventory_Status], [Inventory_Orders_ID]) VALUES (12, N'Low', 11)
INSERT [dbo].[Inventory_Status] ([Inventory_Status_ID], [Inventory_Status], [Inventory_Orders_ID]) VALUES (13, N'Low', 12)
INSERT [dbo].[Inventory_Status] ([Inventory_Status_ID], [Inventory_Status], [Inventory_Orders_ID]) VALUES (14, N'Delivered', 13)
INSERT [dbo].[Inventory_Status] ([Inventory_Status_ID], [Inventory_Status], [Inventory_Orders_ID]) VALUES (15, N'Delivered', 14)
SET IDENTITY_INSERT [dbo].[Inventory_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Supplier_Line] ON 

INSERT [dbo].[Inventory_Supplier_Line] ([Inventory_Supplier_Line_ID], [Inventory_Orders_ID], [Supplier_ID], [Inventory_Name], [Inventory_Order_Quantity]) VALUES (1, 3, 1, N'Alcohol', 500)
INSERT [dbo].[Inventory_Supplier_Line] ([Inventory_Supplier_Line_ID], [Inventory_Orders_ID], [Supplier_ID], [Inventory_Name], [Inventory_Order_Quantity]) VALUES (2, 4, 1, N'Alcohol', 200)
INSERT [dbo].[Inventory_Supplier_Line] ([Inventory_Supplier_Line_ID], [Inventory_Orders_ID], [Supplier_ID], [Inventory_Name], [Inventory_Order_Quantity]) VALUES (3, 5, 1, N'Alchohol', 250)
INSERT [dbo].[Inventory_Supplier_Line] ([Inventory_Supplier_Line_ID], [Inventory_Orders_ID], [Supplier_ID], [Inventory_Name], [Inventory_Order_Quantity]) VALUES (4, 6, 1, N'Alchohol', 100)
INSERT [dbo].[Inventory_Supplier_Line] ([Inventory_Supplier_Line_ID], [Inventory_Orders_ID], [Supplier_ID], [Inventory_Name], [Inventory_Order_Quantity]) VALUES (5, 8, 1, N'Alchohol', 210)
INSERT [dbo].[Inventory_Supplier_Line] ([Inventory_Supplier_Line_ID], [Inventory_Orders_ID], [Supplier_ID], [Inventory_Name], [Inventory_Order_Quantity]) VALUES (6, 9, 4, N'Vapes', 1000)
INSERT [dbo].[Inventory_Supplier_Line] ([Inventory_Supplier_Line_ID], [Inventory_Orders_ID], [Supplier_ID], [Inventory_Name], [Inventory_Order_Quantity]) VALUES (7, 11, 5, N'Hub', 10)
INSERT [dbo].[Inventory_Supplier_Line] ([Inventory_Supplier_Line_ID], [Inventory_Orders_ID], [Supplier_ID], [Inventory_Name], [Inventory_Order_Quantity]) VALUES (8, 12, 3, N'Pizza', 25)
INSERT [dbo].[Inventory_Supplier_Line] ([Inventory_Supplier_Line_ID], [Inventory_Orders_ID], [Supplier_ID], [Inventory_Name], [Inventory_Order_Quantity]) VALUES (9, 13, 3, N'Pizza', 25)
INSERT [dbo].[Inventory_Supplier_Line] ([Inventory_Supplier_Line_ID], [Inventory_Orders_ID], [Supplier_ID], [Inventory_Name], [Inventory_Order_Quantity]) VALUES (10, 14, 2, N'Non-Alcoholic', 1000)
SET IDENTITY_INSERT [dbo].[Inventory_Supplier_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Type] ON 

INSERT [dbo].[Inventory_Type] ([Inventory_Type_ID], [Inventory_Type_Name], [Inventory_Category_ID]) VALUES (1, N'Beer', 1)
INSERT [dbo].[Inventory_Type] ([Inventory_Type_ID], [Inventory_Type_Name], [Inventory_Category_ID]) VALUES (2, N'Vodka', 1)
INSERT [dbo].[Inventory_Type] ([Inventory_Type_ID], [Inventory_Type_Name], [Inventory_Category_ID]) VALUES (3, N'Brandy', 1)
INSERT [dbo].[Inventory_Type] ([Inventory_Type_ID], [Inventory_Type_Name], [Inventory_Category_ID]) VALUES (4, N'Tequilla', 1)
INSERT [dbo].[Inventory_Type] ([Inventory_Type_ID], [Inventory_Type_Name], [Inventory_Category_ID]) VALUES (5, N'Rum', 1)
INSERT [dbo].[Inventory_Type] ([Inventory_Type_ID], [Inventory_Type_Name], [Inventory_Category_ID]) VALUES (6, N'Vapes', 4)
INSERT [dbo].[Inventory_Type] ([Inventory_Type_ID], [Inventory_Type_Name], [Inventory_Category_ID]) VALUES (7, N'Hub', 4)
INSERT [dbo].[Inventory_Type] ([Inventory_Type_ID], [Inventory_Type_Name], [Inventory_Category_ID]) VALUES (8, N'Pepporini', 3)
INSERT [dbo].[Inventory_Type] ([Inventory_Type_ID], [Inventory_Type_Name], [Inventory_Category_ID]) VALUES (9, N'Cheese', 3)
INSERT [dbo].[Inventory_Type] ([Inventory_Type_ID], [Inventory_Type_Name], [Inventory_Category_ID]) VALUES (10, N'Coke', 2)
SET IDENTITY_INSERT [dbo].[Inventory_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Opening_Inventory] ON 

INSERT [dbo].[Opening_Inventory] ([Opening_Inventory_ID], [Opening_Inventory_Date], [Opening_Storeroom_Count], [Opening_Bar_Open_Bottles], [Opening_Weighted_ID]) VALUES (1, CAST(N'2023-08-01' AS Date), 500, 20, 1)
INSERT [dbo].[Opening_Inventory] ([Opening_Inventory_ID], [Opening_Inventory_Date], [Opening_Storeroom_Count], [Opening_Bar_Open_Bottles], [Opening_Weighted_ID]) VALUES (2, CAST(N'2023-09-01' AS Date), 650, 35, 2)
INSERT [dbo].[Opening_Inventory] ([Opening_Inventory_ID], [Opening_Inventory_Date], [Opening_Storeroom_Count], [Opening_Bar_Open_Bottles], [Opening_Weighted_ID]) VALUES (3, CAST(N'2023-10-01' AS Date), 625, 12, 3)
INSERT [dbo].[Opening_Inventory] ([Opening_Inventory_ID], [Opening_Inventory_Date], [Opening_Storeroom_Count], [Opening_Bar_Open_Bottles], [Opening_Weighted_ID]) VALUES (4, CAST(N'2023-11-01' AS Date), 900, 27, 4)
INSERT [dbo].[Opening_Inventory] ([Opening_Inventory_ID], [Opening_Inventory_Date], [Opening_Storeroom_Count], [Opening_Bar_Open_Bottles], [Opening_Weighted_ID]) VALUES (5, CAST(N'2023-12-01' AS Date), 1300, 50, 5)
INSERT [dbo].[Opening_Inventory] ([Opening_Inventory_ID], [Opening_Inventory_Date], [Opening_Storeroom_Count], [Opening_Bar_Open_Bottles], [Opening_Weighted_ID]) VALUES (6, CAST(N'2024-01-01' AS Date), 550, 20, 6)
INSERT [dbo].[Opening_Inventory] ([Opening_Inventory_ID], [Opening_Inventory_Date], [Opening_Storeroom_Count], [Opening_Bar_Open_Bottles], [Opening_Weighted_ID]) VALUES (7, CAST(N'2024-02-01' AS Date), 500, 18, 7)
INSERT [dbo].[Opening_Inventory] ([Opening_Inventory_ID], [Opening_Inventory_Date], [Opening_Storeroom_Count], [Opening_Bar_Open_Bottles], [Opening_Weighted_ID]) VALUES (8, CAST(N'2024-03-01' AS Date), 625, 24, 8)
INSERT [dbo].[Opening_Inventory] ([Opening_Inventory_ID], [Opening_Inventory_Date], [Opening_Storeroom_Count], [Opening_Bar_Open_Bottles], [Opening_Weighted_ID]) VALUES (9, CAST(N'2024-04-01' AS Date), 712, 12, 9)
INSERT [dbo].[Opening_Inventory] ([Opening_Inventory_ID], [Opening_Inventory_Date], [Opening_Storeroom_Count], [Opening_Bar_Open_Bottles], [Opening_Weighted_ID]) VALUES (10, CAST(N'2024-05-01' AS Date), 525, 30, 10)
SET IDENTITY_INSERT [dbo].[Opening_Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Opening_Stock_Line] ON 

INSERT [dbo].[Opening_Stock_Line] ([Opening_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Opening_Inventory_Value]) VALUES (1, 4, N'January', 100000)
INSERT [dbo].[Opening_Stock_Line] ([Opening_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Opening_Inventory_Value]) VALUES (2, 5, N'Feb', 120000)
INSERT [dbo].[Opening_Stock_Line] ([Opening_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Opening_Inventory_Value]) VALUES (3, 6, N'March', 90000)
INSERT [dbo].[Opening_Stock_Line] ([Opening_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Opening_Inventory_Value]) VALUES (4, 7, N'April', 125000)
INSERT [dbo].[Opening_Stock_Line] ([Opening_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Opening_Inventory_Value]) VALUES (5, 8, N'May', 102500)
INSERT [dbo].[Opening_Stock_Line] ([Opening_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Opening_Inventory_Value]) VALUES (6, 9, N'June', 114520)
INSERT [dbo].[Opening_Stock_Line] ([Opening_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Opening_Inventory_Value]) VALUES (7, 10, N'July', 100000)
INSERT [dbo].[Opening_Stock_Line] ([Opening_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Opening_Inventory_Value]) VALUES (8, 11, N'August', 190000)
INSERT [dbo].[Opening_Stock_Line] ([Opening_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Opening_Inventory_Value]) VALUES (9, 12, N'September', 134290)
INSERT [dbo].[Opening_Stock_Line] ([Opening_Stock_ID], [Stock_Take_ID], [Inventory_Name], [Opening_Inventory_Value]) VALUES (10, 13, N'October', 90000)
SET IDENTITY_INSERT [dbo].[Opening_Stock_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Opening_Weighted_Bottles] ON 

INSERT [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID], [Weighted_Bottles_ID]) VALUES (1, 2)
INSERT [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID], [Weighted_Bottles_ID]) VALUES (2, 4)
INSERT [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID], [Weighted_Bottles_ID]) VALUES (3, 5)
INSERT [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID], [Weighted_Bottles_ID]) VALUES (4, 6)
INSERT [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID], [Weighted_Bottles_ID]) VALUES (5, 7)
INSERT [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID], [Weighted_Bottles_ID]) VALUES (6, 8)
INSERT [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID], [Weighted_Bottles_ID]) VALUES (7, 9)
INSERT [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID], [Weighted_Bottles_ID]) VALUES (8, 10)
INSERT [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID], [Weighted_Bottles_ID]) VALUES (9, 11)
INSERT [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID], [Weighted_Bottles_ID]) VALUES (10, 12)
SET IDENTITY_INSERT [dbo].[Opening_Weighted_Bottles] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([Payment_ID], [Payment_Type_ID], [Bartender_Tip_ID], [Payment_Date], [Quantity], [Vat_ID], [Total_Payment_Amount]) VALUES (3, 1, 1, CAST(N'2024-07-05T00:00:00.000' AS DateTime), 2, 1, CAST(600.00 AS Decimal(10, 2)))
INSERT [dbo].[Payment] ([Payment_ID], [Payment_Type_ID], [Bartender_Tip_ID], [Payment_Date], [Quantity], [Vat_ID], [Total_Payment_Amount]) VALUES (6, 2, 2, CAST(N'2024-07-05T00:00:00.000' AS DateTime), 1, 2, CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[Payment] ([Payment_ID], [Payment_Type_ID], [Bartender_Tip_ID], [Payment_Date], [Quantity], [Vat_ID], [Total_Payment_Amount]) VALUES (7, 1, 2, CAST(N'2024-07-12T00:00:00.000' AS DateTime), 1, 3, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[Payment] ([Payment_ID], [Payment_Type_ID], [Bartender_Tip_ID], [Payment_Date], [Quantity], [Vat_ID], [Total_Payment_Amount]) VALUES (8, 2, 1, CAST(N'2024-07-12T00:00:00.000' AS DateTime), 3, 4, CAST(750.00 AS Decimal(10, 2)))
INSERT [dbo].[Payment] ([Payment_ID], [Payment_Type_ID], [Bartender_Tip_ID], [Payment_Date], [Quantity], [Vat_ID], [Total_Payment_Amount]) VALUES (9, 2, 3, CAST(N'2024-07-12T00:00:00.000' AS DateTime), 1, 5, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Payment] ([Payment_ID], [Payment_Type_ID], [Bartender_Tip_ID], [Payment_Date], [Quantity], [Vat_ID], [Total_Payment_Amount]) VALUES (10, 4, 8, CAST(N'2024-07-19T00:00:00.000' AS DateTime), 1, 6, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[Payment] ([Payment_ID], [Payment_Type_ID], [Bartender_Tip_ID], [Payment_Date], [Quantity], [Vat_ID], [Total_Payment_Amount]) VALUES (11, 2, 4, CAST(N'2024-07-19T00:00:00.000' AS DateTime), 5, 7, CAST(8000.00 AS Decimal(10, 2)))
INSERT [dbo].[Payment] ([Payment_ID], [Payment_Type_ID], [Bartender_Tip_ID], [Payment_Date], [Quantity], [Vat_ID], [Total_Payment_Amount]) VALUES (12, 5, 2, CAST(N'2024-07-22T00:00:00.000' AS DateTime), 1, 8, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[Payment] ([Payment_ID], [Payment_Type_ID], [Bartender_Tip_ID], [Payment_Date], [Quantity], [Vat_ID], [Total_Payment_Amount]) VALUES (13, 2, 3, CAST(N'2024-07-22T00:00:00.000' AS DateTime), 4, 9, CAST(675.00 AS Decimal(10, 2)))
INSERT [dbo].[Payment] ([Payment_ID], [Payment_Type_ID], [Bartender_Tip_ID], [Payment_Date], [Quantity], [Vat_ID], [Total_Payment_Amount]) VALUES (14, 1, 1, CAST(N'2024-07-22T00:00:00.000' AS DateTime), 1, 10, CAST(30.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment_Line] ON 

INSERT [dbo].[Payment_Line] ([Payment_Line_ID], [Payment_ID], [Sales_ID]) VALUES (3, 3, 1)
INSERT [dbo].[Payment_Line] ([Payment_Line_ID], [Payment_ID], [Sales_ID]) VALUES (4, 6, 2)
INSERT [dbo].[Payment_Line] ([Payment_Line_ID], [Payment_ID], [Sales_ID]) VALUES (5, 6, 3)
INSERT [dbo].[Payment_Line] ([Payment_Line_ID], [Payment_ID], [Sales_ID]) VALUES (6, 8, 4)
INSERT [dbo].[Payment_Line] ([Payment_Line_ID], [Payment_ID], [Sales_ID]) VALUES (7, 14, 5)
INSERT [dbo].[Payment_Line] ([Payment_Line_ID], [Payment_ID], [Sales_ID]) VALUES (8, 3, 6)
INSERT [dbo].[Payment_Line] ([Payment_Line_ID], [Payment_ID], [Sales_ID]) VALUES (9, 11, 7)
INSERT [dbo].[Payment_Line] ([Payment_Line_ID], [Payment_ID], [Sales_ID]) VALUES (10, 13, 8)
INSERT [dbo].[Payment_Line] ([Payment_Line_ID], [Payment_ID], [Sales_ID]) VALUES (11, 3, 9)
INSERT [dbo].[Payment_Line] ([Payment_Line_ID], [Payment_ID], [Sales_ID]) VALUES (12, 7, NULL)
SET IDENTITY_INSERT [dbo].[Payment_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment_Type] ON 

INSERT [dbo].[Payment_Type] ([Payment_Type_ID], [Payment_Type_Name]) VALUES (1, N'Card')
INSERT [dbo].[Payment_Type] ([Payment_Type_ID], [Payment_Type_Name]) VALUES (2, N'Cash')
INSERT [dbo].[Payment_Type] ([Payment_Type_ID], [Payment_Type_Name]) VALUES (3, N'Tab')
INSERT [dbo].[Payment_Type] ([Payment_Type_ID], [Payment_Type_Name]) VALUES (4, N'Invoice')
INSERT [dbo].[Payment_Type] ([Payment_Type_ID], [Payment_Type_Name]) VALUES (5, N'Void Order')
SET IDENTITY_INSERT [dbo].[Payment_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Prices] ON 

INSERT [dbo].[Prices] ([Prices_ID], [Cost_Price], [Selling_Price], [Inventory_ID], [Product_ID]) VALUES (1, CAST(20.00 AS Decimal(10, 2)), CAST(40.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[Prices] ([Prices_ID], [Cost_Price], [Selling_Price], [Inventory_ID], [Product_ID]) VALUES (2, CAST(15.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), 1, 2)
INSERT [dbo].[Prices] ([Prices_ID], [Cost_Price], [Selling_Price], [Inventory_ID], [Product_ID]) VALUES (3, CAST(20.00 AS Decimal(10, 2)), CAST(45.00 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[Prices] ([Prices_ID], [Cost_Price], [Selling_Price], [Inventory_ID], [Product_ID]) VALUES (4, CAST(20.00 AS Decimal(10, 2)), CAST(40.00 AS Decimal(10, 2)), 1, 4)
INSERT [dbo].[Prices] ([Prices_ID], [Cost_Price], [Selling_Price], [Inventory_ID], [Product_ID]) VALUES (5, CAST(15.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), 1, 5)
INSERT [dbo].[Prices] ([Prices_ID], [Cost_Price], [Selling_Price], [Inventory_ID], [Product_ID]) VALUES (6, CAST(10.00 AS Decimal(10, 2)), CAST(45.00 AS Decimal(10, 2)), 2, 6)
INSERT [dbo].[Prices] ([Prices_ID], [Cost_Price], [Selling_Price], [Inventory_ID], [Product_ID]) VALUES (7, CAST(10.00 AS Decimal(10, 2)), CAST(35.00 AS Decimal(10, 2)), 3, 7)
INSERT [dbo].[Prices] ([Prices_ID], [Cost_Price], [Selling_Price], [Inventory_ID], [Product_ID]) VALUES (8, CAST(25.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), 3, 8)
INSERT [dbo].[Prices] ([Prices_ID], [Cost_Price], [Selling_Price], [Inventory_ID], [Product_ID]) VALUES (9, CAST(10.00 AS Decimal(10, 2)), CAST(25.00 AS Decimal(10, 2)), 3, 9)
SET IDENTITY_INSERT [dbo].[Prices] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Selling_Price], [Product_Type_ID], [Product_Category_ID], [Amount_Available]) VALUES (1, N'Castle Light', CAST(40.00 AS Decimal(10, 2)), 1, 1, 500)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Selling_Price], [Product_Type_ID], [Product_Category_ID], [Amount_Available]) VALUES (2, N'Black Label', CAST(30.00 AS Decimal(10, 2)), 1, 1, 500)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Selling_Price], [Product_Type_ID], [Product_Category_ID], [Amount_Available]) VALUES (3, N'Stella', CAST(45.00 AS Decimal(10, 2)), 1, 1, 500)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Selling_Price], [Product_Type_ID], [Product_Category_ID], [Amount_Available]) VALUES (4, N'Red Square', CAST(40.00 AS Decimal(10, 2)), 2, 1, 500)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Selling_Price], [Product_Type_ID], [Product_Category_ID], [Amount_Available]) VALUES (5, N'Belvadere', CAST(30.00 AS Decimal(10, 2)), 2, 1, 500)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Selling_Price], [Product_Type_ID], [Product_Category_ID], [Amount_Available]) VALUES (6, N'1800', CAST(45.00 AS Decimal(10, 2)), 2, 1, 500)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Selling_Price], [Product_Type_ID], [Product_Category_ID], [Amount_Available]) VALUES (7, N'KlipDrift', CAST(35.00 AS Decimal(10, 2)), 3, 1, 500)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Selling_Price], [Product_Type_ID], [Product_Category_ID], [Amount_Available]) VALUES (8, N'Krappa', CAST(100.00 AS Decimal(10, 2)), 3, 1, 500)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Selling_Price], [Product_Type_ID], [Product_Category_ID], [Amount_Available]) VALUES (9, N'Pisco', CAST(25.00 AS Decimal(10, 2)), 3, 1, 500)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Category] ON 

INSERT [dbo].[Product_Category] ([Product_Category_ID], [Product_Category_Name]) VALUES (1, N'Alcohol')
INSERT [dbo].[Product_Category] ([Product_Category_ID], [Product_Category_Name]) VALUES (2, N'Non-alcholic')
INSERT [dbo].[Product_Category] ([Product_Category_ID], [Product_Category_Name]) VALUES (3, N'Pizza')
INSERT [dbo].[Product_Category] ([Product_Category_ID], [Product_Category_Name]) VALUES (4, N'Smoking')
INSERT [dbo].[Product_Category] ([Product_Category_ID], [Product_Category_Name]) VALUES (5, N'Art')
SET IDENTITY_INSERT [dbo].[Product_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Inventory_Line] ON 

INSERT [dbo].[Product_Inventory_Line] ([Inventory_Product_ID], [Product_ID], [Inventory_ID], [Product_Name], [Selling_Price]) VALUES (1, 1, 1, N'Castle lite', CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Product_Inventory_Line] ([Inventory_Product_ID], [Product_ID], [Inventory_ID], [Product_Name], [Selling_Price]) VALUES (2, 2, 1, N'Black Label', CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Product_Inventory_Line] ([Inventory_Product_ID], [Product_ID], [Inventory_ID], [Product_Name], [Selling_Price]) VALUES (3, 3, 1, N'Stella', CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[Product_Inventory_Line] ([Inventory_Product_ID], [Product_ID], [Inventory_ID], [Product_Name], [Selling_Price]) VALUES (4, 4, 1, N'Red square', CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Product_Inventory_Line] ([Inventory_Product_ID], [Product_ID], [Inventory_ID], [Product_Name], [Selling_Price]) VALUES (5, 5, 1, N'Belvadere', CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Product_Inventory_Line] ([Inventory_Product_ID], [Product_ID], [Inventory_ID], [Product_Name], [Selling_Price]) VALUES (7, 6, 2, N'1800', CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[Product_Inventory_Line] ([Inventory_Product_ID], [Product_ID], [Inventory_ID], [Product_Name], [Selling_Price]) VALUES (8, 7, 3, N'KlipDrift', CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[Product_Inventory_Line] ([Inventory_Product_ID], [Product_ID], [Inventory_ID], [Product_Name], [Selling_Price]) VALUES (9, 8, 3, N'Krappa', CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product_Inventory_Line] ([Inventory_Product_ID], [Product_ID], [Inventory_ID], [Product_Name], [Selling_Price]) VALUES (10, 9, 3, N'Pisco', CAST(25.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Product_Inventory_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Type] ON 

INSERT [dbo].[Product_Type] ([Product_Type_ID], [Product_Type_Name]) VALUES (1, N'Beer')
INSERT [dbo].[Product_Type] ([Product_Type_ID], [Product_Type_Name]) VALUES (2, N'Vodka')
INSERT [dbo].[Product_Type] ([Product_Type_ID], [Product_Type_Name]) VALUES (3, N'Brandy')
INSERT [dbo].[Product_Type] ([Product_Type_ID], [Product_Type_Name]) VALUES (4, N'Tequilla')
INSERT [dbo].[Product_Type] ([Product_Type_ID], [Product_Type_Name]) VALUES (5, N'Rum')
INSERT [dbo].[Product_Type] ([Product_Type_ID], [Product_Type_Name]) VALUES (6, N'Vapes')
INSERT [dbo].[Product_Type] ([Product_Type_ID], [Product_Type_Name]) VALUES (7, N'Hub')
INSERT [dbo].[Product_Type] ([Product_Type_ID], [Product_Type_Name]) VALUES (8, N'Pepporini')
INSERT [dbo].[Product_Type] ([Product_Type_ID], [Product_Type_Name]) VALUES (9, N'Cheese')
INSERT [dbo].[Product_Type] ([Product_Type_ID], [Product_Type_Name]) VALUES (10, N'Coke')
SET IDENTITY_INSERT [dbo].[Product_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Sale_Line] ON 

INSERT [dbo].[Sale_Line] ([Sale_Line_ID], [Sales_ID], [Product_ID], [Product_Name], [Quantity], [Sale_Total]) VALUES (1, 1, 1, N'Castle Light', 5, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[Sale_Line] ([Sale_Line_ID], [Sales_ID], [Product_ID], [Product_Name], [Quantity], [Sale_Total]) VALUES (2, 1, 2, N'Black label', 1, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Sale_Line] ([Sale_Line_ID], [Sales_ID], [Product_ID], [Product_Name], [Quantity], [Sale_Total]) VALUES (3, 1, 3, N'Stella', 2, CAST(90.00 AS Decimal(10, 2)))
INSERT [dbo].[Sale_Line] ([Sale_Line_ID], [Sales_ID], [Product_ID], [Product_Name], [Quantity], [Sale_Total]) VALUES (4, 3, 4, N'Red square', 4, CAST(160.00 AS Decimal(10, 2)))
INSERT [dbo].[Sale_Line] ([Sale_Line_ID], [Sales_ID], [Product_ID], [Product_Name], [Quantity], [Sale_Total]) VALUES (5, 3, 5, N'Belvadere', 6, CAST(180.00 AS Decimal(10, 2)))
INSERT [dbo].[Sale_Line] ([Sale_Line_ID], [Sales_ID], [Product_ID], [Product_Name], [Quantity], [Sale_Total]) VALUES (6, 3, 6, N'1800', 1, CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[Sale_Line] ([Sale_Line_ID], [Sales_ID], [Product_ID], [Product_Name], [Quantity], [Sale_Total]) VALUES (7, 3, 7, N'KlipDrift', 2, CAST(70.00 AS Decimal(10, 2)))
INSERT [dbo].[Sale_Line] ([Sale_Line_ID], [Sales_ID], [Product_ID], [Product_Name], [Quantity], [Sale_Total]) VALUES (8, 7, 8, N'Krappa', 1, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Sale_Line] ([Sale_Line_ID], [Sales_ID], [Product_ID], [Product_Name], [Quantity], [Sale_Total]) VALUES (9, 7, 9, N'Pisco', 4, CAST(100.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Sale_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([Sales_ID], [Sale_Date], [Staff_ID], [Staff_Type_ID], [Sales_Type_ID]) VALUES (1, CAST(N'2024-06-30T00:00:00.000' AS DateTime), 18, 2, 1)
INSERT [dbo].[Sales] ([Sales_ID], [Sale_Date], [Staff_ID], [Staff_Type_ID], [Sales_Type_ID]) VALUES (2, CAST(N'2024-06-20T00:00:00.000' AS DateTime), 19, 1, 4)
INSERT [dbo].[Sales] ([Sales_ID], [Sale_Date], [Staff_ID], [Staff_Type_ID], [Sales_Type_ID]) VALUES (3, CAST(N'2024-06-30T00:00:00.000' AS DateTime), 27, 1, 1)
INSERT [dbo].[Sales] ([Sales_ID], [Sale_Date], [Staff_ID], [Staff_Type_ID], [Sales_Type_ID]) VALUES (4, CAST(N'2024-06-30T00:00:00.000' AS DateTime), 28, 1, 5)
INSERT [dbo].[Sales] ([Sales_ID], [Sale_Date], [Staff_ID], [Staff_Type_ID], [Sales_Type_ID]) VALUES (5, CAST(N'2024-06-30T00:00:00.000' AS DateTime), 29, 1, 2)
INSERT [dbo].[Sales] ([Sales_ID], [Sale_Date], [Staff_ID], [Staff_Type_ID], [Sales_Type_ID]) VALUES (6, CAST(N'2024-07-01T00:00:00.000' AS DateTime), 17, 3, 4)
INSERT [dbo].[Sales] ([Sales_ID], [Sale_Date], [Staff_ID], [Staff_Type_ID], [Sales_Type_ID]) VALUES (7, CAST(N'2024-07-01T00:00:00.000' AS DateTime), 18, 2, 1)
INSERT [dbo].[Sales] ([Sales_ID], [Sale_Date], [Staff_ID], [Staff_Type_ID], [Sales_Type_ID]) VALUES (8, CAST(N'2024-07-02T00:00:00.000' AS DateTime), 17, 1, 2)
INSERT [dbo].[Sales] ([Sales_ID], [Sale_Date], [Staff_ID], [Staff_Type_ID], [Sales_Type_ID]) VALUES (9, CAST(N'2024-07-02T00:00:00.000' AS DateTime), 27, 1, 3)
INSERT [dbo].[Sales] ([Sales_ID], [Sale_Date], [Staff_ID], [Staff_Type_ID], [Sales_Type_ID]) VALUES (10, CAST(N'2024-07-02T00:00:00.000' AS DateTime), 28, 1, 3)
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales_Type] ON 

INSERT [dbo].[Sales_Type] ([Sales_Type_ID], [Sales_Type_Name]) VALUES (1, N'Bar')
INSERT [dbo].[Sales_Type] ([Sales_Type_ID], [Sales_Type_Name]) VALUES (2, N'Kitchen')
INSERT [dbo].[Sales_Type] ([Sales_Type_ID], [Sales_Type_Name]) VALUES (3, N'Shooters')
INSERT [dbo].[Sales_Type] ([Sales_Type_ID], [Sales_Type_Name]) VALUES (4, N'Hub')
INSERT [dbo].[Sales_Type] ([Sales_Type_ID], [Sales_Type_Name]) VALUES (5, N'Vapes')
SET IDENTITY_INSERT [dbo].[Sales_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Shift_Booking] ON 

INSERT [dbo].[Shift_Booking] ([Shift_Booking_ID], [Booking_Date], [Positions_Available], [Shift_Booking_Status_ID]) VALUES (6, CAST(N'2024-08-02' AS Date), 4, 1)
INSERT [dbo].[Shift_Booking] ([Shift_Booking_ID], [Booking_Date], [Positions_Available], [Shift_Booking_Status_ID]) VALUES (7, CAST(N'2024-08-02' AS Date), 2, 3)
INSERT [dbo].[Shift_Booking] ([Shift_Booking_ID], [Booking_Date], [Positions_Available], [Shift_Booking_Status_ID]) VALUES (8, CAST(N'2024-08-02' AS Date), 4, 2)
INSERT [dbo].[Shift_Booking] ([Shift_Booking_ID], [Booking_Date], [Positions_Available], [Shift_Booking_Status_ID]) VALUES (9, CAST(N'2024-08-03' AS Date), 2, 4)
INSERT [dbo].[Shift_Booking] ([Shift_Booking_ID], [Booking_Date], [Positions_Available], [Shift_Booking_Status_ID]) VALUES (10, CAST(N'2024-08-09' AS Date), 1, 4)
INSERT [dbo].[Shift_Booking] ([Shift_Booking_ID], [Booking_Date], [Positions_Available], [Shift_Booking_Status_ID]) VALUES (11, CAST(N'2024-08-10' AS Date), 3, 2)
INSERT [dbo].[Shift_Booking] ([Shift_Booking_ID], [Booking_Date], [Positions_Available], [Shift_Booking_Status_ID]) VALUES (12, CAST(N'2024-09-14' AS Date), 4, 1)
INSERT [dbo].[Shift_Booking] ([Shift_Booking_ID], [Booking_Date], [Positions_Available], [Shift_Booking_Status_ID]) VALUES (13, CAST(N'2024-09-14' AS Date), 2, 1)
INSERT [dbo].[Shift_Booking] ([Shift_Booking_ID], [Booking_Date], [Positions_Available], [Shift_Booking_Status_ID]) VALUES (14, CAST(N'2024-09-14' AS Date), 3, 1)
INSERT [dbo].[Shift_Booking] ([Shift_Booking_ID], [Booking_Date], [Positions_Available], [Shift_Booking_Status_ID]) VALUES (15, CAST(N'2024-09-20' AS Date), 5, 3)
SET IDENTITY_INSERT [dbo].[Shift_Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Shift_Booking_Status] ON 

INSERT [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID], [Book_Shift_Status]) VALUES (1, N'Booked')
INSERT [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID], [Book_Shift_Status]) VALUES (2, N'Canceled')
INSERT [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID], [Book_Shift_Status]) VALUES (3, N'Change request')
INSERT [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID], [Book_Shift_Status]) VALUES (4, N'Available')
SET IDENTITY_INSERT [dbo].[Shift_Booking_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Shift_Change_Request] ON 

INSERT [dbo].[Shift_Change_Request] ([Shift_Change_ID], [Shift_Roster_ID], [Shift_Change_Status_ID], [Shift_Change_Request_Date], [Staff_Name], [Shift_Change_Description]) VALUES (1, 12, 1, CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'Brad', N'Changed to a week later')
INSERT [dbo].[Shift_Change_Request] ([Shift_Change_ID], [Shift_Roster_ID], [Shift_Change_Status_ID], [Shift_Change_Request_Date], [Staff_Name], [Shift_Change_Description]) VALUES (2, 13, 2, CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'Shaun', N'No reschedule')
INSERT [dbo].[Shift_Change_Request] ([Shift_Change_ID], [Shift_Roster_ID], [Shift_Change_Status_ID], [Shift_Change_Request_Date], [Staff_Name], [Shift_Change_Description]) VALUES (3, 14, 3, CAST(N'2024-08-03T00:00:00.000' AS DateTime), N'Brad', N'Changed to a week later')
INSERT [dbo].[Shift_Change_Request] ([Shift_Change_ID], [Shift_Roster_ID], [Shift_Change_Status_ID], [Shift_Change_Request_Date], [Staff_Name], [Shift_Change_Description]) VALUES (4, 15, 4, CAST(N'2024-08-03T00:00:00.000' AS DateTime), N'Sam', N'No reschedule')
INSERT [dbo].[Shift_Change_Request] ([Shift_Change_ID], [Shift_Roster_ID], [Shift_Change_Status_ID], [Shift_Change_Request_Date], [Staff_Name], [Shift_Change_Description]) VALUES (5, 16, 5, CAST(N'2024-08-10T00:00:00.000' AS DateTime), N'Mandla', N'Changed to next week')
INSERT [dbo].[Shift_Change_Request] ([Shift_Change_ID], [Shift_Roster_ID], [Shift_Change_Status_ID], [Shift_Change_Request_Date], [Staff_Name], [Shift_Change_Description]) VALUES (6, 17, 6, CAST(N'2024-08-10T00:00:00.000' AS DateTime), N'Shaun', N'Not vaild reason')
INSERT [dbo].[Shift_Change_Request] ([Shift_Change_ID], [Shift_Roster_ID], [Shift_Change_Status_ID], [Shift_Change_Request_Date], [Staff_Name], [Shift_Change_Description]) VALUES (7, 18, 7, CAST(N'2024-09-14T00:00:00.000' AS DateTime), N'Mitch', N'Request rejected')
INSERT [dbo].[Shift_Change_Request] ([Shift_Change_ID], [Shift_Roster_ID], [Shift_Change_Status_ID], [Shift_Change_Request_Date], [Staff_Name], [Shift_Change_Description]) VALUES (8, 19, 8, CAST(N'2024-09-10T00:00:00.000' AS DateTime), N'Sam', N'Not vaild reason')
INSERT [dbo].[Shift_Change_Request] ([Shift_Change_ID], [Shift_Roster_ID], [Shift_Change_Status_ID], [Shift_Change_Request_Date], [Staff_Name], [Shift_Change_Description]) VALUES (9, 20, 9, CAST(N'2024-09-14T00:00:00.000' AS DateTime), N'Brad', N'Request rejected')
INSERT [dbo].[Shift_Change_Request] ([Shift_Change_ID], [Shift_Roster_ID], [Shift_Change_Status_ID], [Shift_Change_Request_Date], [Staff_Name], [Shift_Change_Description]) VALUES (10, 21, 10, CAST(N'2024-09-20T00:00:00.000' AS DateTime), N'Mandla', N'Not valid reason')
SET IDENTITY_INSERT [dbo].[Shift_Change_Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Shift_Change_Status] ON 

INSERT [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID], [Shift_Change_Status], [Shift_Change_Reason]) VALUES (1, N'Accepted', N'Sick')
INSERT [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID], [Shift_Change_Status], [Shift_Change_Reason]) VALUES (2, N'Accepted', N'Double booked')
INSERT [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID], [Shift_Change_Status], [Shift_Change_Reason]) VALUES (3, N'Accepted', N'Injuried ')
INSERT [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID], [Shift_Change_Status], [Shift_Change_Reason]) VALUES (4, N'Accepted', N'Leave')
INSERT [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID], [Shift_Change_Status], [Shift_Change_Reason]) VALUES (5, N'Accepted', N'Uni')
INSERT [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID], [Shift_Change_Status], [Shift_Change_Reason]) VALUES (6, N'Rejected', N'Tired')
INSERT [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID], [Shift_Change_Status], [Shift_Change_Reason]) VALUES (7, N'Rejected', N'Don''t wanna work')
INSERT [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID], [Shift_Change_Status], [Shift_Change_Reason]) VALUES (8, N'Rejected', N'Drunk')
INSERT [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID], [Shift_Change_Status], [Shift_Change_Reason]) VALUES (9, N'Rejected', N'Late notice')
INSERT [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID], [Shift_Change_Status], [Shift_Change_Reason]) VALUES (10, N'Rejected', N'Would rather joll')
SET IDENTITY_INSERT [dbo].[Shift_Change_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Shift_Roster] ON 

INSERT [dbo].[Shift_Roster] ([Shift_Roster_ID], [Shift_Date], [Available_Shift_Time], [Number_Of_Employees], [Shift_Booking_ID]) VALUES (12, CAST(N'2024-08-02' AS Date), CAST(N'2024-06-30T18:00:00.000' AS DateTime), 4, 6)
INSERT [dbo].[Shift_Roster] ([Shift_Roster_ID], [Shift_Date], [Available_Shift_Time], [Number_Of_Employees], [Shift_Booking_ID]) VALUES (13, CAST(N'2024-08-02' AS Date), CAST(N'2024-06-30T20:00:00.000' AS DateTime), 2, 7)
INSERT [dbo].[Shift_Roster] ([Shift_Roster_ID], [Shift_Date], [Available_Shift_Time], [Number_Of_Employees], [Shift_Booking_ID]) VALUES (14, CAST(N'2024-08-02' AS Date), CAST(N'2024-06-30T18:00:00.000' AS DateTime), 4, 8)
INSERT [dbo].[Shift_Roster] ([Shift_Roster_ID], [Shift_Date], [Available_Shift_Time], [Number_Of_Employees], [Shift_Booking_ID]) VALUES (15, CAST(N'2024-08-03' AS Date), CAST(N'2024-06-30T21:00:00.000' AS DateTime), 2, 9)
INSERT [dbo].[Shift_Roster] ([Shift_Roster_ID], [Shift_Date], [Available_Shift_Time], [Number_Of_Employees], [Shift_Booking_ID]) VALUES (16, CAST(N'2024-08-09' AS Date), CAST(N'2024-06-30T18:00:00.000' AS DateTime), 1, 10)
INSERT [dbo].[Shift_Roster] ([Shift_Roster_ID], [Shift_Date], [Available_Shift_Time], [Number_Of_Employees], [Shift_Booking_ID]) VALUES (17, CAST(N'2024-08-10' AS Date), CAST(N'2024-06-30T21:00:00.000' AS DateTime), 3, 11)
INSERT [dbo].[Shift_Roster] ([Shift_Roster_ID], [Shift_Date], [Available_Shift_Time], [Number_Of_Employees], [Shift_Booking_ID]) VALUES (18, CAST(N'2024-09-14' AS Date), CAST(N'2024-06-30T17:30:00.000' AS DateTime), 4, 12)
INSERT [dbo].[Shift_Roster] ([Shift_Roster_ID], [Shift_Date], [Available_Shift_Time], [Number_Of_Employees], [Shift_Booking_ID]) VALUES (19, CAST(N'2024-09-14' AS Date), CAST(N'2024-06-30T17:30:00.000' AS DateTime), 2, 13)
INSERT [dbo].[Shift_Roster] ([Shift_Roster_ID], [Shift_Date], [Available_Shift_Time], [Number_Of_Employees], [Shift_Booking_ID]) VALUES (20, CAST(N'2024-09-14' AS Date), CAST(N'2024-06-30T19:00:00.000' AS DateTime), 3, 14)
INSERT [dbo].[Shift_Roster] ([Shift_Roster_ID], [Shift_Date], [Available_Shift_Time], [Number_Of_Employees], [Shift_Booking_ID]) VALUES (21, CAST(N'2024-09-20' AS Date), CAST(N'2024-06-30T17:30:00.000' AS DateTime), 5, 15)
SET IDENTITY_INSERT [dbo].[Shift_Roster] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (16, N'Dillion', 41, CAST(N'1980-05-06' AS Date), N'dillion@galleryartbar.com', N'd1234', N'1234', 2, N'', N'', 0, N'', N'')
INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (17, N'Michael', 41, CAST(N'1980-05-06' AS Date), N'mike@galleryartbar.com', N'm1234', N'1234', 3, N'', N'', 0, N'', N'')
INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (18, N'Bradley', 20, CAST(N'2003-05-06' AS Date), N'brad@ithinkimbetterthaneveryone.com', N'b1234', N'1234', 1, N'', N'', 0, N'', N'')
INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (19, N'Sam', 21, CAST(N'2002-05-06' AS Date), N'Sam@galleryartbar.com', N'S1234', N'1234', 1, N'', N'', 0, N'', N'')
INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (27, N'Mandla', 21, CAST(N'2002-12-01' AS Date), N'Mandla@gmail.com', N'M1234', N'1234', 1, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (28, N'Shaun', 22, CAST(N'2002-02-21' AS Date), N'Shaun@gmail.com', N'Shaun1234', N'1234', 1, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (29, N'Mitch', 21, CAST(N'2002-07-22' AS Date), N'Mitch@gmail.com', N'Mitch1234', N'1234', 1, N'', N'string', 1, N'string', N'string')
INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (30, N'Jess', 21, CAST(N'2002-09-12' AS Date), N'Jess@gmail.com', N'Jess1234', N'1234', 1, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (31, N' Mike', 21, CAST(N'2002-08-01' AS Date), N'Mike@mweb.com', N'Mike1234', N' 1234', 1, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (33, N'Emma', 20, CAST(N'2003-10-10' AS Date), N'Emma@mweb.com', N'Emma1234', N'1234', 1, N'', NULL, 0, NULL, NULL)
INSERT [dbo].[Staff] ([Staff_ID], [Staff_Name], [Staff_Age], [Date_Of_Birth], [Staff_Email], [Staff_Photo], [Staff_Passcode], [Staff_Type_ID], [Token], [Tokens], [IsTwoFactorAuthenticated], [TwoFactorMethod], [TwoFactorContact]) VALUES (34, N'Sarah', 21, CAST(N'2002-07-28' AS Date), N'Sarah@mweb.com', N'Sarah1234', N'BI/irt2l3xPdSEKshj/5GzeQNajdSimW6ddDbsLxLu2ZZVVM', 1, N'', N'string', 1, N'string', N'string')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff_Payment] ON 

INSERT [dbo].[Staff_Payment] ([Staff_Payment_ID], [Shift_Date], [Staff_ID], [Base_Rate_ID], [Cash_Tips], [Card_Tips], [Payment_Amount]) VALUES (9, CAST(N'2024-08-02' AS Date), 18, 2, CAST(100.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[Staff_Payment] ([Staff_Payment_ID], [Shift_Date], [Staff_ID], [Base_Rate_ID], [Cash_Tips], [Card_Tips], [Payment_Amount]) VALUES (11, CAST(N'2024-08-02' AS Date), 19, 1, CAST(80.00 AS Decimal(10, 2)), CAST(120.00 AS Decimal(10, 2)), CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[Staff_Payment] ([Staff_Payment_ID], [Shift_Date], [Staff_ID], [Base_Rate_ID], [Cash_Tips], [Card_Tips], [Payment_Amount]) VALUES (12, CAST(N'2024-08-02' AS Date), 27, 1, CAST(0.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)), CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[Staff_Payment] ([Staff_Payment_ID], [Shift_Date], [Staff_ID], [Base_Rate_ID], [Cash_Tips], [Card_Tips], [Payment_Amount]) VALUES (13, CAST(N'2024-08-03' AS Date), 28, 1, CAST(30.00 AS Decimal(10, 2)), CAST(220.00 AS Decimal(10, 2)), CAST(950.00 AS Decimal(10, 2)))
INSERT [dbo].[Staff_Payment] ([Staff_Payment_ID], [Shift_Date], [Staff_ID], [Base_Rate_ID], [Cash_Tips], [Card_Tips], [Payment_Amount]) VALUES (14, CAST(N'2024-09-14' AS Date), 28, 1, CAST(25.00 AS Decimal(10, 2)), CAST(300.00 AS Decimal(10, 2)), CAST(1250.00 AS Decimal(10, 2)))
INSERT [dbo].[Staff_Payment] ([Staff_Payment_ID], [Shift_Date], [Staff_ID], [Base_Rate_ID], [Cash_Tips], [Card_Tips], [Payment_Amount]) VALUES (15, CAST(N'2024-09-14' AS Date), 18, 2, CAST(25.00 AS Decimal(10, 2)), CAST(175.00 AS Decimal(10, 2)), CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[Staff_Payment] ([Staff_Payment_ID], [Shift_Date], [Staff_ID], [Base_Rate_ID], [Cash_Tips], [Card_Tips], [Payment_Amount]) VALUES (17, CAST(N'2024-09-14' AS Date), 17, 4, CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[Staff_Payment] ([Staff_Payment_ID], [Shift_Date], [Staff_ID], [Base_Rate_ID], [Cash_Tips], [Card_Tips], [Payment_Amount]) VALUES (18, CAST(N'2024-09-14' AS Date), 28, 1, CAST(100.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[Staff_Payment] ([Staff_Payment_ID], [Shift_Date], [Staff_ID], [Base_Rate_ID], [Cash_Tips], [Card_Tips], [Payment_Amount]) VALUES (19, CAST(N'2024-09-14' AS Date), 19, 1, CAST(100.00 AS Decimal(10, 2)), CAST(225.00 AS Decimal(10, 2)), CAST(1025.00 AS Decimal(10, 2)))
INSERT [dbo].[Staff_Payment] ([Staff_Payment_ID], [Shift_Date], [Staff_ID], [Base_Rate_ID], [Cash_Tips], [Card_Tips], [Payment_Amount]) VALUES (20, CAST(N'2024-09-20' AS Date), 18, 2, CAST(80.00 AS Decimal(10, 2)), CAST(195.00 AS Decimal(10, 2)), CAST(1375.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Staff_Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff_Shift_Booking_Line] ON 

INSERT [dbo].[Staff_Shift_Booking_Line] ([Staff_Shift_Booking_ID], [Staff_ID], [Staff_Name], [Booking_Date]) VALUES (1, 18, N'Bradley', CAST(N'2024-08-02' AS Date))
INSERT [dbo].[Staff_Shift_Booking_Line] ([Staff_Shift_Booking_ID], [Staff_ID], [Staff_Name], [Booking_Date]) VALUES (2, 18, N'Bradley', CAST(N'2024-08-03' AS Date))
INSERT [dbo].[Staff_Shift_Booking_Line] ([Staff_Shift_Booking_ID], [Staff_ID], [Staff_Name], [Booking_Date]) VALUES (4, 19, N'Sam', CAST(N'2024-08-02' AS Date))
INSERT [dbo].[Staff_Shift_Booking_Line] ([Staff_Shift_Booking_ID], [Staff_ID], [Staff_Name], [Booking_Date]) VALUES (5, 19, N'Sam', CAST(N'2024-09-14' AS Date))
INSERT [dbo].[Staff_Shift_Booking_Line] ([Staff_Shift_Booking_ID], [Staff_ID], [Staff_Name], [Booking_Date]) VALUES (6, 27, N'Mandla', CAST(N'2024-08-03' AS Date))
INSERT [dbo].[Staff_Shift_Booking_Line] ([Staff_Shift_Booking_ID], [Staff_ID], [Staff_Name], [Booking_Date]) VALUES (7, 27, N'Mandla', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Staff_Shift_Booking_Line] ([Staff_Shift_Booking_ID], [Staff_ID], [Staff_Name], [Booking_Date]) VALUES (8, 28, N'Shaun', CAST(N'2024-09-14' AS Date))
INSERT [dbo].[Staff_Shift_Booking_Line] ([Staff_Shift_Booking_ID], [Staff_ID], [Staff_Name], [Booking_Date]) VALUES (9, 28, N'Shaun', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Staff_Shift_Booking_Line] ([Staff_Shift_Booking_ID], [Staff_ID], [Staff_Name], [Booking_Date]) VALUES (10, 29, N'Mitch', CAST(N'2024-08-02' AS Date))
INSERT [dbo].[Staff_Shift_Booking_Line] ([Staff_Shift_Booking_ID], [Staff_ID], [Staff_Name], [Booking_Date]) VALUES (11, 29, N'Mitch', CAST(N'2024-09-20' AS Date))
SET IDENTITY_INSERT [dbo].[Staff_Shift_Booking_Line] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff_Type] ON 

INSERT [dbo].[Staff_Type] ([Staff_Type_ID], [Staff_Type_Name]) VALUES (1, N'Employee')
INSERT [dbo].[Staff_Type] ([Staff_Type_ID], [Staff_Type_Name]) VALUES (2, N'Admin')
INSERT [dbo].[Staff_Type] ([Staff_Type_ID], [Staff_Type_Name]) VALUES (3, N'Owner')
SET IDENTITY_INSERT [dbo].[Staff_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Stock_Take] ON 

INSERT [dbo].[Stock_Take] ([Stock_Take_ID], [Inventory_ID], [Opening_Inventory_ID], [Weighted_Stock_ID], [Closing_Inventory_ID]) VALUES (4, 1, 1, 2, 1)
INSERT [dbo].[Stock_Take] ([Stock_Take_ID], [Inventory_ID], [Opening_Inventory_ID], [Weighted_Stock_ID], [Closing_Inventory_ID]) VALUES (5, 2, 2, 4, 2)
INSERT [dbo].[Stock_Take] ([Stock_Take_ID], [Inventory_ID], [Opening_Inventory_ID], [Weighted_Stock_ID], [Closing_Inventory_ID]) VALUES (6, 3, 3, 5, 3)
INSERT [dbo].[Stock_Take] ([Stock_Take_ID], [Inventory_ID], [Opening_Inventory_ID], [Weighted_Stock_ID], [Closing_Inventory_ID]) VALUES (7, 4, 4, 6, 4)
INSERT [dbo].[Stock_Take] ([Stock_Take_ID], [Inventory_ID], [Opening_Inventory_ID], [Weighted_Stock_ID], [Closing_Inventory_ID]) VALUES (8, 5, 5, 7, 5)
INSERT [dbo].[Stock_Take] ([Stock_Take_ID], [Inventory_ID], [Opening_Inventory_ID], [Weighted_Stock_ID], [Closing_Inventory_ID]) VALUES (9, 6, 6, 8, 6)
INSERT [dbo].[Stock_Take] ([Stock_Take_ID], [Inventory_ID], [Opening_Inventory_ID], [Weighted_Stock_ID], [Closing_Inventory_ID]) VALUES (10, 7, 7, 9, 7)
INSERT [dbo].[Stock_Take] ([Stock_Take_ID], [Inventory_ID], [Opening_Inventory_ID], [Weighted_Stock_ID], [Closing_Inventory_ID]) VALUES (11, 8, 8, 10, 8)
INSERT [dbo].[Stock_Take] ([Stock_Take_ID], [Inventory_ID], [Opening_Inventory_ID], [Weighted_Stock_ID], [Closing_Inventory_ID]) VALUES (12, 9, 9, 11, 9)
INSERT [dbo].[Stock_Take] ([Stock_Take_ID], [Inventory_ID], [Opening_Inventory_ID], [Weighted_Stock_ID], [Closing_Inventory_ID]) VALUES (13, 10, 10, 12, 10)
SET IDENTITY_INSERT [dbo].[Stock_Take] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([Supplier_ID], [Supplier_Name], [Supplier_Email], [Supplier_PhoneNumber], [Supplier_Address], [Supplier_Type_ID]) VALUES (1, N'Good fellows', N'good@fellows@gmail', N'1111111111', N'123 Corner road', 1)
INSERT [dbo].[Supplier] ([Supplier_ID], [Supplier_Name], [Supplier_Email], [Supplier_PhoneNumber], [Supplier_Address], [Supplier_Type_ID]) VALUES (2, N'Coke', N'coke@SA.com', N'2222222222', N'Coke world', 2)
INSERT [dbo].[Supplier] ([Supplier_ID], [Supplier_Name], [Supplier_Email], [Supplier_PhoneNumber], [Supplier_Address], [Supplier_Type_ID]) VALUES (3, N'Makro', N'macroSA@gmail.com', N'3333333333', N'76 Parkview', 3)
INSERT [dbo].[Supplier] ([Supplier_ID], [Supplier_Name], [Supplier_Email], [Supplier_PhoneNumber], [Supplier_Address], [Supplier_Type_ID]) VALUES (4, N'Shaun', N'shaun@gmail.com', N'4444444444', N'Park street', 4)
INSERT [dbo].[Supplier] ([Supplier_ID], [Supplier_Name], [Supplier_Email], [Supplier_PhoneNumber], [Supplier_Address], [Supplier_Type_ID]) VALUES (5, N'Heavenly hubbly', N'hub@gmail.com', N'5555555555', N'21 Yellow brick lane', 5)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier_Type] ON 

INSERT [dbo].[Supplier_Type] ([Supplier_Type_ID], [Supplier_Type]) VALUES (1, N'Alcohol')
INSERT [dbo].[Supplier_Type] ([Supplier_Type_ID], [Supplier_Type]) VALUES (2, N'Non-Alcoholic')
INSERT [dbo].[Supplier_Type] ([Supplier_Type_ID], [Supplier_Type]) VALUES (3, N'Pizza')
INSERT [dbo].[Supplier_Type] ([Supplier_Type_ID], [Supplier_Type]) VALUES (4, N'Vapes')
INSERT [dbo].[Supplier_Type] ([Supplier_Type_ID], [Supplier_Type]) VALUES (5, N'Hub')
SET IDENTITY_INSERT [dbo].[Supplier_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Booking] ON 

INSERT [dbo].[Table_Booking] ([Table_Booking_ID], [TableBooking_Date], [Table_Number], [Table_Booking_Status_ID], [Staff_ID]) VALUES (1, CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'1', 1, 18)
INSERT [dbo].[Table_Booking] ([Table_Booking_ID], [TableBooking_Date], [Table_Number], [Table_Booking_Status_ID], [Staff_ID]) VALUES (2, CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'2', 2, 19)
INSERT [dbo].[Table_Booking] ([Table_Booking_ID], [TableBooking_Date], [Table_Number], [Table_Booking_Status_ID], [Staff_ID]) VALUES (3, CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'3', 2, 27)
INSERT [dbo].[Table_Booking] ([Table_Booking_ID], [TableBooking_Date], [Table_Number], [Table_Booking_Status_ID], [Staff_ID]) VALUES (4, CAST(N'2024-08-03T00:00:00.000' AS DateTime), N'1', 4, 28)
INSERT [dbo].[Table_Booking] ([Table_Booking_ID], [TableBooking_Date], [Table_Number], [Table_Booking_Status_ID], [Staff_ID]) VALUES (5, CAST(N'2024-08-03T00:00:00.000' AS DateTime), N'2', 1, 18)
INSERT [dbo].[Table_Booking] ([Table_Booking_ID], [TableBooking_Date], [Table_Number], [Table_Booking_Status_ID], [Staff_ID]) VALUES (6, CAST(N'2024-09-14T00:00:00.000' AS DateTime), N'1', 3, 19)
INSERT [dbo].[Table_Booking] ([Table_Booking_ID], [TableBooking_Date], [Table_Number], [Table_Booking_Status_ID], [Staff_ID]) VALUES (7, CAST(N'2024-09-14T00:00:00.000' AS DateTime), N'2', 2, 18)
INSERT [dbo].[Table_Booking] ([Table_Booking_ID], [TableBooking_Date], [Table_Number], [Table_Booking_Status_ID], [Staff_ID]) VALUES (8, CAST(N'2024-09-14T00:00:00.000' AS DateTime), N'3', 1, 27)
INSERT [dbo].[Table_Booking] ([Table_Booking_ID], [TableBooking_Date], [Table_Number], [Table_Booking_Status_ID], [Staff_ID]) VALUES (9, CAST(N'2024-09-20T00:00:00.000' AS DateTime), N'2', 4, 29)
INSERT [dbo].[Table_Booking] ([Table_Booking_ID], [TableBooking_Date], [Table_Number], [Table_Booking_Status_ID], [Staff_ID]) VALUES (10, CAST(N'2024-09-20T00:00:00.000' AS DateTime), N'3', 3, 28)
SET IDENTITY_INSERT [dbo].[Table_Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Booking_Status] ON 

INSERT [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID], [Table_Booking_Status]) VALUES (1, N'Available')
INSERT [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID], [Table_Booking_Status]) VALUES (2, N'Booked')
INSERT [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID], [Table_Booking_Status]) VALUES (3, N'Canceled')
INSERT [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID], [Table_Booking_Status]) VALUES (4, N'Waiting payment')
SET IDENTITY_INSERT [dbo].[Table_Booking_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Vat] ON 

INSERT [dbo].[Vat] ([Vat_ID], [Vat_Amount]) VALUES (1, CAST(90.00 AS Decimal(10, 2)))
INSERT [dbo].[Vat] ([Vat_ID], [Vat_Amount]) VALUES (2, CAST(38.00 AS Decimal(10, 2)))
INSERT [dbo].[Vat] ([Vat_ID], [Vat_Amount]) VALUES (3, CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[Vat] ([Vat_ID], [Vat_Amount]) VALUES (4, CAST(113.00 AS Decimal(10, 2)))
INSERT [dbo].[Vat] ([Vat_ID], [Vat_Amount]) VALUES (5, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Vat] ([Vat_ID], [Vat_Amount]) VALUES (6, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Vat] ([Vat_ID], [Vat_Amount]) VALUES (7, CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[Vat] ([Vat_ID], [Vat_Amount]) VALUES (8, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[Vat] ([Vat_ID], [Vat_Amount]) VALUES (9, CAST(101.00 AS Decimal(10, 2)))
INSERT [dbo].[Vat] ([Vat_ID], [Vat_Amount]) VALUES (10, CAST(5.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Vat] OFF
GO
SET IDENTITY_INSERT [dbo].[Weighted_Bottles] ON 

INSERT [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID], [Weighing_Date], [Weighted_Value]) VALUES (2, 2023, 100000)
INSERT [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID], [Weighing_Date], [Weighted_Value]) VALUES (4, 2023, 258000)
INSERT [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID], [Weighing_Date], [Weighted_Value]) VALUES (5, 2023, 123456)
INSERT [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID], [Weighing_Date], [Weighted_Value]) VALUES (6, 2023, 678910)
INSERT [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID], [Weighing_Date], [Weighted_Value]) VALUES (7, 2023, 109876)
INSERT [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID], [Weighing_Date], [Weighted_Value]) VALUES (8, 2024, 54321)
INSERT [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID], [Weighing_Date], [Weighted_Value]) VALUES (9, 2024, 209050)
INSERT [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID], [Weighing_Date], [Weighted_Value]) VALUES (10, 2024, 215000)
INSERT [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID], [Weighing_Date], [Weighted_Value]) VALUES (11, 2024, 189700)
INSERT [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID], [Weighing_Date], [Weighted_Value]) VALUES (12, 2024, 222560)
SET IDENTITY_INSERT [dbo].[Weighted_Bottles] OFF
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT ((0)) FOR [IsTwoFactorAuthenticated]
GO
ALTER TABLE [dbo].[Bartender_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Deductions]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Deductions]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Deductions]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Deductions]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Deductions]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Deductions]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Deductions]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Deductions]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Bartender_Tip_Deduction_Line]  WITH CHECK ADD FOREIGN KEY([Bartender_Deductions_ID])
REFERENCES [dbo].[Bartender_Deductions] ([Bartender_Deductions_ID])
GO
ALTER TABLE [dbo].[Base_Rate]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Base_Rate]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Base_Rate]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Base_Rate]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Base_Rate]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Base_Rate]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Base_Rate]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Base_Rate]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[CashCount]  WITH CHECK ADD FOREIGN KEY([CashFloat_ID])
REFERENCES [dbo].[CashFloat] ([CashFloat_ID])
GO
ALTER TABLE [dbo].[CashCount]  WITH CHECK ADD FOREIGN KEY([CashFloat_ID])
REFERENCES [dbo].[CashFloat] ([CashFloat_ID])
GO
ALTER TABLE [dbo].[CashCount]  WITH CHECK ADD FOREIGN KEY([CashFloat_ID])
REFERENCES [dbo].[CashFloat] ([CashFloat_ID])
GO
ALTER TABLE [dbo].[CashCount]  WITH CHECK ADD FOREIGN KEY([CashFloat_ID])
REFERENCES [dbo].[CashFloat] ([CashFloat_ID])
GO
ALTER TABLE [dbo].[CashCount]  WITH CHECK ADD FOREIGN KEY([CashFloat_ID])
REFERENCES [dbo].[CashFloat] ([CashFloat_ID])
GO
ALTER TABLE [dbo].[CashCount]  WITH CHECK ADD FOREIGN KEY([CashFloat_ID])
REFERENCES [dbo].[CashFloat] ([CashFloat_ID])
GO
ALTER TABLE [dbo].[CashCount]  WITH CHECK ADD FOREIGN KEY([CashFloat_ID])
REFERENCES [dbo].[CashFloat] ([CashFloat_ID])
GO
ALTER TABLE [dbo].[CashCount]  WITH CHECK ADD FOREIGN KEY([CashFloat_ID])
REFERENCES [dbo].[CashFloat] ([CashFloat_ID])
GO
ALTER TABLE [dbo].[Clocked_In]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Clocked_In]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Clocked_In]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Clocked_In]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Closing_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Closing_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Closing_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Closing_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Closing_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Closing_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Closing_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Closing_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Closing_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_ID])
REFERENCES [dbo].[Table_Booking] ([Table_Booking_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_ID])
REFERENCES [dbo].[Table_Booking] ([Table_Booking_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_ID])
REFERENCES [dbo].[Table_Booking] ([Table_Booking_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_ID])
REFERENCES [dbo].[Table_Booking] ([Table_Booking_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_ID])
REFERENCES [dbo].[Table_Booking] ([Table_Booking_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_ID])
REFERENCES [dbo].[Table_Booking] ([Table_Booking_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_ID])
REFERENCES [dbo].[Table_Booking] ([Table_Booking_ID])
GO
ALTER TABLE [dbo].[Customer_Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_ID])
REFERENCES [dbo].[Table_Booking] ([Table_Booking_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Requirements_ID])
REFERENCES [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Requirements_ID])
REFERENCES [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Requirements_ID])
REFERENCES [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Requirements_ID])
REFERENCES [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Requirements_ID])
REFERENCES [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Requirements_ID])
REFERENCES [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Requirements_ID])
REFERENCES [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Inventory_Requirements_ID])
REFERENCES [dbo].[Inventory_Requirements] ([Inventory_Requirements_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Discrepancy_ID])
REFERENCES [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Discrepancy_ID])
REFERENCES [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Discrepancy_ID])
REFERENCES [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Discrepancy_ID])
REFERENCES [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Discrepancy_ID])
REFERENCES [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Discrepancy_ID])
REFERENCES [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Discrepancy_ID])
REFERENCES [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Discrepancy_ID])
REFERENCES [dbo].[Inventory_Discrepancy] ([Inventory_Discrepancy_ID])
GO
ALTER TABLE [dbo].[Inventory_Discrepancy_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Order_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Type_ID])
REFERENCES [dbo].[Inventory_Type] ([Inventory_Type_ID])
GO
ALTER TABLE [dbo].[Inventory_Orders]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Status]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Status]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Status]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Status]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Status]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Status]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Status]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Status]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_Orders_ID])
REFERENCES [dbo].[Inventory_Orders] ([Inventory_Orders_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Inventory_Supplier_Line]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Inventory_Type]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Type]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Type]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Type]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Type]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Type]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Type]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Inventory_Type]  WITH CHECK ADD FOREIGN KEY([Inventory_Category_ID])
REFERENCES [dbo].[Inventory_Category] ([Inventory_Category_ID])
GO
ALTER TABLE [dbo].[Opening_Inventory]  WITH CHECK ADD FOREIGN KEY([Opening_Weighted_ID])
REFERENCES [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID])
GO
ALTER TABLE [dbo].[Opening_Inventory]  WITH CHECK ADD FOREIGN KEY([Opening_Weighted_ID])
REFERENCES [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID])
GO
ALTER TABLE [dbo].[Opening_Inventory]  WITH CHECK ADD FOREIGN KEY([Opening_Weighted_ID])
REFERENCES [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID])
GO
ALTER TABLE [dbo].[Opening_Inventory]  WITH CHECK ADD FOREIGN KEY([Opening_Weighted_ID])
REFERENCES [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID])
GO
ALTER TABLE [dbo].[Opening_Inventory]  WITH CHECK ADD FOREIGN KEY([Opening_Weighted_ID])
REFERENCES [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID])
GO
ALTER TABLE [dbo].[Opening_Inventory]  WITH CHECK ADD FOREIGN KEY([Opening_Weighted_ID])
REFERENCES [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID])
GO
ALTER TABLE [dbo].[Opening_Inventory]  WITH CHECK ADD FOREIGN KEY([Opening_Weighted_ID])
REFERENCES [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID])
GO
ALTER TABLE [dbo].[Opening_Inventory]  WITH CHECK ADD FOREIGN KEY([Opening_Weighted_ID])
REFERENCES [dbo].[Opening_Weighted_Bottles] ([Opening_Weighted_ID])
GO
ALTER TABLE [dbo].[Opening_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Opening_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Opening_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Opening_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Opening_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Opening_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Opening_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Opening_Stock_Line]  WITH CHECK ADD FOREIGN KEY([Stock_Take_ID])
REFERENCES [dbo].[Stock_Take] ([Stock_Take_ID])
GO
ALTER TABLE [dbo].[Opening_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Opening_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Opening_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Opening_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Opening_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Opening_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Opening_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Opening_Weighted_Bottles]  WITH CHECK ADD FOREIGN KEY([Weighted_Bottles_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Bartender_Tip_ID])
REFERENCES [dbo].[Bartender_Tips] ([Bartender_Tip_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Payment_Type_ID])
REFERENCES [dbo].[Payment_Type] ([Payment_Type_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Payment_Type_ID])
REFERENCES [dbo].[Payment_Type] ([Payment_Type_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Payment_Type_ID])
REFERENCES [dbo].[Payment_Type] ([Payment_Type_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Payment_Type_ID])
REFERENCES [dbo].[Payment_Type] ([Payment_Type_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Payment_Type_ID])
REFERENCES [dbo].[Payment_Type] ([Payment_Type_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Payment_Type_ID])
REFERENCES [dbo].[Payment_Type] ([Payment_Type_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Payment_Type_ID])
REFERENCES [dbo].[Payment_Type] ([Payment_Type_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Payment_Type_ID])
REFERENCES [dbo].[Payment_Type] ([Payment_Type_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Vat_ID])
REFERENCES [dbo].[Vat] ([Vat_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Vat_ID])
REFERENCES [dbo].[Vat] ([Vat_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Vat_ID])
REFERENCES [dbo].[Vat] ([Vat_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Vat_ID])
REFERENCES [dbo].[Vat] ([Vat_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Vat_ID])
REFERENCES [dbo].[Vat] ([Vat_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Vat_ID])
REFERENCES [dbo].[Vat] ([Vat_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Vat_ID])
REFERENCES [dbo].[Vat] ([Vat_ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Vat_ID])
REFERENCES [dbo].[Vat] ([Vat_ID])
GO
ALTER TABLE [dbo].[Payment_Line]  WITH CHECK ADD FOREIGN KEY([Payment_ID])
REFERENCES [dbo].[Payment] ([Payment_ID])
GO
ALTER TABLE [dbo].[Payment_Line]  WITH CHECK ADD FOREIGN KEY([Payment_ID])
REFERENCES [dbo].[Payment] ([Payment_ID])
GO
ALTER TABLE [dbo].[Payment_Line]  WITH CHECK ADD FOREIGN KEY([Payment_ID])
REFERENCES [dbo].[Payment] ([Payment_ID])
GO
ALTER TABLE [dbo].[Payment_Line]  WITH CHECK ADD FOREIGN KEY([Payment_ID])
REFERENCES [dbo].[Payment] ([Payment_ID])
GO
ALTER TABLE [dbo].[Payment_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Payment_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Payment_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Payment_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Type_ID])
REFERENCES [dbo].[Product_Type] ([Product_Type_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Category_ID])
REFERENCES [dbo].[Product_Category] ([Product_Category_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Type_ID])
REFERENCES [dbo].[Product_Type] ([Product_Type_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Category_ID])
REFERENCES [dbo].[Product_Category] ([Product_Category_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Type_ID])
REFERENCES [dbo].[Product_Type] ([Product_Type_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Category_ID])
REFERENCES [dbo].[Product_Category] ([Product_Category_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Type_ID])
REFERENCES [dbo].[Product_Type] ([Product_Type_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Category_ID])
REFERENCES [dbo].[Product_Category] ([Product_Category_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Type_ID])
REFERENCES [dbo].[Product_Type] ([Product_Type_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Category_ID])
REFERENCES [dbo].[Product_Category] ([Product_Category_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Type_ID])
REFERENCES [dbo].[Product_Type] ([Product_Type_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Category_ID])
REFERENCES [dbo].[Product_Category] ([Product_Category_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Type_ID])
REFERENCES [dbo].[Product_Type] ([Product_Type_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Category_ID])
REFERENCES [dbo].[Product_Category] ([Product_Category_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Type_ID])
REFERENCES [dbo].[Product_Type] ([Product_Type_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Product_Category_ID])
REFERENCES [dbo].[Product_Category] ([Product_Category_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Product_Inventory_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Sale_Line]  WITH CHECK ADD FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Sales_Type_ID])
REFERENCES [dbo].[Sales_Type] ([Sales_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Sales_Type_ID])
REFERENCES [dbo].[Sales_Type] ([Sales_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Sales_Type_ID])
REFERENCES [dbo].[Sales_Type] ([Sales_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Sales_Type_ID])
REFERENCES [dbo].[Sales_Type] ([Sales_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Sales_Type_ID])
REFERENCES [dbo].[Sales_Type] ([Sales_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Sales_Type_ID])
REFERENCES [dbo].[Sales_Type] ([Sales_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Sales_Type_ID])
REFERENCES [dbo].[Sales_Type] ([Sales_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Sales_Type_ID])
REFERENCES [dbo].[Sales_Type] ([Sales_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Shift_Booking]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_Status_ID])
REFERENCES [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Booking]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_Status_ID])
REFERENCES [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Booking]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_Status_ID])
REFERENCES [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Booking]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_Status_ID])
REFERENCES [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Booking]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_Status_ID])
REFERENCES [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Booking]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_Status_ID])
REFERENCES [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Booking]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_Status_ID])
REFERENCES [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Booking]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_Status_ID])
REFERENCES [dbo].[Shift_Booking_Status] ([Shift_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Roster_ID])
REFERENCES [dbo].[Shift_Roster] ([Shift_Roster_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Change_Status_ID])
REFERENCES [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Roster_ID])
REFERENCES [dbo].[Shift_Roster] ([Shift_Roster_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Change_Status_ID])
REFERENCES [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Roster_ID])
REFERENCES [dbo].[Shift_Roster] ([Shift_Roster_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Change_Status_ID])
REFERENCES [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Roster_ID])
REFERENCES [dbo].[Shift_Roster] ([Shift_Roster_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Change_Status_ID])
REFERENCES [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Roster_ID])
REFERENCES [dbo].[Shift_Roster] ([Shift_Roster_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Change_Status_ID])
REFERENCES [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Roster_ID])
REFERENCES [dbo].[Shift_Roster] ([Shift_Roster_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Change_Status_ID])
REFERENCES [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Roster_ID])
REFERENCES [dbo].[Shift_Roster] ([Shift_Roster_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Change_Status_ID])
REFERENCES [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Roster_ID])
REFERENCES [dbo].[Shift_Roster] ([Shift_Roster_ID])
GO
ALTER TABLE [dbo].[Shift_Change_Request]  WITH CHECK ADD FOREIGN KEY([Shift_Change_Status_ID])
REFERENCES [dbo].[Shift_Change_Status] ([Shift_Change_Status_ID])
GO
ALTER TABLE [dbo].[Shift_Roster]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_ID])
REFERENCES [dbo].[Shift_Booking] ([Shift_Booking_ID])
GO
ALTER TABLE [dbo].[Shift_Roster]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_ID])
REFERENCES [dbo].[Shift_Booking] ([Shift_Booking_ID])
GO
ALTER TABLE [dbo].[Shift_Roster]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_ID])
REFERENCES [dbo].[Shift_Booking] ([Shift_Booking_ID])
GO
ALTER TABLE [dbo].[Shift_Roster]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_ID])
REFERENCES [dbo].[Shift_Booking] ([Shift_Booking_ID])
GO
ALTER TABLE [dbo].[Shift_Roster]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_ID])
REFERENCES [dbo].[Shift_Booking] ([Shift_Booking_ID])
GO
ALTER TABLE [dbo].[Shift_Roster]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_ID])
REFERENCES [dbo].[Shift_Booking] ([Shift_Booking_ID])
GO
ALTER TABLE [dbo].[Shift_Roster]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_ID])
REFERENCES [dbo].[Shift_Booking] ([Shift_Booking_ID])
GO
ALTER TABLE [dbo].[Shift_Roster]  WITH CHECK ADD FOREIGN KEY([Shift_Booking_ID])
REFERENCES [dbo].[Shift_Booking] ([Shift_Booking_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Staff_Type_ID])
REFERENCES [dbo].[Staff_Type] ([Staff_Type_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Base_Rate_ID])
REFERENCES [dbo].[Base_Rate] ([Base_Rate_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Base_Rate_ID])
REFERENCES [dbo].[Base_Rate] ([Base_Rate_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Base_Rate_ID])
REFERENCES [dbo].[Base_Rate] ([Base_Rate_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Base_Rate_ID])
REFERENCES [dbo].[Base_Rate] ([Base_Rate_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Base_Rate_ID])
REFERENCES [dbo].[Base_Rate] ([Base_Rate_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Base_Rate_ID])
REFERENCES [dbo].[Base_Rate] ([Base_Rate_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Base_Rate_ID])
REFERENCES [dbo].[Base_Rate] ([Base_Rate_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Base_Rate_ID])
REFERENCES [dbo].[Base_Rate] ([Base_Rate_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Payment]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Shift_Booking_Line]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Shift_Booking_Line]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Shift_Booking_Line]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Shift_Booking_Line]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Shift_Booking_Line]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Shift_Booking_Line]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Shift_Booking_Line]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Staff_Shift_Booking_Line]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Closing_Inventory_ID])
REFERENCES [dbo].[Closing_Inventory] ([Closing_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Opening_Inventory_ID])
REFERENCES [dbo].[Opening_Inventory] ([Opening_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Opening_Inventory_ID])
REFERENCES [dbo].[Opening_Inventory] ([Opening_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Opening_Inventory_ID])
REFERENCES [dbo].[Opening_Inventory] ([Opening_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Opening_Inventory_ID])
REFERENCES [dbo].[Opening_Inventory] ([Opening_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Opening_Inventory_ID])
REFERENCES [dbo].[Opening_Inventory] ([Opening_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Opening_Inventory_ID])
REFERENCES [dbo].[Opening_Inventory] ([Opening_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Opening_Inventory_ID])
REFERENCES [dbo].[Opening_Inventory] ([Opening_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Opening_Inventory_ID])
REFERENCES [dbo].[Opening_Inventory] ([Opening_Inventory_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Weighted_Stock_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Weighted_Stock_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Weighted_Stock_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Weighted_Stock_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Weighted_Stock_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Weighted_Stock_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Weighted_Stock_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Stock_Take]  WITH CHECK ADD FOREIGN KEY([Weighted_Stock_ID])
REFERENCES [dbo].[Weighted_Bottles] ([Weighted_Bottles_ID])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([Supplier_Type_ID])
REFERENCES [dbo].[Supplier_Type] ([Supplier_Type_ID])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([Supplier_Type_ID])
REFERENCES [dbo].[Supplier_Type] ([Supplier_Type_ID])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([Supplier_Type_ID])
REFERENCES [dbo].[Supplier_Type] ([Supplier_Type_ID])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([Supplier_Type_ID])
REFERENCES [dbo].[Supplier_Type] ([Supplier_Type_ID])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([Supplier_Type_ID])
REFERENCES [dbo].[Supplier_Type] ([Supplier_Type_ID])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([Supplier_Type_ID])
REFERENCES [dbo].[Supplier_Type] ([Supplier_Type_ID])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([Supplier_Type_ID])
REFERENCES [dbo].[Supplier_Type] ([Supplier_Type_ID])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([Supplier_Type_ID])
REFERENCES [dbo].[Supplier_Type] ([Supplier_Type_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_Status_ID])
REFERENCES [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_Status_ID])
REFERENCES [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_Status_ID])
REFERENCES [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_Status_ID])
REFERENCES [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_Status_ID])
REFERENCES [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_Status_ID])
REFERENCES [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_Status_ID])
REFERENCES [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID])
GO
ALTER TABLE [dbo].[Table_Booking]  WITH CHECK ADD FOREIGN KEY([Table_Booking_Status_ID])
REFERENCES [dbo].[Table_Booking_Status] ([Table_Booking_Status_ID])
GO
USE [master]
GO
ALTER DATABASE [GalleryArtBar] SET  READ_WRITE 
GO
