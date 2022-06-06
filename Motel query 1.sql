USE [master];
GO

DROP DATABASE MotelDB
GO

CREATE DATABASE MotelDB
GO

USE MotelDB
GO

CREATE TABLE [tblUser](--done
[UserID]       [varchar](10) not null PRIMARY KEY,
[FullName]     [nvarchar](100) not null,
[Image]        [nvarchar](255),
[DateOfBirth]  [date],
[CitizenNumber][varchar](12),
[Gender]		[bit] null,
[Address]		[nvarchar](200),
[Phone]        [varchar](12),
[Gmail]        [varchar](50),
[Password]     [varchar](20),
[Role]         [nvarchar](10),
[Status]       [bit] null,
);

CREATE TABLE [tblCity](--done
[CityID]      [varchar](10) not null PRIMARY KEY,
[Name]         [nvarchar](50)
);
CREATE TABLE [tblDistrict](--done
[DistrictID]      [varchar](10) not null PRIMARY KEY,
[Name]         [nvarchar](50),
[CityID]      [varchar](10) not null FOREIGN KEY REFERENCES tblCity(CityID),
);


INSERT [tblCity] ([CityID], [Name]) VALUES (N'1', N'An Giang')
INSERT [tblCity] ([CityID], [Name]) VALUES (N'2', N'Ba Ria Vung Tau')
INSERT [tblCity] ([CityID], [Name]) VALUES (N'3', N'Bạc Lieu')
INSERT [tblCity] ([CityID], [Name]) VALUES (N'4', N'Bac Giang')
INSERT [tblCity] ([CityID], [Name]) VALUES (N'9', N'Bình Định')
INSERT [tblCity] ([CityID], [Name]) VALUES (N'30', N'Thanh Pho HCM')

/*disctrictID sẽ là số của cityID + 1 2 3 tăng dần*/
INSERT [tblDistrict] ([DistrictID], [Name],[CityID]) VALUES (N'11', N'An Phú', '1')
INSERT [tblDistrict] ([DistrictID],  [Name],[CityID]) VALUES (N'12', N'Phú Tân', '1')
INSERT [tblDistrict] ([DistrictID], [Name],[CityID]) VALUES (N'21', N'Thành phố Bà Rịa', '2')
INSERT [tblDistrict] ([DistrictID],  [Name],[CityID]) VALUES (N'22', N'Thành phố Vũng Tàu', '2')
INSERT [tblDistrict] ([DistrictID], [Name],[CityID]) VALUES (N'91', N'Phù Mỹ', '9')
INSERT [tblDistrict] ([DistrictID],  [Name],[CityID]) VALUES (N'92', N'Phù Cát', '9')
INSERT [tblDistrict] ([DistrictID], [Name],[CityID]) VALUES (N'301', N'Thành phố Thủ Đức', '30')
INSERT [tblDistrict] ([DistrictID],  [Name],[CityID]) VALUES (N'302', N'Quận 2', '30')

CREATE TABLE [tblMotel](--done
[MotelID]      [varchar](10) not null PRIMARY KEY,
[Name]         [nvarchar](50),
[Phone]        [varchar](10),
[Desct]        [nvarchar] (MAX),
[Image]        [nvarchar](1000),
[Address]      [nvarchar](200), /* này sẽ nhập số nhà tên đường và phường nhé*/
[DistrictID]	[varchar](10) not null FOREIGN KEY REFERENCES tblDistrict(DistrictID),
[Ratings]      [decimal](2,1)
CONSTRAINT chk_Ratings CHECK (Ratings >= 0 AND Ratings <= 5),
[OwnerID]      [varchar](10) not null FOREIGN KEY REFERENCES tblUser(UserID),
[Status]       [bit] null,
);



CREATE TABLE [tblService](--done
[ServiceID]    [varchar](10) Not Null PRIMARY KEY ,
[ServiceName]  [nvarchar](50),
[Price]        [decimal](10) Not Null ,
[Status]       [bit] Null,
[MotelID]      [varchar](10) Not Null FOREIGN KEY REFERENCES tblMotel(MotelID),
);

CREATE TABLE [tblRoomType](
[RoomTypeID]	[varchar](10) not null PRIMARY KEY,
[TypeName]		[nvarchar](50),
[Price]			[decimal](10)

);

CREATE TABLE [tblRoom](--done
[RoomID]	   [varchar](10) not null PRIMARY KEY,
[Name]         [nvarchar](50) ,
[Image]        [nvarchar](1000),
[Desct]        [nvarchar](1500),
[Status]       [bit] Null,
[MotelID]      [varchar](10) not null FOREIGN KEY REFERENCES tblMotel(MotelID) ,
[RoomTypeID]      [varchar](10) not null FOREIGN KEY REFERENCES tblRoomType(RoomTypeID) 

);

CREATE TABLE [tblNotification]( --done
[AnnouncementID]  [varchar](10) not null PRIMARY KEY,
[Title]           [nvarchar](100),
[Desct]           [nvarchar](1500),
[Date]            [date],
[UserID]          [varchar](10) not null FOREIGN KEY REFERENCES tblUser(UserID),
);

CREATE TABLE [tblBooking](--done
[BookingID]       [varchar](10) not null PRIMARY KEY,
[BookingDate]     [date],
[Desct]           [nvarchar](1500),
[Total]           [decimal](10),
[Status]          [bit] null, 
[UserID]          [varchar](10) not null FOREIGN KEY REFERENCES tblUser(UserID),  
);
CREATE TABLE [tblBookingDetail](--done
[BookingDetailID] [varchar](10) not null PRIMARY KEY,
[RoomID]          [varchar](10) not null FOREIGN KEY REFERENCES tblRoom(RoomID),
[BookingID]       [varchar](10) not null FOREIGN KEY REFERENCES tblBooking(BookingID),
[Price]           [decimal](10),
[Time]			[int],
);

CREATE TABLE [tblPayment](
[PaymentID]       [varchar](10) UNIQUE not Null,
[Total]           [decimal](10),
[Desct]           [nvarchar](1500),
[PaymentTime]     [date],
[Sender]          [nvarchar](50),
[Receiver]        [nvarchar](50),
[PaymentTypeName] [nvarchar](50),
[Status]          [bit] null,
);

CREATE TABLE [tblFeedBack](
[FeedbackID]      [varchar](10) not null PRIMARY KEY,
[Name]            [nvarchar](50),
[Desct]           [nvarchar](1500),
[Ratings]         [decimal](2,1),
[MotelID]         [varchar](10) not null FOREIGN KEY REFERENCES tblMotel(MotelID), 
[BookingID]       [varchar](10) not null FOREIGN KEY REFERENCES tblBooking(BookingID),
[Status]          [bit] null,
);

CREATE TABLE [tblReport](
[ReportID]        [varchar](10) PRIMARY KEY,
[UserID]          [varchar](10) not null FOREIGN KEY REFERENCES tblUser(UserID),
[Title]           [nvarchar](100),
[Desct]           [nvarchar](1500),
[Date]            [date],
);

CREATE TABLE [tblBookingServiceDetail](
[BookingSeviceDetailID]     [varchar](10) not null PRIMARY KEY,
[ServiceID]                 [varchar](10) not null FOREIGN KEY REFERENCES tblService(ServiceID),
[BookingID]                 [varchar](10) not null FOREIGN KEY REFERENCES tblBooking(BookingID),
[Quantity]					[int],
[Price]                     [decimal](10),
);

ALTER TABLE [tblPayment]
ADD CONSTRAINT FK_Payment_Booking FOREIGN KEY([PaymentID]) 
    REFERENCES [tblBooking]([BookingID]);

--/////////////
--insert user



INSERT [tblRoomType] ([RoomTypeID], [TypeName], [Price]) VALUES (N'1', N'Phòng đơn', 150000)
INSERT [tblRoomType] ([RoomTypeID], [TypeName], [Price]) VALUES (N'2', N'Phòng đôi', 250000)


INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address], [Phone] ,[Gmail], [Role], [Status] ) VALUES (N'quan01', N'Le Minh Quan',N'1', N'.....','2001-05-07',321615057,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','0942949219','hoangquan9851@gmail.com','OW',1) 
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber],[Gender], [Address] ,[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'tu06', N'Nguyen Doan Tu',N'1', N'.....','2001-05-26',78523465,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','01945876325','tutu988@gmail.com','OW',0) 
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'phuc08', N'Lam Son Phuc',N'1', N'.....','2001-02-14',235478154,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','01478523654','phucson223@gmail.com','OW',1)
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'Quang09', N'Do Duy Quang',N'1', N'.....','1998-05-14',25479864,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','0365258417','quang744@gmail.com','OW',1)  
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'chuongmai', N'Huy Chuong',N'99', N'.....','2002-01-14',214536587,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','0975841354','chuongmai@gmail.com','OW',0)
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'nhatvuong', N'Pham Nhat Vuong',N'99', N'.....','1989-01-14',248762544,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','0248998745','vuong@gmail.com','OW',1)  
 
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'doan07', N'Nguyen Huu Doan',N'1', N'.....','2001-09-17',712465325,0,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','0965852413','donatran1113@gmail.com','US',1) 
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'hai03', N'Tran Ngoc Hai',N'1', N'.....','2001-10-15',3541258746,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','0347895634','haitn@gmail.com','US',1)
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'tuan04', N'Nguyen Huu Pham Tuan',N'1', N'.....','2001-07-07',47853265,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','01653992966','tuanhp@gmail.com','US',1)
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'duy05', N'Ho Khanh Duy',N'1', N'.....','2001-01-25',452874365,0,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','0963756841','Devilgamer@gmail.com','US',0) 
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'Lamm44', N'Dang Son Lam',N'14', N'.....','1989-05-07',58213647,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','014752368','liontee@gmail.com','US',1)
INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'taich74', N'Nguyen Huu Tai',N'8751', N'.....','1999-11-24',7468512,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','0942741653','monster11@gmail.com','US',1) 

INSERT [tblUser] ([UserID], [FullName],[Password], [Image],[DateOfBirth], [CitizenNumber] ,[Gender], [Address],[Phone] ,[Gmail], [Role], [Status] ) VALUES (N'thuy02', N'Cao Thi Phuong Thuy',N'1', N'.....','2001-04-08',45217896,1,N'111 đình phong phú,tăng nhơn phú B,TP thủ đức,hcm','0852135789','thuy01@gmail.com','AD',1)  


--insert motel
INSERT [tblMotel] ([MotelID], [Name], [Desct], [Image], [Phone], [DistrictID], [Address], [Ratings], [OwnerID], [Status]) VALUES (N'587416594',N'Nhà Trọ Phương Nam', N'Desction motel',N'https://ezcloud.vn/wp-content/uploads/2019/07/motel-la-gi.jpg', N'0948484848','301', N'111 đình phong phú,tăng nhơn phú B',4,N'quan01',1)
INSERT [tblMotel] ([MotelID], [Name], [Desct], [Image], [Phone], [DistrictID], [Address], [Ratings], [OwnerID], [Status]) VALUES (N'842578129',N'Nhà Trọ Ánh Dương',N'Desction motel',N'https://ezcloud.vn/wp-content/uploads/2019/07/motel-la-gi.jpg', N'0328787878','302', N'143A Mỹ Đức,Bình Phú',4.5,N'quan01',1)
INSERT [tblMotel] ([MotelID], [Name], [Desct], [Image], [Phone], [DistrictID], [Address], [Ratings], [OwnerID], [Status]) VALUES (N'486258478',N'Nhà Trọ Gia Lai',N'Desction motel',N'https://ezcloud.vn/wp-content/uploads/2019/07/motel-la-gi.jpg', N'0248996587','302', N'345/55 Trần Hưng Đạo, Cầu Kho',4.1,N'tu06',1)
INSERT [tblMotel] ([MotelID], [Name], [Desct], [Image], [Phone], [DistrictID], [Address], [Ratings], [OwnerID], [Status]) VALUES (N'861435762',N'Nhà Trọ Malibu Beach',N'Desction motel',N'https://ezcloud.vn/wp-content/uploads/2019/07/motel-la-gi.jpg', N'0344989898','302', N'263, Lê Hồng Phong',4.1,N'chuongmai',1)
INSERT [tblMotel] ([MotelID], [Name], [Desct], [Image], [Phone], [DistrictID], [Address], [Ratings], [OwnerID], [Status]) VALUES (N'548762589',N'Nhà Trọ Ladalat',N'Desction motel',N'https://ezcloud.vn/wp-content/uploads/2019/07/motel-la-gi.jpg', N'0147586325','91', N'263, Số 19, đường Hoa Hồng, hồ Tuyền Lâm, phường 4',3.9,N'phuc08',1)
INSERT [tblMotel] ([MotelID], [Name], [Desct], [Image], [Phone], [DistrictID], [Address], [Ratings], [OwnerID], [Status]) VALUES (N'473658715',N'Nhà Trọ Vạn Phúc',N'Desction motel',N'https://ezcloud.vn/wp-content/uploads/2019/07/motel-la-gi.jpg', N'0478523645','301', N'91 Vạn Phúc, phường Liễu Giai',4.7,N'Quang09',1)
INSERT [tblMotel] ([MotelID], [Name], [Desct], [Image], [Phone], [DistrictID], [Address], [Ratings], [OwnerID], [Status]) VALUES (N'785146827',N'Nhà Trọ VinHome',N'Desction motel',N'https://ezcloud.vn/wp-content/uploads/2019/07/motel-la-gi.jpg', N'0745898989','11', N'Đường 30 Tháng 4, Phường Hưng Lợi',4.4,N'nhatvuong',1)
INSERT [tblMotel] ([MotelID], [Name], [Desct], [Image], [Phone], [DistrictID], [Address], [Ratings], [OwnerID], [Status]) VALUES (N'625781458',N'Nhà Trọ NgocLan',N'Desction motel',N'https://ezcloud.vn/wp-content/uploads/2019/07/motel-la-gi.jpg', N'0985364865','11', N'Đặng Huy Trứ, Phường Vĩnh Nguyên',4.1,N'nhatvuong',1)
INSERT [tblMotel] ([MotelID], [Name], [Desct], [Image], [Phone], [DistrictID], [Address], [Ratings], [OwnerID], [Status]) VALUES (N'587624587',N'Nhà Trọ Kỳ Nam',N'Desction motel',N'https://ezcloud.vn/wp-content/uploads/2019/07/motel-la-gi.jpg', N'0985635353','12', N'Hùng Vương, Phường Thanh Hà',3.4,N'chuongmai',1)

--insert room
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'012414785', N'01', N'',N'phòng đơn 1 giường', 1, N'587416594',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID])VALUES (N'216587125', N'02', N'', N'phòng đôi 1 giường', 0, N'587416594',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'219657756', N'03', N'',N'phòng đôi 2 giường', 1, N'587416594',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'765324124', N'04', N'', N'phòng đơn 1 giường', 1, N'587416594',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'895365765', N'05', N'', N'phòng đơn 1 giường', 1, N'587416594',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'244714724', N'06', N'', N'phòng đôi 2 giường', 0, N'587416594',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'658715137', N'07', N'', N'phòng đơn 1 giường', 1, N'587416594',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'247965765', N'08', N'', N'phòng đơn 1 giường', 1, N'587416594',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'735947138', N'09', N'', N'phòng đơn 1 giường', 1, N'587416594',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'012414754', N'NO 1', N'', N'phòng đơn máy lạnh', 1, N'486258478',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'487621547', N'NO 2', N'', N'phòng đơn máy lạnh', 1, N'486258478',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'632658744', N'NO 3', N'', N'phòng đôi máy lạnh', 1, N'486258478',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'421578965', N'NO 4', N'', N'phòng đôi máy lạnh', 0, N'486258478',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'249632785', N'NO 5', N'', N'phòng đơn quạt máy', 0, N'486258478',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'124525876', N'NO 6', N'', N'phòng đơn máy lạnh', 1, N'486258478',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'632658452', N'NO 7', N'', N'phòng đơn máy lạnh', 1, N'486258478',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'758624864', N'NO 8', N'', N'phòng đơn máy lạnh', 1, N'486258478',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'587953254', N'phong 1', N'', N'phòng 1 giường mới', 1, N'587624587',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'456257895', N'phong 2', N'', N'phòng 1 giường mới', 0, N'587624587',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'248425478', N'phong 3', N'', N'phòng 2 giường điều hòa', 1, N'587624587',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'851658754', N'phong 4', N'', N'phòng 2 giường điều hòa', 0, N'587624587',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'236587157', N'phong 5', N'',N'phòng 1 giường điều hòa', 1, N'587624587',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'236854824', N'phong 6', N'', N'phòng 1 giường điều hòa', 0, N'587624587',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'895621458', N'phong 7', N'', N'phòng 1 giường điều hòa', 1, N'587624587',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'548587526', N'phong 8', N'', N'phòng 1 giường điều hòa', 1, N'587624587',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'326584957', N'phong 9', N'', N'phòng 1 giường nhỏ', 1, N'587624587',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'452713658', N'phong 10', N'', N'phòng 1 giường nhỏ', 1, N'587624587',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'986554787', N'phong 11', N'', N'phòng 1 giường nhỏ', 1, N'587624587',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'845764818', N'num 1', N'', N'phòng đơn nệm lò xo', 0, N'861435762',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'632548789', N'num 2', N'', N'phòng đơn nệm thường', 1, N'861435762',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'124569832', N'num 3', N'', N'phòng đơn nệm thường', 1, N'861435762',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'865741253', N'num 4', N'',N'phòng đơn nệm thường', 1, N'861435762',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'325487958', N'num 5', N'', N'phòng đôi nệm lò xo', 0, N'861435762',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'986525487', N'num 6', N'', N'phòng đôi nệm lò xo', 1, N'861435762',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'956325478', N'num 7', N'', N'phòng đôi nệm lò xo', 1, N'861435762',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'871245872', N'num 8', N'', N'phòng đơn nệm thường', 1, N'861435762',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'985568725', N'num 9', N'', N'phòng đơn nệm lò xo', 1, N'861435762',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'112547695', N'num 10', N'', N'phòng đơn nệm lò xo', 0 ,N'861435762',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'365982589', N'num 11', N'',N'phòng đơn nệm lò xo', 1, N'861435762',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'245782168', N'phòng số 1', N'', N'phòng đơn nhỏ', 1, N'625781458',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'626356896', N'phòng số 2', N'', N'phòng đơn nhỏ', 1, N'625781458',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'842565836', N'phòng số 3', N'', N'phòng đơn nhỏ', 1, N'625781458',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'895658269', N'phòng số 4', N'', N'phòng đơn nhỏ', 0, N'625781458',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'124858468', N'phòng số 5', N'', N'phòng đơn nhỏ', 1, N'625781458',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'642766983', N'phòng số 6', N'', N'phòng đôi máy lạnh', 0, N'625781458',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'528495989', N'phòng số 7', N'', N'phòng đôi máy lạnh', 1, N'625781458',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'663289984', N'phòng số 8', N'', N'phòng đôi máy lạnh', 1, N'625781458',N'1')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'215487599', N'phòng số 9', N'', N'phòng đôi máy lạnh', 0, N'625781458',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'854577756', N'phòng số 10', N'', N'phòng đôi máy lạnh', 1, N'625781458',N'2')
INSERT [tblRoom] ([RoomID], [Name], [Image], [Desct], [Status], [MotelID],[RoomTypeID]) VALUES (N'326556884', N'phòng số 11', N'', N'phòng đôi máy lạnh', 1, N'625781458',N'2')

--INSERT service 
INSERT [tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'489656859', N'Coca', 15000, 1, N'587416594')
INSERT [tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'021586822', N'lavie', 10000, 1, N'587416594')
INSERT [tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'565468569', N'bánh', 17000, 1, N'587416594')
INSERT [tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'563958176', N'khăn ướt', 5000, 1, N'587416594')
INSERT [tblService] ([ServiceID], [ServiceName], [Price], [Status], [MotelID]) VALUES (N'556558557', N'7 up', 15000, 1, N'587416594')	

--INSERT Notification

INSERT [tblNotification] ([AnnouncementID], [Title],[Desct], [Date], [UserID]) VALUES ('notifi01', N'Bạn có đơn đặt phòng mới',N'Bạn có đơn đặt phòng mới chi tiết xem tại đây', '2002-01-01','quan01') 
INSERT [tblNotification] ([AnnouncementID], [Title],[Desct], [Date], [UserID]) VALUES ('notifi02', N'Bạn có phòng đang trả',N'Phòng số 2 ở Motel 02 , khách đã trả phòng', '2002-01-01','tu06') 

INSERT [tblNotification] ([AnnouncementID], [Title],[Desct], [Date], [UserID]) VALUES ('notifi03', N'Bạn vừa đặt phòng thành công',N'Bạn vừa đặt phòng xong, vui lòng kiểm tra lại hóa đơn chi tiết', '2002-01-01','duy05') 
INSERT [tblNotification] ([AnnouncementID], [Title],[Desct], [Date], [UserID]) VALUES ('notifi04', N'Bạn vừa trả phòng',N'Bạn vừa trả phòng hãy đánh giá', '2002-01-01','duy05') 


---INSERT Booking

INSERT [tblBooking] ([BookingID], [BookingDate],[Desct], [Total],[Status], [UserID]) VALUES ('booking01', '2001-05-07',N'Booking table', 59900,1,'duy05') 
INSERT [tblBooking] ([BookingID], [BookingDate],[Desct], [Total],[Status], [UserID]) VALUES ('booking02', '2022-11-08',N'Booking table', 59900,1,'duy05') 
INSERT [tblBooking] ([BookingID], [BookingDate],[Desct], [Total],[Status], [UserID]) VALUES ('booking03', '2021-08-09',N'Booking table', 59900,1,'hai03') 
INSERT [tblBooking] ([BookingID], [BookingDate],[Desct], [Total],[Status], [UserID]) VALUES ('booking04', '2022-10-10',N'Booking table', 59900,1,'tuan04') 


---INSERT BookingDetail

INSERT [tblBookingDetail] ([BookingDetailID], [RoomID],[BookingID], [Price],[Time]) VALUES ('bookDt01', '012414785','booking01', 150000,2) 
INSERT [tblBookingDetail] ([BookingDetailID], [RoomID],[BookingID], [Price],[Time]) VALUES ('bookDt02', '765324124','booking02', 250000,1) 
INSERT [tblBookingDetail] ([BookingDetailID], [RoomID],[BookingID], [Price],[Time]) VALUES ('bookDt03', '248425478','booking03', 250000,2) 
INSERT [tblBookingDetail] ([BookingDetailID], [RoomID],[BookingID], [Price],[Time]) VALUES ('bookDt04', '842565836','booking04', 150000,1) 


---INSERT Payment

INSERT [tblPayment] ([PaymentID], [Total],[Desct], [PaymentTime],[Sender], [Receiver],[PaymentTypeName],[Status]) VALUES ('booking01', 290000,N'payment01 table', '2021-02-02','tuan04','tu06',N'Tien mat',1) 
INSERT [tblPayment] ([PaymentID], [Total],[Desct], [PaymentTime],[Sender], [Receiver],[PaymentTypeName],[Status]) VALUES ('booking02', 290000,N'payment01 table', '2021-02-02','tuan04','tu06',N'Chuyển khoản',1) 
INSERT [tblPayment] ([PaymentID], [Total],[Desct], [PaymentTime],[Sender], [Receiver],[PaymentTypeName],[Status]) VALUES ('booking03', 290000,N'payment01 table', '2021-02-02','hai03','hai03',N'Chuyển khoản',1) 
INSERT [tblPayment] ([PaymentID], [Total],[Desct], [PaymentTime],[Sender], [Receiver],[PaymentTypeName],[Status]) VALUES ('booking04', 290000,N'payment01 table', '2021-02-02','duy05','hai03',N'Tien mat',1) 



---INSERT Feedback
INSERT [tblFeedBack] ([FeedbackID], [Name],[Desct], [Ratings],[MotelID], [BookingID],[Status]) VALUES ('1', N'Phuong Thuy',N'Nhà trọ chất lượng tốt', 5,N'587416594',N'booking01',1)
INSERT [tblFeedBack] ([FeedbackID], [Name],[Desct], [Ratings],[MotelID], [BookingID],[Status]) VALUES ('2', N'Hong Anh',N'Đánh giá 5 sao', 5,N'842578129',N'booking02',1) 
INSERT [tblFeedBack] ([FeedbackID], [Name],[Desct], [Ratings],[MotelID], [BookingID],[Status]) VALUES ('3', N'Minh Nhat',N'Dịch vụ tốt', 5,N'486258478',N'booking03',1) 
INSERT [tblFeedBack] ([FeedbackID], [Name],[Desct], [Ratings],[MotelID], [BookingID],[Status]) VALUES ('4', N'Ngoc Hai',N'Phòng rất sạch sẽ', 4,N'587416594',N'booking04',1) 
INSERT [tblFeedBack] ([FeedbackID], [Name],[Desct], [Ratings],[MotelID], [BookingID],[Status]) VALUES ('5', N'Pham Tuan',N'Nhân viên phục vụ tốt', 4,N'861435762',N'booking01',1) 


---INSERT Report

INSERT [tblReport] ([ReportID], [UserID],[Title], [Desct],[Date]) VALUES ('1', N'doan07',N'bao cao owner', N'Owner nay khong tot','2022-05-05') 
INSERT [tblReport] ([ReportID], [UserID],[Title], [Desct],[Date]) VALUES ('2', N'duy05',N'bao cao owner', N'Nhà trọ không đúng như mô tả','2021-05-05') 
INSERT [tblReport] ([ReportID], [UserID],[Title], [Desct],[Date]) VALUES ('3', N'tuan04',N'bao cao owner', N'Owner nay khong tot','2022-05-05') 
INSERT [tblReport] ([ReportID], [UserID],[Title], [Desct],[Date]) VALUES ('4', N'doan07',N'bao cao owner', N'Nhà trọ này chém giá','2022-05-05') 
INSERT [tblReport] ([ReportID], [UserID],[Title], [Desct],[Date]) VALUES ('5', N'doan07',N'bao cao owner', N'Owner nay khong tot','2022-05-05') 


---INSERT BookingServiceDetail

INSERT [tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID],[BookingID], [Quantity],[Price]) VALUES ('1', '489656859','booking01', 3,15000) 
INSERT [tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID],[BookingID], [Quantity],[Price]) VALUES ('2', '021586822','booking02', 2,10000) 
INSERT [tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID],[BookingID], [Quantity],[Price]) VALUES ('3', '565468569','booking03', 5,17000) 
INSERT [tblBookingServiceDetail] ([BookingSeviceDetailID], [ServiceID],[BookingID], [Quantity],[Price]) VALUES ('4', '489656859','booking04', 1,15000) 


/*
SELECT * FROM tblService
SELECT * FROM tblRoom 
ORDER BY Name
DELETE tblRoom where Price >0
SELECT * FROM tblMotel
SELECT * FROM tblMotel WHERE Address like '%nhơn phú%';
SELECT * FROM tblUser
DELETE tblUser WHERE UserID = '01'
*/
