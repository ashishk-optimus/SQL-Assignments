/******
Author: Ashish Kumar
Date: 23/02/2018
Purpose: Practice
/******

USE [Assignment - DB02]
GO
/****** Object:  Table [dbo].[t_user_master]    Script Date: 01-03-2018 15:11:06 ******/
DROP TABLE [dbo].[t_user_master]
GO
/****** Object:  Table [dbo].[t_transaction]    Script Date: 01-03-2018 15:11:06 ******/
DROP TABLE [dbo].[t_transaction]
GO
/****** Object:  Table [dbo].[t_product_master]    Script Date: 01-03-2018 15:11:06 ******/
DROP TABLE [dbo].[t_product_master]
GO
/****** Object:  Table [dbo].[t_product_master]    Script Date: 01-03-2018 15:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_product_master](
	[Product_Id] [varchar](5) NULL,
	[Product_Name] [varchar](20) NULL,
	[Cost_Per_Item] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_transaction]    Script Date: 01-03-2018 15:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_transaction](
	[Users_Id] [varchar](5) NULL,
	[Product_Id] [varchar](5) NULL,
	[Transaction_Date] [date] NULL,
	[Transaction_Type] [varchar](20) NULL,
	[Transaction_Amount] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_user_master]    Script Date: 01-03-2018 15:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_user_master](
	[Users_Id] [varchar](5) NULL,
	[Users_Name] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[t_product_master] ([Product_Id], [Product_Name], [Cost_Per_Item]) VALUES (N'P1', N'Pen', CAST(10 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_product_master] ([Product_Id], [Product_Name], [Cost_Per_Item]) VALUES (N'P2', N'Scale', CAST(15 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_product_master] ([Product_Id], [Product_Name], [Cost_Per_Item]) VALUES (N'P3', N'Note Book', CAST(25 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_transaction] ([Users_Id], [Product_Id], [Transaction_Date], [Transaction_Type], [Transaction_Amount]) VALUES (N'U1', N'P1', CAST(0x75330B00 AS Date), N'Order', CAST(150 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_transaction] ([Users_Id], [Product_Id], [Transaction_Date], [Transaction_Type], [Transaction_Amount]) VALUES (N'U1', N'P1', CAST(0x8F330B00 AS Date), N'Payment', CAST(750 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_transaction] ([Users_Id], [Product_Id], [Transaction_Date], [Transaction_Type], [Transaction_Amount]) VALUES (N'U1', N'P1', CAST(0x8F330B00 AS Date), N'Order', CAST(200 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_transaction] ([Users_Id], [Product_Id], [Transaction_Date], [Transaction_Type], [Transaction_Amount]) VALUES (N'U1', N'P3', CAST(0x94330B00 AS Date), N'Order', CAST(50 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_transaction] ([Users_Id], [Product_Id], [Transaction_Date], [Transaction_Type], [Transaction_Amount]) VALUES (N'U3', N'P2', CAST(0x95330B00 AS Date), N'Order', CAST(100 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_transaction] ([Users_Id], [Product_Id], [Transaction_Date], [Transaction_Type], [Transaction_Amount]) VALUES (N'U2', N'P1', CAST(0xA8330B00 AS Date), N'Order', CAST(75 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_transaction] ([Users_Id], [Product_Id], [Transaction_Date], [Transaction_Type], [Transaction_Amount]) VALUES (N'U3', N'P2', CAST(0xC7330B00 AS Date), N'Payment', CAST(250 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_user_master] ([Users_Id], [Users_Name]) VALUES (N'U1', N'Alfred Lawrence')
GO
INSERT [dbo].[t_user_master] ([Users_Id], [Users_Name]) VALUES (N'U2', N'William Paul')
GO
INSERT [dbo].[t_user_master] ([Users_Id], [Users_Name]) VALUES (N'U3', N'Edward Fillip')
GO
