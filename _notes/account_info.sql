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
('20', 'C4CA4238A0B923820DCC509A6F75849B', 'C4CA4238A0B923820DCC509A6F75849B');

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
('20', '0', '2024-01-13', '2025-01-15');


