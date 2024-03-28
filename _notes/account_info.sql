USE [SHXT2]
GO

/****** Object:  Table [dbo].[Account_Info]    Script Date: 12/09/2023 10:17:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Account_Info](
	[iid] [bigint] IDENTITY(1,1) NOT NULL,
	[cAccName] [varchar](32) NOT NULL,
	[cPassWord] [varchar](99) NOT NULL,
	[cSecPassword] [varchar](99) NULL,
	[cRealName] [nvarchar](50) NULL,
	[dBirthDay] [datetime] NULL,
	[cArea] [varchar](60) NULL,
	[cIDNum] [varchar](30) NULL,
	[dRegDate] [datetime] NULL,
	[cPhone] [varchar](50) NULL,
	[iClientID] [bigint] NULL,
	[dLoginDate] [varchar](20) NULL,
	[dLogoutDate] [varchar](20) NULL,
	[iTimeCount] [tinyint] NULL,
	[cQuestion] [varchar](250) NULL,
	[cAnswer] [varchar](250) NULL,
	[cSex] [varchar](4) NULL,
	[cDegree] [varchar](16) NULL,
	[cEMail] [varchar](128) NULL,
	[iLock] [int] NULL,
	[gCode] [int] NULL,
	[nMac] [int] NULL,
	[remember_token] [nvarchar](100) NULL,
 CONSTRAINT [PK_Account_Info] PRIMARY KEY CLUSTERED 
(
	[iid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Account_Info] ADD  CONSTRAINT [DF_Account_Info_dRegDate]  DEFAULT (getdate()) FOR [dRegDate]
GO

ALTER TABLE [dbo].[Account_Info] ADD  CONSTRAINT [DF__Account_I__iGame__77BFCB91]  DEFAULT ((0)) FOR [iClientID]
GO

ALTER TABLE [dbo].[Account_Info] ADD  CONSTRAINT [DF_Account_Info_iLock]  DEFAULT ((0)) FOR [iLock]
GO

ALTER TABLE [dbo].[Account_Info] ADD  CONSTRAINT [DF_Account_Info_gCode]  DEFAULT ((0)) FOR [gCode]
GO

-- insert 20 acc 1-20


insert into Account_Info (cAccName, cPassWord, cSecPassword)
values ('1', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('2', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('3', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('4', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('5', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('6', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('7', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('8', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('9', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('10', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('11', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('12', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('13', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('14', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('15', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('16', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('17', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('18', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('19', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('20', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('21', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('22', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('23', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('24', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('25', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('26', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('27', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('28', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('29', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('30', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('31', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('32', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('33', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('34', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('35', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('36', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('37', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('38', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('39', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('40', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('41', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('42', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('43', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('44', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('45', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('46', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('47', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('48', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('49', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('50', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('51', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('52', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('53', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('54', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('55', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('56', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('57', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('58', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('59', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('60', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('61', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('62', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('63', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('64', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('65', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('66', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('67', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('68', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('69', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('70', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('71', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('72', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('73', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('74', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('75', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('76', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('77', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('78', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('79', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('80', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('81', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('82', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('83', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('84', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('85', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('86', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('87', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('88', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('89', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('90', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('91', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('92', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('93', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('94', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('95', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('96', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('97', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('98', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('99', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B'),
('100', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B');

insert into Account_Habitus(cAccName, iFlag, dBeginDate, dEndDate)
values ('1', '0', '2024-01-13', '2025-01-15'),
('2', '0', '2024-01-13', '2025-01-15'),
('3', '0', '2024-01-13', '2025-01-15'),
('4', '0', '2024-01-13', '2025-01-15'),
('5', '0', '2024-01-13', '2025-01-15'),
('6', '0', '2024-01-13', '2025-01-15'),
('7', '0', '2024-01-13', '2025-01-15'),
('8', '0', '2024-01-13', '2025-01-15'),
('9', '0', '2024-01-13', '2025-01-15'),
('10', '0', '2024-01-13', '2025-01-15'),
('11', '0', '2024-01-13', '2025-01-15'),
('12', '0', '2024-01-13', '2025-01-15'),
('13', '0', '2024-01-13', '2025-01-15'),
('14', '0', '2024-01-13', '2025-01-15'),
('15', '0', '2024-01-13', '2025-01-15'),
('16', '0', '2024-01-13', '2025-01-15'),
('17', '0', '2024-01-13', '2025-01-15'),
('18', '0', '2024-01-13', '2025-01-15'),
('19', '0', '2024-01-13', '2025-01-15'),
('20', '0', '2024-01-13', '2025-01-15'),
('21', '0', '2024-01-13', '2025-01-15'),
('22', '0', '2024-01-13', '2025-01-15'),
('23', '0', '2024-01-13', '2025-01-15'),
('24', '0', '2024-01-13', '2025-01-15'),
('25', '0', '2024-01-13', '2025-01-15'),
('26', '0', '2024-01-13', '2025-01-15'),
('27', '0', '2024-01-13', '2025-01-15'),
('28', '0', '2024-01-13', '2025-01-15'),
('29', '0', '2024-01-13', '2025-01-15'),
('30', '0', '2024-01-13', '2025-01-15'),
('31', '0', '2024-01-13', '2025-01-15'),
('32', '0', '2024-01-13', '2025-01-15'),
('33', '0', '2024-01-13', '2025-01-15'),
('34', '0', '2024-01-13', '2025-01-15'),
('35', '0', '2024-01-13', '2025-01-15'),
('36', '0', '2024-01-13', '2025-01-15'),
('37', '0', '2024-01-13', '2025-01-15'),
('38', '0', '2024-01-13', '2025-01-15'),
('39', '0', '2024-01-13', '2025-01-15'),
('40', '0', '2024-01-13', '2025-01-15'),
('41', '0', '2024-01-13', '2025-01-15'),
('42', '0', '2024-01-13', '2025-01-15'),
('43', '0', '2024-01-13', '2025-01-15'),
('44', '0', '2024-01-13', '2025-01-15'),
('45', '0', '2024-01-13', '2025-01-15'),
('46', '0', '2024-01-13', '2025-01-15'),
('47', '0', '2024-01-13', '2025-01-15'),
('48', '0', '2024-01-13', '2025-01-15'),
('49', '0', '2024-01-13', '2025-01-15'),
('50', '0', '2024-01-13', '2025-01-15'),
('51', '0', '2024-01-13', '2025-01-15'),
('52', '0', '2024-01-13', '2025-01-15'),
('53', '0', '2024-01-13', '2025-01-15'),
('54', '0', '2024-01-13', '2025-01-15'),
('55', '0', '2024-01-13', '2025-01-15'),
('56', '0', '2024-01-13', '2025-01-15'),
('57', '0', '2024-01-13', '2025-01-15'),
('58', '0', '2024-01-13', '2025-01-15'),
('59', '0', '2024-01-13', '2025-01-15'),
('60', '0', '2024-01-13', '2025-01-15'),
('61', '0', '2024-01-13', '2025-01-15'),
('62', '0', '2024-01-13', '2025-01-15'),
('63', '0', '2024-01-13', '2025-01-15'),
('64', '0', '2024-01-13', '2025-01-15'),
('65', '0', '2024-01-13', '2025-01-15'),
('66', '0', '2024-01-13', '2025-01-15'),
('67', '0', '2024-01-13', '2025-01-15'),
('68', '0', '2024-01-13', '2025-01-15'),
('69', '0', '2024-01-13', '2025-01-15'),
('70', '0', '2024-01-13', '2025-01-15'),
('71', '0', '2024-01-13', '2025-01-15'),
('72', '0', '2024-01-13', '2025-01-15'),
('73', '0', '2024-01-13', '2025-01-15'),
('74', '0', '2024-01-13', '2025-01-15'),
('75', '0', '2024-01-13', '2025-01-15'),
('76', '0', '2024-01-13', '2025-01-15'),
('77', '0', '2024-01-13', '2025-01-15'),
('78', '0', '2024-01-13', '2025-01-15'),
('79', '0', '2024-01-13', '2025-01-15'),
('80', '0', '2024-01-13', '2025-01-15'),
('81', '0', '2024-01-13', '2025-01-15'),
('82', '0', '2024-01-13', '2025-01-15'),
('83', '0', '2024-01-13', '2025-01-15'),
('84', '0', '2024-01-13', '2025-01-15'),
('85', '0', '2024-01-13', '2025-01-15'),
('86', '0', '2024-01-13', '2025-01-15'),
('87', '0', '2024-01-13', '2025-01-15'),
('88', '0', '2024-01-13', '2025-01-15'),
('89', '0', '2024-01-13', '2025-01-15'),
('90', '0', '2024-01-13', '2025-01-15'),
('91', '0', '2024-01-13', '2025-01-15'),
('92', '0', '2024-01-13', '2025-01-15'),
('93', '0', '2024-01-13', '2025-01-15'),
('94', '0', '2024-01-13', '2025-01-15'),
('95', '0', '2024-01-13', '2025-01-15'),
('96', '0', '2024-01-13', '2025-01-15'),
('97', '0', '2024-01-13', '2025-01-15'),
('98', '0', '2024-01-13', '2025-01-15'),
('99', '0', '2024-01-13', '2025-01-15'),
('100', '0', '2024-01-13', '2025-01-15');



update Account_Habitus set nExtPoint = 2000 
where cAccName in ('tranduy', 'manhkhai', 'gggggg', 'pplinh', 'yyyyyy3', 'quocvietz1', 'phucem1', 'bebaovd1', 'huy8301', 'hoach3', 
'lddyvnvn', 'aaaaa1', 'nminhman', 'viethnc', 'tructruc10', 'vcoinhaem', 'anhtung2020', 'khoaspx', 'lhk365783', 'taitam', 
'ltfjx1', 'hoangsex01', 'dailam1', 'phuchuai1', 'zzzzzz', 'thoqwe2', 'hhhhhh', 'lenhutduy2','zarik0000','riopuppy',
'caubamapz', 'hanghieu01','quan11','tryquet1','ntt156','kublach', 'spynd01vn', 'chuatehungle', 'subeo001', 'vgaming', 
'lusiphong1', 'viettm', 'hanghieu02', 'lekien', 'hoach3', 'candyngocanh1', 'quangtam1', 'phutruongthi1', 'lehang1', 'hongkiet', 
'batcan2', 'anhquang79', 'ruongthui00', 'tieuquy2101','shvoid', 'ngotau184', 'anhthanghocmon', 'quockiet1'
);

update Account_Habitus set nExtPoint = 2000 where cAccName = 'baoduong3';
update Account_Habitus set nExtPoint = 3300 where cAccName = 'phongvan0';
update Account_Habitus set nExtPoint = 5708 where cAccName = 'lddyvnvn';
update Account_Habitus set nExtPoint = 6600 where cAccName = 'nminhman';
update Account_Habitus set nExtPoint = 2012 where cAccName = 'tructruc10';
update Account_Habitus set nExtPoint = 8660 where cAccName = 'vcoinhaem';
update Account_Habitus set nExtPoint = 12560 where cAccName = 'chuatehungle';
update Account_Habitus set nExtPoint = 4704 where cAccName = 'quan11';
update Account_Habitus set nExtPoint = 9175 where cAccName = 'subeo001';
update Account_Habitus set nExtPoint = 2000 where cAccName = 'shvoid';
update Account_Habitus set nExtPoint = 2000 where cAccName = 'ngotau184';
update Account_Habitus set nExtPoint = 2000 where cAccName = 'anhthanghocmon';
update Account_Habitus set nExtPoint = 4370 where cAccName = 'hieukhoi';


insert into payments (cAccName, amount, coin, status, created_at, updated_at)
values
('tranduy', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('anhquang79', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('ruongthui00', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('tieuquy2101', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('manhkhai', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('gggggg', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('pplinh', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('baoduong3', 0, 2125, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('yyyyyy3', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('quocvietz1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('phucem1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('phongvan0', 0, 3300, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('bebaovd1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('huy8301', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('hoach3', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('lddyvnvn', 0, 5708, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('aaaaa1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('nminhman', 0, 6600, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('viethnc', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('tructruc10', 0, 2012, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('vcoinhaem', 0, 8660, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('anhtung2020', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('khoaspx', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('lhk365783', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('taitam', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('ltfjx1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('hoangsex01', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('dailam1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('phuchuai1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('zzzzzz', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('thoqwe2', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('hhhhhh', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('lenhutduy2', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('zarik0000', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('riopuppy', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('caubamapz', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('hanghieu01', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('quan11', 0, 4704, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('tryquet1', 0, 4020, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('ntt156', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('kublach', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('spynd01vn', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('chuatehungle', 0, 12560, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('subeo001', 0, 9175, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('vgaming', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('lusiphong1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('viettm', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('hanghieu02', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('lekien', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('hoach3', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('candyngocanh1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('quangtam1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('phutruongthi1', 0, 2080, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('lehang1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('hongkiet', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('batcan2', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('shvoid', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('ngotau184', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('anhthanghocmon', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('hieukhoi', 0, 4370, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00'),
('quockiet1', 0, 2000, 7, '2024-03-26 17:00:00', '2024-03-26 17:00:00')
;







insert into Account_Info (cAccName, cPassWord, cSecPassword)
values 
('vietlinh1', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh2', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh3', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh4', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh5', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh6', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh7', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh8', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh9', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh10', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh11', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh12', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh13', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh14', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh15', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh16', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh17', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh18', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh19', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410'),
('vietlinh20', '1E191D851B3B49A248F4EA62F6B06410', '1E191D851B3B49A248F4EA62F6B06410');



insert into Account_Habitus(cAccName, iFlag, dBeginDate, dEndDate)
values 
('vietlinh1', '0', '2024-03-24', '2025-01-15'),
('vietlinh2', '0', '2024-03-24', '2025-01-15'),
('vietlinh3', '0', '2024-03-24', '2025-01-15'),
('vietlinh4', '0', '2024-03-24', '2025-01-15'),
('vietlinh5', '0', '2024-03-24', '2025-01-15'),
('vietlinh6', '0', '2024-03-24', '2025-01-15'),
('vietlinh7', '0', '2024-03-24', '2025-01-15'),
('vietlinh8', '0', '2024-03-24', '2025-01-15'),
('vietlinh9', '0', '2024-03-24', '2025-01-15'),
('vietlinh10', '0', '2024-03-24', '2025-01-15'),
('vietlinh11', '0', '2024-03-24', '2025-01-15'),
('vietlinh12', '0', '2024-03-24', '2025-01-15'),
('vietlinh13', '0', '2024-03-24', '2025-01-15'),
('vietlinh14', '0', '2024-03-24', '2025-01-15'),
('vietlinh15', '0', '2024-03-24', '2025-01-15'),
('vietlinh16', '0', '2024-03-24', '2025-01-15'),
('vietlinh17', '0', '2024-03-24', '2025-01-15'),
('vietlinh18', '0', '2024-03-24', '2025-01-15'),
('vietlinh19', '0', '2024-03-24', '2025-01-15'),
('vietlinh20', '0', '2024-03-24', '2025-01-15');