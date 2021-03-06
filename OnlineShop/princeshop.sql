USE [princeshop]
GO
/****** Object:  Table [dbo].[MPayStatus]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MPayStatus](
	[nPaymentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[sPaymentType] [varchar](100) NOT NULL,
 CONSTRAINT [PK_MPayStatus] PRIMARY KEY CLUSTERED 
(
	[nPaymentTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MPayStatus] ON
INSERT [dbo].[MPayStatus] ([nPaymentTypeID], [sPaymentType]) VALUES (1, N'Cash On Delivery')
INSERT [dbo].[MPayStatus] ([nPaymentTypeID], [sPaymentType]) VALUES (2, N'Debit/Credit Card')
SET IDENTITY_INSERT [dbo].[MPayStatus] OFF
/****** Object:  Table [dbo].[MBrand]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MBrand](
	[MB_id] [int] IDENTITY(1,1) NOT NULL,
	[BrandTypeName] [varchar](1000) NOT NULL,
	[BrandImageDesc] [varchar](1000) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MBrand] PRIMARY KEY CLUSTERED 
(
	[MB_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MBrand] ON
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (1, N'Nike', N'BRANDbrandnike.png', 1)
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (2, N'Adidas', N'BRANDbrandadidas.png', 1)
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (3, N'Bewakoof', N'BRANDbrandbewakoof.png', 1)
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (4, N'Alien', N'BRANDbrandalien.png', 1)
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (5, N'Lee', N'BRANDbrandlee.png', 1)
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (6, N'Lotto', N'BRANDbrandlotto.png', 0)
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (7, N'Kookabora', N'BRANDbrandkookabora.png', 1)
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (8, N'Puma', N'BRANDbrandpuma.png', 1)
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (9, N'Nivia', N'BRANDbrandnivia.png', 1)
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (10, N'SG', N'BRANDbrandsg.png', 1)
INSERT [dbo].[MBrand] ([MB_id], [BrandTypeName], [BrandImageDesc], [Status]) VALUES (12, N'Red Mi', N'BRANDaccount.jpg', 1)
SET IDENTITY_INSERT [dbo].[MBrand] OFF
/****** Object:  Table [dbo].[Mstates]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mstates](
	[nStateID] [int] IDENTITY(1,1) NOT NULL,
	[sState] [varchar](100) NOT NULL,
 CONSTRAINT [PK_mstates] PRIMARY KEY CLUSTERED 
(
	[nStateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mstates] ON
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (1, N'Andaman & Nicobar Islands')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (2, N'Andhra Pradesh')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (3, N'Arunachal Pradesh')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (4, N'Assam')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (5, N'Bihar')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (6, N'Chandigarh')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (7, N'Chattisgarh')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (8, N'Dadra & Nagar Haveli')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (9, N'Daman & Diu')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (10, N'Delhi')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (11, N'Goa')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (12, N'Gujarat')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (13, N'Haryana')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (14, N'Himachal Pradesh')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (15, N'Jammu & Kashmir')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (16, N'Jharkhand')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (17, N'Karnataka')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (18, N'Kerala')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (19, N'Lakshadweep')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (20, N'Madhya Pradesh')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (21, N'Maharashtra')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (22, N'Manipur')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (23, N'Meghalaya')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (24, N'Mizoram')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (25, N'Nagaland')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (26, N'Odisha')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (27, N'Poducherry')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (28, N'Punjab')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (29, N'Rajasthan')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (30, N'Sikkim')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (31, N'Tamil Nadu')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (32, N'Telangana')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (33, N'Tripura')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (34, N'Uttar Pradesh')
INSERT [dbo].[Mstates] ([nStateID], [sState]) VALUES (35, N'Uttarakhand')
SET IDENTITY_INSERT [dbo].[Mstates] OFF
/****** Object:  Table [dbo].[MProductType]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MProductType](
	[MPT_id] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeName] [varchar](1000) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MProductType] PRIMARY KEY CLUSTERED 
(
	[MPT_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MProductType] ON
INSERT [dbo].[MProductType] ([MPT_id], [ProductTypeName], [Status]) VALUES (1, N'Wear', 1)
INSERT [dbo].[MProductType] ([MPT_id], [ProductTypeName], [Status]) VALUES (2, N'Cricket Wear', 1)
INSERT [dbo].[MProductType] ([MPT_id], [ProductTypeName], [Status]) VALUES (3, N'Cricket Instruments', 0)
INSERT [dbo].[MProductType] ([MPT_id], [ProductTypeName], [Status]) VALUES (4, N'Football', 1)
SET IDENTITY_INSERT [dbo].[MProductType] OFF
/****** Object:  Table [dbo].[TProductQty]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TProductQty](
	[nProductQtyID] [int] IDENTITY(1,1) NOT NULL,
	[nProductID] [int] NOT NULL,
	[nProductQty] [float] NOT NULL,
	[nWarehouseID] [int] NOT NULL,
 CONSTRAINT [PK_TProductQty] PRIMARY KEY CLUSTERED 
(
	[nProductQtyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSuppliers]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSuppliers](
	[MS_id] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [varchar](1000) NOT NULL,
	[SupplierAddress1] [varchar](1000) NOT NULL,
	[SupplierAddress2] [varchar](1000) NOT NULL,
	[SupplierAddress3] [varchar](1000) NOT NULL,
	[SupplierCity] [varchar](1000) NOT NULL,
	[Pincode] [int] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MSuppliers] PRIMARY KEY CLUSTERED 
(
	[MS_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MSuppliers] ON
INSERT [dbo].[MSuppliers] ([MS_id], [SupplierName], [SupplierAddress1], [SupplierAddress2], [SupplierAddress3], [SupplierCity], [Pincode], [Status]) VALUES (1, N'JB Suppliers', N'Address 1', N'Address 2', N'Address 3', N'MUMBAI', 400068, 1)
SET IDENTITY_INSERT [dbo].[MSuppliers] OFF
/****** Object:  Table [dbo].[MUserType]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MUserType](
	[MUT_id] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeName] [varchar](1000) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MUserType] PRIMARY KEY CLUSTERED 
(
	[MUT_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MUserType] ON
INSERT [dbo].[MUserType] ([MUT_id], [UserTypeName], [Status]) VALUES (1, N'Admin', 1)
INSERT [dbo].[MUserType] ([MUT_id], [UserTypeName], [Status]) VALUES (2, N'Customer', 1)
SET IDENTITY_INSERT [dbo].[MUserType] OFF
/****** Object:  Table [dbo].[MUsers]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MUsers](
	[MU_id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](1000) NOT NULL,
	[UserEmail] [varchar](1000) NOT NULL,
	[UserPwd] [varchar](1000) NOT NULL,
	[MUT_id] [int] NOT NULL,
	[JoinDate] [varchar](1000) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MUsers] PRIMARY KEY CLUSTERED 
(
	[MU_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MUsers] ON
INSERT [dbo].[MUsers] ([MU_id], [UserName], [UserEmail], [UserPwd], [MUT_id], [JoinDate], [Status]) VALUES (1, N'Ninad', N'ninads28@gmail.com', N'123456', 1, N'24/03/2018 00:00:00', 1)
INSERT [dbo].[MUsers] ([MU_id], [UserName], [UserEmail], [UserPwd], [MUT_id], [JoinDate], [Status]) VALUES (2, N'Yogesh Kashid', N'ykashid9@gmail.com', N'123456', 1, N'25/03/2018 00:00:00', 1)
INSERT [dbo].[MUsers] ([MU_id], [UserName], [UserEmail], [UserPwd], [MUT_id], [JoinDate], [Status]) VALUES (4, N'Nishant Koli', N'nishantkoli95@gmail.com', N'123456', 2, N'10/04/2018 00:00:00', 1)
SET IDENTITY_INSERT [dbo].[MUsers] OFF
/****** Object:  Table [dbo].[MProduct]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MProduct](
	[MP_id] [int] IDENTITY(1,1) NOT NULL,
	[MPT_id] [int] NOT NULL,
	[MBt_id] [int] NOT NULL,
	[ProductName] [varchar](1000) NOT NULL,
	[ProductDescription] [varchar](1000) NOT NULL,
	[ProductQty] [decimal](12, 2) NOT NULL,
	[MinProductQty] [decimal](12, 2) NOT NULL,
	[ProductPrice] [decimal](12, 2) NOT NULL,
	[ProductImageDecs] [varchar](1000) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MProduct] PRIMARY KEY CLUSTERED 
(
	[MP_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MProduct] ON
INSERT [dbo].[MProduct] ([MP_id], [MPT_id], [MBt_id], [ProductName], [ProductDescription], [ProductQty], [MinProductQty], [ProductPrice], [ProductImageDecs], [Status]) VALUES (1, 2, 7, N'Cricket BAT', N'This Bat is suitable for Tennis ball height: 33.4 inch, Bat Handle Height: 11.4 inch, Bat Edge Thickness: 1.5 inch Mid to lower sweet spot but still having a great balance fitted with toe guard to prevent moisture get into the bat Lighter pick up for such a powerful bat Material: Popular Willow', CAST(99.00 AS Decimal(12, 2)), CAST(10.00 AS Decimal(12, 2)), CAST(550.00 AS Decimal(12, 2)), N'PRODUCTCricketbat.jpeg', 1)
INSERT [dbo].[MProduct] ([MP_id], [MPT_id], [MBt_id], [ProductName], [ProductDescription], [ProductQty], [MinProductQty], [ProductPrice], [ProductImageDecs], [Status]) VALUES (2, 2, 10, N'Helmet', N'High impact polypropylene shellFully adjustable steel grill for superior protectionProtective impact-resistant and sweat-absorbent with special sweat mesh breathable inner padding', CAST(98.00 AS Decimal(12, 2)), CAST(10.00 AS Decimal(12, 2)), CAST(943.00 AS Decimal(12, 2)), N'PRODUCTCricketWear2.jpeg', 1)
INSERT [dbo].[MProduct] ([MP_id], [MPT_id], [MBt_id], [ProductName], [ProductDescription], [ProductQty], [MinProductQty], [ProductPrice], [ProductImageDecs], [Status]) VALUES (3, 2, 8, N'Cricket Pad', N'Made from high quality PVC facing
Cashmilon filled cane reinforced construction
Cashmilon filled three cross bolsters
All cashmilon bolster with low density foam sheet reinforcement
Wear resistant PVC instep with hard-wearing piping
Traditionally shaped cotton filled knee rolls
Low-density foam sheet reinforcement vertical bolster
Can be used by both left-handed and right-handed batsmen', CAST(99.00 AS Decimal(12, 2)), CAST(10.00 AS Decimal(12, 2)), CAST(1600.00 AS Decimal(12, 2)), N'PRODUCTCricketWear4.jpeg', 1)
INSERT [dbo].[MProduct] ([MP_id], [MPT_id], [MBt_id], [ProductName], [ProductDescription], [ProductQty], [MinProductQty], [ProductPrice], [ProductImageDecs], [Status]) VALUES (4, 1, 7, N'Cricket Gloves', N'High quality cotton palm and back
Made from premium quality PVC
Cotton gusset
Cotton filled finger rolls and thumbs
Toweled wristband for comfort fit with velcro for perfect fit
Palm made from cotton
Premium PVC and cotton filled finger rolls', CAST(99.00 AS Decimal(12, 2)), CAST(10.00 AS Decimal(12, 2)), CAST(1200.00 AS Decimal(12, 2)), N'PRODUCTCricketWear5.jpeg', 1)
SET IDENTITY_INSERT [dbo].[MProduct] OFF
/****** Object:  Table [dbo].[Mcity]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mcity](
	[nCityID] [int] NOT NULL,
	[sCity] [varchar](100) NOT NULL,
	[nStateID] [int] NOT NULL,
 CONSTRAINT [PK_mcity] PRIMARY KEY CLUSTERED 
(
	[nCityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (1, N'Adilabad', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (2, N'Agra', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (3, N'Ahmed Nagar', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (4, N'Ahmedabad City', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (5, N'Aizawl', 24)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (6, N'Ajmer', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (7, N'Akola', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (8, N'Aligarh', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (9, N'Allahabad', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (10, N'Alleppey', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (11, N'Almora', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (12, N'Alwar', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (13, N'Alwaye', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (14, N'Amalapuram', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (15, N'Ambala', 13)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (16, N'Ambedkar Nagar', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (17, N'Amravati', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (18, N'Amreli', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (19, N'Amritsar', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (20, N'Anakapalle', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (21, N'Anand', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (22, N'Anantapur', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (23, N'Ananthnag', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (24, N'Anna Road H.O', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (25, N'Arakkonam', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (27, N'Aska', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (28, N'Auraiya', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (29, N'Aurangabad', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (30, N'Aurangabad(Bihar)', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (31, N'Azamgarh', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (32, N'Bagalkot', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (33, N'Bageshwar', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (34, N'Bagpat', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (35, N'Bahraich', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (36, N'Balaghat', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (37, N'Balangir', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (38, N'Balasore', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (39, N'Ballia', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (40, N'Balrampur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (41, N'Banasanktha', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (42, N'Banda', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (43, N'Bandipur', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (45, N'Banswara', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (46, N'Barabanki', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (47, N'Baramulla', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (48, N'Baran', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (49, N'Bardoli', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (50, N'Bareilly', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (51, N'Barmer', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (52, N'Barnala', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (53, N'Barpeta', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (54, N'Bastar', 7)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (55, N'Basti', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (56, N'Bathinda', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (57, N'Beed', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (58, N'Begusarai', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (59, N'Belgaum', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (60, N'Bellary', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (61, N'Bengaluru East', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (62, N'Bengaluru South', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (63, N'Bengaluru West', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (64, N'Berhampur', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (65, N'Bhadrak', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (66, N'Bhagalpur', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (67, N'Bhandara', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (68, N'Bharatpur', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (69, N'Bharuch', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (70, N'Bhavnagar', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (71, N'Bhilwara', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (72, N'Bhimavaram', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (73, N'Bhiwani', 13)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (74, N'Bhojpur', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (75, N'Bhopal', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (76, N'Bhubaneswar', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (77, N'Bidar', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (78, N'Bijapur', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (79, N'Bijnor', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (80, N'Bikaner', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (81, N'Bilaspur', 7)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (83, N'Bishnupur', 22)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (84, N'Bongaigaon', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (85, N'Budaun', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (86, N'Budgam', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (87, N'Bulandshahr', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (88, N'Buldhana', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (89, N'Bundi', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (91, N'Cachar', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (92, N'Calicut', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (93, N'Carnicobar', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (94, N'Chamba', 14)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (95, N'Chamoli', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (96, N'Champawat', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (97, N'Champhai', 24)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (98, N'Chandauli', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (99, N'Chandel', 22)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (100, N'Chandigarh', 6)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (101, N'Chandrapur', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (102, N'Changanacherry', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (103, N'Changlang', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (104, N'Channapatna', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (105, N'Chengalpattu', 31)
GO
print 'Processed 100 total records'
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (106, N'Chennai City Central', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (107, N'Chennai City North', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (108, N'Chennai City South', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (109, N'Chhatarpur', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (110, N'Chhindwara', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (111, N'Chikmagalur', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (112, N'Chikodi', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (113, N'Chitradurga', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (114, N'Chitrakoot', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (115, N'Chittoor', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (116, N'Chittorgarh', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (117, N'Churachandpur', 22)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (118, N'Churu', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (119, N'Coimbatore', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (122, N'Cuddalore', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (123, N'Cuddapah', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (124, N'Cuttack City', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (125, N'Cuttack North', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (126, N'Cuttack South', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (127, N'Dadra & Nagar Haveli', 8)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (128, N'Daman', 9)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (129, N'Darbhanga', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (131, N'Darrang', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (132, N'Dausa', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (133, N'Dehra Gopipur', 14)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (134, N'Dehradun', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (135, N'Delhi', 10)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (136, N'Deoria', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (137, N'Dhalai', 33)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (138, N'Dhanbad', 16)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (139, N'Dharamsala', 14)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (140, N'Dharmapuri', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (141, N'Dharwad', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (142, N'Dhemaji', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (143, N'Dhenkanal', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (144, N'Dholpur', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (145, N'Dhubri', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (146, N'Dhule', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (147, N'Dibang Valley', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (148, N'Dibrugarh', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (149, N'Diglipur', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (150, N'Dimapur', 25)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (151, N'Dindigul', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (152, N'Diu', 9)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (153, N'Doda', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (154, N'Dungarpur', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (155, N'Durg', 7)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (156, N'East Champaran', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (157, N'East Garo Hills', 23)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (158, N'East Kameng', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (159, N'East Khasi Hills', 23)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (160, N'East Siang', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (161, N'East Sikkim', 30)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (162, N'Eluru', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (163, N'Ernakulam', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (164, N'Erode', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (165, N'Etah', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (166, N'Etawah', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (167, N'Faizabad', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (168, N'Faridabad', 13)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (169, N'Faridkot', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (170, N'Farrukhabad', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (171, N'Fatehgarh Sahib', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (172, N'Fatehpur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (173, N'Fazilka', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (174, N'Ferrargunj', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (175, N'Firozabad', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (176, N'Firozpur', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (177, N'Gadag', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (178, N'Gadchiroli', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (179, N'Gandhinagar', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (180, N'Ganganagar', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (181, N'Gautam Buddha Nagar', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (182, N'Gaya', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (183, N'Ghaziabad', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (184, N'Ghazipur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (185, N'Giridih', 16)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (186, N'Goa', 11)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (187, N'Goalpara', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (188, N'Gokak', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (189, N'Golaghat', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (190, N'Gonda', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (191, N'Gondal', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (192, N'Gondia', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (193, N'Gorakhpur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (194, N'Gudivada', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (195, N'Gudur', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (196, N'Gulbarga', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (197, N'Guna', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (198, N'Guntur', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (199, N'Gurdaspur', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (200, N'Gurugram', 13)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (201, N'Gwalior', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (202, N'Hailakandi', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (203, N'Hamirpur', 14)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (204, N'Hanamkonda', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (205, N'Hanumangarh', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (206, N'Hardoi', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (207, N'Haridwar', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (208, N'Hassan', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (209, N'Hathras', 34)
GO
print 'Processed 200 total records'
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (210, N'Haveri', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (211, N'Hazaribagh', 16)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (212, N'Hindupur', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (213, N'Hingoli', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (214, N'Hissar', 13)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (216, N'Hoshangabad', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (217, N'Hoshiarpur', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (219, N'Hut Bay', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (220, N'Hyderabad City', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (221, N'Hyderabad South East', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (222, N'Idukki', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (223, N'Imphal East', 22)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (224, N'Imphal West', 22)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (225, N'Indore City', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (226, N'Indore Moffusil', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (227, N'Irinjalakuda', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (228, N'Jabalpur', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (229, N'Jaintia Hills', 23)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (230, N'Jaipur', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (231, N'Jaisalmer', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (232, N'Jalandhar', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (233, N'Jalaun', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (234, N'Jalgaon', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (235, N'Jalna', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (236, N'Jalor', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (238, N'Jammu', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (239, N'Jamnagar', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (240, N'Jaunpur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (241, N'Jhalawar', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (242, N'Jhansi', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (243, N'Jhujhunu', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (244, N'Jodhpur', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (245, N'Jorhat', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (246, N'Junagadh', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (247, N'Jyotiba Phule Nagar', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (248, N'Kakinada', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (249, N'Kalahandi', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (250, N'Kamrup', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (251, N'Kanchipuram', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (252, N'Kannauj', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (253, N'Kanniyakumari', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (254, N'Kannur', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (255, N'Kanpur Dehat', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (256, N'Kanpur Nagar', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (257, N'Kapurthala', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (258, N'Karaikal', 27)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (259, N'Karaikudi', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (260, N'Karauli', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (261, N'Karbi Anglong', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (262, N'Kargil', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (263, N'Karimganj', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (264, N'Karimnagar', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (265, N'Karnal', 13)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (266, N'Karur', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (267, N'Karwar', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (268, N'Kasaragod', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (269, N'Kathua', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (270, N'Kaushambi', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (271, N'Keonjhar', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (272, N'Khammam', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (273, N'Khandwa', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (274, N'Kheda', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (275, N'Kheri', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (276, N'Kiphire', 25)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (277, N'Kodagu', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (278, N'Kohima', 25)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (279, N'Kokrajhar', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (280, N'Kolar', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (281, N'Kolasib', 24)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (282, N'Kolhapur', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (284, N'Koraput', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (285, N'Kota', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (286, N'Kottayam', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (287, N'Kovilpatti', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (288, N'Krishnagiri', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (289, N'Kulgam', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (290, N'Kumbakonam', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (291, N'Kupwara', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (292, N'Kurnool', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (293, N'Kurukshetra', 13)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (294, N'Kurung Kumey', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (295, N'Kushinagar', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (296, N'Kutch', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (297, N'Lakhimpur', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (298, N'Lakshadweep', 19)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (299, N'Lalitpur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (300, N'Latur', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (301, N'Lawngtlai', 24)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (302, N'Leh', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (303, N'Lohit', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (304, N'Longleng', 25)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (305, N'Lower Subansiri', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (306, N'Lucknow', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (307, N'Ludhiana', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (308, N'Lunglei', 24)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (309, N'Machilipatnam', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (310, N'Madhubani', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (311, N'Madurai', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (312, N'Mahabubnagar', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (313, N'Maharajganj', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (314, N'Mahesana', 12)
GO
print 'Processed 300 total records'
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (315, N'Mahoba', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (316, N'Mainpuri', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (318, N'Mammit', 24)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (319, N'Mandi', 14)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (320, N'Mandsaur', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (321, N'Mandya', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (322, N'Mangalore', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (323, N'Manjeri', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (324, N'Mansa', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (325, N'Marigaon', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (326, N'Mathura', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (327, N'Mau', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (328, N'Mavelikara', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (329, N'Mayabander', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (330, N'Mayiladuthurai', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (331, N'Mayurbhanj', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (332, N'Medak', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (333, N'Meerut', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (334, N'Meghalaya', 23)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (336, N'Mirzapur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (337, N'Moga', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (338, N'Mohali', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (339, N'Mokokchung', 25)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (340, N'Mon', 25)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (341, N'Monghyr', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (342, N'Moradabad', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (343, N'Morena', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (344, N'Muktsar', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (345, N'Mumbai', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (347, N'Muzaffarnagar', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (348, N'Muzaffarpur', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (349, N'Mysore', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (351, N'Nagaon', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (352, N'Nagapattinam', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (353, N'Nagaur', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (354, N'Nagpur', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (355, N'Nainital', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (356, N'Nalanda', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (357, N'Nalbari', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (358, N'Nalgonda', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (359, N'Namakkal', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (360, N'Nancorie', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (361, N'Nancowrie', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (362, N'Nanded', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (363, N'Nandurbar', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (364, N'Nandyal', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (365, N'Nanjangud', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (366, N'Narasaraopet', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (367, N'Nashik', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (368, N'Navsari', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (369, N'Nawadha', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (370, N'Nawanshahr', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (371, N'Nellore', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (372, N'Nilgiris', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (373, N'Nizamabad', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (375, N'North Cachar Hills', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (377, N'North Sikkim', 30)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (378, N'North Tripura', 33)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (379, N'Osmanabad', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (380, N'Ottapalam', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (381, N'Palamau', 16)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (382, N'Palghat', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (383, N'Pali', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (384, N'Panchmahals', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (385, N'Papum Pare', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (386, N'Parbhani', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (387, N'Parvathipuram', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (388, N'Patan', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (389, N'Pathanamthitta', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (390, N'Patiala', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (391, N'Patna', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (392, N'Pattukottai', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (393, N'Pauri Garhwal', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (394, N'Peddapalli', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (395, N'Peren', 25)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (396, N'Phek', 25)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (397, N'Phulbani', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (398, N'Pilibhit', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (399, N'Pithoragarh', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (400, N'Poducherry', 27)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (401, N'Pollachi', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (402, N'Poonch', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (403, N'Porbandar', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (404, N'Port  Blair', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (405, N'Port Blair', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (406, N'Portblair', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (407, N'Prakasam', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (408, N'Pratapgarh', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (409, N'Proddatur', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (410, N'Pudukkottai', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (411, N'Pulwama', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (412, N'Pune', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (413, N'Puri', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (414, N'Purnea', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (416, N'Puttur', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (417, N'Quilon', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (418, N'Raebareli', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (419, N'Raichur', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (420, N'Raigarh', 7)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (421, N'Raigarh(MH)', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (422, N'Raipur', 7)
GO
print 'Processed 400 total records'
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (423, N'Rajahmundry', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (424, N'Rajauri', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (425, N'Rajkot', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (426, N'Rajsamand', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (427, N'Ramanathapuram', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (428, N'Rampur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (429, N'Rampur Bushahr', 14)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (430, N'Ranchi', 16)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (431, N'Rangat', 1)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (432, N'Ratlam', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (433, N'Ratnagiri', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (434, N'Reasi', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (435, N'Rewa', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (436, N'Ri Bhoi', 23)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (437, N'Rohtak', 13)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (438, N'Rohtas', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (439, N'Ropar', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (440, N'Rudraprayag', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (441, N'Rupnagar', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (442, N'Sabarkantha', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (443, N'Sagar', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (444, N'Saharanpur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (445, N'Saharsa', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (446, N'Salem East', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (447, N'Salem West', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (448, N'Samastipur', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (449, N'Sambalpur', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (450, N'Sangareddy', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (451, N'Sangli', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (452, N'Sangrur', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (453, N'Sant Kabir Nagar', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (454, N'Sant Ravidas Nagar', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (455, N'Santhal Parganas', 16)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (456, N'Saran', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (457, N'Satara', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (458, N'Sawai Madhopur', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (459, N'Secunderabad', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (460, N'Sehore', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (461, N'Senapati', 22)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (462, N'Serchhip', 24)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (463, N'Shahdol', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (464, N'Shahjahanpur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (465, N'Shimla', 14)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (466, N'Shimoga', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (467, N'Shrawasti', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (468, N'Sibsagar', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (469, N'Siddharthnagar', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (470, N'Sikar', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (471, N'Sindhudurg', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (472, N'Singhbhum', 16)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (473, N'Sirohi', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (474, N'Sirsi', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (475, N'Sitamarhi', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (476, N'Sitapur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (477, N'Sivaganga', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (478, N'Siwan', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (479, N'Solan', 14)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (480, N'Solapur', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (481, N'Sonbhadra', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (482, N'Sonepat', 13)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (483, N'Sonitpur', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (486, N'South Garo Hills', 23)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (487, N'South Sikkim', 30)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (488, N'South Tripura', 33)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (489, N'Srikakulam', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (490, N'Srinagar', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (491, N'Srirangam', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (492, N'Sultanpur', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (493, N'Sundargarh', 26)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (494, N'Surat', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (495, N'Surendranagar', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (496, N'Suryapet', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (497, N'Tadepalligudem', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (498, N'Tambaram', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (499, N'Tamenglong', 22)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (501, N'Tarn Taran', 28)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (502, N'Tawang', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (503, N'Tehri Garhwal', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (504, N'Tenali', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (505, N'Thalassery', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (506, N'Thane', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (507, N'Thanjavur', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (508, N'Theni', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (509, N'Thoubal', 22)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (510, N'Tinsukia', 4)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (511, N'Tirap', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (512, N'Tiruchirapalli', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (513, N'Tirunelveli', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (514, N'Tirupati', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (515, N'Tirupattur', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (516, N'Tirupur', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (517, N'Tirur', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (518, N'Tiruvalla', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (519, N'Tiruvannamalai', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (520, N'Tonk', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (521, N'Trichur', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (522, N'Trivandrum North', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (523, N'Trivandrum South', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (524, N'Tuensang', 25)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (525, N'Tumkur', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (526, N'Tuticorin', 31)
GO
print 'Processed 500 total records'
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (527, N'Udaipur', 29)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (528, N'Udham Singh Nagar', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (529, N'Udhampur', 15)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (530, N'Udupi', 17)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (531, N'Ujjain', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (532, N'Ukhrul', 22)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (533, N'Una', 14)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (534, N'Unnao', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (535, N'Upper Siang', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (536, N'Upper Subansiri', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (537, N'Uttarkashi', 35)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (538, N'Vadakara', 18)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (539, N'Vadodara East', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (540, N'Vadodara West', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (541, N'Vaishali', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (542, N'Valsad', 12)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (543, N'Varanasi', 34)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (544, N'Vellore', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (545, N'Vidisha', 20)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (546, N'Vijayawada', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (547, N'Virudhunagar', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (548, N'Visakhapatnam', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (549, N'Vizianagaram', 2)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (550, N'Vriddhachalam', 31)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (551, N'Wanaparthy', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (552, N'Warangal', 32)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (553, N'Wardha', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (554, N'Washim', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (555, N'West Champaran', 5)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (556, N'West Garo Hills', 23)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (557, N'West Kameng', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (558, N'West Khasi Hills', 23)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (559, N'West Siang', 3)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (560, N'West Sikkim', 30)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (561, N'West Tripura', 33)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (562, N'Wokha', 25)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (563, N'Yavatmal', 21)
INSERT [dbo].[Mcity] ([nCityID], [sCity], [nStateID]) VALUES (564, N'Zunhebotto', 25)
/****** Object:  Table [dbo].[Mclient]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mclient](
	[MC_id] [int] IDENTITY(1,1) NOT NULL,
	[MU_id] [int] NOT NULL,
	[CustomerFname] [varchar](1000) NOT NULL,
	[CustoemrLname] [varchar](1000) NOT NULL,
	[ContactNumber] [varchar](1000) NOT NULL,
	[AlternateNumber] [varchar](1000) NOT NULL,
	[PermanentAddress1] [varchar](1000) NOT NULL,
	[PerrmanentAddress2] [varchar](1000) NOT NULL,
	[PermanentAddress3] [varchar](1000) NOT NULL,
	[Staus] [bit] NOT NULL,
 CONSTRAINT [PK_Mclient] PRIMARY KEY CLUSTERED 
(
	[MC_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mclient] ON
INSERT [dbo].[Mclient] ([MC_id], [MU_id], [CustomerFname], [CustoemrLname], [ContactNumber], [AlternateNumber], [PermanentAddress1], [PerrmanentAddress2], [PermanentAddress3], [Staus]) VALUES (1, 2, N'Yogesh', N'Kashid', N'9869198691', N'9869198691', N'B 108, Gorai Shai', N'Gorai Bridge, Opp Suvidyalay', N'Borivali West Mumbai 400091', 1)
INSERT [dbo].[Mclient] ([MC_id], [MU_id], [CustomerFname], [CustoemrLname], [ContactNumber], [AlternateNumber], [PermanentAddress1], [PerrmanentAddress2], [PermanentAddress3], [Staus]) VALUES (2, 4, N'Ankit', N'Chavan', N'09757261103', N'09757261103', N'B 22 OM SANCHAYATA
L M ROAD NAVAGAON
DAHISAR WEST', N'B 22 OM SANCHAYATA
L M ROAD NAVAGAON
DAHISAR WEST', N'B 22 OM SANCHAYATA
L M ROAD NAVAGAON
DAHISAR WEST', 1)
SET IDENTITY_INSERT [dbo].[Mclient] OFF
/****** Object:  Table [dbo].[MSupplierProductMap]    Script Date: 04/12/2018 09:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSupplierProductMap](
	[nmap_id] [int] IDENTITY(1,1) NOT NULL,
	[MS_id] [int] NOT NULL,
	[MP_id] [int] NOT NULL,
 CONSTRAINT [PK_MSupplierProductMap] PRIMARY KEY CLUSTERED 
(
	[nmap_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MSupplierProductMap] ON
INSERT [dbo].[MSupplierProductMap] ([nmap_id], [MS_id], [MP_id]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[MSupplierProductMap] OFF
/****** Object:  StoredProcedure [dbo].[SP_OrderProduct]    Script Date: 04/12/2018 09:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OrderProduct] 
@ID INT
AS
BEGIN
Select ProductName,ProductDescription,ProductPrice,ProductImageDecs
FROM MProduct
WHERE MP_id=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Login]    Script Date: 04/12/2018 09:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Login]
	@Input_LoginId varchar(100),
	@Input_LoginPass nvarchar(20)
AS
BEGIN
SELECT * from MUsers where UserEmail=@Input_LoginId AND UserPwd =@Input_LoginPass
END
GO
/****** Object:  Table [dbo].[MWarehouse]    Script Date: 04/12/2018 09:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MWarehouse](
	[MW_ID] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseName] [varchar](1000) NOT NULL,
	[WarehouseAddress1] [varchar](1000) NOT NULL,
	[WarehouseAddress2] [varchar](1000) NOT NULL,
	[WarehouseAddress3] [varchar](1000) NOT NULL,
	[nCityID] [int] NOT NULL,
	[nStateID] [int] NOT NULL,
	[Pincode] [int] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MWarehouse] PRIMARY KEY CLUSTERED 
(
	[MW_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TOrders]    Script Date: 04/12/2018 09:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TOrders](
	[nTId] [int] IDENTITY(1,1) NOT NULL,
	[sTNo] [varchar](1000) NOT NULL,
	[dtTrans] [date] NOT NULL,
	[nUserID] [int] NOT NULL,
	[nProdutID] [int] NOT NULL,
	[nQty] [decimal](12, 2) NOT NULL,
	[nAmount] [decimal](12, 2) NOT NULL,
	[nTaxAmount] [decimal](12, 2) NOT NULL,
	[nDeliveryCharges] [decimal](12, 2) NOT NULL,
	[dtDeliveryDate] [date] NOT NULL,
	[nPaytype] [int] NOT NULL,
	[dtCancel] [date] NULL,
	[sCancel] [varchar](10) NULL,
	[bStatus] [bit] NOT NULL,
 CONSTRAINT [PK_TOrders] PRIMARY KEY CLUSTERED 
(
	[nTId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TOrders] ON
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (1, N'28/03/2018 19:15:0021', CAST(0x0C3E0B00 AS Date), 2, 1, CAST(10.00 AS Decimal(12, 2)), CAST(550.00 AS Decimal(12, 2)), CAST(99.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x00000000 AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (2, N'29/03/2018 00:03:238', CAST(0x0D3E0B00 AS Date), 2, 2, CAST(1.00 AS Decimal(12, 2)), CAST(943.00 AS Decimal(12, 2)), CAST(169.74 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x153E0B00 AS Date), 1, NULL, NULL, 1)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (3, N'29/03/2018 14:10:2815', CAST(0x0D3E0B00 AS Date), 2, 3, CAST(10.00 AS Decimal(12, 2)), CAST(1600.00 AS Decimal(12, 2)), CAST(288.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x153E0B00 AS Date), 1, NULL, NULL, 1)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (4, N'29/03/2018 14:11:3013', CAST(0x0D3E0B00 AS Date), 2, 2, CAST(1.00 AS Decimal(12, 2)), CAST(943.00 AS Decimal(12, 2)), CAST(169.74 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x153E0B00 AS Date), 1, NULL, NULL, 1)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (5, N'29/03/2018 16:19:2647', CAST(0x0D3E0B00 AS Date), 2, 2, CAST(10.00 AS Decimal(12, 2)), CAST(943.00 AS Decimal(12, 2)), CAST(169.74 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x153E0B00 AS Date), 1, NULL, NULL, 1)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (6, N'30/03/2018 14:45:298', CAST(0x0E3E0B00 AS Date), 2, 1, CAST(1.00 AS Decimal(12, 2)), CAST(550.00 AS Decimal(12, 2)), CAST(99.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x163E0B00 AS Date), 2, NULL, NULL, 1)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (7, N'30/03/2018 14:52:4839', CAST(0x0E3E0B00 AS Date), 2, 4, CAST(1.00 AS Decimal(12, 2)), CAST(1200.00 AS Decimal(12, 2)), CAST(216.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x163E0B00 AS Date), 2, NULL, NULL, 1)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (8, N'30/03/2018 14:58:358', CAST(0x0E3E0B00 AS Date), 2, 4, CAST(1.00 AS Decimal(12, 2)), CAST(1200.00 AS Decimal(12, 2)), CAST(216.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x163E0B00 AS Date), 2, NULL, NULL, 1)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (9, N'30/03/2018 15:04:0435', CAST(0x0E3E0B00 AS Date), 2, 4, CAST(1.00 AS Decimal(12, 2)), CAST(1200.00 AS Decimal(12, 2)), CAST(216.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x163E0B00 AS Date), 2, NULL, NULL, 1)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (10, N'08/04/2018 18:20:3327', CAST(0x173E0B00 AS Date), 2, 2, CAST(1.00 AS Decimal(12, 2)), CAST(943.00 AS Decimal(12, 2)), CAST(169.74 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x1F3E0B00 AS Date), 2, NULL, NULL, 1)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (11, N'10/04/2018 01:06:2131', CAST(0x193E0B00 AS Date), 2, 1, CAST(1.00 AS Decimal(12, 2)), CAST(550.00 AS Decimal(12, 2)), CAST(99.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x213E0B00 AS Date), 1, NULL, NULL, 1)
INSERT [dbo].[TOrders] ([nTId], [sTNo], [dtTrans], [nUserID], [nProdutID], [nQty], [nAmount], [nTaxAmount], [nDeliveryCharges], [dtDeliveryDate], [nPaytype], [dtCancel], [sCancel], [bStatus]) VALUES (12, N'11/04/2018 09:48:5642', CAST(0x1A3E0B00 AS Date), 4, 3, CAST(1.00 AS Decimal(12, 2)), CAST(1600.00 AS Decimal(12, 2)), CAST(288.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0x223E0B00 AS Date), 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[TOrders] OFF
/****** Object:  Table [dbo].[TCart]    Script Date: 04/12/2018 09:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCart](
	[nCartId] [int] IDENTITY(1,1) NOT NULL,
	[nUserId] [int] NOT NULL,
	[nProductId] [int] NOT NULL,
	[bstatus] [bit] NOT NULL,
 CONSTRAINT [PK_TCart] PRIMARY KEY CLUSTERED 
(
	[nCartId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TCart] ON
INSERT [dbo].[TCart] ([nCartId], [nUserId], [nProductId], [bstatus]) VALUES (2, 2, 3, 0)
SET IDENTITY_INSERT [dbo].[TCart] OFF
/****** Object:  StoredProcedure [dbo].[SP_UpdateQTY]    Script Date: 04/12/2018 09:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UpdateQTY]
@ID VARCHAR(50),
@QTY INT,
@UID INT
AS
BEGIN
	DECLARE @PID AS INT;
	DECLARE @PQTY AS INT;
	SELECT @PID=TOrders.nProdutID  FROM TOrders WHERE TOrders.sTNo=@ID;
	
	SELECT @PQTY=MProduct.ProductQty FROM MProduct WHERE MProduct.MP_id = @PID;
	
	SET @PQTY = @PQTY - @QTY;
	
	UPDATE MProduct
	SET MProduct.ProductQty = @PQTY
	WHERE MProduct.MP_id = @PID;
	
	DELETE FROM TCart where TCart.nUserId=@UID AND TCart.nProductId =@PID;
END
GO
/****** Object:  Table [dbo].[TOrderAllocation]    Script Date: 04/12/2018 09:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOrderAllocation](
	[nProcessOrderID] [int] NOT NULL,
	[nOrderID] [int] NOT NULL,
	[nWarehouseID] [int] NOT NULL,
	[nClientID] [int] NOT NULL,
	[nSupplierID] [int] NOT NULL,
	[bStatus] [bit] NOT NULL,
 CONSTRAINT [PK_TOrderAllocation] PRIMARY KEY CLUSTERED 
(
	[nProcessOrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_MUsers_MUserType]    Script Date: 04/12/2018 09:17:28 ******/
ALTER TABLE [dbo].[MUsers]  WITH CHECK ADD  CONSTRAINT [FK_MUsers_MUserType] FOREIGN KEY([MUT_id])
REFERENCES [dbo].[MUserType] ([MUT_id])
GO
ALTER TABLE [dbo].[MUsers] CHECK CONSTRAINT [FK_MUsers_MUserType]
GO
/****** Object:  ForeignKey [FK_MProduct_MBrand]    Script Date: 04/12/2018 09:17:28 ******/
ALTER TABLE [dbo].[MProduct]  WITH CHECK ADD  CONSTRAINT [FK_MProduct_MBrand] FOREIGN KEY([MBt_id])
REFERENCES [dbo].[MBrand] ([MB_id])
GO
ALTER TABLE [dbo].[MProduct] CHECK CONSTRAINT [FK_MProduct_MBrand]
GO
/****** Object:  ForeignKey [FK_MProduct_MProductType]    Script Date: 04/12/2018 09:17:28 ******/
ALTER TABLE [dbo].[MProduct]  WITH CHECK ADD  CONSTRAINT [FK_MProduct_MProductType] FOREIGN KEY([MPT_id])
REFERENCES [dbo].[MProductType] ([MPT_id])
GO
ALTER TABLE [dbo].[MProduct] CHECK CONSTRAINT [FK_MProduct_MProductType]
GO
/****** Object:  ForeignKey [FK_mcity_mstates]    Script Date: 04/12/2018 09:17:28 ******/
ALTER TABLE [dbo].[Mcity]  WITH CHECK ADD  CONSTRAINT [FK_mcity_mstates] FOREIGN KEY([nStateID])
REFERENCES [dbo].[Mstates] ([nStateID])
GO
ALTER TABLE [dbo].[Mcity] CHECK CONSTRAINT [FK_mcity_mstates]
GO
/****** Object:  ForeignKey [FK_Mclient_MUsers]    Script Date: 04/12/2018 09:17:28 ******/
ALTER TABLE [dbo].[Mclient]  WITH CHECK ADD  CONSTRAINT [FK_Mclient_MUsers] FOREIGN KEY([MU_id])
REFERENCES [dbo].[MUsers] ([MU_id])
GO
ALTER TABLE [dbo].[Mclient] CHECK CONSTRAINT [FK_Mclient_MUsers]
GO
/****** Object:  ForeignKey [FK_MSupplierProductMap_MProduct]    Script Date: 04/12/2018 09:17:28 ******/
ALTER TABLE [dbo].[MSupplierProductMap]  WITH CHECK ADD  CONSTRAINT [FK_MSupplierProductMap_MProduct] FOREIGN KEY([MP_id])
REFERENCES [dbo].[MProduct] ([MP_id])
GO
ALTER TABLE [dbo].[MSupplierProductMap] CHECK CONSTRAINT [FK_MSupplierProductMap_MProduct]
GO
/****** Object:  ForeignKey [FK_MSupplierProductMap_MSuppliers]    Script Date: 04/12/2018 09:17:28 ******/
ALTER TABLE [dbo].[MSupplierProductMap]  WITH CHECK ADD  CONSTRAINT [FK_MSupplierProductMap_MSuppliers] FOREIGN KEY([MS_id])
REFERENCES [dbo].[MSuppliers] ([MS_id])
GO
ALTER TABLE [dbo].[MSupplierProductMap] CHECK CONSTRAINT [FK_MSupplierProductMap_MSuppliers]
GO
/****** Object:  ForeignKey [FK_MWarehouse_Mcity]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[MWarehouse]  WITH CHECK ADD  CONSTRAINT [FK_MWarehouse_Mcity] FOREIGN KEY([nCityID])
REFERENCES [dbo].[Mcity] ([nCityID])
GO
ALTER TABLE [dbo].[MWarehouse] CHECK CONSTRAINT [FK_MWarehouse_Mcity]
GO
/****** Object:  ForeignKey [FK_MWarehouse_Mstates]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[MWarehouse]  WITH CHECK ADD  CONSTRAINT [FK_MWarehouse_Mstates] FOREIGN KEY([nStateID])
REFERENCES [dbo].[Mstates] ([nStateID])
GO
ALTER TABLE [dbo].[MWarehouse] CHECK CONSTRAINT [FK_MWarehouse_Mstates]
GO
/****** Object:  ForeignKey [FK_TOrders_MPayStatus]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[TOrders]  WITH CHECK ADD  CONSTRAINT [FK_TOrders_MPayStatus] FOREIGN KEY([nPaytype])
REFERENCES [dbo].[MPayStatus] ([nPaymentTypeID])
GO
ALTER TABLE [dbo].[TOrders] CHECK CONSTRAINT [FK_TOrders_MPayStatus]
GO
/****** Object:  ForeignKey [FK_TOrders_MProduct]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[TOrders]  WITH CHECK ADD  CONSTRAINT [FK_TOrders_MProduct] FOREIGN KEY([nProdutID])
REFERENCES [dbo].[MProduct] ([MP_id])
GO
ALTER TABLE [dbo].[TOrders] CHECK CONSTRAINT [FK_TOrders_MProduct]
GO
/****** Object:  ForeignKey [FK_TOrders_MUsers]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[TOrders]  WITH CHECK ADD  CONSTRAINT [FK_TOrders_MUsers] FOREIGN KEY([nUserID])
REFERENCES [dbo].[MUsers] ([MU_id])
GO
ALTER TABLE [dbo].[TOrders] CHECK CONSTRAINT [FK_TOrders_MUsers]
GO
/****** Object:  ForeignKey [FK_TCart_MProduct]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[TCart]  WITH CHECK ADD  CONSTRAINT [FK_TCart_MProduct] FOREIGN KEY([nProductId])
REFERENCES [dbo].[MProduct] ([MP_id])
GO
ALTER TABLE [dbo].[TCart] CHECK CONSTRAINT [FK_TCart_MProduct]
GO
/****** Object:  ForeignKey [FK_TCart_MUsers]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[TCart]  WITH CHECK ADD  CONSTRAINT [FK_TCart_MUsers] FOREIGN KEY([nUserId])
REFERENCES [dbo].[MUsers] ([MU_id])
GO
ALTER TABLE [dbo].[TCart] CHECK CONSTRAINT [FK_TCart_MUsers]
GO
/****** Object:  ForeignKey [FK_TOrderAllocation_Mclient]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[TOrderAllocation]  WITH CHECK ADD  CONSTRAINT [FK_TOrderAllocation_Mclient] FOREIGN KEY([nClientID])
REFERENCES [dbo].[Mclient] ([MC_id])
GO
ALTER TABLE [dbo].[TOrderAllocation] CHECK CONSTRAINT [FK_TOrderAllocation_Mclient]
GO
/****** Object:  ForeignKey [FK_TOrderAllocation_MSuppliers]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[TOrderAllocation]  WITH CHECK ADD  CONSTRAINT [FK_TOrderAllocation_MSuppliers] FOREIGN KEY([nSupplierID])
REFERENCES [dbo].[MSuppliers] ([MS_id])
GO
ALTER TABLE [dbo].[TOrderAllocation] CHECK CONSTRAINT [FK_TOrderAllocation_MSuppliers]
GO
/****** Object:  ForeignKey [FK_TOrderAllocation_MWarehouse]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[TOrderAllocation]  WITH CHECK ADD  CONSTRAINT [FK_TOrderAllocation_MWarehouse] FOREIGN KEY([nWarehouseID])
REFERENCES [dbo].[MWarehouse] ([MW_ID])
GO
ALTER TABLE [dbo].[TOrderAllocation] CHECK CONSTRAINT [FK_TOrderAllocation_MWarehouse]
GO
/****** Object:  ForeignKey [FK_TOrderAllocation_TOrders]    Script Date: 04/12/2018 09:17:31 ******/
ALTER TABLE [dbo].[TOrderAllocation]  WITH CHECK ADD  CONSTRAINT [FK_TOrderAllocation_TOrders] FOREIGN KEY([nOrderID])
REFERENCES [dbo].[TOrders] ([nTId])
GO
ALTER TABLE [dbo].[TOrderAllocation] CHECK CONSTRAINT [FK_TOrderAllocation_TOrders]
GO
