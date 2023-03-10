USE [CPKiOdb]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 18.12.2022 15:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[IdClient] [int] IDENTITY(45462526,1) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Firstname] [nvarchar](max) NOT NULL,
	[Middlename] [nvarchar](max) NULL,
	[Passport] [bigint] NOT NULL,
	[BirtchDate] [date] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Clients_1] PRIMARY KEY CLUSTERED 
(
	[IdClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderOfService]    Script Date: 18.12.2022 15:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderOfService](
	[IDOrders] [int] NOT NULL,
	[IDService] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 18.12.2022 15:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdOrders] [bigint] NOT NULL,
	[DataCreate] [date] NOT NULL,
	[TimeOrder] [time](0) NOT NULL,
	[IdClient] [int] NOT NULL,
	[Status] [nvarchar](15) NOT NULL,
	[DateClose] [date] NULL,
	[RentalTime] [smallint] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 18.12.2022 15:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 18.12.2022 15:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](15) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 18.12.2022 15:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[ID] [int] IDENTITY(101,1) NOT NULL,
	[Post] [int] NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Firstname] [nvarchar](max) NOT NULL,
	[Middlename] [nvarchar](max) NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[LastVisit] [datetime] NOT NULL,
	[isVisit] [nvarchar](10) NOT NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462526, N'Фролов', N'Андрей', N'Иванович', 1180176596, CAST(N'2001-07-14' AS Date), N'344288, г. Барнаул, ул. Чехова, 1, кв. 34', N'gohufreilagrau-3818@yopmail.com', N'cl12345')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462527, N'Николаев', N'Даниил', N'Всеволодович', 2280223523, CAST(N'2001-02-10' AS Date), N'614164, г. Барнаул, ул. Степная, 30, кв. 75', N'xawugosune-1385@yopmail.com', N'cl12346')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462528, N'Снегирев', N'Макар', N'Иванович', 4560354155, CAST(N'1998-05-21' AS Date), N'394242, г. Барнаул, ул. Коммунистическая, 43, кв. 57', N'satrahuddusei-4458@yopmail.com', N'cl12347')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462529, N'Иванов', N'Иван', N'Ильич', 9120554296, CAST(N'1998-10-01' AS Date), N'660540, г. Барнаул, ул. Солнечная, 25, кв. 78', N'boippaxeufrepra-7093@yopmail.com', N'cl12348')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462530, N'Филиппова', N'Анна', N'Глебовна', 2367558134, CAST(N'1976-05-31' AS Date), N'125837, г. Барнаул, ул. Шоссейная, 40, кв. 92', N'zapramaxesu-7741@yopmail.com', N'cl12349')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462531, N'Иванов', N'Михаил', N'Владимирович', 7101669343, CAST(N'1985-11-04' AS Date), N'125703, г. Барнаул, ул. Партизанская, 49, кв. 84', N'rouzecroummegre-3899@yopmail.com', N'cl12350')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462532, N'Власов', N'Дмитрий', N'Александрович', 3455719630, CAST(N'1998-08-17' AS Date), N'625283, г. Барнаул, ул. Победы, 46, кв. 7', N'ziyeuddocrabri-4748@yopmail.com', N'cl12351')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462533, N'Серова', N'Екатерина', N'Львовна', 2377871623, CAST(N'1984-10-24' AS Date), N'614611, г. Барнаул, ул. Молодежная, 50, кв. 78', N'ketameissoinnei-1951@yopmail.com', N'cl12352')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462534, N'Борисова', N'Ирина', N'Ивановна', 8755921148, CAST(N'1976-10-14' AS Date), N'454311, г. Барнаул, ул. Новая, 19, кв. 78', N'yipraubaponou-5849@yopmail.com', N'cl12353')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462535, N'Зайцев', N'Никита', N'Артёмович', 4355104594, CAST(N'1999-10-14' AS Date), N'660007, г. Барнаул, ул. Октябрьская, 19, кв. 42', N'crapedocouca-3572@yopmail.com', N'cl12354')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462536, N'Медведев', N'Святослав', N'Евгеньевич', 2791114390, CAST(N'1985-07-13' AS Date), N'603036, г. Барнаул, ул. Садовая, 4, кв. 13', N'ceigoixakaunni-9227@yopmail.com', N'cl12355')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462537, N'Коротков', N'Кирилл', N'Алексеевич', 5582126286, CAST(N'1976-05-26' AS Date), N'450983, г. Барнаул, ул. Комсомольская, 26, кв. 60', N'yeimmeiwauzomo-7054@yopmail.com', N'cl12356')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462538, N'Калашникова', N'Арина', N'Максимовна', 2978133653, CAST(N'1999-08-13' AS Date), N'394782, г. Барнаул, ул. Чехова, 3, кв. 14', N'poleifenevi-1560@yopmail.com', N'cl12357')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462539, N'Минина', N'Таисия', N'Кирилловна', 7512141956, CAST(N'1985-10-13' AS Date), N'603002, г. Барнаул, ул. Дзержинского, 28, кв. 56', N'kauprezofautei-6607@yopmail.com', N'cl12358')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462540, N'Наумов', N'Серафим', N'Романович', 5046158433, CAST(N'1999-04-15' AS Date), N'450558, г. Барнаул, ул. Набережная, 30, кв. 71', N'quaffaullelourei-1667@yopmail.com', N'cl12359')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462541, N'Воробьева', N'Василиса', N'Евгеньевна', 2460169505, CAST(N'1999-01-13' AS Date), N'394060, г. Барнаул, ул. Фрунзе, 43, кв. 79', N'jsteele@rojas-robinson.net', N'cl12360')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462542, N'Калинин', N'Александр', N'Андреевич', 3412174593, CAST(N'1999-01-07' AS Date), N'410661, г. Барнаул, ул. Школьная, 50, кв. 53', N'vhopkins@lewis-mullen.com', N'cl12361')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462543, N'Кузнецова', N'Милана', N'Владиславовна', 4950183034, CAST(N'1999-01-24' AS Date), N'625590, г. Барнаул, ул. Коммунистическая, 20, кв. 34', N'nlewis@yahoo.com', N'cl12362')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462544, N'Фирсов', N'Егор', N'Романович', 5829219464, CAST(N'1993-09-02' AS Date), N'625683, г. Барнаул, ул. 8 Марта, 20, кв. 21', N'garciadavid@mckinney-mcbride.com', N'cl12363')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462545, N'Зимина', N'Агния', N'Александровна', 6443208059, CAST(N'1998-09-03' AS Date), N'400562, г. Барнаул, ул. Зеленая, 32, кв. 67', N'cbradley@castro.com', N'cl12364')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462546, N'Титов', N'Андрей', N'Глебович', 7079213265, CAST(N'1985-10-23' AS Date), N'614510, г. Барнаул, ул. Маяковского, 47, кв. 72', N'cuevascatherine@carlson.biz', N'cl12365')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462547, N'Орлов', N'Николай', N'Егорович', 8207522702, CAST(N'1985-07-27' AS Date), N'410542, г. Барнаул, ул. Светлая, 46, кв. 82', N'thomasmoore@wilson-singh.net', N'cl12366')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462548, N'Кузнецова', N'Аиша', N'Михайловна', 9307232158, CAST(N'1998-10-04' AS Date), N'620839, г. Барнаул, ул. Цветочная, 8, кв. 100', N'jessica84@hotmail.com', N'cl12367')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462549, N'Куликов', N'Никита', N'Георгиевич', 1357242839, CAST(N'1999-04-23' AS Date), N'443890, г. Барнаул, ул. Коммунистическая, 1, кв. 10', N'jessicapark@hotmail.com', N'cl12368')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462550, N'Карпова', N'София', N'Егоровна', 1167256636, CAST(N'1993-10-01' AS Date), N'603379, г. Барнаул, ул. Спортивная, 46, кв. 95', N'ginaritter@schneider-buchanan.com', N'cl12369')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462551, N'Смирнова', N'Дарья', N'Макаровна', 1768266986, CAST(N'1976-03-22' AS Date), N'603721, г. Барнаул, ул. Гоголя, 41, кв. 57', N'stephen99@yahoo.com', N'cl12370')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462552, N'Абрамова', N'Александра', N'Мироновна', 1710427875, CAST(N'1999-03-26' AS Date), N'410172, г. Барнаул, ул. Северная, 13, кв. 86', N'lopezlisa@hotmail.com', N'cl12371')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462553, N'Наумов', N'Руслан', N'Михайлович', 1806289145, CAST(N'1999-10-11' AS Date), N'420151, г. Барнаул, ул. Вишневая, 32, кв. 81', N'lori17@hotmail.com', N'cl12372')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462554, N'Бочаров', N'Никита', N'Матвеевич', 1587291249, CAST(N'1997-06-29' AS Date), N'125061, г. Барнаул, ул. Подгорная, 8, кв. 74', N'campbellkevin@gardner.com', N'cl12373')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462555, N'Соловьев', N'Давид', N'Ильич', 1647306372, CAST(N'1984-03-06' AS Date), N'630370, г. Барнаул, ул. Шоссейная, 24, кв. 81', N'morganhoward@clark.com', N'cl12374')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462556, N'Васильева', N'Валерия', N'Дмитриевна', 1742316556, CAST(N'1999-09-30' AS Date), N'614753, г. Барнаул, ул. Полевая, 35, кв. 39', N'carsontamara@gmail.com', N'cl12375')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462557, N'Макарова', N'Василиса', N'Андреевна', 1474326347, CAST(N'1999-04-08' AS Date), N'426030, г. Барнаул, ул. Маяковского, 44, кв. 93', N'kevinpatel@gmail.com', N'cl12376')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462558, N'Алексеев', N'Матвей', N'Викторович', 1452339539, CAST(N'1998-08-02' AS Date), N'450375, г. Барнаул, ул. Клубная, 44, кв. 80', N'sethbishop@yahoo.com', N'cl12377')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462559, N'Никитина', N'Полина', N'Александровна', 2077443480, CAST(N'1976-09-19' AS Date), N'625560, г. Барнаул, ул. Некрасова, 12, кв. 66', N'drollins@schultz-soto.net', N'cl12378')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462560, N'Окулова', N'Олеся', N'Алексеевна', 2147357518, CAST(N'1999-04-03' AS Date), N'630201, г. Барнаул, ул. Комсомольская, 17, кв. 25', N'pblack@copeland-winters.org', N'cl12379')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462561, N'Захарова', N'Полина', N'Яновна', 2687363884, CAST(N'1976-04-21' AS Date), N'190949, г. Барнаул, ул. Мичурина, 26, кв. 93', N'johnathon.oberbrunner@yahoo.com', N'cl12380')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462562, N'Зайцев', N'Владимир', N'Давидович', 2376443711, CAST(N'1998-01-26' AS Date), N'350501, г. Барнаул, ул. Парковая, 2, кв. 7', N'bradly29@gmail.com', N'cl12381')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462563, N'Иванов', N'Виталий', N'Даниилович', 2568386237, CAST(N'1976-08-11' AS Date), N'450048, г. Барнаул, ул. Коммунистическая, 21, кв. 3', N'stark.cristina@hilpert.biz', N'cl12382')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462564, N'Захаров', N'Матвей', N'Романович', 2556439376, CAST(N'1993-07-12' AS Date), N'644921, г. Барнаул, ул. Школьная, 46, кв. 37', N'bruen.eleanore@yahoo.com', N'cl12383')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462565, N'Иванов', N'Степан', N'Степанович', 2737407501, CAST(N'1998-09-19' AS Date), N'614228, г. Барнаул, ул. Дорожная, 36, кв. 54', N'percival.halvorson@yahoo.com', N'cl12384')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462566, N'Ткачева', N'Милана', N'Тимуровна', 2581441645, CAST(N'1998-05-24' AS Date), N'350940, г. Барнаул, ул. Первомайская, 23, кв. 2', N'javonte71@kuhlman.biz', N'cl12385')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462567, N'Семенов', N'Даниил', N'Иванович', 2675427933, CAST(N'1976-01-04' AS Date), N'344990, г. Барнаул, ул. Красноармейская, 19, кв. 92', N'vconnelly@kautzer.com', N'cl12386')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462568, N'Виноградов', N'Вячеслав', N'Дмитриевич', 2967434531, CAST(N'1976-07-12' AS Date), N'410248, г. Барнаул, ул. Чкалова, 11, кв. 75', N'anabelle07@schultz.info', N'cl12387')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462569, N'Соболева', N'Николь', N'Фёдоровна', 3070449655, CAST(N'1976-05-02' AS Date), N'400839, г. Барнаул, ул. 8 Марта, 46, кв. 44', N'nitzsche.katlynn@yahoo.com', N'cl12388')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462570, N'Тихонова', N'Анна', N'Львовна', 3108451174, CAST(N'1985-03-23' AS Date), N'450539, г. Барнаул, ул. Заводская, 3, кв. 81', N'corine16@von.com', N'cl12389')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462571, N'Кузнецова', N'Ульяна', N'Савельевна', 3250464705, CAST(N'1999-06-03' AS Date), N'614591, г. Барнаул, ул. Цветочная, 20, кв. 40', N'otha.wisozk@lubowitz.org', N'cl12390')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462572, N'Смирнова', N'Анна', N'Германовна', 3392471644, CAST(N'1997-07-18' AS Date), N'400260, г. Барнаул, ул. Больничная, 30, кв. 53', N'may.kirlin@hotmail.com', N'cl12391')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462573, N'Черепанова', N'Анна', N'Давидовна', 3497487819, CAST(N'1985-11-06' AS Date), N'660924, г. Барнаул, ул. Молодежная, 32, кв. 59', N'bryana.kautzer@yahoo.com', N'cl12392')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462574, N'Григорьев', N'Максим', N'Кириллович', 3560491260, CAST(N'1999-05-26' AS Date), N'644133, г. Барнаул, ул. Гагарина, 28, кв. 69', N'deborah.christiansen@quigley.biz', N'cl12393')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462575, N'Голубев', N'Даниэль', N'Александрович', 3620506034, CAST(N'1999-06-14' AS Date), N'450698, г. Барнаул, ул. Вокзальная, 14, кв. 37', N'connelly.makayla@yahoo.com', N'cl12394')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462576, N'Миронов', N'Юрий', N'Денисович', 3774511438, CAST(N'1985-01-26' AS Date), N'620653, г. Барнаул, ул. Западная, 15, кв. 25', N'tatum.collins@fay.org', N'cl12395')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462577, N'Терехов', N'Михаил', N'Андреевич', 3862521377, CAST(N'1976-07-06' AS Date), N'644321, г. Барнаул, ул. Клубная, 32, кв. 10', N'itzel73@anderson.com', N'cl12396')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462578, N'Орлова', N'Алиса', N'Михайловна', 3084535966, CAST(N'1997-02-24' AS Date), N'603653, г. Барнаул, ул. Молодежная, 2, кв. 45', N'arjun39@hotmail.com', N'cl12397')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462579, N'Кулаков', N'Константин', N'Даниилович', 4021541528, CAST(N'1993-06-20' AS Date), N'410181, г. Барнаул, ул. Механизаторов, 16, кв. 74', N'ohara.rebeka@yahoo.com', N'cl12398')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462580, N'Кудрявцев', N'Максим', N'Романович', 4109554053, CAST(N'1998-05-10' AS Date), N'394207, г. Барнаул, ул. Свердлова, 31, кв. 28', N'danika58@rath.com', N'cl12399')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462581, N'Соболева', N'Кира', N'Фёдоровна', 4537564868, CAST(N'1998-03-14' AS Date), N'420633, г. Барнаул, ул. Матросова, 18, кв. 41', N'janae.bogan@gmail.com', N'cl12400')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462582, N'Коновалов', N'Арсений', N'Максимович', 4914572471, CAST(N'1985-02-18' AS Date), N'445720, г. Барнаул, ул. Матросова, 50, кв. 67', N'vern91@yahoo.com', N'cl12401')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462583, N'Гусев', N'Михаил', N'Дмитриевич', 4445581302, CAST(N'1999-11-23' AS Date), N'400646, г. Барнаул, ул. Октябрьская, 47, кв. 65', N'mariana.leannon@larkin.net', N'cl12402')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462584, N'Суханова', N'Варвара', N'Матвеевна', 4743598180, CAST(N'1993-09-13' AS Date), N'644410, г. Барнаул, ул. Красная, 17, кв. 69', N'vmoore@gmail.com', N'cl12403')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462585, N'Орлова', N'Ясмина', N'Васильевна', 4741601821, CAST(N'1984-06-24' AS Date), N'400750, г. Барнаул, ул. Школьная, 36, кв. 71', N'damon.mcclure@mills.com', N'cl12404')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462586, N'Васильева', N'Ксения', N'Константиновна', 4783612567, CAST(N'1999-08-01' AS Date), N'660590, г. Барнаул, ул. Дачная, 37, кв. 70', N'grady.reilly@block.com', N'cl12405')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462587, N'Борисова', N'Тамара', N'Данииловна', 4658621200, CAST(N'1993-05-29' AS Date), N'426083, г. Барнаул, ул. Механизаторов, 41, кв. 26', N'boyd.koss@yahoo.com', N'cl12406')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462588, N'Дмитриев', N'Мирон', N'Ильич', 4908634613, CAST(N'1985-04-13' AS Date), N'410569, г. Барнаул, ул. Парковая, 36, кв. 17', N'obartell@franecki.info', N'cl12407')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462589, N'Лебедева', N'Анна', N'Александровна', 5092642468, CAST(N'1985-03-30' AS Date), N'443375, г. Барнаул, ул. Дзержинского, 50, кв. 95', N'reina75@ferry.net', N'cl12408')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462590, N'Пономарев', N'Артём', N'Маркович', 5155465274, CAST(N'1984-06-02' AS Date), N'614316, г. Барнаул, ул. Первомайская, 48, кв. 31', N'karson28@hotmail.com', N'cl12409')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462591, N'Борисова', N'Елена', N'Михайловна', 5086666893, CAST(N'1976-05-23' AS Date), N'445685, г. Барнаул, ул. Зеленая, 7, кв. 47', N'damaris61@okon.com', N'cl12410')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462592, N'Моисеев', N'Камиль', N'Максимович', 5333675375, CAST(N'1999-06-17' AS Date), N'614505, г. Барнаул, ул. Нагорная, 37, кв. 31', N'carroll.jerod@hotmail.com', N'cl12411')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462593, N'Герасимова', N'Дарья', N'Константиновна', 5493684572, CAST(N'1984-10-13' AS Date), N'426629, г. Барнаул, ул. Весенняя, 32, кв. 46', N'ron.treutel@quitzon.com', N'cl12412')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462594, N'Михайлова', N'Мария', N'Марковна', 5150696226, CAST(N'1976-12-02' AS Date), N'603743, г. Барнаул, ул. Матросова, 19, кв. 20', N'olen79@yahoo.com', N'cl12413')
INSERT [dbo].[Clients] ([IdClient], [Surname], [Firstname], [Middlename], [Passport], [BirtchDate], [Address], [Email], [Password]) VALUES (45462595, N'Коршунов', N'Кирилл', N'Максимович', 1308703305, CAST(N'1985-05-22' AS Date), N'450750, г. Барнаул, ул. Клубная, 23, кв. 90', N'pacocha.robbie@yahoo.com', N'cl12414')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (1, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (1, 31)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (1, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (1, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (2, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (2, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (2, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (2, 99)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (2, 123)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (3, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (3, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (3, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (3, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (4, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (4, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (4, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (4, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (4, 44)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (5, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (5, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (5, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (5, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (5, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (5, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (6, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (6, 31)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (6, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (6, 337)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (7, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (7, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (7, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (7, 99)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (7, 124)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (8, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (8, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (8, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (8, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (9, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (9, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (9, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (9, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (10, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (10, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (10, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (10, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (10, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (10, 35)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (11, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (11, 31)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (11, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (11, 338)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (12, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (12, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (12, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (12, 99)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (12, 125)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (13, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (13, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (13, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (13, 90)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (14, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (14, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (14, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (14, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (14, 46)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (15, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (15, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (15, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (15, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (15, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (15, 36)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (16, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (16, 31)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (16, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (16, 339)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (17, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (17, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (17, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (17, 99)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (17, 126)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (18, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (18, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (18, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (18, 91)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (19, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (19, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (19, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (19, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (19, 47)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (20, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (20, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (20, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (20, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (20, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (20, 37)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (21, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (21, 31)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (21, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (21, 340)
GO
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (22, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (22, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (22, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (22, 99)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (22, 127)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (23, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (23, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (23, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (24, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (24, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (24, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (24, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (24, 48)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (25, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (25, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (25, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (25, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (25, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (25, 38)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (26, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (26, 31)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (26, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (26, 341)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (27, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (27, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (27, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (27, 99)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (27, 128)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (28, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (28, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (28, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (28, 93)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (29, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (29, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (29, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (29, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (29, 49)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (30, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (30, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (30, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (30, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (30, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (30, 39)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (31, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (31, 31)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (31, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (31, 342)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (32, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (32, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (32, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (32, 99)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (32, 129)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (33, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (33, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (33, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (33, 94)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (34, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (34, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (34, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (34, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (34, 50)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (35, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (35, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (35, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (35, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (35, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (35, 40)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (36, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (36, 31)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (36, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (36, 343)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (37, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (37, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (37, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (37, 99)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (37, 130)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (38, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (38, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (38, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (38, 95)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (39, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (39, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (39, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (39, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (39, 51)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (40, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (40, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (40, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (40, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (40, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (40, 41)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (41, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (41, 31)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (41, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (41, 344)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (42, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (42, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (42, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (42, 99)
GO
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (42, 131)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (43, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (43, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (43, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (43, 96)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (44, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (44, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (44, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (44, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (44, 52)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (45, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (45, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (45, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (45, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (45, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (45, 42)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (46, 34)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (46, 31)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (46, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (46, 345)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (47, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (47, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (47, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (47, 99)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (47, 132)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (48, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (48, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (48, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (48, 97)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (49, 92)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (49, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (49, 57)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (49, 88)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (49, 53)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (50, 98)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (50, 45)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (50, 89)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (50, 353)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (50, 336)
INSERT [dbo].[OrderOfService] ([IDOrders], [IDService]) VALUES (50, 43)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (1, 4546252612032022, CAST(N'2022-03-12' AS Date), CAST(N'09:10:00' AS Time), 45462526, N'Новая', NULL, 120)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (2, 4546252713032022, CAST(N'2022-03-13' AS Date), CAST(N'10:10:00' AS Time), 45462527, N'В прокате', NULL, 600)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (3, 4546252814032022, CAST(N'2022-03-14' AS Date), CAST(N'11:10:00' AS Time), 45462528, N'В прокате', NULL, 120)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (4, 4546252915032022, CAST(N'2022-03-15' AS Date), CAST(N'12:10:00' AS Time), 45462529, N'Новая', NULL, 600)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (5, 4546253016032022, CAST(N'2022-03-16' AS Date), CAST(N'13:10:00' AS Time), 45462530, N'Закрыта', CAST(N'2022-04-16' AS Date), 320)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (6, 4546253117032022, CAST(N'2022-03-17' AS Date), CAST(N'14:10:00' AS Time), 45462531, N'Новая', NULL, 480)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (7, 4546253218032022, CAST(N'2022-03-18' AS Date), CAST(N'15:10:00' AS Time), 45462532, N'Новая', NULL, 240)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (8, 4546253319032022, CAST(N'2022-03-19' AS Date), CAST(N'16:10:00' AS Time), 45462533, N'В прокате', NULL, 360)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (9, 4546253420032022, CAST(N'2022-03-20' AS Date), CAST(N'10:00:00' AS Time), 45462534, N'В прокате', NULL, 720)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (10, 4546253521032022, CAST(N'2022-03-21' AS Date), CAST(N'11:00:00' AS Time), 45462535, N'Новая', NULL, 120)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (11, 4546253622032022, CAST(N'2022-03-22' AS Date), CAST(N'12:00:00' AS Time), 45462536, N'Закрыта', CAST(N'2022-03-22' AS Date), 720)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (12, 4546253723032022, CAST(N'2022-03-23' AS Date), CAST(N'13:00:00' AS Time), 45462537, N'В прокате', NULL, 120)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (13, 4546253824032022, CAST(N'2022-03-24' AS Date), CAST(N'14:00:00' AS Time), 45462538, N'В прокате', NULL, 600)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (14, 4546253925032022, CAST(N'2022-03-25' AS Date), CAST(N'15:00:00' AS Time), 45462539, N'В прокате', NULL, 320)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (15, 4546254026032022, CAST(N'2022-03-26' AS Date), CAST(N'16:00:00' AS Time), 45462540, N'Закрыта', CAST(N'2022-04-26' AS Date), 480)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (16, 4546254127032022, CAST(N'2022-03-27' AS Date), CAST(N'17:00:00' AS Time), 45462541, N'Новая', NULL, 240)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (17, 4546254228032022, CAST(N'2022-03-28' AS Date), CAST(N'18:00:00' AS Time), 45462542, N'В прокате', NULL, 360)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (18, 4546254329032022, CAST(N'2022-03-29' AS Date), CAST(N'19:00:00' AS Time), 45462543, N'В прокате', NULL, 720)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (19, 4546254430032022, CAST(N'2022-03-30' AS Date), CAST(N'12:30:00' AS Time), 45462544, N'Новая', NULL, 120)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (20, 4546254531032022, CAST(N'2022-03-31' AS Date), CAST(N'13:30:00' AS Time), 45462545, N'Новая', NULL, 600)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (21, 4546254601042022, CAST(N'2022-04-01' AS Date), CAST(N'14:30:00' AS Time), 45462546, N'Закрыта', CAST(N'2022-04-01' AS Date), 120)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (22, 4546254702042022, CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 45462547, N'Новая', NULL, 600)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (23, 4546254803042022, CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 45462548, N'Новая', NULL, 320)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (24, 4546254904042022, CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462549, N'В прокате', NULL, 480)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (25, 4546255005042022, CAST(N'2022-04-05' AS Date), CAST(N'18:30:00' AS Time), 45462550, N'В прокате', NULL, 240)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (26, 4546255106042022, CAST(N'2022-04-06' AS Date), CAST(N'15:30:00' AS Time), 45462551, N'В прокате', NULL, 360)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (27, 4546255207042022, CAST(N'2022-04-07' AS Date), CAST(N'16:30:00' AS Time), 45462552, N'В прокате', NULL, 720)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (28, 4546255308042022, CAST(N'2022-04-08' AS Date), CAST(N'17:30:00' AS Time), 45462553, N'Закрыта', CAST(N'2022-04-08' AS Date), 120)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (29, 4546255409042022, CAST(N'2022-04-09' AS Date), CAST(N'18:30:00' AS Time), 45462554, N'Новая', NULL, 600)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (30, 4546255510042022, CAST(N'2022-04-10' AS Date), CAST(N'19:30:00' AS Time), 45462555, N'В прокате', NULL, 120)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (31, 4546255611042022, CAST(N'2022-04-11' AS Date), CAST(N'10:30:00' AS Time), 45462556, N'В прокате', NULL, 600)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (32, 4546255712042022, CAST(N'2022-04-12' AS Date), CAST(N'11:30:00' AS Time), 45462557, N'Новая', NULL, 320)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (33, 4546255813042022, CAST(N'2022-04-13' AS Date), CAST(N'12:30:00' AS Time), 45462558, N'Новая', NULL, 480)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (34, 4546255914042022, CAST(N'2022-04-14' AS Date), CAST(N'13:30:00' AS Time), 45462559, N'Новая', NULL, 240)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (35, 4546256015042022, CAST(N'2022-04-15' AS Date), CAST(N'14:30:00' AS Time), 45462560, N'В прокате', NULL, 360)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (36, 4546256102042022, CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 45462561, N'В прокате', NULL, 720)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (37, 4546256203042022, CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 45462562, N'В прокате', NULL, 120)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (38, 4546256304042022, CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462563, N'Закрыта', CAST(N'2022-04-04' AS Date), 600)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (39, 4546256405042022, CAST(N'2022-04-05' AS Date), CAST(N'10:15:00' AS Time), 45462564, N'В прокате', NULL, 120)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (40, 4546256506042022, CAST(N'2022-04-06' AS Date), CAST(N'11:15:00' AS Time), 45462565, N'Новая', NULL, 600)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (41, 4546256607042022, CAST(N'2022-04-07' AS Date), CAST(N'12:15:00' AS Time), 45462566, N'Закрыта', CAST(N'2022-04-07' AS Date), 320)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (42, 4546256708042022, CAST(N'2022-04-08' AS Date), CAST(N'13:15:00' AS Time), 45462567, N'В прокате', NULL, 480)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (43, 4546256809042022, CAST(N'2022-04-09' AS Date), CAST(N'14:15:00' AS Time), 45462568, N'В прокате', NULL, 240)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (44, 4546256901042022, CAST(N'2022-04-01' AS Date), CAST(N'15:15:00' AS Time), 45462569, N'В прокате', NULL, 360)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (45, 4546257002042022, CAST(N'2022-04-02' AS Date), CAST(N'16:15:00' AS Time), 45462570, N'В прокате', NULL, 720)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (46, 4546257103042022, CAST(N'2022-04-03' AS Date), CAST(N'10:45:00' AS Time), 45462571, N'В прокате', NULL, 480)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (47, 4546257204042022, CAST(N'2022-04-04' AS Date), CAST(N'11:45:00' AS Time), 45462572, N'Закрыта', CAST(N'2022-04-04' AS Date), 320)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (48, 4546257305042022, CAST(N'2022-04-05' AS Date), CAST(N'12:45:00' AS Time), 45462573, N'Новая', NULL, 480)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (49, 4546257406042022, CAST(N'2022-04-06' AS Date), CAST(N'13:45:00' AS Time), 45462574, N'Новая', NULL, 240)
INSERT [dbo].[Orders] ([ID], [IdOrders], [DataCreate], [TimeOrder], [IdClient], [Status], [DateClose], [RentalTime]) VALUES (50, 4546257507042022, CAST(N'2022-04-07' AS Date), CAST(N'14:45:00' AS Time), 45462575, N'Новая', NULL, 360)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ID], [Role]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([ID], [Role]) VALUES (2, N'Старший смены')
INSERT [dbo].[Roles] ([ID], [Role]) VALUES (3, N'Продавец')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (31, N'Прокат сноуборда', N'JUR8R', 1200.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (34, N'Прокат обуви для сноуборда', N'JKFBJ09', 400.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (44, N'Прокат коньков', N'DHBGFY563', 450.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (45, N'Прокат защитных подушек для сноубордистов', N'JFH7382', 300.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (57, N'Подъем на 1 уровень', N'JHVSJF6', 300.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (88, N'Подъем на 2  уровень', N'DJHGBS982', 700.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (89, N'Прокат очков для лыжников', N'OIJNB12', 150.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (92, N'Прокат санок', N'HJBUJE21J', 300.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (98, N'Прокат шлема', N'63748HF', 300.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (99, N'Прокат вартушки', N'BSFBHV63', 100.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (123, N'Подъем на 3 уровень', N'638VVNQ3', 1200.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (336, N'Прокат лыж', N'8HFJHG443', 800.0000)
INSERT [dbo].[Services] ([ID], [Name], [Code], [Price]) VALUES (353, N'Прокат лыжных палок', N'87FDJKHJ', 100.0000)
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([ID], [Post], [Surname], [Firstname], [Middlename], [Login], [Password], [LastVisit], [isVisit], [Image]) VALUES (101, 3, N'Иванов', N'Иван', N'Иванович', N'Ivanov@namecomp.ru', N'2L6KZG', CAST(N'2022-05-15T13:13:00.000' AS DateTime), N'Успешно', N'\DemoEgsamen\Staff pictures\Иванов.jpeg')
INSERT [dbo].[Staff] ([ID], [Post], [Surname], [Firstname], [Middlename], [Login], [Password], [LastVisit], [isVisit], [Image]) VALUES (102, 3, N'Петров', N'Петр', N'Петрович', N'petrov@namecomp.ru', N'uzWC67', CAST(N'2022-05-15T13:13:00.000' AS DateTime), N'Успешно', N'\DemoEgsamen\Staff pictures\Петров.jpeg')
INSERT [dbo].[Staff] ([ID], [Post], [Surname], [Firstname], [Middlename], [Login], [Password], [LastVisit], [isVisit], [Image]) VALUES (103, 1, N'Федоров', N'Федор', N'Федорович', N'fedorov@namecomp.ru', N'8ntwUp', CAST(N'2022-05-16T13:13:00.000' AS DateTime), N'Успешно', N'\DemoEgsamen\Staff pictures\Федоров.jpeg')
INSERT [dbo].[Staff] ([ID], [Post], [Surname], [Firstname], [Middlename], [Login], [Password], [LastVisit], [isVisit], [Image]) VALUES (104, 2, N'Миронов', N'Вениамин', N'Куприянович', N'mironov@namecomp.ru', N'YOyhfR1', CAST(N'2022-05-17T13:13:00.000' AS DateTime), N'Успешно', N'\DemoEgsamen\Staff pictures\Миронов.jpeg')
INSERT [dbo].[Staff] ([ID], [Post], [Surname], [Firstname], [Middlename], [Login], [Password], [LastVisit], [isVisit], [Image]) VALUES (105, 2, N'Ширяев', N'Ермолай', N'Вениаминович', N'shiryev@namecomp.ru', N'RSbvHv', CAST(N'2022-05-18T13:13:00.000' AS DateTime), N'Неуспешно', N'\DemoEgsamen\Staff pictures\Ширяев.jpeg')
INSERT [dbo].[Staff] ([ID], [Post], [Surname], [Firstname], [Middlename], [Login], [Password], [LastVisit], [isVisit], [Image]) VALUES (106, 2, N'Игнатов', N'Кассиан', N'Васильевич', N'ignatov@namecomp.ru', N'rwVDh9', CAST(N'2022-05-19T13:13:00.000' AS DateTime), N'Успешно', N'\DemoEgsamen\Staff pictures\игнатов.jpg')
INSERT [dbo].[Staff] ([ID], [Post], [Surname], [Firstname], [Middlename], [Login], [Password], [LastVisit], [isVisit], [Image]) VALUES (107, 3, N'Хохлов', N'Владимир', N'Мэлсович', N'hohlov@namecomp.ru', N'LdNyos', CAST(N'2022-05-20T13:13:00.000' AS DateTime), N'Успешно', N'\DemoEgsamen\Staff pictures\Хохлов.jpeg')
INSERT [dbo].[Staff] ([ID], [Post], [Surname], [Firstname], [Middlename], [Login], [Password], [LastVisit], [isVisit], [Image]) VALUES (108, 3, N'Стрелков', N'Мстислав', N'Георгьевич', N'strelkov@namecomp.ru', N'gynQMT', CAST(N'2022-05-21T13:13:00.000' AS DateTime), N'Неуспешно', N'\DemoEgsamen\Staff pictures\Стрелков.jpeg')
INSERT [dbo].[Staff] ([ID], [Post], [Surname], [Firstname], [Middlename], [Login], [Password], [LastVisit], [isVisit], [Image]) VALUES (109, 3, N'Беляева', N'Лилия', N'Наумовна', N'belyeva@@namecomp.ru', N'AtnDjr', CAST(N'2022-05-22T13:13:00.000' AS DateTime), N'Успешно', N'\DemoEgsamen\Staff pictures\Беляева.jpeg')
INSERT [dbo].[Staff] ([ID], [Post], [Surname], [Firstname], [Middlename], [Login], [Password], [LastVisit], [isVisit], [Image]) VALUES (110, 3, N'Смирнова', N'Ульяна', N'Гордеевна', N'smirnova@@namecomp.ru', N'JlFRCZ', CAST(N'2022-05-23T13:13:00.000' AS DateTime), N'Успешно', N'\DemoEgsamen\Staff pictures\Смирнова.jpeg')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
ALTER TABLE [dbo].[OrderOfService]  WITH CHECK ADD  CONSTRAINT [FK_OrderOfService_Orders] FOREIGN KEY([IDOrders])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderOfService] CHECK CONSTRAINT [FK_OrderOfService_Orders]
GO
ALTER TABLE [dbo].[OrderOfService]  WITH NOCHECK ADD  CONSTRAINT [FK_OrderOfService_Services] FOREIGN KEY([IDService])
REFERENCES [dbo].[Services] ([ID])
GO
ALTER TABLE [dbo].[OrderOfService] CHECK CONSTRAINT [FK_OrderOfService_Services]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Clients] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Clients] ([IdClient])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Clients]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Roles] FOREIGN KEY([Post])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Roles]
GO
