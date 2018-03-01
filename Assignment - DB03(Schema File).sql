/******
Author: Ashish Kumar
Date: 23/02/2018
Purpose: Practice
/******

USE [Assignment - DB03]
GO
ALTER TABLE [dbo].[t_emp] DROP CONSTRAINT [CHK_Age]
GO
ALTER TABLE [dbo].[t_salary] DROP CONSTRAINT [FK__t_salary__Emp_id__32E0915F]
GO
ALTER TABLE [dbo].[t_atten_det] DROP CONSTRAINT [FK__t_atten_d__Emp_i__2C3393D0]
GO
ALTER TABLE [dbo].[t_atten_det] DROP CONSTRAINT [FK__t_atten_d__Activ__2D27B809]
GO
/****** Object:  Table [dbo].[t_salary]    Script Date: 01-03-2018 15:15:55 ******/
DROP TABLE [dbo].[t_salary]
GO
/****** Object:  Table [dbo].[t_emp]    Script Date: 01-03-2018 15:15:55 ******/
DROP TABLE [dbo].[t_emp]
GO
/****** Object:  Table [dbo].[t_atten_det]    Script Date: 01-03-2018 15:15:55 ******/
DROP TABLE [dbo].[t_atten_det]
GO
/****** Object:  Table [dbo].[t_activity]    Script Date: 01-03-2018 15:15:55 ******/
DROP TABLE [dbo].[t_activity]
GO
/****** Object:  Table [dbo].[t_activity]    Script Date: 01-03-2018 15:15:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_activity](
	[Activity_id] [numeric](18, 0) NOT NULL,
	[Activity_description] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Activity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_atten_det]    Script Date: 01-03-2018 15:15:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_atten_det](
	[Atten_id] [numeric](18, 0) IDENTITY(1001,1) NOT NULL,
	[Emp_id] [numeric](18, 0) NULL,
	[Activity_id] [numeric](18, 0) NULL,
	[Atten_start_datetime] [datetime] NULL,
	[Atten_end_hrs] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_emp]    Script Date: 01-03-2018 15:15:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_emp](
	[Emp_id] [numeric](18, 0) IDENTITY(1001,2) NOT NULL,
	[Emp_Code] [varchar](20) NULL,
	[Emp_f_name] [varchar](20) NOT NULL,
	[Emp_m_name] [varchar](20) NULL,
	[Emp_l_name] [varchar](20) NULL,
	[Emp_DOB] [date] NOT NULL,
	[Emp_DOJ] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_salary]    Script Date: 01-03-2018 15:15:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_salary](
	[Salary_id] [numeric](18, 0) IDENTITY(1001,1) NOT NULL,
	[Emp_id] [numeric](18, 0) NULL,
	[Changed_date] [date] NULL,
	[New_Salary] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[t_activity] ([Activity_id], [Activity_description]) VALUES (CAST(1 AS Numeric(18, 0)), N'Code Analysis')
GO
INSERT [dbo].[t_activity] ([Activity_id], [Activity_description]) VALUES (CAST(2 AS Numeric(18, 0)), N'Lunch')
GO
INSERT [dbo].[t_activity] ([Activity_id], [Activity_description]) VALUES (CAST(3 AS Numeric(18, 0)), N'Coding')
GO
INSERT [dbo].[t_activity] ([Activity_id], [Activity_description]) VALUES (CAST(4 AS Numeric(18, 0)), N'Knowledge Transition')
GO
INSERT [dbo].[t_activity] ([Activity_id], [Activity_description]) VALUES (CAST(5 AS Numeric(18, 0)), N'Database')
GO
SET IDENTITY_INSERT [dbo].[t_atten_det] ON 

GO
INSERT [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1001 AS Numeric(18, 0)), CAST(1001 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x00009E8900A4CB80 AS DateTime), CAST(2 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1002 AS Numeric(18, 0)), CAST(1001 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x00009E6B00A4CB80 AS DateTime), CAST(3 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1003 AS Numeric(18, 0)), CAST(1001 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x00009E6B00D63BC0 AS DateTime), CAST(5 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1004 AS Numeric(18, 0)), CAST(1003 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x00009E8C00A4CB80 AS DateTime), CAST(8 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1005 AS Numeric(18, 0)), CAST(1003 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x00009E8D00A4CB80 AS DateTime), CAST(8 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1006 AS Numeric(18, 0)), CAST(1003 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x00009E8F00A4CB80 AS DateTime), CAST(7 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[t_atten_det] OFF
GO
SET IDENTITY_INSERT [dbo].[t_emp] ON 

GO
INSERT [dbo].[t_emp] ([Emp_id], [Emp_Code], [Emp_f_name], [Emp_m_name], [Emp_l_name], [Emp_DOB], [Emp_DOJ]) VALUES (CAST(1001 AS Numeric(18, 0)), N'OPT20110105', N'Manmohan', NULL, N'Singh', CAST(0xEE0B0B00 AS Date), CAST(0xDC320B00 AS Date))
GO
INSERT [dbo].[t_emp] ([Emp_id], [Emp_Code], [Emp_f_name], [Emp_m_name], [Emp_l_name], [Emp_DOB], [Emp_DOJ]) VALUES (CAST(1003 AS Numeric(18, 0)), N'OPT20100915', N'Alfred', N'Joseph', N'Lawrence', CAST(0x22130B00 AS Date), CAST(0xDD320B00 AS Date))
GO
SET IDENTITY_INSERT [dbo].[t_emp] OFF
GO
SET IDENTITY_INSERT [dbo].[t_salary] ON 

GO
INSERT [dbo].[t_salary] ([Salary_id], [Emp_id], [Changed_date], [New_Salary]) VALUES (CAST(1001 AS Numeric(18, 0)), CAST(1003 AS Numeric(18, 0)), CAST(0xD8330B00 AS Date), CAST(20000 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_salary] ([Salary_id], [Emp_id], [Changed_date], [New_Salary]) VALUES (CAST(1002 AS Numeric(18, 0)), CAST(1003 AS Numeric(18, 0)), CAST(0xF8330B00 AS Date), CAST(25000 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_salary] ([Salary_id], [Emp_id], [Changed_date], [New_Salary]) VALUES (CAST(1003 AS Numeric(18, 0)), CAST(1001 AS Numeric(18, 0)), CAST(0xE7330B00 AS Date), CAST(26000 AS Numeric(18, 0)))
GO
INSERT [dbo].[t_salary] ([Salary_id], [Emp_id], [Changed_date], [New_Salary]) VALUES (CAST(1004 AS Numeric(18, 0)), CAST(1001 AS Numeric(18, 0)), CAST(0x40340B00 AS Date), CAST(28000 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[t_salary] OFF
GO
ALTER TABLE [dbo].[t_atten_det]  WITH CHECK ADD FOREIGN KEY([Activity_id])
REFERENCES [dbo].[t_activity] ([Activity_id])
GO
ALTER TABLE [dbo].[t_atten_det]  WITH CHECK ADD FOREIGN KEY([Emp_id])
REFERENCES [dbo].[t_emp] ([Emp_id])
GO
ALTER TABLE [dbo].[t_salary]  WITH CHECK ADD FOREIGN KEY([Emp_id])
REFERENCES [dbo].[t_emp] ([Emp_id])
GO
ALTER TABLE [dbo].[t_emp]  WITH CHECK ADD  CONSTRAINT [CHK_Age] CHECK  ((datediff(year,[Emp_DOB],CONVERT([date],getdate()))>=(18)))
GO
ALTER TABLE [dbo].[t_emp] CHECK CONSTRAINT [CHK_Age]
GO
