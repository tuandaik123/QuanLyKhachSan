USE [db_HotelManagement]
GO
/****** Object:  Table [dbo].[BookingsOnline]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingsOnline](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[custommerID] [int] NULL,
	[RoomID] [int] NULL,
	[CheckInDate] [datetime] NULL,
	[CheckOutDate] [datetime] NULL,
	[Verification] [tinyint] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_BookingsOnline] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Custommer]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Custommer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](100) NULL,
	[FullName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](100) NULL,
 CONSTRAINT [PK_Custommer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Bookings]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Bookings](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[RoomID] [int] NULL,
	[CheckInDate] [datetime] NULL,
	[CheckOutDate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__db_Booki__73951ACD5DACBC60] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Events]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Events](
	[EventID] [int] NOT NULL,
	[EventName] [varchar](100) NOT NULL,
	[Date] [date] NOT NULL,
	[Location] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Facilities]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Facilities](
	[FacilityID] [int] IDENTITY(1,1) NOT NULL,
	[FacilityName] [nvarchar](100) NULL,
	[Description] [text] NULL,
	[icon] [nvarchar](100) NULL,
 CONSTRAINT [PK__db_Facil__5FB08B94F3356624] PRIMARY KEY CLUSTERED 
(
	[FacilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Feedback]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Feedback](
	[FeedbackID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[BookingID] [int] NULL,
	[Rating] [int] NOT NULL,
	[Comments] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Floor]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Floor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Floor] [int] NULL,
 CONSTRAINT [PK_db_Floor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Payments]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Payments](
	[PaymentID] [int] NOT NULL,
	[BookingID] [int] NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[PaymentDate] [date] NOT NULL,
	[method] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Rooms]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Rooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomNumber] [int] NULL,
	[Slot] [int] NULL,
	[RoomStatus] [tinyint] NULL,
	[ActiveStatus] [tinyint] NULL,
	[idroomtype] [int] NULL,
	[floorID] [int] NULL,
 CONSTRAINT [PK__db_Rooms__32863919600275BF] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_RoomServices]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_RoomServices](
	[RoomServiceID] [int] IDENTITY(1,1) NOT NULL,
	[BookingID] [int] NULL,
	[ServiceID] [int] NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [decimal](10, 0) NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK__db_RoomS__A11E84A14AEB46A3] PRIMARY KEY CLUSTERED 
(
	[RoomServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_RoomType]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_RoomType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NULL,
	[PricePerNight] [decimal](10, 0) NULL,
	[bed] [int] NULL,
	[bath] [int] NULL,
	[img] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_db_RoomType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Services]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Services](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [varchar](100) NOT NULL,
	[Description] [text] NULL,
	[Price] [decimal](10, 0) NULL,
	[image] [varchar](100) NULL,
 CONSTRAINT [PK__db_Servi__C51BB0EA87177F01] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Staff]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Staff](
	[StaffID] [int] NOT NULL,
	[UserID] [int] NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Position] [varchar](50) NOT NULL,
	[Salary] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Users]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Users](
	[UserID] [int] NOT NULL,
	[Username] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Role] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageTypeRoom]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageTypeRoom](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img] [varchar](100) NULL,
	[idType] [int] NULL,
 CONSTRAINT [PK_ImageTypeRoom] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 17/01/2024 15:53:10  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](50) NULL,
	[slogan] [nvarchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingsOnline] ON 

INSERT [dbo].[BookingsOnline] ([id], [custommerID], [RoomID], [CheckInDate], [CheckOutDate], [Verification], [status]) VALUES (19, 24, 1, CAST(N'2024-01-18T23:00:00.000' AS DateTime), CAST(N'2024-01-19T21:02:00.000' AS DateTime), 0, 0)
INSERT [dbo].[BookingsOnline] ([id], [custommerID], [RoomID], [CheckInDate], [CheckOutDate], [Verification], [status]) VALUES (20, 25, 2, CAST(N'2024-01-18T23:00:00.000' AS DateTime), CAST(N'2024-01-19T21:02:00.000' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[BookingsOnline] OFF
GO
SET IDENTITY_INSERT [dbo].[Custommer] ON 

INSERT [dbo].[Custommer] ([CustomerID], [UserID], [FullName], [Email], [Phone]) VALUES (22, N'3123', N'Nguyễn Bá Tuân', N'1234@gmail.com', N'5435435')
INSERT [dbo].[Custommer] ([CustomerID], [UserID], [FullName], [Email], [Phone]) VALUES (23, N'312354543', N'Nguyễn Bá Tuân', N'1234@gmail.com', N'5435435')
INSERT [dbo].[Custommer] ([CustomerID], [UserID], [FullName], [Email], [Phone]) VALUES (24, N'5435435', N'23123', N'fs3123dfsdfds', N'3')
INSERT [dbo].[Custommer] ([CustomerID], [UserID], [FullName], [Email], [Phone]) VALUES (25, N'5435435', N'23123', N'fs3123dfsdfds', N'3')
SET IDENTITY_INSERT [dbo].[Custommer] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Bookings] ON 

INSERT [dbo].[db_Bookings] ([BookingID], [CustomerID], [RoomID], [CheckInDate], [CheckOutDate], [status]) VALUES (23, 22, 1, CAST(N'2024-01-17T04:31:00.000' AS DateTime), CAST(N'2024-01-18T04:31:00.000' AS DateTime), 0)
INSERT [dbo].[db_Bookings] ([BookingID], [CustomerID], [RoomID], [CheckInDate], [CheckOutDate], [status]) VALUES (24, 23, 3, CAST(N'2024-01-17T04:31:00.000' AS DateTime), CAST(N'2024-01-18T04:31:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[db_Bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Facilities] ON 

INSERT [dbo].[db_Facilities] ([FacilityID], [FacilityName], [Description], [icon]) VALUES (1, N'H? Boi', N'Ðéo có gì mô t? hêt', N'fa-hotel')
SET IDENTITY_INSERT [dbo].[db_Facilities] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Floor] ON 

INSERT [dbo].[db_Floor] ([id], [Floor]) VALUES (1, 1)
INSERT [dbo].[db_Floor] ([id], [Floor]) VALUES (2, 2)
SET IDENTITY_INSERT [dbo].[db_Floor] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Rooms] ON 

INSERT [dbo].[db_Rooms] ([RoomID], [RoomNumber], [Slot], [RoomStatus], [ActiveStatus], [idroomtype], [floorID]) VALUES (1, 101, 2, 0, 1, 1, 1)
INSERT [dbo].[db_Rooms] ([RoomID], [RoomNumber], [Slot], [RoomStatus], [ActiveStatus], [idroomtype], [floorID]) VALUES (2, 201, 3, 1, 1, 1, 2)
INSERT [dbo].[db_Rooms] ([RoomID], [RoomNumber], [Slot], [RoomStatus], [ActiveStatus], [idroomtype], [floorID]) VALUES (3, 301, 5, 0, 1, 2, 1)
INSERT [dbo].[db_Rooms] ([RoomID], [RoomNumber], [Slot], [RoomStatus], [ActiveStatus], [idroomtype], [floorID]) VALUES (4, 401, 5, 1, 1, 3, 2)
SET IDENTITY_INSERT [dbo].[db_Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[db_RoomServices] ON 

INSERT [dbo].[db_RoomServices] ([RoomServiceID], [BookingID], [ServiceID], [Quantity], [TotalPrice], [status]) VALUES (1, 23, 1, 2, CAST(400 AS Decimal(10, 0)), 1)
SET IDENTITY_INSERT [dbo].[db_RoomServices] OFF
GO
SET IDENTITY_INSERT [dbo].[db_RoomType] ON 

INSERT [dbo].[db_RoomType] ([id], [Type], [PricePerNight], [bed], [bath], [img], [Description]) VALUES (1, N'Single', CAST(1000000 AS Decimal(10, 0)), 1, 1, N'room-1.jpg', N'Deo co gi mo ta het')
INSERT [dbo].[db_RoomType] ([id], [Type], [PricePerNight], [bed], [bath], [img], [Description]) VALUES (2, N'Double ', CAST(100 AS Decimal(10, 0)), 2, 2, N'room-2.jpg', N'Deo co gi mo ta het')
INSERT [dbo].[db_RoomType] ([id], [Type], [PricePerNight], [bed], [bath], [img], [Description]) VALUES (3, N'Suit', CAST(200 AS Decimal(10, 0)), 2, 2, N'room-3.jpg', N'Deo co gi mo ta het')
SET IDENTITY_INSERT [dbo].[db_RoomType] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Services] ON 

INSERT [dbo].[db_Services] ([ServiceID], [ServiceName], [Description], [Price], [image]) VALUES (1, N'1', N'1', CAST(1 AS Decimal(10, 0)), N'1')
INSERT [dbo].[db_Services] ([ServiceID], [ServiceName], [Description], [Price], [image]) VALUES (2, N'2', N'2', CAST(2 AS Decimal(10, 0)), N'2')
INSERT [dbo].[db_Services] ([ServiceID], [ServiceName], [Description], [Price], [image]) VALUES (3, N'3', N'3', CAST(3 AS Decimal(10, 0)), N'3')
INSERT [dbo].[db_Services] ([ServiceID], [ServiceName], [Description], [Price], [image]) VALUES (4, N'4', N'4', CAST(4 AS Decimal(10, 0)), N'4')
SET IDENTITY_INSERT [dbo].[db_Services] OFF
GO
SET IDENTITY_INSERT [dbo].[ImageTypeRoom] ON 

INSERT [dbo].[ImageTypeRoom] ([id], [img], [idType]) VALUES (1, N'team-2.jpg', 1)
INSERT [dbo].[ImageTypeRoom] ([id], [img], [idType]) VALUES (2, N'team-1.jpg', 1)
INSERT [dbo].[ImageTypeRoom] ([id], [img], [idType]) VALUES (3, N'team-3.jpg', 1)
INSERT [dbo].[ImageTypeRoom] ([id], [img], [idType]) VALUES (4, N'team-4.jpg', 1)
INSERT [dbo].[ImageTypeRoom] ([id], [img], [idType]) VALUES (6, N'team-4.jpg', 1)
INSERT [dbo].[ImageTypeRoom] ([id], [img], [idType]) VALUES (7, N'team-1.jpg', 1)
SET IDENTITY_INSERT [dbo].[ImageTypeRoom] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([id], [image], [slogan]) VALUES (1, N'carousel-1.jpg', N'Trải nghiệm sang trọng, dịch vụ tận tâm')
INSERT [dbo].[Slider] ([id], [image], [slogan]) VALUES (2, N'carousel-2.jpg', N'Lựa chọn lý tưởng cho cuộc sống sang trọng')
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
/****** Object:  Index [UQ__db_Payme__73951ACC8C5FF1E9]    Script Date: 17/01/2024 15:53:10  ******/
ALTER TABLE [dbo].[db_Payments] ADD UNIQUE NONCLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__db_Staff__1788CCADCE8C9DC9]    Script Date: 17/01/2024 15:53:10  ******/
ALTER TABLE [dbo].[db_Staff] ADD UNIQUE NONCLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookingsOnline]  WITH CHECK ADD  CONSTRAINT [FK_BookingsOnline_db_Rooms] FOREIGN KEY([RoomID])
REFERENCES [dbo].[db_Rooms] ([RoomID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookingsOnline] CHECK CONSTRAINT [FK_BookingsOnline_db_Rooms]
GO
ALTER TABLE [dbo].[db_Bookings]  WITH CHECK ADD  CONSTRAINT [FK__db_Bookin__RoomI__571DF1D5] FOREIGN KEY([RoomID])
REFERENCES [dbo].[db_Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[db_Bookings] CHECK CONSTRAINT [FK__db_Bookin__RoomI__571DF1D5]
GO
ALTER TABLE [dbo].[db_Bookings]  WITH CHECK ADD  CONSTRAINT [FK_db_Bookings_Custommer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Custommer] ([CustomerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[db_Bookings] CHECK CONSTRAINT [FK_db_Bookings_Custommer]
GO
ALTER TABLE [dbo].[db_Feedback]  WITH CHECK ADD  CONSTRAINT [FK__db_Feedba__Booki__59FA5E80] FOREIGN KEY([BookingID])
REFERENCES [dbo].[db_Bookings] ([BookingID])
GO
ALTER TABLE [dbo].[db_Feedback] CHECK CONSTRAINT [FK__db_Feedba__Booki__59FA5E80]
GO
ALTER TABLE [dbo].[db_Feedback]  WITH CHECK ADD  CONSTRAINT [FK_db_Feedback_Custommer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Custommer] ([CustomerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[db_Feedback] CHECK CONSTRAINT [FK_db_Feedback_Custommer]
GO
ALTER TABLE [dbo].[db_Payments]  WITH CHECK ADD  CONSTRAINT [FK__db_Paymen__Booki__5BE2A6F2] FOREIGN KEY([BookingID])
REFERENCES [dbo].[db_Bookings] ([BookingID])
GO
ALTER TABLE [dbo].[db_Payments] CHECK CONSTRAINT [FK__db_Paymen__Booki__5BE2A6F2]
GO
ALTER TABLE [dbo].[db_Rooms]  WITH CHECK ADD  CONSTRAINT [FK_db_Rooms_db_Floor] FOREIGN KEY([floorID])
REFERENCES [dbo].[db_Floor] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[db_Rooms] CHECK CONSTRAINT [FK_db_Rooms_db_Floor]
GO
ALTER TABLE [dbo].[db_Rooms]  WITH CHECK ADD  CONSTRAINT [FK_db_Rooms_db_RoomType] FOREIGN KEY([idroomtype])
REFERENCES [dbo].[db_RoomType] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[db_Rooms] CHECK CONSTRAINT [FK_db_Rooms_db_RoomType]
GO
ALTER TABLE [dbo].[db_RoomServices]  WITH CHECK ADD  CONSTRAINT [FK__db_RoomSe__Booki__5FB337D6] FOREIGN KEY([BookingID])
REFERENCES [dbo].[db_Bookings] ([BookingID])
GO
ALTER TABLE [dbo].[db_RoomServices] CHECK CONSTRAINT [FK__db_RoomSe__Booki__5FB337D6]
GO
ALTER TABLE [dbo].[db_RoomServices]  WITH CHECK ADD  CONSTRAINT [FK_db_RoomServices_db_Services] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[db_Services] ([ServiceID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[db_RoomServices] CHECK CONSTRAINT [FK_db_RoomServices_db_Services]
GO
ALTER TABLE [dbo].[db_Staff]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[db_Users] ([UserID])
GO
ALTER TABLE [dbo].[ImageTypeRoom]  WITH CHECK ADD  CONSTRAINT [FK_ImageTypeRoom_db_RoomType] FOREIGN KEY([idType])
REFERENCES [dbo].[db_RoomType] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImageTypeRoom] CHECK CONSTRAINT [FK_ImageTypeRoom_db_RoomType]
GO
