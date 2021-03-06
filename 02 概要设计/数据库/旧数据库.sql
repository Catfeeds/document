USE [udoDB_FS]
GO
/****** Object:  Table [dbo].[DeviceRepair]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeviceRepair](
	[SeqId] [numeric](18, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[thisdate] [datetime] NOT NULL,
	[content] [varchar](256) NULL,
	[Address] [varchar](32) NULL,
	[oprator] [varchar](32) NULL,
	[commen] [varchar](256) NULL,
	[DocTime] [datetime] NULL,
	[thistype] [varchar](32) NULL,
	[symptom] [varchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeviceMaintain]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeviceMaintain](
	[SeqId] [numeric](18, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[thisdate] [datetime] NOT NULL,
	[content] [varchar](256) NULL,
	[DEPT_CODE] [varchar](32) NULL,
	[DEPT_NAME] [varchar](128) NULL,
	[oprator] [varchar](32) NULL,
	[commen] [varchar](256) NULL,
	[DocTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeviceInUse]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeviceInUse](
	[SeqId] [numeric](18, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[thisdate] [datetime] NOT NULL,
	[InUseAddress] [varchar](32) NULL,
	[Purpose] [varchar](256) NULL,
	[StartTime] [varchar](64) NULL,
	[EndTime] [varchar](64) NULL,
	[InUseStatus] [varchar](256) NULL,
	[oprator] [varchar](32) NULL,
	[commen] [varchar](256) NULL,
	[DocTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeptWh]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeptWh](
	[DEPT_CODE] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NOT NULL,
 CONSTRAINT [PK__DeptWh] PRIMARY KEY CLUSTERED 
(
	[DEPT_CODE] ASC,
	[WAREHOUSE_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeptUser]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeptUser](
	[DEPT_CODE] [varchar](32) NOT NULL,
	[User_ID] [varchar](32) NOT NULL,
 CONSTRAINT [PK__DeptUser] PRIMARY KEY CLUSTERED 
(
	[DEPT_CODE] ASC,
	[User_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeptPriceRole]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeptPriceRole](
	[RoleID] [varchar](32) NOT NULL,
	[RoleName] [varchar](64) NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[isLunar] [int] NULL,
	[isMemDay] [int] NULL,
	[MemDayID] [int] NULL,
	[CustType] [varchar](32) NOT NULL,
	[ComType] [varchar](32) NOT NULL,
	[PriceType] [varchar](32) NOT NULL,
	[PriceRate] [numeric](18, 2) NULL,
	[isRegScore] [int] NULL,
	[ScoreRate] [numeric](18, 2) NULL,
	[isStop] [int] NULL,
	[seqNo] [int] NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeptComPrice]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeptComPrice](
	[DeptCode] [varchar](32) NOT NULL,
	[ComID] [varchar](128) NOT NULL,
	[retailPrice] [numeric](18, 4) NULL,
	[memPrice] [numeric](18, 4) NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeptComBtPrice]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeptComBtPrice](
	[DeptCode] [varchar](32) NOT NULL,
	[ComID] [varchar](128) NOT NULL,
	[btPrice] [numeric](18, 4) NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[DEPT_CODE] [varchar](32) NOT NULL,
	[DEPT_NAME] [varchar](128) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[AcCode] [varchar](32) NULL,
	[haveAccount] [int] NULL,
	[Manager] [varchar](32) NULL,
	[Telephone] [varchar](32) NULL,
	[Address] [varchar](128) NULL,
	[commen] [varchar](256) NULL,
	[isBase] [varchar](32) NULL,
	[ORG_CODE] [varchar](32) NULL,
	[stLicScope] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[DEPT_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustVisit]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustVisit](
	[SeqId] [varchar](32) NOT NULL,
	[thisdate] [datetime] NULL,
	[EmpName] [varchar](64) NULL,
	[CustName] [varchar](64) NULL,
	[Contactor] [varchar](32) NULL,
	[content] [varchar](2000) NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerTarget]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerTarget](
	[Account] [varchar](32) NOT NULL,
	[MyName] [varchar](128) NOT NULL,
	[FindName] [varchar](64) NULL,
	[Manager] [varchar](32) NULL,
	[Address] [varchar](256) NULL,
	[Contact] [varchar](128) NULL,
	[CreditLevel] [varchar](32) NULL,
	[CreditValue] [numeric](12, 2) NULL,
	[RegDate] [datetime] NULL,
	[PriceType] [varchar](32) NULL,
	[CustCatID] [varchar](32) NULL,
	[AreaCatID] [varchar](32) NULL,
	[ArAmount] [numeric](18, 2) NULL,
	[Commen] [varchar](128) NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustCategory]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustCategory](
	[CustCatID] [varchar](32) NOT NULL,
	[CustCatNAME] [varchar](24) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
	[LimitExpDate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustCatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComTemplateUser]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComTemplateUser](
	[TempLateId] [varchar](32) NOT NULL,
	[User_ID] [varchar](32) NOT NULL,
 CONSTRAINT [PK__ComTemplateUser] PRIMARY KEY CLUSTERED 
(
	[TempLateId] ASC,
	[User_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComTemplateDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComTemplateDetail](
	[TempLateId] [varchar](32) NOT NULL,
	[Comid] [varchar](32) NOT NULL,
	[btPrice] [numeric](18, 4) NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComTemplate]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComTemplate](
	[TempLateId] [varchar](32) NOT NULL,
	[TempLateName] [varchar](64) NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[TempLateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComStoreLocation]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComStoreLocation](
	[WarehouseCode] [varchar](32) NOT NULL,
	[ComID] [varchar](128) NOT NULL,
	[LocID] [varchar](32) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FirstVendor]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FirstVendor](
	[Billno] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[MyName] [varchar](128) NOT NULL,
	[FindName] [varchar](64) NULL,
	[Manager] [varchar](128) NULL,
	[Address] [varchar](256) NULL,
	[Contact] [varchar](128) NULL,
	[VendorCatID] [varchar](32) NOT NULL,
	[commen] [varchar](400) NULL,
	[DocStatus] [int] NOT NULL,
	[Audit] [int] NULL,
	[INUSE] [numeric](1, 0) NOT NULL,
	[fax] [varchar](32) NULL,
	[comCatelog] [varchar](256) NULL,
	[busiLicEntName] [varchar](256) NULL,
	[businessLicense] [varchar](256) NULL,
	[busiLicExp] [datetime] NULL,
	[busiLicPerson] [varchar](32) NULL,
	[busiLicIssue] [varchar](128) NULL,
	[busiLicIssueDate] [datetime] NULL,
	[businessScope] [varchar](800) NULL,
	[QscNo] [varchar](32) NULL,
	[QscExp] [datetime] NULL,
	[QscScope] [varchar](256) NULL,
	[licenceName] [varchar](128) NULL,
	[licencePerson] [varchar](32) NULL,
	[licence] [varchar](128) NULL,
	[licenceExp] [datetime] NULL,
	[licenceIssue] [varchar](128) NULL,
	[licenceIssueDate] [datetime] NULL,
	[licenceScope] [varchar](800) NULL,
	[filesNeed] [varchar](256) NULL,
	[applyReason] [varchar](32) NULL,
	[PurchasePerson] [varchar](32) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseRemark] [varchar](256) NULL,
	[investigationPerson] [varchar](32) NULL,
	[investigationDate] [datetime] NULL,
	[investigationRemark] [varchar](256) NULL,
	[checkPerson] [varchar](32) NULL,
	[checkDate] [datetime] NULL,
	[checkRemark] [varchar](256) NULL,
	[QcManager] [varchar](32) NULL,
	[QcCheckDate] [datetime] NULL,
	[QcCheckRemark] [varchar](256) NULL,
	[viceManager] [varchar](32) NULL,
	[vmCheckDate] [datetime] NULL,
	[vmCheckRemark] [varchar](256) NULL,
	[zip] [varchar](6) NULL,
	[telephone] [varchar](64) NULL,
	[catName] [varchar](128) NULL,
	[applyPerson] [varchar](32) NULL,
	[OfficeAddress] [varchar](128) NULL,
	[Phone] [varchar](128) NULL,
	[AccntBank] [varchar](128) NULL,
	[AccntNo] [varchar](32) NULL,
	[TaxNo] [varchar](32) NULL,
	[busiLicNj] [datetime] NULL,
	[GmpNo] [varchar](32) NULL,
	[GmpExp] [datetime] NULL,
	[GspNo] [varchar](32) NULL,
	[GspExp] [datetime] NULL,
	[ZbxyExp] [datetime] NULL,
	[OrgCode] [varchar](128) NULL,
	[OrgCodeExp] [datetime] NULL,
	[OrgCodeNj] [datetime] NULL,
	[AuthLetter] [varchar](256) NULL,
	[AuthLetterDate] [datetime] NULL,
	[AuthLetterExp] [datetime] NULL,
	[AuthLetterScope] [varchar](800) NULL,
	[SalesMan] [varchar](32) NULL,
	[SalesManID] [varchar](32) NULL,
	[SalesManTel] [varchar](32) NULL,
	[AuthCom] [varchar](256) NULL,
	[stLicScope] [varchar](256) NULL,
	[supAccount] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[Billno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FirstCustomer]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FirstCustomer](
	[Billno] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocStatus] [int] NOT NULL,
	[Audit] [int] NULL,
	[INUSE] [numeric](1, 0) NOT NULL,
	[MyName] [varchar](128) NOT NULL,
	[FindName] [varchar](64) NULL,
	[Manager] [varchar](128) NULL,
	[Address] [varchar](256) NULL,
	[Contact] [varchar](128) NULL,
	[CustCatID] [varchar](32) NOT NULL,
	[commen] [varchar](400) NULL,
	[fax] [varchar](32) NULL,
	[busiLicEntName] [varchar](256) NULL,
	[businessLicense] [varchar](256) NULL,
	[busiLicExp] [datetime] NULL,
	[busiLicPerson] [varchar](32) NULL,
	[busiLicIssue] [varchar](128) NULL,
	[busiLicIssueDate] [datetime] NULL,
	[businessScope] [varchar](800) NULL,
	[QscNo] [varchar](32) NULL,
	[QscExp] [datetime] NULL,
	[QscScope] [varchar](256) NULL,
	[licenceName] [varchar](128) NULL,
	[licencePerson] [varchar](32) NULL,
	[licence] [varchar](128) NULL,
	[licenceExp] [datetime] NULL,
	[licenceIssue] [varchar](128) NULL,
	[licenceIssueDate] [datetime] NULL,
	[licenceScope] [varchar](800) NULL,
	[filesNeed] [varchar](256) NULL,
	[applyReason] [varchar](32) NULL,
	[SalesPerson] [varchar](32) NULL,
	[SalesDate] [datetime] NULL,
	[SalesRemark] [varchar](256) NULL,
	[QcManager] [varchar](32) NULL,
	[QcCheckDate] [datetime] NULL,
	[QcCheckRemark] [varchar](256) NULL,
	[viceManager] [varchar](32) NULL,
	[vmCheckDate] [datetime] NULL,
	[vmCheckRemark] [varchar](256) NULL,
	[zip] [varchar](6) NULL,
	[telephone] [varchar](64) NULL,
	[catName] [varchar](128) NULL,
	[applyPerson] [varchar](32) NULL,
	[stLicScope] [varchar](256) NULL,
	[province] [varchar](64) NULL,
	[city] [varchar](64) NULL,
	[county] [varchar](64) NULL,
	[custAccount] [varchar](32) NULL,
	[Mobile] [varchar](32) NULL,
	[AuthLetter] [varchar](32) NULL,
	[AuthLetterDate] [datetime] NULL,
	[AuthLetterExp] [datetime] NULL,
	[AuthLetterScope] [varchar](32) NULL,
	[Receiver] [varchar](32) NULL,
	[ReceiverID] [varchar](32) NULL,
	[ReceiverTel] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[Billno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FileManage]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileManage](
	[seq_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[refTable] [varchar](32) NOT NULL,
	[refKey] [varchar](32) NOT NULL,
	[refFileKey] [varchar](32) NOT NULL,
	[oFileName] [varchar](128) NULL,
	[fText] [image] NULL,
	[thisdate] [datetime] NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[expenseCategory]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[expenseCategory](
	[expenseCatID] [varchar](32) NOT NULL,
	[expenseCatNAME] [varchar](24) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[expenseCatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eventlog]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eventlog](
	[seq_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[userID] [varchar](32) NULL,
	[userName] [varchar](32) NULL,
	[logip] [varchar](128) NULL,
	[logTime] [datetime] NOT NULL,
	[logText] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeTraining]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeTraining](
	[SeqId] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[TrainingDate] [datetime] NOT NULL,
	[TrainingTitle] [varchar](128) NULL,
	[TrainingPeriod] [varchar](256) NULL,
	[TrainingMode] [varchar](32) NULL,
	[CheckMode] [varchar](256) NULL,
	[CheckScore] [varchar](32) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeCheckAbnormal]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeCheckAbnormal](
	[SeqId] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[Reason] [varchar](256) NULL,
	[HrPerson] [varchar](32) NULL,
	[HrDate] [datetime] NULL,
	[HrRemark] [varchar](256) NULL,
	[DeptManager] [varchar](32) NULL,
	[DeptCheckDate] [datetime] NULL,
	[DeptCheckRemark] [varchar](256) NULL,
	[viceManager] [varchar](32) NULL,
	[vmCheckDate] [datetime] NULL,
	[vmCheckRemark] [varchar](256) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeCheck]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeCheck](
	[SeqId] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[CheckDate] [datetime] NOT NULL,
	[CheckUnit] [varchar](128) NULL,
	[CheckItem] [varchar](256) NULL,
	[CheckResult] [varchar](32) NULL,
	[measure] [varchar](256) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LeaveRecord]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LeaveRecord](
	[seqNo] [int] NOT NULL,
	[thisDate] [datetime] NOT NULL,
	[empCode] [varchar](32) NOT NULL,
	[beginTime] [varchar](32) NOT NULL,
	[endTime] [varchar](32) NOT NULL,
	[myID] [varchar](32) NULL,
	[reason] [varchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[seqNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KeyComConfirm]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KeyComConfirm](
	[SeqNo] [numeric](18, 0) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[EndDate] [datetime] NULL,
	[Reason] [varchar](128) NULL,
	[Person] [varchar](32) NULL,
	[InspRemark] [varchar](128) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[invtype_user]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[invtype_user](
	[invtype_code] [varchar](32) NOT NULL,
	[USER_ID] [varchar](128) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[inventory_type]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[inventory_type](
	[invtype_code] [varchar](32) NOT NULL,
	[invtype_name] [varchar](48) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[invtype_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FuncOperation]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FuncOperation](
	[FnMenuID] [varchar](32) NULL,
	[oprName] [varchar](256) NULL,
	[cName] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FuncField]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FuncField](
	[FnMenuID] [varchar](32) NULL,
	[tbName] [varchar](256) NULL,
	[fldName] [varchar](256) NULL,
	[cName] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FuncAuthApply]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FuncAuthApply](
	[SeqId] [varchar](32) NOT NULL,
	[thisdate] [datetime] NOT NULL,
	[content] [varchar](1000) NOT NULL,
	[reason] [varchar](128) NULL,
	[commen] [varchar](800) NULL,
	[docperson] [varchar](32) NULL,
	[applier] [varchar](32) NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[inspperson] [varchar](32) NULL,
	[inspremark] [varchar](256) NULL,
	[inspdate] [datetime] NULL,
	[ItDeptPerson] [varchar](32) NULL,
	[ItDeptDate] [datetime] NULL,
	[ItDeptRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[doctime] [datetime] NULL,
	[postion] [varchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HumitureRecord]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HumitureRecord](
	[SeqNo] [numeric](18, 0) NOT NULL,
	[thisdate] [datetime] NOT NULL,
	[hmID] [varchar](32) NOT NULL,
	[hmNAME] [varchar](32) NULL,
	[whCode] [varchar](32) NULL,
	[whName] [varchar](32) NULL,
	[temperature] [numeric](18, 2) NOT NULL,
	[Humidity] [numeric](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[history_PriceRoleD]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[history_PriceRoleD](
	[PRID] [numeric](9, 0) NOT NULL,
	[CustType] [varchar](32) NOT NULL,
	[ComType] [varchar](32) NOT NULL,
	[PriceType] [numeric](9, 0) NULL,
	[CalWay] [int] NULL,
	[PriceRate] [numeric](9, 2) NULL,
	[MODIFY_PERSON] [varchar](128) NULL,
	[MODIFY_DATE] [datetime] NULL,
	[modify_person_id] [numeric](4, 0) NULL,
	[Description] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HadSoftware]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HadSoftware](
	[COMID] [varchar](32) NOT NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[ORIGIN] [varchar](80) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[inuseDate] [datetime] NULL,
	[DEPT_CODE] [varchar](32) NULL,
	[DEPT_NAME] [varchar](128) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[COMID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GspMedRecall]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GspMedRecall](
	[SeqId] [varchar](32) NOT NULL,
	[comid] [varchar](32) NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[ORIGIN] [varchar](80) NULL,
	[COMINDEX] [varchar](64) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[UNIT] [varchar](8) NULL,
	[batchno] [varchar](32) NULL,
	[prodate] [datetime] NULL,
	[validity] [datetime] NULL,
	[thisdate] [datetime] NULL,
	[quantity] [numeric](18, 2) NULL,
	[reason] [varchar](256) NULL,
	[commen] [varchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GspDocTemplate]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GspDocTemplate](
	[SeqId] [varchar](32) NOT NULL,
	[title] [varchar](128) NULL,
	[thistype] [varchar](64) NULL,
	[commen] [varchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GspComplaints]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GspComplaints](
	[SeqId] [varchar](32) NOT NULL,
	[comid] [varchar](32) NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[ORIGIN] [varchar](80) NULL,
	[COMINDEX] [varchar](64) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[UNIT] [varchar](8) NULL,
	[MedType] [varchar](32) NULL,
	[batchno] [varchar](32) NULL,
	[prodate] [datetime] NULL,
	[validity] [datetime] NULL,
	[thisdate] [datetime] NULL,
	[quantity] [numeric](18, 2) NULL,
	[complainant] [varchar](64) NULL,
	[complainantTel] [varchar](64) NULL,
	[complainantRemark] [varchar](256) NULL,
	[inquiryRemark] [varchar](256) NULL,
	[InspCheckRemark] [varchar](256) NULL,
	[result] [varchar](400) NULL,
	[commen] [varchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GspCheckItem]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GspCheckItem](
	[SeqID] [varchar](32) NOT NULL,
	[SeqNo] [varchar](32) NULL,
	[ItemName] [varchar](256) NULL,
	[CheckPoints] [varchar](256) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetOnehzpym]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_GetOnehzpym]( @hzpym varchar(128))
returns varchar(128)
as
begin
   declare @return varchar(2),@hanzi varchar(200),@pinyin varchar(200)
   declare @counter int

   set @hanzi = '吖八嚓哒屙发钆铪丌咔垃妈拿噢趴七蚺仨他哇夕丫匝'
   set @pinyin = 'abcdefghjklmnopqrstwxyz'
   
   select  @counter = 23
   while @counter <=23
   begin 
       if @hzpym >= substring(@hanzi,@counter,1)
       begin
          select @return = substring(@pinyin,@counter ,1)
          return @return
       end
       select @counter = @counter - 1
   end 
   return @return
end
GO
/****** Object:  Table [dbo].[GspCheck]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GspCheck](
	[BillNo] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[Commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GspBadReaction]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GspBadReaction](
	[seqid] [varchar](32) NOT NULL,
	[thisdate] [datetime] NULL,
	[patientname] [varchar](32) NULL,
	[sex] [varchar](32) NULL,
	[birthday] [datetime] NULL,
	[nation] [varchar](30) NULL,
	[avoirdupois] [varchar](32) NULL,
	[case_no] [varchar](32) NULL,
	[address] [varchar](80) NULL,
	[telephone] [varchar](64) NULL,
	[origin_illness] [varchar](30) NULL,
	[bad_reaction_name] [varchar](40) NULL,
	[bad_reaction_time] [datetime] NULL,
	[nation_bad_reaction] [varchar](32) NULL,
	[history_bad_reaction] [varchar](32) NULL,
	[bad_reaction] [varchar](400) NULL,
	[deal_with] [varchar](300) NULL,
	[result] [varchar](256) NULL,
	[affect] [varchar](256) NULL,
	[prov_adr_opinion] [varchar](32) NULL,
	[nation_adr_opinion] [varchar](32) NULL,
	[comname] [varchar](128) NULL,
	[origin] [varchar](64) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[UNIT] [varchar](8) NULL,
	[batch_no] [varchar](32) NULL,
	[pro_date] [datetime] NULL,
	[validity] [datetime] NULL,
	[sup_name] [varchar](50) NULL,
	[other] [varchar](200) NULL,
	[his_bad_reaction_inner] [varchar](400) NULL,
	[his_bad_reaction_outer] [varchar](400) NULL,
	[his_bad_reaction_other] [varchar](400) NULL,
	[reporterUnit] [varchar](64) NULL,
	[duty] [varchar](32) NULL,
	[reporter] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[seqid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GSP_VendorStoreinJudge]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GSP_VendorStoreinJudge](
	[seqid] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[RegDate] [datetime] NOT NULL,
	[SupAccount] [varchar](32) NULL,
	[SupName] [varchar](128) NULL,
	[InBatchNum] [int] NULL,
	[MarketAdvice] [varchar](32) NULL,
	[SupByContact] [varchar](32) NULL,
	[InCheckPercent] [varchar](32) NULL,
	[QualitySummary] [varchar](32) NULL,
	[UnQualifiedSummary] [varchar](32) NULL,
	[InvStadable] [varchar](32) NULL,
	[SalesReturn] [varchar](32) NULL,
	[CustomComplain] [varchar](32) NULL,
	[SpotCheck] [varchar](256) NULL,
	[QualityCredit] [varchar](256) NULL,
	[measure] [varchar](256) NULL,
	[checker] [varchar](32) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[seqid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GSP_MaintainSummary]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GSP_MaintainSummary](
	[SeqId] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[RegDate] [datetime] NOT NULL,
	[RegPerson] [varchar](32) NULL,
	[KeycomMaintain] [varchar](256) NULL,
	[CommonComMaintain] [varchar](256) NULL,
	[Device] [varchar](256) NULL,
	[WhHumiture] [varchar](256) NULL,
	[ExpdateCom] [varchar](256) NULL,
	[Summary] [varchar](256) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GSP_Device]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GSP_Device](
	[COMID] [varchar](32) NOT NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[ORIGIN] [varchar](80) NULL,
	[COMINDEX] [varchar](64) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[UNIT] [varchar](8) NULL,
	[dyglv] [varchar](32) NULL,
	[ccrq] [datetime] NULL,
	[ccbh] [varchar](64) NULL,
	[shynx] [varchar](32) NULL,
	[sbzt] [varchar](32) NULL,
	[jzzq] [varchar](32) NULL,
	[thisType] [varchar](32) NULL,
	[assetsNo] [varchar](32) NULL,
	[isKeyDevice] [varchar](32) NULL,
	[inuseDate] [datetime] NULL,
	[DEPT_CODE] [varchar](32) NULL,
	[DEPT_NAME] [varchar](128) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[COMID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Emergency]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Emergency](
	[typeCode] [varchar](32) NOT NULL,
	[typeName] [varchar](64) NULL,
	[LEVEL] [int] NULL,
	[PARENT_CODE] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[typeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComCategory]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComCategory](
	[ComCatID] [varchar](32) NOT NULL,
	[ComCatNAME] [varchar](24) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[NoAbbrev] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
	[whManager] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[ComCatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chinaCity]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chinaCity](
	[province] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[county] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CashierReport]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CashierReport](
	[Billno] [varchar](32) NOT NULL,
	[deptcode] [varchar](32) NULL,
	[thisdate] [datetime] NULL,
	[docperson] [varchar](32) NULL,
	[detailtime] [datetime] NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[commen] [varchar](800) NULL,
	[cashAmount] [numeric](18, 2) NULL,
	[cashFlag] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Billno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BillUpdateSyntax]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillUpdateSyntax](
	[seq_id] [int] IDENTITY(1,1) NOT NULL,
	[BillType] [varchar](32) NOT NULL,
	[UpdateType] [varchar](256) NOT NULL,
	[SeqNo] [int] NULL,
	[UpdateSyntax] [varchar](2000) NOT NULL,
	[isStop] [int] NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BillType]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillType](
	[BillType] [varchar](32) NOT NULL,
	[BillName] [varchar](32) NOT NULL,
	[AuditFld] [varchar](32) NOT NULL,
	[EndFlag] [varchar](32) NOT NULL,
	[tableName] [varchar](32) NULL,
	[BillNoFld] [varchar](32) NULL,
	[RowIdFld] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BillAuditDef]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillAuditDef](
	[BillType] [varchar](32) NOT NULL,
	[FlowID] [varchar](32) NOT NULL,
	[FlowName] [varchar](32) NULL,
	[FlowStep] [varchar](32) NULL,
	[FnMenuID] [varchar](32) NULL,
	[MainTable] [varchar](32) NULL,
	[DetailTable] [varchar](32) NULL,
	[MainFilter] [varchar](256) NULL,
	[DetailFilter] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankAccount]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankAccount](
	[AccountID] [varchar](32) NOT NULL,
	[AccountNAME] [varchar](24) NOT NULL,
	[Bank] [varchar](128) NULL,
	[code] [varchar](32) NULL,
	[codeName] [varchar](128) NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[attendance]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[attendance](
	[seqNo] [int] IDENTITY(1,1) NOT NULL,
	[thisDate] [datetime] NOT NULL,
	[empCode] [varchar](32) NOT NULL,
	[wkShiftID] [varchar](32) NOT NULL,
	[signIn] [datetime] NULL,
	[signOut] [datetime] NULL,
	[lateWksID] [varchar](32) NULL,
	[lateSignIn] [datetime] NULL,
	[lateSignOut] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[seqNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AttdRule]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AttdRule](
	[ruleID] [varchar](32) NOT NULL,
	[ruleName] [varchar](32) NOT NULL,
	[earlyShift] [varchar](32) NULL,
	[lateShift] [varchar](32) NULL,
	[workingDay] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ruleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AreaUser]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreaUser](
	[AreaCatID] [varchar](32) NOT NULL,
	[User_ID] [varchar](32) NOT NULL,
 CONSTRAINT [PK__AreaUser] PRIMARY KEY CLUSTERED 
(
	[AreaCatID] ASC,
	[User_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AreaCategory]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreaCategory](
	[AreaCatID] [varchar](32) NOT NULL,
	[AreaCatNAME] [varchar](24) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[AreaCatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcInvoice]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcInvoice](
	[BILLNO] [varchar](32) NOT NULL,
	[OrderType] [int] NULL,
	[ThisDate] [datetime] NOT NULL,
	[Account] [varchar](32) NULL,
	[InvoiceType] [varchar](32) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[Commen] [varchar](256) NULL,
	[InvoiceNo] [varchar](32) NULL,
	[InvoiceDate] [datetime] NULL,
	[ReceiveDate] [datetime] NULL,
	[invoice_taxcode] [varchar](128) NULL,
	[invoice_address] [varchar](128) NULL,
	[invoice_phone] [varchar](128) NULL,
	[invoice_bank] [varchar](128) NULL,
	[invoiceSeqNo] [varchar](32) NULL,
	[digest] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BILLNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcIniAccnt]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcIniAccnt](
	[billno] [varchar](30) NOT NULL,
	[Row_Id] [numeric](8, 0) IDENTITY(1,1) NOT NULL,
	[THISTYPE] [int] NULL,
	[THISDATE] [datetime] NULL,
	[Account] [varchar](32) NULL,
	[AMOUNT] [numeric](18, 2) NULL,
	[PayAMOUNT] [numeric](18, 2) NULL,
	[PayFLAG] [numeric](2, 0) NULL,
	[myName] [varchar](128) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcExpensesDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcExpensesDetail](
	[SeqID] [varchar](32) NOT NULL,
	[Row_ID] [int] NULL,
	[Digest] [varchar](256) NULL,
	[expenseCatID] [varchar](32) NULL,
	[Amount] [numeric](18, 2) NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[DetailTime] [datetime] NULL,
	[DeptManager] [varchar](32) NULL,
	[DeptCheckDate] [datetime] NULL,
	[DeptCheckRemark] [varchar](256) NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[Checker] [varchar](32) NULL,
	[CheckResult] [int] NULL,
	[CheckRemark] [varchar](256) NULL,
	[CheckTime] [datetime] NULL,
	[isClosed] [int] NULL,
	[PayAmount] [numeric](18, 2) NULL,
	[PayFlag] [int] NULL,
	[cashAmount] [numeric](18, 2) NULL,
	[cashFlag] [int] NULL,
	[comment] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcExpenses]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcExpenses](
	[SeqID] [varchar](32) NOT NULL,
	[thisdate] [datetime] NULL,
	[ordertype] [int] NULL,
	[DocStatus] [int] NOT NULL,
	[DetailTime] [datetime] NULL,
	[DocPerson] [varchar](32) NULL,
	[comment] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcDocType]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcDocType](
	[doctype] [varchar](4) NOT NULL,
	[docname] [varchar](32) NULL,
	[tbName] [varchar](32) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcDigest]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcDigest](
	[dgID] [varchar](6) NOT NULL,
	[dgName] [varchar](60) NOT NULL,
	[code] [varchar](32) NULL,
	[dgIndex] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[dgID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcDepartmentPay]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcDepartmentPay](
	[BILLNO] [varchar](32) NOT NULL,
	[OrderType] [int] NULL,
	[ThisDate] [datetime] NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[PayType] [varchar](32) NULL,
	[Amount] [numeric](18, 6) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[Commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BILLNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcCODERELATED_TABLE]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcCODERELATED_TABLE](
	[RCOL] [varchar](64) NULL,
	[RCOLNAME] [varchar](64) NULL,
	[RCOLTYPE] [varchar](64) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcCODERELATED_DETAIL]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcCODERELATED_DETAIL](
	[CODE] [varchar](24) NOT NULL,
	[CODELZ] [varchar](128) NULL,
	[RVALUE] [varchar](128) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcCodeGradeDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcCodeGradeDetail](
	[TbName] [varchar](64) NOT NULL,
	[GRADE] [varchar](2) NULL,
	[LENGTH] [numeric](9, 0) NOT NULL,
	[tLen] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcCodeGrade]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcCodeGrade](
	[TbName] [varchar](64) NOT NULL,
	[GRADE] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcCODE_BASE]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcCODE_BASE](
	[CODE_CLASS] [varchar](20) NOT NULL,
	[CODE] [varchar](24) NOT NULL,
	[CODE_NAME] [varchar](50) NULL,
	[CODE_INDEX] [varchar](25) NULL,
	[JD_DIRECTION] [int] NULL,
	[GRADE] [int] NULL,
	[PARENT_CODE] [varchar](24) NULL,
	[RELATED_INUSE] [int] NULL,
	[RELATED_CONTENTS] [varchar](128) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcCODE]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcCODE](
	[CODE_CLASS] [varchar](20) NOT NULL,
	[CODE] [varchar](24) NOT NULL,
	[CODE_NAME] [varchar](50) NULL,
	[CODE_INDEX] [varchar](25) NULL,
	[JD_DIRECTION] [int] NULL,
	[GRADE] [int] NULL,
	[PARENT_CODE] [varchar](24) NULL,
	[RELATED_INUSE] [int] NULL,
	[RELATED_CONTENTS] [varchar](128) NULL,
	[isStop] [int] NOT NULL,
	[isCash] [int] NOT NULL,
	[isBank] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcCashIOinit]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcCashIOinit](
	[SeqID] [varchar](32) NOT NULL,
	[thisdate] [datetime] NULL,
	[PERIOD] [int] NULL,
	[ordertype] [int] NULL,
	[Digest] [varchar](256) NULL,
	[code] [varchar](32) NULL,
	[J_Amount] [numeric](18, 2) NULL,
	[D_Amount] [numeric](18, 2) NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[DetailTime] [datetime] NULL,
	[DocPerson] [varchar](32) NULL,
	[Checker] [varchar](32) NULL,
	[CheckResult] [int] NULL,
	[CheckRemark] [varchar](256) NULL,
	[CheckTime] [datetime] NULL,
	[isClosed] [int] NULL,
	[comment] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcCashIODetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcCashIODetail](
	[SeqID] [varchar](32) NOT NULL,
	[Row_ID] [int] NULL,
	[Digest] [varchar](256) NULL,
	[code] [varchar](32) NULL,
	[J_Amount] [numeric](18, 2) NULL,
	[D_Amount] [numeric](18, 2) NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[DetailTime] [datetime] NULL,
	[Checker] [varchar](32) NULL,
	[CheckResult] [int] NULL,
	[CheckRemark] [varchar](256) NULL,
	[CheckTime] [datetime] NULL,
	[isClosed] [int] NULL,
	[comment] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcCashIO2]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcCashIO2](
	[SeqID] [varchar](32) NOT NULL,
	[oBillNo] [varchar](32) NOT NULL,
	[oRowId] [numeric](8, 0) NOT NULL,
	[PayAmount] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcCashIO]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcCashIO](
	[SeqID] [varchar](32) NOT NULL,
	[thisdate] [datetime] NULL,
	[PERIOD] [int] NULL,
	[ordertype] [int] NULL,
	[Digest] [varchar](256) NULL,
	[code] [varchar](32) NULL,
	[J_Amount] [numeric](18, 2) NULL,
	[D_Amount] [numeric](18, 2) NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[DetailTime] [datetime] NULL,
	[DocPerson] [varchar](32) NULL,
	[Checker] [varchar](32) NULL,
	[CheckResult] [int] NULL,
	[CheckRemark] [varchar](256) NULL,
	[CheckTime] [datetime] NULL,
	[isClosed] [int] NULL,
	[comment] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcACCSUM]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcACCSUM](
	[AS_ID] [int] IDENTITY(1,1) NOT NULL,
	[CODE] [varchar](24) NOT NULL,
	[PERIOD] [int] NOT NULL,
	[JD_DIRECTION] [varchar](2) NOT NULL,
	[BEGIN_JD] [varchar](2) NOT NULL,
	[BEGIN_JD_FLAG] [varchar](2) NOT NULL,
	[AMOUNT_PRE] [money] NOT NULL,
	[AMOUNT_J] [money] NOT NULL,
	[AMOUNT_D] [money] NOT NULL,
	[END_JD] [varchar](2) NOT NULL,
	[END_JD_FLAG] [varchar](2) NOT NULL,
	[AMOUNT_CUR] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcPay]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcPay](
	[BILLNO] [varchar](32) NOT NULL,
	[OrderType] [int] NULL,
	[ThisDate] [datetime] NOT NULL,
	[Account] [varchar](32) NULL,
	[PayType] [varchar](32) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[Commen] [varchar](256) NULL,
	[EmpCode] [varchar](32) NULL,
	[deptcode] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[BILLNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcMonthSet]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcMonthSet](
	[ACCNT_ID] [numeric](2, 0) NOT NULL,
	[ACCNT_NAME] [char](6) NOT NULL,
	[ACCNT_YEAR] [char](4) NOT NULL,
	[STARTDATE] [datetime] NOT NULL,
	[ENDDATE] [datetime] NOT NULL,
	[INUSE] [numeric](1, 0) NOT NULL,
	[COSTS_FLAG] [numeric](2, 0) NULL,
	[CHECK_DATE] [datetime] NULL,
	[CHECK_RESULT] [varchar](8) NULL,
	[CHECK_FLAG] [numeric](2, 0) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcVOUCH_MODEL_BASE]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcVOUCH_MODEL_BASE](
	[MODEL_ID] [int] NOT NULL,
	[TYPE] [int] NOT NULL,
	[TYPE_NAME] [varchar](30) NULL,
	[SIGN_CODE] [int] NULL,
	[SIGN] [varchar](10) NULL,
	[DIGEST] [varchar](64) NULL,
	[CODE] [varchar](24) NOT NULL,
	[CODE_EQUAL] [varchar](64) NULL,
	[JD_DIRECTION] [varchar](2) NOT NULL,
	[CONTENTS] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcVOUCH_MODEL]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcVOUCH_MODEL](
	[MODEL_ID] [int] NOT NULL,
	[TYPE] [varchar](4) NOT NULL,
	[TYPE_NAME] [varchar](30) NULL,
	[SIGN_CODE] [varchar](4) NULL,
	[SIGN] [varchar](10) NULL,
	[DIGEST] [varchar](64) NULL,
	[CODE] [varchar](24) NOT NULL,
	[CODE_EQUAL] [varchar](64) NULL,
	[JD_DIRECTION] [varchar](2) NOT NULL,
	[AmtSource] [varchar](30) NULL,
	[CodeSource] [varchar](32) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcVOUCH]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcVOUCH](
	[Vouchid] [int] NOT NULL,
	[PERIOD] [int] NULL,
	[THISTYPE] [numeric](4, 0) NULL,
	[SIGN] [varchar](10) NULL,
	[SIGN_CODE] [int] NULL,
	[VOUCH_NO] [varchar](32) NOT NULL,
	[THISDATE] [datetime] NOT NULL,
	[user_id] [varchar](32) NULL,
	[doc_person] [varchar](30) NULL,
	[checker] [varchar](30) NULL,
	[checkDate] [datetime] NULL,
	[booker] [varchar](30) NULL,
	[bookDate] [datetime] NULL,
	[cashier] [varchar](30) NULL,
	[IS_BOOKED] [int] NULL,
	[INUSE] [int] NOT NULL,
	[SYNC_FLAG] [int] NULL,
	[detailTime] [datetime] NULL,
	[isClosed] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vouchid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcSIGN]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcSIGN](
	[SIGN_CODE] [int] NOT NULL,
	[SIGN] [varchar](10) NOT NULL,
	[SIGN_NAME] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcRptDef]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcRptDef](
	[rptType] [int] NOT NULL,
	[rowNo] [int] NOT NULL,
	[colNo] [int] NOT NULL,
	[gridDef] [varchar](1024) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcPayOutApplyDetail2]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcPayOutApplyDetail2](
	[BILLNO] [varchar](32) NOT NULL,
	[oBillNo] [varchar](32) NOT NULL,
	[oRowId] [numeric](8, 0) NOT NULL,
	[PayAmount] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcPayOutApply]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcPayOutApply](
	[BILLNO] [varchar](32) NOT NULL,
	[OrderType] [int] NULL,
	[ThisDate] [datetime] NOT NULL,
	[Account] [varchar](32) NULL,
	[PayAmount] [numeric](18, 2) NULL,
	[ApplyReason] [varchar](256) NULL,
	[ApplyPerson] [varchar](256) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[PurchasePerson] [varchar](32) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseRemark] [varchar](256) NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[QcManager] [varchar](32) NULL,
	[QcCheckDate] [datetime] NULL,
	[QcCheckRemark] [varchar](256) NULL,
	[viceManager] [varchar](32) NULL,
	[vmCheckDate] [datetime] NULL,
	[vmCheckRemark] [varchar](256) NULL,
	[Commen] [varchar](256) NULL,
	[realPayAmount] [numeric](18, 2) NULL,
	[PayFlag] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BILLNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComPriceTypeDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComPriceTypeDetail](
	[CatID] [varchar](32) NOT NULL,
	[ComID] [varchar](128) NOT NULL,
	[Price] [numeric](18, 4) NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComPriceType]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComPriceType](
	[CatID] [varchar](32) NOT NULL,
	[CatNAME] [varchar](24) NOT NULL,
	[remark] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComPriceCat]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComPriceCat](
	[CatID] [varchar](32) NOT NULL,
	[CatNAME] [varchar](24) NOT NULL,
	[remark] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommodityTarget]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommodityTarget](
	[COMID] [varchar](32) NOT NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[ORIGIN] [varchar](80) NULL,
	[COMINDEX] [varchar](64) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[UNIT] [varchar](8) NULL,
	[ItemType] [varchar](32) NOT NULL,
	[ComCatID] [varchar](32) NULL,
	[ComCode] [varchar](32) NULL,
	[barcode] [varchar](40) NULL,
	[PiecePacking] [varchar](32) NULL,
	[Outerpacking] [varchar](32) NULL,
	[Innerpacking] [varchar](32) NULL,
	[qualitylevel] [varchar](32) NULL,
	[Weight] [varchar](32) NULL,
	[price1] [numeric](18, 4) NULL,
	[price2] [numeric](18, 4) NULL,
	[price3] [numeric](18, 4) NULL,
	[price4] [numeric](18, 4) NULL,
	[price5] [numeric](18, 4) NULL,
	[price6] [numeric](18, 4) NULL,
	[taxin] [numeric](9, 2) NULL,
	[taxout] [numeric](9, 2) NULL,
	[name_chem] [varchar](128) NULL,
	[auth_code] [varchar](128) NULL,
	[authExp] [datetime] NULL,
	[standardClass] [varchar](32) NULL,
	[isBaseMed] [int] NULL,
	[PRESCRIPTION] [int] NULL,
	[medType] [varchar](64) NULL,
	[medUsage] [varchar](256) NULL,
	[storeCondition] [varchar](256) NULL,
	[contraindication] [varchar](64) NULL,
	[labelNotes] [varchar](64) NULL,
	[detailNotes] [varchar](256) NULL,
	[manufacturer] [varchar](64) NULL,
	[trademark] [varchar](32) NULL,
	[GmpNo] [varchar](32) NULL,
	[GmpExp] [datetime] NULL,
	[CreatePurpose] [varchar](64) NULL,
	[insp_item] [varchar](128) NULL,
	[insp_standard] [varchar](64) NULL,
	[character] [varchar](64) NULL,
	[isSpecial] [int] NULL,
	[isXFJ] [int] NULL,
	[isSWZP] [int] NULL,
	[isELJSYP] [int] NULL,
	[isQX] [int] NULL,
	[isImportDrugs] [int] NULL,
	[isEMC] [int] NULL,
	[isMhj] [int] NULL,
	[isStop] [int] NULL,
	[isFreeze] [int] NULL,
	[barcodeex] [varchar](32) NULL,
	[MedStType] [varchar](256) NULL,
	[MaintainCycle] [int] NULL,
	[supAccount] [varchar](32) NULL,
	[supName] [varchar](128) NULL,
	[AlertExpDayNum] [int] NULL,
	[limit_top] [numeric](18, 0) NULL,
	[limit_mid] [numeric](18, 0) NULL,
	[limit_bottom] [numeric](18, 0) NULL,
	[color] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[COMID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommodityPack]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommodityPack](
	[ComID] [varchar](32) NOT NULL,
	[DownComID] [varchar](32) NOT NULL,
	[DownPackNo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ComID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_AcCodeInit_add]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_AcCodeInit_add]  
as
begin
begin tran;
	declare @sql nvarchar(4000) 
 

	set @sql = 'insert into Acaccsum (CODE,PERIOD,BEGIN_JD,BEGIN_JD_FLAG,AMOUNT_PRE,AMOUNT_J,AMOUNT_D,END_JD,END_JD_FLAG,AMOUNT_CUR,JD_DIRECTION)  
			  select c.code,0,''平'',''-'',0,0,0,''平'',''-'',0,jd_direction from  
			  Accode c    where code not in (select code from Acaccsum where period = 0) ';
			  
 	execute sp_executesql @sql; 
	if @@error <> 0 
	 begin
		raiserror('科目初始化失败!',16,1)
		rollback tran;
		return
	 end
commit tran;
end
GO
/****** Object:  Table [dbo].[SolarData]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SolarData](
	[yearId] [int] NOT NULL,
	[data] [char](7) NOT NULL,
	[dataInt] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShippingType]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShippingType](
	[typeCode] [varchar](32) NOT NULL,
	[typeName] [varchar](64) NULL,
	[LEVEL] [int] NULL,
	[PARENT_CODE] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[typeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesPrice_Limit]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_SalesPrice_Limit] (@BillType varchar(128),@BillNo nvarchar(32),@Row_Id nvarchar(32))
as
begin
	declare @sql nvarchar(4000),@RowCount numeric(18,0)

	select @BillType=UPPER(@BillType);  

	--根据单据类型不同，判断价格是否为零
	select @sql = case 
		 when @BillType='STOREOUT' or @BillType='STOREOUTRETAIL' then
			'select @RowCount = count(*)
			from  storeoutdetail b where b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id +' and b.InPriceTaxed < b.btPrice' 
		else null end;
	execute sp_executesql @sql,N'@RowCount numeric(18,0) OUTPUT',@RowCount OUTPUT;
	if @RowCount >0
	begin
		raiserror('售价不能低于底价:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id) 
		return
	end 
end
GO
/****** Object:  Table [dbo].[storein_dzjg]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[storein_dzjg](
	[billno] [varchar](32) NULL,
	[Row_Id] [numeric](9, 0) NULL,
	[ComID] [numeric](9, 0) NULL,
	[code] [varchar](128) NULL,
	[quantity] [numeric](18, 2) NULL,
	[FromCorpID] [varchar](32) NULL,
	[ToCorpID] [varchar](32) NULL,
	[CorpProductID] [varchar](32) NULL,
	[CorpBatchNo] [varchar](32) NULL,
	[ProduceDate] [varchar](32) NULL,
	[Name] [varchar](32) NULL,
	[MainAction] [varchar](32) NULL,
	[SN] [varchar](32) NULL,
	[License] [varchar](32) NULL,
	[OwnerCorpID] [varchar](32) NULL,
	[Actor] [varchar](32) NULL,
	[ActDate] [datetime] NULL,
	[Event] [varchar](128) NULL,
	[isUpload] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreCondition]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreCondition](
	[TypeID] [varchar](32) NOT NULL,
	[TypeName] [varchar](24) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesAreaManager]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesAreaManager](
	[EmpCode] [varchar](32) NOT NULL,
	[EmpName] [varchar](64) NULL,
	[SalesArea] [varchar](128) NULL,
	[TelePhone] [varchar](128) NULL,
	[Xjzg] [varchar](64) NULL,
	[Djzg] [varchar](64) NULL,
	[Sjzg] [varchar](64) NULL,
	[Dqzg] [varchar](64) NULL,
	[Xszj] [varchar](64) NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sales_dzjg]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sales_dzjg](
	[billno] [varchar](32) NULL,
	[Row_Id] [numeric](9, 0) NULL,
	[ComID] [numeric](9, 0) NULL,
	[code] [varchar](128) NULL,
	[quantity] [numeric](18, 2) NULL,
	[FromCorpID] [varchar](32) NULL,
	[ToCorpID] [varchar](32) NULL,
	[CorpProductID] [varchar](32) NULL,
	[CorpBatchNo] [varchar](32) NULL,
	[ProduceDate] [varchar](32) NULL,
	[Name] [varchar](32) NULL,
	[MainAction] [varchar](32) NULL,
	[SN] [varchar](32) NULL,
	[License] [varchar](32) NULL,
	[OwnerCorpID] [varchar](32) NULL,
	[Actor] [varchar](32) NULL,
	[ActDate] [datetime] NULL,
	[Event] [varchar](128) NULL,
	[isUpload] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roleuser]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roleuser](
	[roleID] [varchar](32) NULL,
	[USER_ID] [varchar](128) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[roleDtFilter]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roleDtFilter](
	[seq_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[roleID] [varchar](32) NOT NULL,
	[FnMenuID] [varchar](32) NOT NULL,
	[ColName] [varchar](128) NOT NULL,
	[ROpr] [int] NULL,
	[Opr] [varchar](32) NULL,
	[Value] [varchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[roleDt]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roleDt](
	[roleID] [varchar](32) NULL,
	[FnMenuID] [varchar](32) NULL,
	[Operation] [varchar](500) NULL,
	[VisibleField] [text] NULL,
	[EditField] [text] NULL,
	[Filter] [varchar](1000) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[roleID] [varchar](32) NOT NULL,
	[roleName] [varchar](32) NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RiskEmployee]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RiskEmployee](
	[supempcode] [varchar](128) NOT NULL,
	[supempname] [varchar](128) NULL,
	[IDNO] [varchar](18) NULL,
	[telephone] [varchar](64) NULL,
	[mobile] [varchar](128) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[supempcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RiskByEnterprice]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RiskByEnterprice](
	[Billno] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocStatus] [int] NOT NULL,
	[Audit] [int] NULL,
	[INUSE] [numeric](1, 0) NOT NULL,
	[MyName] [varchar](128) NOT NULL,
	[FindName] [varchar](64) NULL,
	[Manager] [varchar](32) NULL,
	[Address] [varchar](256) NULL,
	[Contact] [varchar](128) NULL,
	[commen] [varchar](128) NULL,
	[fax] [varchar](32) NULL,
	[busiLicEntName] [datetime] NULL,
	[businessLicense] [varchar](32) NULL,
	[busiLicExp] [datetime] NULL,
	[busiLicPerson] [varchar](32) NULL,
	[busiLicIssue] [varchar](32) NULL,
	[busiLicIssueDate] [datetime] NULL,
	[businessScope] [varchar](256) NULL,
	[applyReason] [varchar](32) NULL,
	[SalesPerson] [varchar](32) NULL,
	[SalesDate] [datetime] NULL,
	[SalesRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[QcManager] [varchar](32) NULL,
	[QcCheckDate] [datetime] NULL,
	[QcCheckRemark] [varchar](256) NULL,
	[viceManager] [varchar](32) NULL,
	[vmCheckDate] [datetime] NULL,
	[vmCheckRemark] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Billno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[retailPayment]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[retailPayment](
	[SeqId] [char](36) NOT NULL,
	[DeptCode] [varchar](32) NULL,
	[DetailTime] [datetime] NULL,
	[Amount] [numeric](18, 2) NULL,
	[Commen] [varchar](256) NULL,
	[inuse] [numeric](1, 0) NULL,
	[Audit] [int] NULL,
	[DocStatus] [int] NOT NULL,
	[DocPerson] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salesorder2]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salesorder2](
	[Billno] [varchar](32) NULL,
	[SaleBillno] [varchar](32) NULL,
	[thisdate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesOrderImport]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesOrderImport](
	[BillNo] [varchar](32) NULL,
	[Row_Id] [numeric](8, 0) NULL,
	[ThisDate] [datetime] NOT NULL,
	[DeptCode] [varchar](32) NULL,
	[EmpCode] [varchar](32) NULL,
	[CustAccount] [varchar](32) NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[PriceTaxed] [numeric](18, 6) NULL,
	[AmountTaxed] [numeric](18, 6) NULL,
	[slQuan] [numeric](18, 2) NULL,
	[slFlag] [int] NULL,
	[pcQuan] [numeric](18, 2) NULL,
	[pcFlag] [int] NULL,
	[Commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesPara]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesPara](
	[EnableAreaUserAuth] [int] NULL,
	[EnableComUserAuth] [int] NULL,
	[AcBySettlePrice] [int] NULL,
	[DailyReportTime] [varchar](32) NOT NULL,
	[CloseSalesRegCashByReport] [int] NULL,
	[GenCashByAcPay] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POReceive]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POReceive](
	[BillNo] [varchar](32) NOT NULL,
	[OrderType] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[SupAccount] [varchar](32) NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[consignee] [varchar](128) NULL,
	[Commen] [varchar](256) NULL,
	[supempcode] [varchar](128) NULL,
	[IsPayed] [int] NULL,
	[PayWayID] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PayWay]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PayWay](
	[PayWayID] [varchar](32) NOT NULL,
	[PayWayName] [varchar](64) NULL,
	[LEVEL] [int] NULL,
	[PARENT_CODE] [varchar](32) NULL,
	[isPayed] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PayWayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OvertimeRecord]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OvertimeRecord](
	[seqNo] [int] NOT NULL,
	[thisDate] [datetime] NOT NULL,
	[empCode] [varchar](32) NOT NULL,
	[beginTime] [varchar](32) NOT NULL,
	[endTime] [varchar](32) NOT NULL,
	[myID] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[seqNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[overshort_dzjg]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[overshort_dzjg](
	[billno] [varchar](32) NULL,
	[Row_Id] [numeric](9, 0) NULL,
	[ComID] [numeric](9, 0) NULL,
	[code] [varchar](128) NULL,
	[quantity] [numeric](18, 2) NULL,
	[FromCorpID] [varchar](32) NULL,
	[ToCorpID] [varchar](32) NULL,
	[CorpProductID] [varchar](32) NULL,
	[CorpBatchNo] [varchar](32) NULL,
	[ProduceDate] [varchar](32) NULL,
	[Name] [varchar](32) NULL,
	[MainAction] [varchar](32) NULL,
	[SN] [varchar](32) NULL,
	[License] [varchar](32) NULL,
	[OwnerCorpID] [varchar](32) NULL,
	[Actor] [varchar](32) NULL,
	[ActDate] [datetime] NULL,
	[Event] [varchar](128) NULL,
	[isUpload] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORGWh]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORGWh](
	[ORG_CODE] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NOT NULL,
 CONSTRAINT [PK__ORGWh] PRIMARY KEY CLUSTERED 
(
	[ORG_CODE] ASC,
	[WAREHOUSE_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrgUser]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrgUser](
	[ORG_CODE] [varchar](32) NOT NULL,
	[User_ID] [varchar](32) NOT NULL,
 CONSTRAINT [PK__OrgUser] PRIMARY KEY CLUSTERED 
(
	[ORG_CODE] ASC,
	[User_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organization](
	[ORG_CODE] [varchar](32) NOT NULL,
	[ORG_NAME] [varchar](128) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[ORG_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonitorSet]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonitorSet](
	[dgvName] [varchar](32) NOT NULL,
	[mType] [varchar](32) NOT NULL,
	[title] [varchar](256) NOT NULL,
	[source] [varchar](256) NOT NULL,
	[subTitle] [varchar](256) NULL,
	[graphType] [varchar](32) NULL,
	[GraphX] [varchar](32) NULL,
	[GraphY] [varchar](32) NULL,
	[GraphZ] [varchar](32) NULL,
	[DtSrcSrv] [varchar](128) NULL,
	[DtSrcSrvCRC] [varchar](128) NULL,
	[timer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dgvName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonitorAuth]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonitorAuth](
	[dgvName] [varchar](32) NOT NULL,
	[USER_ID] [varchar](128) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[MoneyConvert]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  FUNCTION [dbo].[MoneyConvert] (@MONEY NUMERIC(18,2)) 
RETURNS VARCHAR(200) AS
BEGIN
/*
功  能：  金额大小写转换函数  
*/
  DECLARE @SMALLMONTH VARCHAR(200),
          @BIGMONTH   VARCHAR(200),
          @WEI1       VARCHAR(200), 
          @QIANWEI1   VARCHAR(200),
          @QIANWEI    INT,
          @DIANWEIZHI INT,
          @QIAN       INT
  SET @BIGMONTH = ''
  SET @QIANWEI = -2
  
  SET @SMALLMONTH = CAST(ABS(ROUND(@MONEY,2)) AS VARCHAR(200))
  
  SET @DIANWEIZHI =CHARINDEX('.',@SMALLMONTH)
  
    --循环小写货币的每一位，从小写的右边位置到左边}
  SET @QIAN = LEN(@SMALLMONTH)
  
  
  SET @QIAN = LEN(@SMALLMONTH)
  
  
  WHILE @QIAN >= 1
  BEGIN
    IF @QIAN <> @DIANWEIZHI 
    BEGIN
      IF CAST(SUBSTRING(@SMALLMONTH,@QIAN,1) AS INT) = 1  SET @WEI1='壹'
      IF CAST(SUBSTRING(@SMALLMONTH,@QIAN,1) AS INT) = 2  SET @WEI1='贰'
      IF CAST(SUBSTRING(@SMALLMONTH,@QIAN,1) AS INT) = 3  SET @WEI1='叁'
      IF CAST(SUBSTRING(@SMALLMONTH,@QIAN,1) AS INT) = 4  SET @WEI1='肆'
      IF CAST(SUBSTRING(@SMALLMONTH,@QIAN,1) AS INT) = 5  SET @WEI1='伍'
      IF CAST(SUBSTRING(@SMALLMONTH,@QIAN,1) AS INT) = 6  SET @WEI1='陆' 
      IF CAST(SUBSTRING(@SMALLMONTH,@QIAN,1) AS INT) = 7  SET @WEI1='柒'
      IF CAST(SUBSTRING(@SMALLMONTH,@QIAN,1) AS INT) = 8  SET @WEI1='捌'
      IF CAST(SUBSTRING(@SMALLMONTH,@QIAN,1) AS INT) = 9  SET @WEI1='玖'
      IF CAST(SUBSTRING(@SMALLMONTH,@QIAN,1) AS INT) = 0  SET @WEI1='零'
  
      IF @QIANWEI=-3  SET @QIANWEI1='厘'
      IF @QIANWEI=-2  SET @QIANWEI1='分'
      IF @QIANWEI=-1  SET @QIANWEI1='角'
      IF @QIANWEI=0   SET @QIANWEI1='元'
      IF @QIANWEI=1   SET @QIANWEI1='拾'
      IF @QIANWEI=2   SET @QIANWEI1='佰'
      IF @QIANWEI=3   SET @QIANWEI1='仟'
      IF @QIANWEI=4   SET @QIANWEI1='万'
      IF @QIANWEI=5   SET @QIANWEI1='拾'
      IF @QIANWEI=6   SET @QIANWEI1='佰'
      IF @QIANWEI=7   SET @QIANWEI1='仟'
      IF @QIANWEI=8   SET @QIANWEI1='亿'
      IF @QIANWEI=9   SET @QIANWEI1='拾'
      IF @QIANWEI=10  SET @QIANWEI1='佰'
      IF @QIANWEI=11  SET @QIANWEI1='仟'
   
      SET @BIGMONTH =@WEI1+ @QIANWEI1 + @BIGMONTH
      SET @QIANWEI = @QIANWEI + 1 
    END
    SET @QIAN = @QIAN - 1
  END
  
  DECLARE @I INT
  DECLARE @DIGITSTR VARCHAR(200)
  DECLARE @WEISTR   VARCHAR(200)
  DECLARE @RESULTSTR VARCHAR(200)
SET @DIGITSTR = ''
  SET @WEISTR = ''
  SET @RESULTSTR = SUBSTRING(@BIGMONTH,1,2)
  SET @I = 3
  
  WHILE @I < LEN(@BIGMONTH)
  BEGIN
    SET @DIGITSTR = SUBSTRING(@BIGMONTH,@I ,1)
    SET @WEISTR   = SUBSTRING(@BIGMONTH,@I+1 ,1)
  
    IF @DIGITSTR = '零'
    BEGIN
      IF (@WEISTR = '仟') OR (@WEISTR = '佰') OR (@WEISTR = '拾') 
         SET @RESULTSTR = @RESULTSTR + @DIGITSTR
      ELSE IF (@WEISTR = '亿') OR (@WEISTR = '万') OR (@WEISTR = '元') 
         SET @RESULTSTR = @RESULTSTR + @WEISTR;
     END
     ELSE
        SET @RESULTSTR = @RESULTSTR + @DIGITSTR + @WEISTR;
SET @I =@I + 2
  END
  
  SET @I = 1
  SET @DIGITSTR = ''
  SET @WEISTR = ''
  
  DECLARE @SINGLEZERO VARCHAR(200),
          @FINALSTR   VARCHAR(200),
          @FLAG       INT
  
  SET @SINGLEZERO = ''
  SET @FLAG = 0
  
  
  WHILE @I <= LEN(@RESULTSTR) 
  BEGIN
    SET @DIGITSTR = SUBSTRING(@RESULTSTR,@I,1)
    IF @DIGITSTR = '零'
    BEGIN
      IF @FLAG = 0 
      BEGIN
        SET @SINGLEZERO = @SINGLEZERO + @DIGITSTR;
        SET @FLAG = 1
      END
    END
    ELSE
    BEGIN
      SET @SINGLEZERO = @SINGLEZERO + @DIGITSTR;
      SET @FLAG = 0
END
    SET @I = @I + 1
  END
  
  
  SET @FINALSTR = ''
  SET @WEISTR = ''
  SET @I = 1
  
  
  
  WHILE @I <= LEN(@SINGLEZERO) 
  BEGIN
    SET @DIGITSTR = SUBSTRING(@SINGLEZERO,@I,1)
    
    IF @DIGITSTR='零'
    BEGIN
      SET @WEISTR = SUBSTRING(@SINGLEZERO,@I+1,1)
      IF (@WEISTR='亿') OR (@WEISTR='元') 
      BEGIN
        SET @FINALSTR = @FINALSTR + @WEISTR
        SET @I = @I + 2
      END
      ELSE IF (@WEISTR='万') 
      BEGIN
        IF (SUBSTRING(@SINGLEZERO,@I-1,1))<>'亿' 
          SET @FINALSTR = @FINALSTR + @WEISTR
        SET @I = @I + 2
      END
      ELSE
      BEGIN
        SET  @FINALSTR = @FINALSTR + @DIGITSTR
        SET  @I = @I + 1
      END
    END
    ELSE
    BEGIN
      SET @FINALSTR = @FINALSTR + @DIGITSTR
      SET @I = @I + 1
    END
  END
  
  SET @I = 1
  
  DECLARE @J        INT,
          @BIGMONEY VARCHAR (200)
  
  SET @BIGMONEY = @FINALSTR
  SET @I = LEN(@FINALSTR)
  
  IF SUBSTRING(@FINALSTR,@I,1)='分' 
  BEGIN
    IF SUBSTRING(@FINALSTR,@I-2,1)<>'角' 
     BEGIN
       SET @BIGMONEY = ''
       SET @J = 1
       WHILE @J <= LEN(@FINALSTR) - 2
       BEGIN
         SET @BIGMONEY = @BIGMONEY + SUBSTRING(@FINALSTR,@J,1)
         SET @J = @J + 1
       END;
       SET @BIGMONEY = @BIGMONEY + '零' + SUBSTRING(@FINALSTR,@I-1,2)
    END
  END
  RETURN  @BIGMONEY
END
GO
/****** Object:  Table [dbo].[ModifyApply]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModifyApply](
	[SeqId] [varchar](32) NOT NULL,
	[thisdate] [datetime] NOT NULL,
	[content] [varchar](1000) NOT NULL,
	[reason] [varchar](128) NULL,
	[commen] [varchar](800) NULL,
	[docperson] [varchar](32) NULL,
	[applier] [varchar](32) NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[inspperson] [varchar](32) NULL,
	[inspremark] [varchar](256) NULL,
	[inspdate] [datetime] NULL,
	[ItDeptPerson] [varchar](32) NULL,
	[ItDeptDate] [datetime] NULL,
	[ItDeptRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[doctime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[modify_record]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[modify_record](
	[seq_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[thisdate] [datetime] NULL,
	[userID] [varchar](32) NULL,
	[uname] [varchar](32) NULL,
	[logip] [varchar](128) NULL,
	[sqltext] [varchar](3000) NULL,
	[commen] [varchar](4000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberScoreDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberScoreDetail](
	[SeqId] [char](36) NOT NULL,
	[MemberNo] [varchar](32) NOT NULL,
	[ScoreTime] [datetime] NULL,
	[Amount] [numeric](18, 2) NULL,
	[Score] [int] NULL,
	[billno] [varchar](32) NULL,
	[Notes] [varchar](256) NULL,
	[inuse] [numeric](1, 0) NULL,
	[isManul] [numeric](1, 0) NULL,
	[operator] [varchar](10) NULL,
	[Audit] [int] NULL,
	[DocStatus] [int] NOT NULL,
	[MemberName] [varchar](32) NULL,
	[curScore] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberDay]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberDay](
	[MemDayID] [int] NOT NULL,
	[thisName] [varchar](128) NOT NULL,
	[isLunar] [int] NULL,
	[MemDay] [varchar](256) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[MemDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberCategory]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberCategory](
	[MemCatID] [varchar](32) NOT NULL,
	[MemCatNAME] [varchar](24) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[PriceType] [varchar](32) NULL,
	[AmountUnit] [numeric](18, 2) NULL,
	[ScoreUnit] [numeric](18, 2) NULL,
	[AddUpLeft] [int] NULL,
	[remark] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[MemCatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Member]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[MemberNo] [varchar](32) NOT NULL,
	[MemName] [varchar](128) NOT NULL,
	[IndexCode] [varchar](128) NULL,
	[IdCard] [varchar](32) NULL,
	[Birthday] [datetime] NULL,
	[Sex] [varchar](4) NULL,
	[Address] [varchar](256) NULL,
	[ZipCode] [varchar](20) NULL,
	[HomeTel] [varchar](64) NULL,
	[MobileTel] [varchar](64) NULL,
	[Email] [varchar](128) NULL,
	[JoinDate] [datetime] NULL,
	[IsStop] [int] NULL,
	[CurScore] [int] NULL,
	[CurAmount] [numeric](12, 2) NULL,
	[CurLeft] [numeric](10, 2) NULL,
	[MemCatID] [varchar](32) NULL,
	[Commen] [varchar](256) NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MedType]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MedType](
	[TypeID] [varchar](32) NOT NULL,
	[TypeName] [varchar](24) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MedStType]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MedStType](
	[StTypeCode] [varchar](32) NOT NULL,
	[StTypeName] [varchar](64) NOT NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MedAQualityInfo]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MedAQualityInfo](
	[SeqId] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[RegDate] [datetime] NOT NULL,
	[InfoSource] [varchar](128) NULL,
	[InfoContent] [varchar](800) NULL,
	[RegDept] [varchar](32) NULL,
	[RegPerson] [varchar](32) NULL,
	[commen] [varchar](256) NULL,
	[QcManager] [varchar](32) NULL,
	[QcCheckDate] [datetime] NULL,
	[QcCheckRemark] [varchar](256) NULL,
	[viceManager] [varchar](32) NULL,
	[vmCheckDate] [datetime] NULL,
	[vmCheckRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegShortage]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegShortage](
	[SeqId] [numeric](18, 0) NOT NULL,
	[OrderType] [int] NULL,
	[deptCode] [varchar](32) NULL,
	[DocPerson] [varchar](32) NULL,
	[Comid] [varchar](32) NULL,
	[COMNAME] [varchar](128) NULL,
	[ORIGIN] [varchar](80) NULL,
	[COMINDEX] [varchar](64) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[UNIT] [varchar](8) NULL,
	[quantity] [numeric](18, 2) NULL,
	[price] [numeric](18, 2) NULL,
	[DetailTime] [datetime] NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RealMessage]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RealMessage](
	[seq_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[sendTime] [datetime] NULL,
	[userID] [varchar](32) NULL,
	[userName] [varchar](32) NULL,
	[recvUID] [varchar](32) NULL,
	[recvUname] [varchar](32) NULL,
	[msgTitle] [varchar](128) NULL,
	[msgContent] [varchar](1000) NULL,
	[isRead] [int] NULL,
	[readTime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QualifySummaryDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QualifySummaryDetail](
	[seqid] [varchar](32) NOT NULL,
	[Row_ID] [int] NULL,
	[ComCatName] [varchar](32) NULL,
	[inAmount] [decimal](18, 2) NULL,
	[InBatchNum] [int] NULL,
	[InBatchNumUn] [int] NULL,
	[InNotAmountUn] [decimal](18, 2) NULL,
	[InPercentUn] [decimal](9, 2) NULL,
	[invAmount] [decimal](18, 2) NULL,
	[InvBatchNum] [int] NULL,
	[InvBatchNumUn] [int] NULL,
	[InvNotAmountUn] [decimal](18, 2) NULL,
	[InvPercentUn] [decimal](9, 2) NULL,
	[salesAmount] [decimal](18, 2) NULL,
	[salesNumUn] [int] NULL,
	[salesAmountUn] [decimal](18, 2) NULL,
	[salesPercentUn] [decimal](18, 2) NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QualifySummary]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QualifySummary](
	[seqid] [varchar](32) NOT NULL,
	[deptname] [varchar](64) NULL,
	[thisyear] [char](10) NULL,
	[thisseason] [char](10) NULL,
	[checker] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[seqid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchasePlanSupPrice]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchasePlanSupPrice](
	[billno] [varchar](32) NOT NULL,
	[comid] [varchar](32) NOT NULL,
	[supAccount] [varchar](32) NOT NULL,
	[supprice] [numeric](18, 4) NOT NULL,
	[supquantity] [numeric](18, 4) NULL,
	[discount] [numeric](18, 2) NULL,
	[remark] [varchar](128) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PriceRoleD]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PriceRoleD](
	[PRID] [numeric](9, 0) NOT NULL,
	[CustType] [varchar](32) NOT NULL,
	[ComType] [varchar](32) NOT NULL,
	[PriceType] [numeric](9, 0) NULL,
	[CalWay] [int] NULL,
	[PriceRate] [numeric](9, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PriceRole]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PriceRole](
	[PRID] [numeric](9, 0) NOT NULL,
	[PRName] [varchar](32) NOT NULL,
	[CustType] [numeric](9, 0) NOT NULL,
	[ComType] [numeric](9, 0) NOT NULL,
	[begindate] [datetime] NULL,
	[enddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZjbgScan]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZjbgScan](
	[seqId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[BatchNo] [varchar](32) NULL,
	[isSaveToDb] [int] NULL,
	[PicPath] [varchar](256) NULL,
	[zjbg] [image] NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[seqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkShift]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkShift](
	[wkShiftID] [varchar](32) NOT NULL,
	[wkShiftName] [varchar](32) NOT NULL,
	[beginTime] [varchar](32) NOT NULL,
	[endTime] [varchar](32) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wkShiftID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WhLimitUser]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WhLimitUser](
	[TempLateId] [varchar](32) NOT NULL,
	[user_id] [varchar](32) NOT NULL,
 CONSTRAINT [PK__WhLimitUser] PRIMARY KEY CLUSTERED 
(
	[TempLateId] ASC,
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WhLimitDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WhLimitDetail](
	[TempLateId] [varchar](32) NOT NULL,
	[Comid] [varchar](32) NOT NULL,
	[COMNAME] [varchar](128) NULL,
	[ORIGIN] [varchar](80) NULL,
	[COMINDEX] [varchar](64) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[UNIT] [varchar](8) NULL,
	[limit_top] [numeric](18, 0) NULL,
	[limit_mid] [numeric](18, 0) NULL,
	[limit_bottom] [numeric](18, 0) NULL,
	[commen] [varchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WhLimitDept]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WhLimitDept](
	[TempLateId] [varchar](32) NOT NULL,
	[Dept_Code] [varchar](32) NOT NULL,
 CONSTRAINT [PK__WhLimitDept] PRIMARY KEY CLUSTERED 
(
	[TempLateId] ASC,
	[Dept_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WhLimit]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WhLimit](
	[TempLateId] [varchar](32) NOT NULL,
	[TempLateName] [varchar](64) NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[TempLateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WhArea]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WhArea](
	[AreaCatID] [varchar](32) NOT NULL,
	[AreaCatNAME] [varchar](24) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[AreaCatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEBORDERINDEXINFO]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEBORDERINDEXINFO](
	[seq_id] [numeric](18, 0) NULL,
	[IndexInfo] [varchar](1000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEB_USER]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEB_USER](
	[seq_id] [numeric](18, 0) NULL,
	[USER_ID] [numeric](9, 0) NULL,
	[USER_NAME] [varchar](32) NULL,
	[cust_CODE] [varchar](32) NULL,
	[emp_CODE] [varchar](32) NULL,
	[deptcode] [varchar](32) NULL,
	[mobile] [varchar](32) NULL,
	[tuid] [varchar](32) NULL,
	[position] [varchar](32) NULL,
	[landline] [varchar](32) NULL,
	[phone] [varchar](32) NULL,
	[myname] [varchar](32) NULL,
	[oicq] [varchar](32) NULL,
	[MYREMARKS] [varchar](32) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WAREHOUSE]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WAREHOUSE](
	[WAREHOUSE_CODE] [varchar](32) NOT NULL,
	[WAREHOUSE_NAME] [varchar](32) NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
	[SellPackageLimit] [varchar](2) NULL,
	[moveinwh] [varchar](32) NULL,
	[StoreCondition] [varchar](128) NULL,
	[isEntirePackage] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WAREHOUSE_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VersionNo]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VersionNo](
	[Version] [varchar](32) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorTarget]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorTarget](
	[Account] [varchar](32) NOT NULL,
	[MyName] [varchar](128) NOT NULL,
	[FindName] [varchar](64) NULL,
	[Manager] [varchar](32) NULL,
	[Address] [varchar](256) NULL,
	[Contact] [varchar](128) NULL,
	[CreditLevel] [varchar](32) NULL,
	[CreditValue] [numeric](12, 2) NULL,
	[RegDate] [datetime] NULL,
	[InfoPage] [varchar](128) NULL,
	[VendorCatID] [varchar](32) NULL,
	[AreaCatID] [varchar](32) NULL,
	[ApAmount] [numeric](18, 2) NULL,
	[Commen] [varchar](128) NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[fax] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vehicle]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vehicle](
	[seqId] [numeric](18, 0) NOT NULL,
	[vehicleNo] [varchar](64) NOT NULL,
	[drivingPerson] [varchar](32) NULL,
	[drivinglic] [varchar](64) NULL,
	[telephone] [varchar](64) NULL,
	[mobile] [varchar](128) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[seqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_week]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_week]
as  
select '1' as ptype,'星期一' as pname
union all
select '2' as ptype,'星期二' as pname 
union all
select '3' as ptype,'星期三' as pname 
union all
select '4' as ptype,'星期四' as pname 
union all
select '5' as ptype,'星期五' as pname 
union all
select '6' as ptype,'星期六' as pname 
union all
select '7' as ptype,'星期日' as pname
GO
/****** Object:  View [dbo].[v_VouchCodeSource]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_VouchCodeSource]
as 
select 'Default' as ptype,'默认科目' as pname,'' as fldName,'' as refTbname,'' as refCodeFld,'' as refValFld
union all
select 'Department' as ptype,'部门编码' as pname,'deptcode' as fldName,'department' as refTbname,'AcCode' as refCodeFld,'dept_code' as refValFld 
union all
select 'Employee' as ptype,'员工编码' as pname,'empcode' as fldName,'employee' as refTbname,'AcCode' as refCodeFld,'empcode' as refValFld   
union all
select 'Commodity' as ptype,'商品编码' as pname,'comid' as fldName,'commodity' as refTbname,'AcCode' as refCodeFld,'comid' as refValFld  
union all
select 'Vendor' as ptype,'供应商编码' as pname,'supaccount' as fldName,'vendor' as refTbname,'AcCode' as refCodeFld,'Account' as refValFld   
union all
select 'Customer' as ptype,'客户编码' as pname,'custaccount' as fldName,'customer' as refTbname,'AcCode' as refCodeFld,'Account' as refValFld
GO
/****** Object:  View [dbo].[v_VouchAmtSource]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_VouchAmtSource]
as 
select 'AmountTaxed' as ptype,'含税金额' as pname
union all
select 'Amount' as ptype,'无税金额' as pname 
union all
select 'CostsTaxed' as ptype,'含税成本' as pname 
union all
select 'Costs' as ptype,'无税成本' as pname 
union all
select 'TaxAmount' as ptype,'税额' as pname
GO
/****** Object:  View [dbo].[v_SellPackageLimit]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_SellPackageLimit]
as 
select '0' as ptype,'无限制' as pname
union all
select '1' as ptype,'件包装开票' as pname 
union all
select '2' as ptype,'中包装开票' as pname
GO
/****** Object:  View [dbo].[v_isOrnot]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_isOrnot]
as  
select 0 as ptype,'否' as pname
union all
select 1 as ptype,'是' as pname
GO
/****** Object:  View [dbo].[v_invoicetype]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_invoicetype]
as  
select '1' as ptype,'普通发票' as pname
union all
select '2' as ptype,'增值税发票' as pname
GO
/****** Object:  View [dbo].[v_paytype]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_paytype]
as 
select '0' as ptype,'正常' as pname
union all
select '1' as ptype,'预付' as pname
union all
select '2' as ptype,'核销' as pname
GO
/****** Object:  View [dbo].[v_month]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_month]
as  
select '1' as pname union all select '2' as pname union all select '3' as pname  union all select '4' as pname union all select '5' as pname union all select '6' as pname union all select '7' as pname 
union all select '8' as pname union all select '9' as pname union all select '10' as pname union all select '11' as pname union all select '12' as pname union all select '13' as pname union all select '14' as pname 
union all select '15' as pname union all select '16' as pname union all select '17' as pname  union all select '18' as pname union all select '19' as pname union all select '20' as pname union all select '21' as pname 
union all select '22' as pname union all select '23' as pname union all select '24' as pname  union all select '25' as pname union all select '26' as pname union all select '27' as pname union all select '28' as pname 
union all select '29' as pname union all select '30' as pname union all select '31' as pname
GO
/****** Object:  View [dbo].[v_pricetype]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_pricetype]
as 
select '1' as pricetype,'零售价' as pricename
union all
select '2' as pricetype,'批发价' as pricename
union all
select '3' as pricetype,'分销价' as pricename
union all
select '4' as pricetype,'团购价' as pricename
union all
select '5' as pricetype,'特殊价' as pricename 
union all
select '6' as pricetype,'自定义价' as pricename
GO
/****** Object:  Table [dbo].[VendorCategory]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorCategory](
	[VendorCatID] [varchar](32) NOT NULL,
	[VendorCatNAME] [varchar](24) NOT NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[VendorCatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_Log]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_Log](
	[seq_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[thisdate] [datetime] NULL,
	[userID] [varchar](32) NULL,
	[uname] [varchar](32) NULL,
	[logip] [varchar](128) NULL,
	[logtext] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[storeout2]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[storeout2](
	[Billno] [varchar](32) NULL,
	[SaleBillno] [varchar](32) NULL,
	[thisdate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserFavorites]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserFavorites](
	[userID] [varchar](128) NOT NULL,
	[FnMenuID] [varchar](32) NOT NULL,
	[FnMenuName] [varchar](32) NOT NULL,
	[IsAutoRun] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAuthDtFilter]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAuthDtFilter](
	[seq_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[userID] [varchar](32) NOT NULL,
	[FnMenuID] [varchar](32) NOT NULL,
	[ColName] [varchar](128) NOT NULL,
	[ROpr] [int] NULL,
	[Opr] [varchar](32) NULL,
	[Value] [varchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAuthDt]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAuthDt](
	[userID] [varchar](32) NOT NULL,
	[FnMenuID] [varchar](32) NOT NULL,
	[Operation] [varchar](500) NULL,
	[bdate] [datetime] NULL,
	[edate] [datetime] NULL,
	[VisibleField] [text] NULL,
	[EditField] [text] NULL,
	[Filter] [text] NULL,
 CONSTRAINT [PK__UserAuthDt] PRIMARY KEY CLUSTERED 
(
	[userID] ASC,
	[FnMenuID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UpdateFile]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UpdateFile](
	[SeqID] [int] NULL,
	[fName] [varchar](32) NULL,
	[isRar] [varchar](8) NULL,
	[fText] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnqualifiedMedInfo]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnqualifiedMedInfo](
	[SeqId] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[RegDate] [datetime] NOT NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[ORIGIN] [varchar](80) NULL,
	[COMINDEX] [varchar](64) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[UNIT] [varchar](8) NULL,
	[Batchno] [varchar](32) NULL,
	[Supname] [varchar](128) NULL,
	[CheckByLaw] [varchar](128) NULL,
	[CheckItem] [varchar](400) NULL,
	[CheckUnit] [varchar](128) NULL,
	[RegDept] [varchar](32) NULL,
	[RegPerson] [varchar](32) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedDataType [dbo].[u001]    Script Date: 08/18/2017 14:04:02 ******/
CREATE TYPE [dbo].[u001] FROM [float] NOT NULL
GO
/****** Object:  Table [dbo].[TransUnit]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransUnit](
	[Billno] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocStatus] [int] NOT NULL,
	[Audit] [int] NULL,
	[INUSE] [numeric](1, 0) NOT NULL,
	[MyName] [varchar](128) NOT NULL,
	[FindName] [varchar](64) NULL,
	[Manager] [varchar](32) NULL,
	[Address] [varchar](256) NULL,
	[Contact] [varchar](128) NULL,
	[commen] [varchar](128) NULL,
	[fax] [varchar](32) NULL,
	[busiLicEntName] [datetime] NULL,
	[businessLicense] [varchar](32) NULL,
	[busiLicExp] [datetime] NULL,
	[busiLicPerson] [varchar](32) NULL,
	[busiLicIssue] [varchar](32) NULL,
	[busiLicIssueDate] [datetime] NULL,
	[businessScope] [varchar](256) NULL,
	[applyReason] [varchar](32) NULL,
	[SalesPerson] [varchar](32) NULL,
	[SalesDate] [datetime] NULL,
	[SalesRemark] [varchar](256) NULL,
	[QcManager] [varchar](32) NULL,
	[QcCheckDate] [datetime] NULL,
	[QcCheckRemark] [varchar](256) NULL,
	[viceManager] [varchar](32) NULL,
	[vmCheckDate] [datetime] NULL,
	[vmCheckRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Billno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tm_codesum]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tm_codesum](
	[Row_Id] [int] IDENTITY(1,1) NOT NULL,
	[vouch_no] [varchar](32) NULL,
	[digest] [varchar](8) NOT NULL,
	[code] [varchar](24) NULL,
	[code1] [varchar](24) NULL,
	[j_amount] [money] NULL,
	[d_amount] [money] NULL,
	[jd_flag] [varchar](2) NOT NULL,
	[ba] [money] NOT NULL,
	[seq] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tm_codedetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tm_codedetail](
	[Row_Id] [int] IDENTITY(1,1) NOT NULL,
	[thisdate] [datetime] NOT NULL,
	[vouch_no] [varchar](42) NULL,
	[DIGEST] [varchar](64) NULL,
	[code] [varchar](24) NULL,
	[j_amount] [money] NULL,
	[d_amount] [money] NULL,
	[jd_flag] [varchar](2) NOT NULL,
	[ba] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tm_apquerydetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tm_apquerydetail](
	[Row_Id] [int] IDENTITY(1,1) NOT NULL,
	[thisdate] [datetime] NULL,
	[startdate] [varchar](10) NOT NULL,
	[enddate] [varchar](10) NOT NULL,
	[DIGEST] [varchar](37) NOT NULL,
	[md] [numeric](38, 2) NULL,
	[mc] [numeric](38, 2) NULL,
	[endf] [varchar](2) NULL,
	[endamt] [numeric](38, 2) NULL,
	[billno] [varchar](32) NULL,
	[thistype] [int] NULL,
	[vouchno] [varchar](46) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaskManage]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskManage](
	[seq_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[sendTime] [datetime] NULL,
	[userID] [varchar](32) NULL,
	[userName] [varchar](32) NULL,
	[recvUID] [varchar](32) NULL,
	[recvUname] [varchar](32) NULL,
	[taskTitle] [varchar](128) NULL,
	[taskContent] [varchar](1000) NULL,
	[LimitTime] [varchar](128) NULL,
	[limitDate] [datetime] NULL,
	[result] [varchar](256) NULL,
	[flag] [int] NULL,
	[doneTime] [datetime] NULL,
	[regTime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemPara]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemPara](
	[EnableSystemMessage] [int] NULL,
	[CommonMaintainPlanTimer] [int] NOT NULL,
	[KeyMaintainPlanTimer] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysParameter]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysParameter](
	[PriceRoleID] [varchar](256) NULL,
	[PriceRoleName] [varchar](1024) NULL,
	[Score] [int] NOT NULL,
	[Unit] [numeric](12, 2) NOT NULL,
	[ThrowLeft] [bit] NOT NULL,
	[recRefund] [bit] NOT NULL,
	[IsScore] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysMaxSeqNo]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysMaxSeqNo](
	[seqid] [varchar](32) NOT NULL,
	[SeqName] [varchar](32) NULL,
	[MaxSeqNo] [varchar](32) NULL,
	[thisDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[seqid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysMaintain]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysMaintain](
	[SeqId] [varchar](32) NOT NULL,
	[thisdate] [datetime] NOT NULL,
	[content] [varchar](1000) NOT NULL,
	[reason] [varchar](128) NULL,
	[commen] [varchar](800) NULL,
	[docperson] [varchar](32) NULL,
	[applier] [varchar](32) NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[inspperson] [varchar](32) NULL,
	[inspremark] [varchar](256) NULL,
	[inspdate] [datetime] NULL,
	[ItDeptPerson] [varchar](32) NULL,
	[ItDeptDate] [datetime] NULL,
	[ItDeptRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[doctime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sysField]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sysField](
	[seq_id] [int] IDENTITY(1,1) NOT NULL,
	[fnMenuID] [varchar](32) NULL,
	[tbName] [varchar](256) NULL,
	[fldName] [varchar](256) NULL,
	[cName] [varchar](256) NULL,
	[fType] [varchar](32) NULL,
	[fWidth] [int] NULL,
	[defaultVal] [varchar](32) NULL,
	[OrderSeq] [int] NULL,
	[OrderType] [int] NULL,
	[isOnlyEdit] [int] NULL,
	[isOnlyQry] [int] NULL,
	[isProtect] [int] NULL,
	[isText] [int] NULL,
	[isFilter] [int] NULL,
	[isRef] [int] NULL,
	[refCol] [varchar](128) NULL,
	[refColVal] [varchar](128) NULL,
	[refTable] [varchar](128) NULL,
	[refStDictType] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysDev_Log]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysDev_Log](
	[seq_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[thisdate] [datetime] NULL,
	[userID] [varchar](32) NULL,
	[uname] [varchar](32) NULL,
	[logip] [varchar](128) NULL,
	[logtext] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_getdate]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_getdate]
as  
select curDate =getdate()
GO
/****** Object:  View [dbo].[v_commissiontype]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_commissiontype]
as  
select '1' as ptype,'按数量提取' as pname
union all
select '2' as ptype,'按金额提取' as pname 
union all
select '3' as ptype,'按利润提取' as pname
GO
/****** Object:  View [dbo].[v_codetype]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_codetype]
as 
select '资产' as ptype,'资产' as pname
union all
select '负债' as ptype,'负债' as pname
union all
select '成本' as ptype,'成本' as pname 
union all
select '权益' as ptype,'权益' as pname 
union all
select '损益' as ptype,'损益' as pname
GO
/****** Object:  View [dbo].[v_CodeGrade]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_CodeGrade]
as 
select '0' as ptype,'一级' as pname
union all
select '1' as ptype,'二级' as pname
union all
select '2' as ptype,'三级' as pname
union all
select '3' as ptype,'四级' as pname
union all
select '4' as ptype,'五级' as pname
union all
select '5' as ptype,'六级' as pname 
union all
select '6' as ptype,'七级' as pname
GO
/****** Object:  View [dbo].[v_codeflag]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_codeflag]
as 
select '0' as ptype,'贷' as pname
union all
select '1' as ptype,'借' as pname
GO
/****** Object:  View [dbo].[v_city]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_city]
as 
select distinct city as pname,province from chinaCity where city is not null
GO
/****** Object:  View [dbo].[v_deptWh]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_deptWh]
as 
select dept_code,warehouse_code
from deptWh
GO
/****** Object:  View [dbo].[v_deptUser]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_deptUser]
as 
select dept_code,user_id
from DeptUser
GO
/****** Object:  View [dbo].[v_county]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_county]
as 
select distinct county as pname,province,city from chinaCity where county is not null
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendor](
	[Account] [varchar](32) NOT NULL,
	[MyName] [varchar](128) NOT NULL,
	[FindName] [varchar](64) NULL,
	[Manager] [varchar](32) NULL,
	[Address] [varchar](256) NULL,
	[Contact] [varchar](128) NULL,
	[CreditLevel] [varchar](32) NULL,
	[CreditValue] [numeric](12, 2) NULL,
	[RegDate] [datetime] NULL,
	[InfoPage] [varchar](128) NULL,
	[VendorCatID] [varchar](32) NOT NULL,
	[AreaCatID] [varchar](32) NULL,
	[ApAmount] [numeric](18, 2) NULL,
	[Commen] [varchar](128) NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[openingBank] [varchar](128) NULL,
	[accountNumber] [varchar](64) NULL,
	[taxcode] [varchar](32) NULL,
	[fax] [varchar](32) NULL,
	[businessLicense] [varchar](256) NULL,
	[busiLicExp] [datetime] NULL,
	[busiLicCheckDate] [datetime] NULL,
	[businessScope] [varchar](800) NULL,
	[QscNo] [varchar](32) NULL,
	[QscExp] [datetime] NULL,
	[QscScope] [varchar](256) NULL,
	[licence] [varchar](128) NULL,
	[licenceExp] [datetime] NULL,
	[licenceScope] [varchar](800) NULL,
	[zip] [varchar](6) NULL,
	[telephone] [varchar](64) NULL,
	[catName] [varchar](128) NULL,
	[stLicScope] [varchar](256) NULL,
	[AcCode] [varchar](32) NULL,
	[CreditLine] [numeric](18, 2) NULL,
	[CreditTerm] [int] NULL,
	[QaExpdate] [datetime] NULL,
	[isContinue] [int] NULL,
	[mobile] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_rtpricetype]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_rtpricetype]
as 
select '-1' as ptype,'零售价' as pname
union all
select '-2' as pricetype,'批发价' as pricename
union all
select '-3' as pricetype,'公告价' as pricename
union all
select '-4' as pricetype,'会员价' as pricename
union all
select '-5' as pricetype,'特惠价' as pricename 
union all
select '-6' as pricetype,'自定义价' as pricename 
union all
select '-99' as pricetype,'部门零售价' as pricename 
union all
select '-100' as pricetype,'部门会员价' as pricename  
union all 
select catid,catname from ComPriceType
GO
/****** Object:  View [dbo].[v_rtcusttype]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_rtcusttype]
as 
select '-1' as ptype,'普通顾客' as pname 
union all 
select '-100' as ptype,'所有顾客' as pname 
union all 
select Memcatid,Memcatname from MemberCategory
GO
/****** Object:  View [dbo].[v_rtComPriceCat]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_rtComPriceCat]
as 
select '-100' as ptype,'所有商品' as pname 
union all 
select catid,catname from ComPriceCat
GO
/****** Object:  View [dbo].[v_province]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_province]
as 
select distinct province as pname from chinaCity
GO
/****** Object:  Table [dbo].[SalesCommissionByAmt]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesCommissionByAmt](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesCommission]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesCommission](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesShipping]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesShipping](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[TransportTime] [datetime] NULL,
	[dealer] [varchar](32) NULL,
	[transUnit] [varchar](128) NULL,
	[shippingNo] [varchar](64) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
	[DespatchTime] [datetime] NULL,
	[packNo] [int] NULL,
	[BagNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RequestPlan]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RequestPlan](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreMoveByPack]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreMoveByPack](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[InvSeqNo] [numeric](18, 0) NULL,
	[WhCode] [varchar](32) NULL,
	[SrcLocId] [varchar](32) NULL,
	[DesLocId] [varchar](32) NULL,
	[ComID] [varchar](32) NULL,
	[Quantity] [numeric](18, 2) NULL,
	[DownComID] [varchar](32) NULL,
	[DownPackNo] [int] NULL,
	[DesInvSeqNo] [numeric](18, 0) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreCheckInput]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreCheckInput](
	[BillNo] [varchar](32) NOT NULL,
	[OrderType] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[OriginBill] [varchar](32) NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreAdjust]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreAdjust](
	[BillNo] [varchar](32) NOT NULL,
	[OrderType] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[Commen] [varchar](256) NULL,
	[PrintTime] [varchar](800) NULL,
	[PrintCount] [int] NULL,
	[PrintUser] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreCheck]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreCheck](
	[BillNo] [varchar](32) NOT NULL,
	[OrderType] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[InputStatus] [int] NULL,
	[CheckStatus] [int] NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_update_accsum]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_update_accsum]  
as
begin
	declare @sql nvarchar(4000) 
 

	declare @lMaxGrade int,@lRow int,@lCounter int
	
	select @lMaxGrade =max(grade) from Accode ;
	
	if @lMaxGrade = 0 
	begin
		return 
	end
	
begin tran;
	select @lCounter = @lMaxGrade,@lRow = 1 ;
	
	while @lRow <=@lMaxGrade 	
	begin
		update Acaccsum 
		set amount_j = aa.amount_j ,amount_d = aa.amount_d,amount_pre = aa.amount_pre ,amount_cur = aa.amount_cur
		from 
			(select a.period,b.parent_code ,sum(a.amount_j) as amount_j,sum(amount_d) as amount_d ,
					  sum(a.amount_pre) as amount_pre,sum(amount_cur) as amount_cur
			from Acaccsum a, Accode b
			where a.code = b.code and b.parent_code is not null and b.grade = @lCounter
			group by  a.period,b.parent_code ) as aa, Accode cc
		where Acaccsum.code = aa.parent_code and
				Acaccsum.code = cc.code and 
				Acaccsum.period = aa.period and 
				cc.grade = @lCounter - 1 ;				
		if @@error <> 0 
		 begin
			raiserror('1、科目汇总失败!',16,1)
			rollback tran;
			return
		 end
		
		select @lCounter = @lCounter - 1 ,@lRow = @lRow + 1;
	end
	
	--计算期末借贷标志
	 update Acaccsum  
	 set begin_jd = case when Acaccsum.amount_pre <>0 then case Accode.jd_direction when 1 then '借' when 0 then '贷'  end   
							else '平'    end ,  
		  begin_jd_flag = case when Acaccsum.amount_pre <>0 then case Accode.jd_direction when 1 then 'J' when 0 then 'D'   end  
							else '-'    end   
	 FROM Accode where Acaccsum.code = Accode.code  ; 
	 if @@error <> 0 
	 begin
		raiserror('2、科目汇总失败!',16,1)
		rollback tran;
		return
	 end
	
	 update Acaccsum 
	 set end_jd = case when (amount_j - amount_d + case begin_jd_flag when 'J' then amount_pre when 'D' then - amount_pre else 0 end)>0 then '借'  
	 			            when (amount_j - amount_d + case begin_jd_flag when 'J' then amount_pre when 'D' then - amount_pre else 0 end)<0 then '贷'  
	 							else '平'   
	 					  end ,  
	 		 end_jd_flag = case when (amount_j - amount_d + case begin_jd_flag when 'J' then amount_pre when 'D' then - amount_pre else 0 end)>0 then 'J'  
	 			            when (amount_j - amount_d + case begin_jd_flag when 'J' then amount_pre when 'D' then - amount_pre else 0 end)<0 then 'D'   
	 							else '-'   
	 					  end   ;	 
	if @@error <> 0 
	 begin
		raiserror('3、科目汇总失败!',16,1)
		rollback tran;
		return
	 end
commit tran;
end
GO
/****** Object:  Table [dbo].[StorageMove]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StorageMove](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[InvSeqNo] [numeric](18, 0) NULL,
	[WhCode] [varchar](32) NULL,
	[SrcLocId] [varchar](32) NULL,
	[DesLocId] [varchar](32) NULL,
	[Quantity] [numeric](18, 2) NULL,
	[DesInvSeqNo] [numeric](18, 0) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[commen] [varchar](256) NULL,
	[reqInuse] [int] NULL,
	[comid] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_query_codedetail]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_query_codedetail] (@period int,@code varchar(128),@filter nvarchar(1000))
as
begin
begin tran;
	declare @sql nvarchar(4000)
	declare @rowcount numeric(9,0),@row numeric(9,0),@str varchar(32)
	declare @jamount1 numeric(18,2),@damount1 numeric(18,2),@jamount2 numeric(18,2),@damount2 numeric(18,2),@amount numeric(18,2)
	declare @flag1 varchar(8),@flag2 varchar(8),@codeflag int,@endflag varchar(8)
	
	if exists (select * from sysobjects where name='tm_codedetail' and type='U')
	  drop table tm_codedetail 

	--先查询出结果
	select @sql = 'select IDENTITY(int, 1, 1) as Row_Id,thisdate,vouch_no,DIGEST,code,j_amount,d_amount,jd_flag,ba
		into tm_codedetail
		from (
			select b.startdate as thisdate,cast(null as varchar(32)) as vouch_no,''期初余额'' as DIGEST,null as code,null as j_amount,
			   null as d_amount,a.begin_jd_flag as jd_flag ,a.amount_pre as ba
			from acaccsum a,AcMonthSet b
			where a.period = b.accnt_id  and a.code = '''+ @code+''' and a.period = '+cast(@period as varchar(32))+'
		      union all select THISDATE,sign+cast(VOUCH_NO as varchar(32)),DIGEST,code,J_AMOUNT,D_AMOUNT,'''' as jd_flag,0 as ba
			from v_vouch where is_booked = 2  and code = '''+ @code+'''
         		   and period = '+cast(@period as varchar(32)) +@filter+') as aa'; 
	
 	execute sp_executesql @sql;

	--更新余额
	select @rowcount = count(1) from tm_codedetail;
	select @codeflag = jd_direction from accode where code = @code;
	select @row = 1;

	while @row<=@rowcount
	begin
		if @row = 1
		begin
			select @str = code from tm_codedetail where code is not null and Row_Id = @row; 
			if  @str is not null
			begin  
				select @jamount1 = isnull(j_amount,0),@damount1 = isnull(d_amount,0) 
				from tm_codedetail where Row_Id = @row ;
				 
				if @jamount1 > 0 
				  update tm_codedetail set jd_flag = 'J',ba = @jamount1 where Row_Id = @row ;
				else if @damount1 > 0 
				  update tm_codedetail set jd_flag = 'D',ba = @damount1 where Row_Id = @row;
				else
				  update tm_codedetail set jd_flag = '-',ba = 0 where Row_Id = @row
				
				select @jamount1 = isnull(j_amount,0),@damount1 = isnull(d_amount,0),@flag1 = jd_flag
				from tm_codedetail where Row_Id = @row ;
			end
			else
			begin
				select  @jamount1 =case jd_flag when 'J' then isnull(ba,0) else 0 end,
					@damount1 =case jd_flag when 'D' then isnull(ba,0) else 0 end,@flag1 = jd_flag
				from tm_codedetail where Row_Id = @row ;
			end
		end
		else
		begin
			select  @jamount1 =case jd_flag when 'J' then isnull(ba,0) else 0 end,
				@damount1 =case jd_flag when 'D' then isnull(ba,0) else 0 end,@flag1 = jd_flag
			from tm_codedetail where Row_Id = @row ;
		end
 
		if @row + 1 > @rowcount
			break;

		select @jamount2 = isnull(j_amount,0),@damount2 = isnull(d_amount,0),@flag2 = jd_flag
		from tm_codedetail where Row_Id = @row + 1;
		
		select @amount =  @jamount1 -@damount1 + @jamount2 -@damount2; 
		
		if @codeflag = 1 and @amount > 0 
			select @endflag = 'J' ;
		else if @codeflag = 1 and @amount < 0
			select @endflag = 'D' ;
		else if @codeflag = 0 and @amount > 0
			select @endflag = 'J' ;
		else if @codeflag = 0 and @amount < 0
			select @endflag = 'D';
		else  
			select @endflag = '-';
		
		update tm_codedetail set jd_flag = @endflag,ba = abs(@amount) where Row_Id = @row + 1;

		select @row = @row + 1;
	end

	select @sql = 'select thisdate,vouch_no,DIGEST,code,codename=(select code_name from AcCode where code = tm_codedetail.code),j_amount,d_amount,case jd_flag  when ''J'' then ''借'' when ''D'' then ''贷'' else ''平'' end as jd_flag,ba from tm_codedetail';

	execute sp_executesql @sql;
commit tran;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_query_apdetail]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure
[dbo].[sp_query_apdetail](@supcode varchar(32),@startdate varchar(20),@enddate varchar(20)) 
as 
begin
	declare @inidate varchar(10),@sql nvarchar(4000),@iSetType int,@rowcount int,@row int,@endflag varchar(8)
	declare @jamount1 numeric(18,4),@damount1 numeric(18,4),@jamount2 numeric(18,4),@damount2 numeric(18,4),@amount numeric(18,4)

	select @enddate = convert(varchar(10),dateadd(dd,1,@enddate),120);
	select @inidate = isnull(min(thisdate),'1900-1-1') from aciniaccnt where thistype = 1; 
	if exists (select * from sysobjects where name='tm_apquerydetail' and type='U')
	  drop table tm_apquerydetail;
 
	select @sql = ' select IDENTITY(int, 1, 1) as Row_Id,thisdate,'''+@startdate+''' as startdate,'''+@enddate+''' as enddate,DIGEST,md,mc,endf,endamt,billno,thistype,vouchno
			into tm_apquerydetail
	from (
		--期初数据
		select '''+@startdate+''' as thisdate,''期初余额'' as DIGEST,null as md,null as mc,
			endf=case  when sum(qc) >0 then ''借'' when sum(qc) <0 then ''贷'' else ''平'' end,isnull(abs(sum(qc)),0) as endamt,null as billno,null as thistype,null as vouchno
		from (
			select amount as qc from aciniaccnt 
				where  aciniaccnt.account='''+@supcode+''' and thistype = 1 and thisdate <='''+@startdate +''''+
			'union all select sum(case when a.ordertype =1 then b.amount else -b.amount end) as qc	from storein a,storeindetail b
			where a.billno = b.billno and a.ordertype <>0  and a.docstatus = 0 and b.inuse=0 and a.IsPayed = 0 and  thisdate >='''+@inidate+''' and  thisdate < '''+@startdate+''''+ 
			'		 and a.supAccount='''+@supcode+''' 
			union all select -sum(b.payamount) as qc	 
			from acpay a,acpaydetail b
			where a.billno = b.billno  and a.ordertype = 1 and a.docstatus = 0  and a.account='''+@supcode+''' and thisdate >='''+@inidate+''' and thisdate <'''+@startdate+'''' +
		') as qca
		--发生数据 
		union all select aciniaccnt.thisdate,''初始账款'' as DIGEST,md=case when amount>0 then amount else null end,mc=case when amount<0 then -amount else null end, 
			endf=null,endamt=null,null as billno,thistype=0,null as vouchno
			from aciniaccnt  where   thistype = 1  and aciniaccnt.account='''+@supcode+''' and thisdate >'''+@startdate +''' and thisdate <='''+@enddate +''''+
		'union all select thisdate,''购进''+a.billno as DIGEST,md= sum(case when a.ordertype =1 then b.amount else -b.amount end),mc=null, 
			endf=null,endamt=null,a.billno,thistype=1,vouchno = (select convert(varchar(10),thisdate,120) +''第''+ cast(vouch_no as varchar(32))+''号'' from acvouch where vouchid = (select min(vouchid) from storeindetail where billno = a.billno))
			from storein a,storeindetail b
			where a.billno = b.billno and a.ordertype <>0  and a.docstatus = 0 and b.inuse=0 and a.IsPayed = 0 and thisdate >='''+@inidate+''' and thisdate >='''+@startdate+''''+
		' and thisdate <= '''+@enddate +''''+
		'  and a.supAccount='''+@supcode+''' group by thisdate,a.billno
		union all select thisdate,''付款:''+a.billno as DIGEST,md=null,mc= sum(b.PayAmount), 
			endf=null,endamt=null,a.billno,thistype=2,vouchno = (select convert(varchar(10),thisdate,120) +''第''+ cast(vouch_no as varchar(32))+''号'' from acvouch where vouchid =  (select min(vouchid) from acpaydetail where billno = a.billno) )
			from acpay a,acpaydetail b
			where a.billno = b.billno  and a.ordertype = 1 and a.docstatus = 0 and a.account='''+@supcode+''' and thisdate >='''+@inidate+''' and thisdate >='''+@startdate+''''+
		' and thisdate <='''+@enddate+''''+
		' group by thisdate,a.billno) as aa order by thisdate,billno' 
 
	--执行查询
	execute sp_executesql @sql; 

	--更新余额
	select @rowcount = count(1) from tm_apquerydetail;
	select @row = 1;

	while @row<=@rowcount
	begin		 
		select  @jamount1 =case endf when '借' then endamt else 0 end,@damount1 =case endf when '贷' then endamt else 0 end 
			from tm_apquerydetail where Row_Id = @row ;
		 
 
		if @row + 1 > @rowcount
		begin
			break;
		end 

		select @jamount2 = isnull(md,0),@damount2 = isnull(mc,0) 
		from tm_apquerydetail where Row_Id = @row + 1;
		
		select @amount =  @jamount1 -@damount1 + @jamount2 -@damount2; 
		
		if @amount > 0 
			select @endflag = '借' ;
		else if @amount < 0
			select @endflag = '贷' ; 
		else  
			select @endflag = '平';

		update tm_apquerydetail set endf = @endflag,endamt = abs(@amount) where Row_Id = @row + 1;
 
		select @row = @row + 1;
	end

	select @sql = 'select thisdate,DIGEST,md,mc,endf,endamt,vouchno,billno from tm_apquerydetail order by Row_Id';

	execute sp_executesql @sql;

end
GO
/****** Object:  StoredProcedure [dbo].[sp_query_ardetail]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure
[dbo].[sp_query_ardetail](@custcode varchar(32),@startdate varchar(20),@enddate varchar(20)) 
as 
begin
	declare @inidate varchar(10),@sql nvarchar(4000),@iSetType int,@rowcount int,@row int,@endflag varchar(8)
	declare @jamount1 numeric(18,4),@damount1 numeric(18,4),@jamount2 numeric(18,4),@damount2 numeric(18,4),@amount numeric(18,4)

	select @enddate = convert(varchar(10),dateadd(dd,1,@enddate),120);  
	select @inidate = isnull(min(thisdate),'1900-1-1') from aciniaccnt where thistype = 1; 
	if exists (select * from sysobjects where name='tm_apquerydetail' and type='U')
	  drop table tm_apquerydetail;
 
	select @sql = ' select IDENTITY(int, 1, 1) as Row_Id,thisdate,'''+@startdate+''' as startdate,'''+@enddate+''' as enddate,DIGEST,md,mc,endf,endamt,billno,thistype,vouchno
			into tm_apquerydetail
	from (
		--期初数据
		select '''+@startdate+''' as thisdate,''期初余额'' as DIGEST,null as md,null as mc,
			endf=case  when sum(qc) >0 then ''借'' when sum(qc) <0 then ''贷'' else ''平'' end,isnull(abs(sum(qc)),0) as endamt,null as billno,null as thistype,null as vouchno
		from (
			select amount as qc from aciniaccnt 
				where  aciniaccnt.account='''+@custcode+''' and thistype = 2 and thisdate <='''+@startdate +''''+
			'union all select sum(case when a.ordertype =1 then (case when dbo.fn_SalePara(''AcBySettlePrice'') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) else -(case when dbo.fn_SalePara(''AcBySettlePrice'') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) end) as qc	from storeout a,storeoutdetail b
			where a.billno = b.billno  and a.docstatus = 0 and b.inuse=0 and a.IsPayed = 0  and  thisdate >='''+@inidate+''' and  thisdate < '''+@startdate+''''+ 
			'		 and a.custAccount='''+@custcode+''' 
			union all select -sum(b.payamount) as qc	 
			from acpay a,acpaydetail b
			where a.billno = b.billno  and a.ordertype = 2 and a.docstatus = 0  and a.account='''+@custcode+''' and thisdate >='''+@inidate+''' and thisdate <'''+@startdate+'''' +
		') as qca
		--发生数据 
		union all select aciniaccnt.thisdate,''初始账款'' as DIGEST,md=case when amount>0 then amount else null end,mc=case when amount<0 then -amount else null end, 
			endf=null,endamt=null,null as billno,thistype=0,null as vouchno
			from aciniaccnt  where   thistype = 2  and aciniaccnt.account='''+@custcode+''' and thisdate >'''+@startdate +''' and thisdate <='''+@enddate +''''+
		'union all select thisdate,''销售''+a.billno as DIGEST,md=sum(case when a.ordertype =1 then (case when dbo.fn_SalePara(''AcBySettlePrice'') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) else -(case when dbo.fn_SalePara(''AcBySettlePrice'') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) end),mc=null, 
			endf=null,endamt=null,a.billno,thistype=1,vouchno = (select convert(varchar(10),thisdate,120) +''第''+ cast(vouch_no as varchar(32))+''号'' from acvouch where vouchid = (select min(vouchid) from storeoutdetail where billno = a.billno))
			from storeout a,storeoutdetail b
			where a.billno = b.billno  and a.docstatus = 0 and b.inuse=0 and a.IsPayed = 0 and thisdate >='''+@inidate+''' and thisdate >='''+@startdate+''''+
		' and thisdate <= '''+@enddate +''''+
		'  and a.custAccount='''+@custcode+''' group by thisdate,a.billno
		union all select thisdate,''付款:''+a.billno as DIGEST,md=null,mc=sum(b.PayAmount), 
			endf=null,endamt=null,a.billno,thistype=2,vouchno = (select convert(varchar(10),thisdate,120) +''第''+ cast(vouch_no as varchar(32))+''号'' from acvouch where vouchid =  (select min(vouchid) from acpaydetail where billno = a.billno) )
			from acpay a,acpaydetail b
			where a.billno = b.billno  and a.ordertype = 2 and a.docstatus = 0 and a.account='''+@custcode+''' and thisdate >='''+@inidate+''' and thisdate >='''+@startdate+''''+
		' and thisdate <='''+@enddate+''''+
		' group by thisdate,a.billno) as aa order by thisdate,billno' 
	--执行查询
	execute sp_executesql @sql; 

	--更新余额
	select @rowcount = count(1) from tm_apquerydetail;
	select @row = 1;

	while @row<=@rowcount
	begin		 
		select  @jamount1 =case endf when '借' then endamt else 0 end,@damount1 =case endf when '贷' then endamt else 0 end 
			from tm_apquerydetail where Row_Id = @row ;
		 
 
		if @row + 1 > @rowcount
		begin
			break;
		end 

		select @jamount2 = isnull(md,0),@damount2 = isnull(mc,0) 
		from tm_apquerydetail where Row_Id = @row + 1;
		
		select @amount =  @jamount1 -@damount1 + @jamount2 -@damount2; 
		
		if @amount > 0 
			select @endflag = '借' ;
		else if @amount < 0
			select @endflag = '贷' ; 
		else  
			select @endflag = '平';

		update tm_apquerydetail set endf = @endflag,endamt = abs(@amount) where Row_Id = @row + 1;
 
		select @row = @row + 1;
	end

	select @sql = 'select thisdate,DIGEST,md,mc,endf,endamt,vouchno,billno from tm_apquerydetail order by Row_Id';

	execute sp_executesql @sql;

end
GO
/****** Object:  Table [dbo].[SalesTransport]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesTransport](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[TransportTime] [varchar](32) NULL,
	[sendAddr] [varchar](256) NULL,
	[transMode] [varchar](63) NULL,
	[dealer] [varchar](32) NULL,
	[transUnit] [varchar](128) NULL,
	[vehicleNo] [varchar](32) NULL,
	[drivingLic] [varchar](32) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
	[despatchTemp] [varchar](128) NULL,
	[tempControlWay] [varchar](128) NULL,
	[isFreeze] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMMODITY]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMMODITY](
	[COMID] [varchar](32) NOT NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[ORIGIN] [varchar](80) NULL,
	[COMINDEX] [varchar](64) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[UNIT] [varchar](8) NULL,
	[ItemType] [int] NOT NULL,
	[ComCatID] [varchar](32) NOT NULL,
	[PiecePacking] [varchar](32) NULL,
	[Outerpacking] [varchar](32) NULL,
	[Innerpacking] [varchar](32) NULL,
	[qualitylevel] [varchar](32) NULL,
	[Weight] [varchar](32) NULL,
	[price1] [numeric](18, 4) NULL,
	[price2] [numeric](18, 4) NULL,
	[price3] [numeric](18, 4) NULL,
	[price4] [numeric](18, 4) NULL,
	[price5] [numeric](18, 4) NULL,
	[price6] [numeric](18, 4) NULL,
	[barcode] [varchar](32) NULL,
	[limit_top] [numeric](18, 0) NULL,
	[limit_mid] [numeric](18, 0) NULL,
	[limit_bottom] [numeric](18, 0) NULL,
	[color] [varchar](32) NULL,
	[taxin] [numeric](9, 2) NULL,
	[taxout] [numeric](9, 2) NULL,
	[perSLquan] [numeric](18, 2) NULL,
	[presentQuan] [numeric](18, 2) NULL,
	[InPrice] [numeric](18, 2) NULL,
	[name_chem] [varchar](128) NULL,
	[auth_code] [varchar](128) NULL,
	[authExp] [datetime] NULL,
	[standardClass] [varchar](32) NULL,
	[isBaseMed] [int] NULL,
	[PRESCRIPTION] [int] NULL,
	[medType] [varchar](64) NULL,
	[medUsage] [varchar](256) NULL,
	[storeCondition] [varchar](256) NULL,
	[contraindication] [varchar](64) NULL,
	[labelNotes] [varchar](64) NULL,
	[detailNotes] [varchar](256) NULL,
	[manufacturer] [varchar](64) NULL,
	[trademark] [varchar](32) NULL,
	[GmpNo] [varchar](32) NULL,
	[GmpExp] [datetime] NULL,
	[CreatePurpose] [varchar](64) NULL,
	[insp_item] [varchar](128) NULL,
	[insp_standard] [varchar](64) NULL,
	[character] [varchar](64) NULL,
	[isSpecial] [int] NULL,
	[isXFJ] [int] NULL,
	[isSWZP] [int] NULL,
	[isELJSYP] [int] NULL,
	[isQX] [int] NULL,
	[MedStType] [varchar](256) NULL,
	[AcCode] [varchar](32) NULL,
	[SeqNo] [varchar](32) NULL,
	[PromptionType] [varchar](32) NULL,
	[ComCode] [varchar](32) NULL,
	[isImportDrugs] [int] NULL,
	[MaintainCycle] [int] NULL,
	[AlertExpDayNum] [int] NULL,
	[ComPriceCat] [varchar](32) NULL,
	[supAccount] [varchar](32) NULL,
	[supName] [varchar](128) NULL,
	[isEMC] [int] NULL,
	[isNewProduct] [int] NULL,
	[isMhj] [int] NULL,
	[isStop] [int] NULL,
	[barcodeex] [varchar](32) NULL,
	[isFreeze] [int] NULL,
	[PurchaseEmpName] [varchar](32) NULL,
	[pricenull] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[COMID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Account] [varchar](32) NOT NULL,
	[MyName] [varchar](128) NOT NULL,
	[FindName] [varchar](64) NULL,
	[Manager] [varchar](32) NULL,
	[Address] [varchar](256) NULL,
	[Contact] [varchar](128) NULL,
	[CreditLevel] [varchar](32) NULL,
	[CreditValue] [numeric](12, 2) NULL,
	[RegDate] [datetime] NULL,
	[PriceType] [varchar](9) NULL,
	[CustCatID] [varchar](32) NOT NULL,
	[AreaCatID] [varchar](32) NULL,
	[ArAmount] [numeric](18, 2) NULL,
	[Commen] [varchar](128) NULL,
	[ilevel] [int] NULL,
	[parent_code] [varchar](32) NULL,
	[MemberNo] [varchar](32) NULL,
	[Score] [numeric](18, 2) NOT NULL,
	[CurLeft] [numeric](18, 2) NULL,
	[LastDate] [datetime] NULL,
	[payType] [varchar](32) NULL,
	[openingBank] [varchar](128) NULL,
	[accountNumber] [varchar](64) NULL,
	[taxcode] [varchar](32) NULL,
	[fax] [varchar](32) NULL,
	[businessLicense] [varchar](32) NULL,
	[busiLicExp] [datetime] NULL,
	[busiLicCheckDate] [datetime] NULL,
	[businessScope] [varchar](256) NULL,
	[QscNo] [varchar](32) NULL,
	[QscExp] [datetime] NULL,
	[QscScope] [varchar](256) NULL,
	[licence] [varchar](32) NULL,
	[licenceExp] [datetime] NULL,
	[licenceScope] [varchar](256) NULL,
	[zip] [varchar](6) NULL,
	[telephone] [varchar](64) NULL,
	[catName] [varchar](128) NULL,
	[stLicScope] [varchar](256) NULL,
	[AcCode] [varchar](32) NULL,
	[EMPCODE] [varchar](32) NULL,
	[CreditLine] [numeric](18, 2) NULL,
	[CreditTerm] [int] NULL,
	[DeptCode] [varchar](32) NULL,
	[Mobile] [varchar](32) NULL,
	[regAddress] [varchar](256) NULL,
	[province] [varchar](64) NULL,
	[city] [varchar](64) NULL,
	[county] [varchar](64) NULL,
	[receiveMtDate] [datetime] NULL,
	[isContinue] [int] NULL,
	[DocPerson] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcPayDetail2]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcPayDetail2](
	[BILLNO] [varchar](32) NOT NULL,
	[oBillNo] [varchar](32) NOT NULL,
	[oRowId] [numeric](8, 0) NOT NULL,
	[PayAmount] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcPayDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcPayDetail](
	[BILLNO] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[PayWayID] [varchar](32) NULL,
	[BankAccount] [varchar](256) NULL,
	[handler] [varchar](64) NULL,
	[DetailTime] [datetime] NULL,
	[PayAmount] [numeric](18, 2) NULL,
	[Vouchid] [numeric](18, 0) NULL,
	[Vouchflag] [int] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[Code] [varchar](32) NULL,
	[cashAmount] [numeric](18, 2) NULL,
	[cashFlag] [int] NULL,
 CONSTRAINT [PK__AcPayDetailDetail] PRIMARY KEY CLUSTERED 
(
	[BILLNO] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcInvoiceDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcInvoiceDetail](
	[BILLNO] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[InvoiceAmount] [numeric](18, 2) NULL,
	[taxAmount] [numeric](18, 2) NULL,
	[oBillNo] [varchar](32) NOT NULL,
	[oRowId] [numeric](8, 0) NOT NULL,
	[ComId] [varchar](32) NULL,
	[quantity] [numeric](18, 2) NULL,
	[PriceTaxed] [numeric](18, 2) NULL,
	[StoreinPrice] [numeric](18, 2) NULL,
	[taxRate] [numeric](9, 2) NULL,
	[DetailTime] [datetime] NULL,
	[Vouchid] [numeric](18, 0) NULL,
	[Vouchflag] [int] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[BatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
 CONSTRAINT [PK__AcInvoiceDetailDetail] PRIMARY KEY CLUSTERED 
(
	[BILLNO] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcVouchDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcVouchDetail](
	[Vouchid] [int] NOT NULL,
	[Row_Id] [int] NULL,
	[DIGEST] [varchar](64) NULL,
	[CODE] [varchar](24) NOT NULL,
	[CODE_EQUAL] [varchar](64) NULL,
	[J_AMOUNT] [money] NULL,
	[D_AMOUNT] [money] NULL,
	[FJ_QUANTITY] [numeric](18, 8) NULL,
	[FD_QUANTITY] [numeric](18, 8) NULL,
	[BILL_NO] [varchar](128) NULL,
	[BILL_DATE] [datetime] NULL,
	[DEPT_CODE] [varchar](32) NULL,
	[EMP_CODE] [varchar](32) NULL,
	[SUP_CODE] [varchar](32) NULL,
	[CUST_CODE] [varchar](32) NULL,
	[detailTime] [datetime] NULL,
	[Audit] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ColorCheck]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ColorCheck](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClarityCheck]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClarityCheck](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Gethzpym]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_Gethzpym]( @hzpym varchar(128))
returns varchar(128)
as
begin
   declare @return varchar(128),@ch varchar(2),@onehzpym varchar(2)
   declare @counter int,@len int
 
   set @return = '';
   select @len = len(@hzpym)
   
   select  @counter = 1
   while @counter <=@len
   begin 
       select @ch = substring(@hzpym,@counter ,1)
       if ascii(@ch) <128 
       begin
          select @return = @return + @ch
          select @counter = @counter + 1
       end
       else
       begin
          select @onehzpym = dbo.fn_GetOnehzpym(@ch)
          if @return is  null
          begin
             select @return = @onehzpym 
          end 
          else
          begin
             select @return = @return + @onehzpym 
          end
          select @counter = @counter + 1
       end
   end 
return (@return)
end
GO
/****** Object:  Table [dbo].[ComRecheck]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComRecheck](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
	[OrderType] [numeric](9, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GoodsLocation]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GoodsLocation](
	[LocID] [varchar](32) NOT NULL,
	[LocName] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NOT NULL,
	[ColNo] [varchar](32) NULL,
	[RowNo] [varchar](32) NULL,
	[LayerNo] [varchar](32) NULL,
	[remark] [varchar](128) NULL,
	[ManageArea] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[LocID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[Fn_GetLunar]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Fn_GetLunar] (@solarDay DATETIME ) 
returns datetime
as 
begin
  DECLARE @solData int    
  DECLARE @offset int    
  DECLARE @iLunar int    
  DECLARE @i INT     
  DECLARE @j INT     
  DECLARE @yDays int    
  DECLARE @mDays int    
  DECLARE @mLeap int    
  DECLARE @mLeapNum int    
  DECLARE @bLeap smallint    
  DECLARE @temp int    
  DECLARE @YEAR INT     
  DECLARE @MONTH INT    
  DECLARE @DAY INT    
  DECLARE @OUTPUTDATE varchar(10)    
  
  --保证传进来的日期是不带时间    
  SET @solarDay=cast(@solarDay AS char(10))    
  SET @offset=CAST(@solarDay-'1900-01-30' AS INT)  
  
  --确定农历年开始    
  SET @i=1900    
  --SET @offset=@solData    
  WHILE @i<2050 AND @offset>0    
  BEGIN    
    SET @yDays=348    
    SET @mLeapNum=0    
    SELECT @iLunar=dataInt FROM SolarData WHERE yearId=@i    
   
    --传回农历年的总天数    
    SET @j=32768    
    WHILE @j>8    
    BEGIN    
      IF @iLunar & @j >0    
        SET @yDays=@yDays+1    
      SET @j=@j/2    
    END    
    
    --传回农历年闰哪个月 1-12 , 没闰传回 0    
    SET @mLeap = @iLunar & 15    

    --传回农历年闰月的天数 ,加在年的总天数上    
    IF @mLeap > 0    
    BEGIN    
      IF @iLunar & 65536 > 0    
        SET @mLeapNum=30    
      ELSE     
        SET @mLeapNum=29    
        SET @yDays=@yDays+@mLeapNum    
    END    
    SET @offset=@offset-@yDays    
    SET @i=@i+1    
  END    
      
  IF @offset <= 0    
  BEGIN    
    SET @offset=@offset+@yDays    
    SET @i=@i-1    
  END    

  --确定农历年结束      
  SET @YEAR=@i    
  
  --确定农历月开始    
  SET @i = 1    
  SELECT @iLunar=dataInt FROM SolarData WHERE yearId=@YEAR  
  
  --判断那个月是润月    
  SET @mLeap = @iLunar & 15    
  SET @bLeap = 0   
  
  WHILE @i < 13 AND @offset > 0    
  BEGIN    
    --判断润月    
    SET @mDays=0    
    IF (@mLeap > 0 AND @i = (@mLeap+1) AND @bLeap=0)    
    BEGIN--是润月    
      SET @i=@i-1    
      SET @bLeap=1    
      --传回农历年闰月的天数    
      IF @iLunar & 65536 > 0    
        SET @mDays = 30    
      ELSE     
        SET @mDays = 29    
    END    
    ELSE    
    --不是润月    
    BEGIN    
      SET @j=1    
      SET @temp = 65536     
      WHILE @j<=@i    
      BEGIN    
        SET @temp=@temp/2    
        SET @j=@j+1    
      END    
      IF @iLunar & @temp > 0    
        SET @mDays = 30    
      ELSE    
        SET @mDays = 29    
    END       
    --解除闰月  
    IF @bLeap=1 AND @i= (@mLeap+1)  
      SET @bLeap=0  
      SET @offset=@offset-@mDays     
      SET @i=@i+1    
  END    
    
  IF @offset <= 0    
  BEGIN    
    SET @offset=@offset+@mDays    
    SET @i=@i-1    
  END    
  
  --确定农历月结束      
  SET @MONTH=@i  
    
  --确定农历日结束      
  SET @DAY=@offset    
    
 SET @OUTPUTDATE=convert(varchar(10),CAST((CAST(@YEAR AS VARCHAR(4))+'-'+CAST(@MONTH AS VARCHAR(2))+'-'+CAST(@DAY AS VARCHAR(2))) AS DATETIME) ,120) 
return @OUTPUTDATE
end
GO
/****** Object:  UserDefinedFunction [dbo].[fn_NewVouchNo]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_NewVouchNo](@period varchar(32),@sign varchar(32))
returns varchar(32)
as
BEGIN
	declare @billno varchar(32),@maxno varchar(32),@bseq varchar(8),@newseq int
	if @sign =''
	begin
		return @billno;
	end
	select @maxno = max(vouch_no) from AcVouch WHERE period = @period and sign = @sign; 
	 
	if @maxno is null or len(@maxno) < 1
	begin
		select @bseq = '0001';
	end
	else
	begin  
		select @newseq = cast(@maxno  as int); 
		
		select @newseq = @newseq +1;
		select @bseq = REPLICATE('0',4 - len(@newseq))+cast(@newseq as varchar(8));
	end

	 
	select @billno = @bseq; 
	 
return @billno
END
GO
/****** Object:  Table [dbo].[GspCheckDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GspCheckDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[CheckItem] [varchar](32) NULL,
	[CheckResult] [varchar](32) NULL,
	[measure] [varchar](256) NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[Commen] [varchar](256) NULL,
 CONSTRAINT [PK__GspCheckDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fn_SalePara]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_SalePara](@Type varchar(32))
returns int
as
begin 
		declare @ret int 

		if lower(@Type) =lower('EnableAreaUserAuth' )
		begin
         	select @ret = min(EnableAreaUserAuth) from SalesPara;
		end
		else if lower(@Type) =lower('EnableComUserAuth' )
		begin
         	select @ret = min(EnableComUserAuth) from SalesPara;
		end  
		else if lower(@Type) =lower('AcBySettlePrice' )
		begin
         	select @ret = min(AcBySettlePrice) from SalesPara;
		end   

return (@ret)
end
GO
/****** Object:  UserDefinedFunction [dbo].[fn_QM]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_QM](@code varchar(128),@period int,@flag int,@inclAllVouch int)
returns numeric(18,2)
as
begin
   declare @AmtRet numeric(18,2),@JDFLAG VARCHAR(2)

   select @JDFLAG = case jd_direction when 1 then 'J' when 0 then 'D' else '' end from AcCode where code = @code;	

   SELECT @AmtRet=sum((CASE WHEN AcAccsum.end_JD_FLAG=@JDFLAG THEN AcAccsum.amount_cur ELSE -AcAccsum.amount_cur End)) 
   FROM AcCode INNER JOIN AcAccsum ON AcCode.code = AcAccsum.code 
   WHERE AcAccsum.period=@Period and AcAccsum.code = @code ;

   select @AmtRet= isnull(@AmtRet,0) 
return (@AmtRet)
end
GO
/****** Object:  UserDefinedFunction [dbo].[fn_QC]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_QC](@code varchar(128),@period int,@flag int,@inclAllVouch int)
returns numeric(18,2)
as
begin
   declare @AmtRet numeric(18,2),@JDFLAG VARCHAR(2)

   select @JDFLAG = case jd_direction when 1 then 'J' when 0 then 'D' else '' end from AcCode where code = @code;	
   
   SELECT @AmtRet=sum((CASE WHEN AcAccsum.begin_JD_FLAG=@JDFLAG THEN AcAccsum.amount_pre ELSE -AcAccsum.amount_pre End)) 
   FROM AcCode INNER JOIN AcAccsum ON AcCode.code = AcAccsum.code 
   WHERE AcAccsum.period=@period and AcAccsum.code = @code ;
	
   select @AmtRet= isnull(@AmtRet,0) 
return (@AmtRet)
end
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[EMPCODE] [varchar](32) NOT NULL,
	[EMPNAME] [varchar](32) NULL,
	[DEPT_CODE] [varchar](32) NOT NULL,
	[ADDRESS] [varchar](40) NULL,
	[PHONE] [varchar](32) NULL,
	[BIRTHDATE] [datetime] NULL,
	[JOINDATE] [datetime] NULL,
	[JOB] [varchar](16) NULL,
	[MYREMARKS] [varchar](48) NULL,
	[logid] [varchar](32) NULL,
	[AcCode] [varchar](32) NULL,
	[fingerprint] [varchar](4000) NULL,
	[ManageArea] [varchar](32) NULL,
	[wkRuleID] [varchar](32) NULL,
	[IDcard] [varchar](32) NULL,
	[Sex] [varchar](32) NULL,
	[Origin] [varchar](128) NULL,
	[Race] [varchar](32) NULL,
	[Zip] [varchar](32) NULL,
	[Email] [varchar](32) NULL,
	[QQ] [varchar](32) NULL,
	[Mobile] [varchar](64) NULL,
	[Resume] [varchar](32) NULL,
	[Major] [varchar](32) NULL,
	[School] [varchar](64) NULL,
	[Certificate] [varchar](64) NULL,
	[JobTitle] [varchar](64) NULL,
	[CreditLine] [numeric](18, 2) NULL,
	[CreditTerm] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EMPCODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FirstCommodity]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FirstCommodity](
	[Billno] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocStatus] [int] NOT NULL,
	[Audit] [int] NULL,
	[INUSE] [numeric](1, 0) NOT NULL,
	[COMNAME] [varchar](128) NOT NULL,
	[ORIGIN] [varchar](80) NULL,
	[COMINDEX] [varchar](64) NULL,
	[SPECIFICATION] [varchar](64) NULL,
	[UNIT] [varchar](8) NULL,
	[ComCatID] [varchar](32) NOT NULL,
	[name_chem] [varchar](128) NULL,
	[auth_code] [varchar](128) NULL,
	[authExp] [datetime] NULL,
	[standardClass] [varchar](32) NULL,
	[isBaseMed] [int] NULL,
	[PRESCRIPTION] [int] NULL,
	[medType] [varchar](64) NULL,
	[medUsage] [varchar](256) NULL,
	[storeCondition] [varchar](256) NULL,
	[contraindication] [varchar](64) NULL,
	[labelNotes] [varchar](64) NULL,
	[detailNotes] [varchar](256) NULL,
	[manufacturer] [varchar](64) NULL,
	[trademark] [varchar](32) NULL,
	[GmpNo] [varchar](32) NULL,
	[GmpExp] [datetime] NULL,
	[CreatePurpose] [varchar](64) NULL,
	[insp_item] [varchar](128) NULL,
	[insp_standard] [varchar](64) NULL,
	[character] [varchar](64) NULL,
	[PiecePacking] [varchar](32) NULL,
	[Outerpacking] [varchar](32) NULL,
	[Innerpacking] [varchar](32) NULL,
	[applyReason] [varchar](32) NULL,
	[PurchasePerson] [varchar](32) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseRemark] [varchar](256) NULL,
	[QcManager] [varchar](32) NULL,
	[QcCheckDate] [datetime] NULL,
	[QcCheckRemark] [varchar](256) NULL,
	[viceManager] [varchar](32) NULL,
	[vmCheckDate] [datetime] NULL,
	[vmCheckRemark] [varchar](256) NULL,
	[applyPerson] [varchar](32) NULL,
	[supName] [varchar](64) NULL,
	[comid] [varchar](32) NULL,
	[barcode] [varchar](32) NULL,
	[Price1] [numeric](18, 6) NULL,
	[Price2] [numeric](18, 6) NULL,
	[isMhj] [int] NULL,
	[isEMC] [int] NULL,
	[ExpNum] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Billno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComRecheckDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComRecheckDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NOT NULL,
	[LocID] [varchar](32) NULL,
	[BatchNo] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[MjBatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[InspResult] [int] NULL,
	[InDate] [datetime] NULL,
	[StoreinBill] [varchar](32) NULL,
	[StoreinRow] [numeric](8, 0) NULL,
	[SupAccount] [varchar](32) NULL,
	[InvCode] [varchar](32) NULL,
	[InvSeqNo] [numeric](18, 0) NULL,
	[StoreinPrice] [numeric](18, 6) NOT NULL,
	[Costs] [numeric](18, 6) NOT NULL,
	[InPriceTaxed] [numeric](18, 6) NOT NULL,
	[CostsTaxed] [numeric](18, 6) NOT NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[WhPerson] [varchar](32) NULL,
	[WhDate] [datetime] NULL,
	[WhRemark] [varchar](256) NULL,
	[btPrice] [numeric](18, 6) NULL,
	[ctPrice] [numeric](18, 6) NULL,
	[inDeptCode] [varchar](32) NULL,
	[inEmpCode] [varchar](32) NULL,
	[SupEmpCode] [varchar](32) NULL,
	[reqInuse] [int] NULL,
	[Taxin] [numeric](9, 0) NULL,
	[wsbPrice] [numeric](18, 6) NULL,
	[rtbPrice] [numeric](18, 6) NULL,
 CONSTRAINT [PK__ComRecheckDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerReceiver]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerReceiver](
	[custReceiver] [varchar](128) NOT NULL,
	[CustAccount] [varchar](32) NULL,
	[IDNO] [varchar](18) NULL,
	[telephone] [varchar](64) NULL,
	[mobile] [varchar](128) NULL,
	[Address] [varchar](256) NULL,
	[commen] [varchar](256) NULL,
	[custempcode] [varchar](32) NULL,
	[province] [varchar](64) NULL,
	[city] [varchar](64) NULL,
	[county] [varchar](64) NULL,
	[transUnit] [varchar](128) NULL,
	[AuthExpDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[custReceiver] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerEmployee]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerEmployee](
	[custempcode] [varchar](128) NOT NULL,
	[custempname] [varchar](128) NULL,
	[CustAccount] [varchar](32) NOT NULL,
	[IDNO] [varchar](18) NULL,
	[telephone] [varchar](64) NULL,
	[mobile] [varchar](128) NULL,
	[AuthNo] [varchar](40) NULL,
	[AuthScope] [varchar](200) NULL,
	[AuthDate] [datetime] NULL,
	[AuthExpDate] [datetime] NULL,
	[stLicScope] [varchar](256) NULL,
	[commen] [varchar](256) NULL,
	[AuthCom] [varchar](800) NULL,
	[BirthDay] [datetime] NULL,
	[AreaManager] [varchar](256) NULL,
	[province] [varchar](64) NULL,
	[city] [varchar](64) NULL,
	[county] [varchar](64) NULL,
	[Fax] [varchar](64) NULL,
	[Address] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[custempcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory](
	[InvSeqNo] [numeric](18, 0) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[BatchNo] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NOT NULL,
	[DocQuantity] [numeric](18, 6) NOT NULL,
	[MjBatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[StoreinBill] [varchar](32) NULL,
	[StoreinRow] [numeric](8, 0) NULL,
	[SupAccount] [varchar](32) NULL,
	[StoreinPrice] [numeric](18, 6) NOT NULL,
	[Costs] [numeric](18, 6) NOT NULL,
	[PriceTaxed] [numeric](18, 6) NOT NULL,
	[CostsTaxed] [numeric](18, 6) NOT NULL,
	[InDate] [datetime] NULL,
	[InvCode] [varchar](32) NULL,
	[Status] [int] NOT NULL,
	[LocID] [varchar](32) NULL,
	[btPrice] [numeric](18, 6) NULL,
	[ctPrice] [numeric](18, 6) NULL,
	[inDeptCode] [varchar](32) NULL,
	[inEmpCode] [varchar](32) NULL,
	[SupEmpCode] [varchar](32) NULL,
	[wsbPrice] [numeric](18, 6) NULL,
	[rtbPrice] [numeric](18, 6) NULL,
PRIMARY KEY CLUSTERED 
(
	[InvSeqNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ini_Inventory]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ini_Inventory](
	[InvSeqNo] [numeric](18, 0) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NOT NULL,
	[LocID] [varchar](32) NULL,
	[COMID] [varchar](32) NOT NULL,
	[BatchNo] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NOT NULL,
	[MjBatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[SupAccount] [varchar](32) NULL,
	[StoreinPrice] [numeric](18, 6) NOT NULL,
	[Costs] [numeric](18, 6) NOT NULL,
	[PriceTaxed] [numeric](18, 6) NOT NULL,
	[CostsTaxed] [numeric](18, 6) NOT NULL,
	[TaxIn] [numeric](5, 2) NULL,
	[InDate] [datetime] NULL,
	[InvCode] [varchar](32) NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InvSeqNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fn_sample_quantity]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  function [dbo].[fn_sample_quantity]( @comid varchar(32),@quantity numeric(18,4))
returns numeric(18,4)
as
begin
	declare @Samplequan numeric(18,4),@PackOuter numeric(18,4),
		@TotalPack numeric(18,0),@Counter numeric(5,0)
	
	--取件包装设置
	select @PackOuter = cast(case when isnumeric(PiecePacking) =1 then PiecePacking else '0' end  as numeric(18,4)) from commodity where comid = @comid and isnumeric(PiecePacking) =1;
	
   	if  @PackOuter  >0 --如果有件包装，则
	begin
		--计算总件数
		select @TotalPack = @quantity / @PackOuter;
		if @TotalPack <= 50 --小于50件
		begin
			if @quantity <= 2* @PackOuter
			begin
				select @Samplequan = @quantity;
			end
			else
			begin
				select @Samplequan = 3* @PackOuter;
			end
		end
		else --大于50件
		begin
			select @Counter = ( @TotalPack  -50 ) /50
			if @quantity <= (3 + @counter ) * @PackOuter
			begin
				select @Samplequan = @quantity;
			end
			else
			begin
				select @Samplequan = (3 + @counter ) * @PackOuter;
			end
		end
	end
	else	--没有件包装
	begin
		select @Samplequan = @quantity;
	end
    

return (@Samplequan)
end
GO
/****** Object:  UserDefinedFunction [dbo].[fn_NewDictNo]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_NewDictNo](@btype varchar(32),@catid varchar(32))
returns varchar(32)
as
BEGIN
	declare @billno varchar(32),@maxno varchar(32),@bseq varchar(8),@newseq int 
	select @btype = upper(@btype);
	
	if @btype ='COMMODITY'		
		select @maxno = max(cast(substring(comid,len(@catid),len(comid) - len(@catid)) as numeric(18,0))) from commodity WHERE  comcatid = @catid and len(comid) - len(@catid) >0;
	else if @btype ='CUSTOMER'
		select @maxno = max(account) from customer WHERE isnumeric(account) = 1; 
	 
	if @maxno is null or len(@maxno) < 1
	begin
		select @bseq = '0001';
	end
	else
	begin  
		select @newseq = cast(@maxno  as int); 
		
		select @newseq = @newseq +1;
		select @bseq = REPLICATE('0',4 - len(@newseq))+cast(@newseq as varchar(8));
	end

	 
	if @btype ='COMMODITY'		
		select @billno = @catid+@bseq; 
	else if @btype ='CUSTOMER'  
		select @billno = @bseq; 
	 
return @billno
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_NewComId]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_NewComId](@catid varchar(32))
returns varchar(32)
as
BEGIN
	declare @billno varchar(32),@maxno varchar(32),@bseq varchar(8),@newseq int,@nobrev varchar(32)	
	 
	select @nobrev=isnull(NoAbbrev,'') from comcategory WHERE comcatid = @catid; 

	select @maxno = max(comid) from commodity WHERE comcatid = @catid; 
	 
	if @maxno is null or len(@maxno) < 1
	begin
		select @bseq = '0001';
	end
	else
	begin  
		select @newseq = cast(substring(@maxno,len(@nobrev)+1,4) as int); 

		select @newseq = @newseq +1;
		select @bseq = REPLICATE('0',4 - len(@newseq))+cast(@newseq as varchar(8));
	end

	 
	select @billno = @nobrev+@bseq; 
	 
return @billno
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetMemberNo]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_GetMemberNo](@Account varchar(32))
returns varchar(32)
as
BEGIN
	declare @memberno varchar(32) 
	  
	 
	select @memberno= memberno  from customer where account=@Account;
	 
return @memberno
END
GO
/****** Object:  Table [dbo].[DirectInOut]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DirectInOut](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NULL,
	[SupAccount] [varchar](32) NULL,
	[CustAccount] [varchar](32) NULL,
	[SaleEmpCode] [varchar](32) NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ColorCheckDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ColorCheckDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[CheckQuantity] [numeric](18, 6) NULL,
	[StandardColor] [varchar](32) NULL,
	[CheckResult] [varchar](128) NULL,
	[Checker] [varchar](32) NULL,
	[Remark] [varchar](128) NULL,
	[BatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
 CONSTRAINT [PK__ColorCheckDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComMaintain]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComMaintain](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[ThisType] [varchar](32) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
	[isKeyCom] [int] NULL,
	[OrderType] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClarityCheckDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClarityCheckDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[CheckQuantity] [numeric](18, 6) NULL,
	[GLASS] [varchar](32) NULL,
	[WHITEMASS] [varchar](32) NULL,
	[FIBRE] [varchar](32) NULL,
	[WHITESPOT] [varchar](32) NULL,
	[EYEWINKER] [varchar](32) NULL,
	[OTHER] [varchar](32) NULL,
	[CheckResult] [varchar](128) NULL,
	[Checker] [varchar](32) NULL,
	[Remark] [varchar](128) NULL,
	[BatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
 CONSTRAINT [PK__ClarityCheckDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComMaintainPlan]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComMaintainPlan](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[ThisType] [varchar](32) NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[isKeyCom] [int] NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_Attendance]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Attendance] @empcode varchar(32),@wkShiftID varchar(32),@type varchar(32)
as 
	declare @sql nvarchar(1000),@RowCount int
	declare @earlyWksID varchar(32),@lateWksID varchar(32)
	declare @earlyBdate datetime,@earlyEdate datetime,@lateBdate datetime,@lateEdate datetime

	select @earlyWksID = wkShiftID, @earlyBdate = cast(convert(varchar(11),getdate(),20)+beginTime as datetime),
	       @earlyEdate = cast(convert(varchar(11),getdate(),20)+endTime as datetime)
	 from WorkShift where wkShiftID = (select earlyShift from AttdRule where RuleID = (select wkRuleID from employee where empcode = @empcode));
	
	select @lateWksID = wkShiftID,@lateBdate = cast(convert(varchar(11),getdate(),20)+beginTime as datetime),
		@lateEdate = cast(convert(varchar(11),getdate(),20)+endTime as datetime)
	 from WorkShift where wkShiftID = (select lateShift from AttdRule where RuleID = (select wkRuleID from employee where empcode = @empcode));

	select @RowCount = count(*) from attendance where thisdate = convert(varchar(10),getdate(),112) and empCode = @empcode;
	
	--首次签到
        if @RowCount < 1
	begin
		select @wkShiftID = case when @earlyWksID is not null then @earlyWksID else @lateWksID end;
		set @Sql = N'insert into attendance(thisdate,empcode,wkShiftID,signIn) values(convert(varchar(10),getdate(),112),'''+@empcode+''','''+@wkShiftID+''',getdate());';
	end

	if  @RowCount >0
	begin
		--首次签到未签退
		select @RowCount = count(*) from attendance where thisdate = convert(varchar(10),getdate(),112) and empCode = @empcode and signOut is not null;
		if @RowCount < 1
		begin
			set @Sql = N'update attendance set signOut=getdate() where thisdate= convert(varchar(10),getdate(),112) and empcode = '''+@empcode+'''';
		end
		else
		begin
			--有无晚班
			select @wkShiftID = case when @lateWksID is not null then @lateWksID else null end;
			if @wkShiftID is not null
			begin
				select @RowCount = count(*) from attendance where thisdate = convert(varchar(10),getdate(),112) and empCode = @empcode and latesignin is not null;
				if @RowCount < 1--晚班未签到
				begin
					set @Sql = N'update attendance set latesignin=getdate(),lateWksID='''+@wkShiftID+''' where thisdate= convert(varchar(10),getdate(),112) and empcode = '''+@empcode+'''';
				end
				else
				begin
					set @Sql = N'update attendance set lateSignOut=getdate() where thisdate= convert(varchar(10),getdate(),112) and empcode = '''+@empcode+'''';
				end
			end			
		end		
	end 
	if len(@Sql) > 0
	begin
		execute sp_executesql @Sql; 
	end
GO
/****** Object:  Table [dbo].[SalesTransportDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesTransportDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[SalesBillNo] [varchar](32) NULL,
	[receiveAddr] [varchar](256) NULL,
	[packNo] [varchar](32) NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
 CONSTRAINT [PK__SalesTransportDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_NewBillRowId]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_NewBillRowId] @btype varchar(32),@billno varchar(32)
as 
	declare  @maxno numeric(18,0),@sql nvarchar(1000) 
	
	set @btype = upper(@btype);
	if @btype = 'ACVOUCHDETAIL'
	begin
		select @maxno = isnull(max(Row_Id),0)+1 from ACVOUCHDETAIL where VouchID = @billno;
	end
	else 
	begin
		--设置语句
		set @Sql = N'select @maxno = isnull(max(Row_Id),0)+1 from '+@btype+' where billno = '''+@billno+''''
		 
		execute sp_executesql @Sql,N'@maxno numeric(18,0) OUTPUT',@maxno OUTPUT   
	end

	select @maxno;
GO
/****** Object:  StoredProcedure [dbo].[sp_NewBillRow_Id]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_NewBillRow_Id] @btype varchar(32),@billno varchar(32)
as 
	declare  @maxno numeric(18,0),@sql nvarchar(1000) 
	
	set @btype = upper(@btype);
	if @btype = 'ACVOUCHDETAIL'
	begin
		select @maxno = isnull(max(Row_Id),0)+1 from ACVOUCHDETAIL where VouchID = @billno;
	end
	else 
	begin
		--设置语句
		set @Sql = N'select @maxno = isnull(max(Row_Id),0)+1 from '+@btype+' where billno = '''+@billno+''''
		 
		execute sp_executesql @Sql,N'@maxno numeric(18,0) OUTPUT',@maxno OUTPUT   
	end

	select @maxno;
GO
/****** Object:  StoredProcedure [dbo].[sp_query_attendance]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_query_attendance] (@uid varchar(128),@bdate varchar(32),@edate varchar(32))
as
begin
	declare @sql nvarchar(4000)

	select @sql = 'select getdate()';
 	--execute sp_executesql @sql ;

 
	select @bdate as bdate,@edate as edate,empName,datediff(dd,@bdate,@edate)+1 as ttNum,bb.atdNum,datediff(dd,@bdate,@edate)+1 - bb.atdNum as qqNum,
		bb.cdNum,bb.ctNum,bb.wsbNum,bb.wsbNum2,cc.lvNum,dd.ovtNum
	from employee aa left outer join	
	(select empCode,count(*) as atdNum,sum(case when a.signIn >cast(convert(varchar(11),signIn,20)+b.beginTime as datetime) then 1 else 0 end) as cdNum,
		sum(case when a.signOut >cast(convert(varchar(11),signOut,20)+b.endTime as datetime) then 1 else 0 end) as ctNum,
		sum(case when a.signIn is null then 1 else 0 end) as wsbNum,sum(case when a.signOut is null then 1 else 0 end) as wsbNum2
	from attendance a,WorkShift b
	where a.wkShiftID = b.wkShiftID and thisdate  between @bdate and dateadd(dd,1,@edate)
	group by a.empCode) bb on (aa.empCode = bb.empCode)
	left outer join 
	(
	select empCode,count(*) as lvNum from LeaveRecord where thisdate  between @bdate and dateadd(dd,1,@edate)
	group by empCode) as cc on (aa.empCode = cc.empCode)
	left outer join 
	(
	select empCode,count(*) as ovtNum from OvertimeRecord where thisdate  between @bdate and dateadd(dd,1,@edate)
	group by empCode) as dd on (aa.empCode = dd.empCode);

end
GO
/****** Object:  Table [dbo].[StoreIn]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreIn](
	[BillNo] [varchar](32) NOT NULL,
	[OrderType] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[SupAccount] [varchar](32) NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[IsPayed] [int] NULL,
	[PayWayID] [varchar](32) NULL,
	[consignee] [varchar](128) NULL,
	[Commen] [varchar](256) NULL,
	[PrintTime] [varchar](800) NULL,
	[PrintCount] [int] NULL,
	[PrintUser] [varchar](256) NULL,
	[freight] [numeric](18, 2) NULL,
	[freightBy] [int] NULL,
	[supempcode] [varchar](128) NULL,
	[HaveInvoice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreAdjustDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreAdjustDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NOT NULL,
	[BatchNo] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[MjBatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[InvSeqNo] [numeric](18, 0) NULL,
	[StoreinBill] [varchar](32) NULL,
	[StoreinRow] [numeric](8, 0) NULL,
	[SupAccount] [varchar](32) NULL,
	[InvCode] [varchar](32) NULL,
	[InDate] [datetime] NULL,
	[StoreinPrice] [numeric](18, 6) NOT NULL,
	[Costs] [numeric](18, 6) NOT NULL,
	[TaxIn] [numeric](5, 2) NULL,
	[InPriceTaxed] [numeric](18, 6) NOT NULL,
	[CostsTaxed] [numeric](18, 6) NOT NULL,
	[DetailTime] [datetime] NULL,
	[Vouchid] [numeric](18, 0) NULL,
	[Vouchflag] [int] NULL,
	[inuse] [int] NULL,
	[LocID] [varchar](32) NULL,
	[Audit] [int] NULL,
	[isDestroy] [int] NOT NULL,
	[srcBillno] [varchar](32) NULL,
	[srcRowId] [numeric](18, 0) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[WhPerson] [varchar](32) NULL,
	[WhDate] [datetime] NULL,
	[WhRemark] [varchar](256) NULL,
	[PriceAdjustBill] [varchar](32) NULL,
	[AdjustReason] [varchar](128) NULL,
	[btPrice] [numeric](18, 6) NULL,
	[ctPrice] [numeric](18, 6) NULL,
	[inDeptCode] [varchar](32) NULL,
	[inEmpCode] [varchar](32) NULL,
	[SupEmpCode] [varchar](32) NULL,
	[Specification] [varchar](32) NULL,
	[Unit] [varchar](32) NULL,
	[destroyPlace] [varchar](128) NULL,
	[destroyReason] [varchar](64) NULL,
	[destroyMode] [varchar](128) NULL,
	[wsbPrice] [numeric](18, 6) NULL,
	[rtbPrice] [numeric](18, 6) NULL,
 CONSTRAINT [PK__StoreAdjustDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreInRefuse]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreInRefuse](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[SupAccount] [varchar](32) NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreCheckInputDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreCheckInputDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NULL,
	[LocID] [varchar](32) NULL,
	[BatchNo] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[MjBatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
 CONSTRAINT [PK__StoreCheckInputDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreCheckDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreCheckDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NOT NULL,
	[LocID] [varchar](32) NULL,
	[BatchNo] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[RealQuantity] [numeric](18, 6) NULL,
	[MjBatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[InvSeqNo] [numeric](18, 0) NULL,
	[StoreinBill] [varchar](32) NULL,
	[StoreinRow] [numeric](8, 0) NULL,
	[SupAccount] [varchar](32) NULL,
	[InvCode] [varchar](32) NULL,
	[InDate] [datetime] NULL,
	[StoreinPrice] [numeric](18, 6) NULL,
	[Costs] [numeric](18, 6) NULL,
	[TaxIn] [numeric](5, 2) NULL,
	[InPriceTaxed] [numeric](18, 6) NULL,
	[CostsTaxed] [numeric](18, 6) NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
 CONSTRAINT [PK__StoreCheckDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreMove]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreMove](
	[BillNo] [varchar](32) NOT NULL,
	[OrderType] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NULL,
	[EmpCode] [varchar](32) NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
	[ReqDeptCode] [varchar](32) NULL,
	[PrintTime] [varchar](800) NULL,
	[PrintCount] [int] NULL,
	[PrintUser] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesOrder]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesOrder](
	[BillNo] [varchar](32) NOT NULL,
	[OrderType] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NULL,
	[EmpCode] [varchar](32) NULL,
	[CustAccount] [varchar](32) NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NULL,
	[DocStatus] [int] NOT NULL,
	[IsPayed] [int] NULL,
	[PayWayID] [varchar](32) NULL,
	[deliveryman] [varchar](128) NULL,
	[ShippingType] [varchar](64) NULL,
	[Emergency] [varchar](32) NULL,
	[Commen] [varchar](256) NULL,
	[MemberNo] [varchar](32) NULL,
	[PrintTime] [varchar](800) NULL,
	[PrintCount] [int] NULL,
	[PrintUser] [varchar](256) NULL,
	[custempcode] [varchar](128) NULL,
	[ReceiveAddress] [varchar](256) NULL,
	[custReceiver] [varchar](256) NULL,
	[NeedContract] [int] NULL,
	[NeedFirstVendor] [int] NULL,
	[NeedFirstCom] [int] NULL,
	[HaveInvoice] [int] NULL,
	[isPresent] [int] NULL,
	[Comment] [varchar](256) NULL,
	[MemberName] [varchar](32) NULL,
	[cash] [numeric](18, 2) NULL,
	[change] [numeric](18, 2) NULL,
	[PkPrintTime] [varchar](800) NULL,
	[PkPrintCount] [int] NULL,
	[PkPrintUser] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesCommissionDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesCommissionDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[batchno] [varchar](32) NULL,
	[rewardType] [varchar](32) NULL,
	[rewardAmt] [numeric](18, 2) NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
 CONSTRAINT [PK__SalesCommissionDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesCommissionByAmtDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesCommissionByAmtDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[minAmount] [numeric](18, 2) NULL,
	[maxAmount] [numeric](18, 2) NULL,
	[rewardType] [varchar](32) NULL,
	[rewardAmt] [numeric](18, 2) NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
 CONSTRAINT [PK__SalesCommissionByAmtDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RequestPlanDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RequestPlanDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[Price] [numeric](18, 6) NULL,
	[Amount] [numeric](18, 2) NULL,
	[DetailTime] [datetime] NULL,
	[SupQuantity] [numeric](18, 6) NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[PurchasePerson] [varchar](32) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
 CONSTRAINT [PK__RequestPlanDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchaseContract]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchaseContract](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[SupAccount] [varchar](32) NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesStop]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesStop](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[InvSeqNo] [varchar](32) NULL,
	[COMID] [varchar](32) NOT NULL,
	[batchNo] [varchar](32) NULL,
	[Reason] [varchar](128) NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[isRelease] [int] NULL,
	[ReleasePerson] [varchar](32) NULL,
	[DetailTime] [datetime] NULL,
	[ReleaseTime] [datetime] NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesShippingDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesShippingDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[SalesBillNo] [varchar](32) NULL,
	[packNo] [varchar](32) NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
 CONSTRAINT [PK__SalesShippingDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POReceiveDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POReceiveDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NULL,
	[LocID] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[InvCode] [varchar](32) NULL,
	[DetailTime] [datetime] NULL,
	[Vouchid] [numeric](18, 0) NULL,
	[Vouchflag] [int] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[OrderBill] [varchar](32) NULL,
	[OrderBillRowId] [int] NULL,
	[StoreinFlag] [int] NULL,
	[transmode] [varchar](128) NULL,
	[receiveTime] [varchar](32) NULL,
	[receiveTemp] [varchar](32) NULL,
	[tempControlWay] [varchar](128) NULL,
	[SupQuantity] [numeric](18, 4) NULL,
	[Price] [numeric](18, 6) NULL,
	[BatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[despatchTime] [varchar](32) NULL,
	[despatchTemp] [varchar](32) NULL,
 CONSTRAINT [PK__POReceiveDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
	[SupAccount] [varchar](32) NULL,
	[supempcode] [varchar](128) NULL,
	[IsPayed] [int] NULL,
	[PayWayID] [varchar](32) NULL,
	[ShippingType] [varchar](64) NULL,
	[freight] [decimal](18, 2) NULL,
	[HaveInvoice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchasePlan]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchasePlan](
	[BillNo] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NOT NULL,
	[EmpCode] [varchar](32) NOT NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NOT NULL,
	[DocStatus] [int] NOT NULL,
	[commen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorEmployee]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorEmployee](
	[supempcode] [varchar](128) NOT NULL,
	[supempname] [varchar](128) NULL,
	[SupAccount] [varchar](32) NOT NULL,
	[IDNO] [varchar](18) NULL,
	[telephone] [varchar](64) NULL,
	[mobile] [varchar](128) NULL,
	[AuthNo] [varchar](40) NULL,
	[AuthScope] [varchar](200) NULL,
	[AuthDate] [datetime] NULL,
	[AuthExpDate] [datetime] NULL,
	[stLicScope] [varchar](256) NULL,
	[commen] [varchar](256) NULL,
	[AuthCom] [varchar](800) NULL,
	[isViolation] [int] NULL,
	[WebRegExpdate] [datetime] NULL,
	[WebRegDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[supempcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_Vouch]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_Vouch] 	
as 
 select a.Vouchid,PERIOD,THISTYPE,SIGN,SIGN_CODE,VOUCH_NO,THISDATE,user_id,doc_person,checker,checkDate,booker,bookDate,cashier,IS_BOOKED,INUSE,SYNC_FLAG,
DIGEST,CODE,CODE_EQUAL,J_AMOUNT,D_AMOUNT,FJ_QUANTITY,FD_QUANTITY,BILL_NO,BILL_DATE,DEPT_CODE,EMP_CODE,SUP_CODE,CUST_CODE
 from Acvouch a,AcvouchDetail b
where a.vouchid = b.vouchid
GO
/****** Object:  View [dbo].[v_KeyComConfirm]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_KeyComConfirm]
as 	  
select a.SeqNo,a.ThisDate,a.EndDate,c.comname,c.origin,c.specification,c.unit,c.COMINDEX,manufacturer,
	a.COMID,a.Reason,a.Person
from KeyComConfirm a,commodity c
where a.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_barcode]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_barcode]
as 	  
select comname as Name,
       BarCode,
       barcode as BarPrint,
	comid,origin,specification,unit,price1,price2
from  commodity
GO
/****** Object:  View [dbo].[v_prePay_Articulation]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_prePay_Articulation] 	
as 	
select a.BillNo,a.ThisDate,a.OrderType,a.Account, a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode),
	a.EmpCode,empName=(select empname from employee where empcode = a.empcode),
	fName =case OrderType when 1 then (select min(MyName) from vendor where Account = a.Account) else (select min(MyName) from customer where Account = a.Account) end,
	b.PayAmt,c.setAmt,b.PayAmt - isnull(c.setAmt,0) as baAmt,a.commen,a.DocPerson
from acpay a inner join (select billno,sum(PayAmount) as PayAmt from AcPayDetail group by billno) as b on (a.billno = b.billno )
	left outer join (select billno,sum(PayAmount) as setAmt from acpaydetail2 group by billno) as c on (a.billno = c.billno )
where isnull(b.PayAmt,0) <> isnull(c.setAmt,0)--a.PayType = 1  and
GO
/****** Object:  View [dbo].[v_ComTemplate]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_ComTemplate]
as 	  
select  b.TempLateId,a.TempLateName,b.comid,b.btPrice,b.commen,c.comname,c.origin,c.specification,c.unit,c.comindex
from  ComTemplate a,ComTemplateDetail b,commodity c
where   a.TempLateId = b.TempLateId and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_ComStoreLocation]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_ComStoreLocation]
as 	  
select c.comname,c.origin,c.specification,c.unit,c.comid,c.comindex,
	a.locid,a.warehousecode,
	whName=(select warehouse_name from warehouse where warehouse_code = a.warehousecode),
	LocName=(select LocName from goodslocation where LocID = a.LocId) 
from  ComStoreLocation a,commodity c
where  a.comid = c.comid
GO
/****** Object:  View [dbo].[v_ComPriceType]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_ComPriceType]
as 	  
select  b.CatId,b.comid,b.price,b.commen,c.comname,c.origin,c.specification,c.unit,c.comindex 
from  ComPriceTypeDetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_DeptComPrice]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_DeptComPrice]
as 	  
select  b.DeptCode,b.comid,b.retailprice,b.memprice,b.commen,c.comname,c.origin,c.specification,c.unit,c.comindex
from  DeptComPrice b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_Invoice]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_Invoice]
as 	  
select BillNo,Row_Id,b.COMID,Quantity,PriceTaxed,StoreinPrice,TaxRate,DetailTime,InvoiceAmount,TaxAmount,inuse,Audit,
c.comname,c.origin,c.specification,c.unit,c.comindex 
from AcInvoicedetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  Table [dbo].[StoreOut]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreOut](
	[BillNo] [varchar](32) NOT NULL,
	[OrderType] [varchar](32) NOT NULL,
	[DeptCode] [varchar](32) NULL,
	[EmpCode] [varchar](32) NULL,
	[CustAccount] [varchar](32) NULL,
	[ThisDate] [datetime] NOT NULL,
	[DocPerson] [varchar](32) NULL,
	[DocStatus] [int] NOT NULL,
	[IsPayed] [int] NULL,
	[PayWayID] [varchar](32) NULL,
	[deliveryman] [varchar](128) NULL,
	[Commen] [varchar](256) NULL,
	[cust_name] [varchar](32) NULL,
	[MemberNo] [varchar](32) NULL,
	[receivedAmount] [numeric](18, 2) NULL,
	[changeAmount] [numeric](18, 2) NULL,
	[score] [numeric](18, 2) NULL,
	[ShippingType] [varchar](64) NULL,
	[Emergency] [varchar](32) NULL,
	[PrintTime] [varchar](800) NULL,
	[PrintCount] [int] NULL,
	[PrintUser] [varchar](256) NULL,
	[custempcode] [varchar](128) NULL,
	[isCustReceipt] [int] NULL,
	[CustReceiptDate] [datetime] NULL,
	[CustReceiptRecorder] [varchar](32) NULL,
	[MemberName] [varchar](32) NULL,
	[cash] [numeric](18, 2) NULL,
	[change] [numeric](18, 2) NULL,
	[curScore] [numeric](18, 2) NULL,
	[isRegScore] [int] NULL,
	[HaveInvoice] [int] NULL,
	[ReceiveAddress] [varchar](256) NULL,
	[custReceiver] [varchar](256) NULL,
	[NeedContract] [int] NULL,
	[NeedFirstVendor] [int] NULL,
	[NeedFirstCom] [int] NULL,
	[isPresent] [int] NULL,
	[realEmpName] [varchar](32) NULL,
	[reelEmpName] [varchar](32) NULL,
	[Comment] [varchar](256) NULL,
	[PrintSeqNo] [varchar](32) NULL,
	[taxRate] [numeric](18, 2) NULL,
	[isRxCheck] [int] NULL,
	[Audit] [int] NULL,
	[pharmacist] [varchar](32) NULL,
	[RxDate] [datetime] NULL,
	[RxRemark] [varchar](256) NULL,
	[freight] [decimal](18, 2) NULL,
	[AcPrintTime] [varchar](800) NULL,
	[AcPrintCount] [int] NULL,
	[AcPrintUser] [varchar](256) NULL,
	[PkPrintTime] [varchar](800) NULL,
	[PkPrintCount] [int] NULL,
	[PkPrintUser] [varchar](256) NULL,
	[ShpPrintTime] [varchar](800) NULL,
	[ShpPrintCount] [int] NULL,
	[ShpPrintUser] [varchar](256) NULL,
	[CkPrintTime] [varchar](800) NULL,
	[CkPrintCount] [int] NULL,
	[CkPrintUser] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreMoveDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreMoveDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NULL,
	[LocID] [varchar](32) NULL,
	[ReqWhCode] [varchar](32) NULL,
	[ReqLocID] [varchar](32) NULL,
	[BatchNo] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[PriceTaxed] [numeric](18, 6) NULL,
	[AmountTaxed] [numeric](18, 6) NULL,
	[TaxOut] [numeric](5, 2) NULL,
	[Charge] [numeric](18, 6) NULL,
	[MjBatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[InvSeqNo] [numeric](18, 0) NULL,
	[ReqInvSeqNo] [numeric](18, 0) NULL,
	[StoreinBill] [varchar](32) NULL,
	[StoreinRow] [numeric](8, 0) NULL,
	[SupAccount] [varchar](32) NULL,
	[InvCode] [varchar](32) NULL,
	[InDate] [datetime] NULL,
	[StoreinPrice] [numeric](18, 6) NOT NULL,
	[Costs] [numeric](18, 6) NOT NULL,
	[InPriceTaxed] [numeric](18, 6) NOT NULL,
	[CostsTaxed] [numeric](18, 6) NOT NULL,
	[DetailTime] [datetime] NULL,
	[Vouchid] [numeric](18, 0) NULL,
	[Vouchflag] [int] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[SupPurchasePerson] [varchar](32) NULL,
	[SupPurchaseDate] [datetime] NULL,
	[SupPurchaseRemark] [varchar](256) NULL,
	[SupInspPerson] [varchar](32) NULL,
	[SupInspDate] [datetime] NULL,
	[SupInspRemark] [varchar](256) NULL,
	[SupAccountantPerson] [varchar](32) NULL,
	[SupAccountantDate] [datetime] NULL,
	[SupAccountantRemark] [varchar](256) NULL,
	[SupCheckPerson] [varchar](32) NULL,
	[SupCheckDate] [datetime] NULL,
	[SupCheckRemark] [varchar](256) NULL,
	[SupWhPerson] [varchar](32) NULL,
	[SupWhDate] [datetime] NULL,
	[SupWhRemark] [varchar](256) NULL,
	[ReqInspPerson] [varchar](32) NULL,
	[ReqInspDate] [datetime] NULL,
	[ReqInspRemark] [varchar](256) NULL,
	[ReqAccountantPerson] [varchar](32) NULL,
	[ReqAccountantDate] [datetime] NULL,
	[ReqAccountantRemark] [varchar](256) NULL,
	[ReqWhPerson] [varchar](32) NULL,
	[ReqWhDate] [datetime] NULL,
	[ReqWhRemark] [varchar](256) NULL,
	[btPrice] [numeric](18, 6) NULL,
	[ctPrice] [numeric](18, 6) NULL,
	[inDeptCode] [varchar](32) NULL,
	[inEmpCode] [varchar](32) NULL,
	[SupEmpCode] [varchar](32) NULL,
	[reqInuse] [int] NULL,
	[wsbPrice] [numeric](18, 6) NULL,
	[rtbPrice] [numeric](18, 6) NULL,
 CONSTRAINT [PK__StoreMoveDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_billdetail_ColorCheck]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_ColorCheck]
as 	  
select BillNo,Row_Id,b.COMID,cast(quantity as numeric(18,2)) as Quantity,cast(checkquantity as numeric(18,2)) as CheckQuantity,StandardColor,CheckResult,Checker,Remark,BatchNo,
	ProDate,Validity,DetailTime,inuse,Audit,
	c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex
from  ColorCheckDetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_ClarityCheck]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_ClarityCheck]
as 	  
select BillNo,Row_Id,b.COMID,Quantity,CheckQuantity,GLASS,WHITEMASS,FIBRE,WHITESPOT,EYEWINKER,OTHER,CheckResult,Checker,Remark,BatchNo,ProDate,Validity,DetailTime,inuse,Audit,
	c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex
from  ClarityCheckDetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_bill_SalesStop]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_bill_SalesStop]
as 	  
select BillNo,DeptCode,ThisDate,DocPerson,DocStatus,b.InvSeqNo,b.COMID,batchNo,Reason,inuse,Audit,isRelease,ReleasePerson,DetailTime,ReleaseTime,commen,
	c.comname,c.origin,c.specification,c.unit,c.comindex 
from  salesStop b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_bill_salesorder]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[v_bill_salesorder]  
as        
select BillNo,OrderType,b.DeptCode,b.EmpCode,CustAccount,ThisDate,b.DocPerson,DocStatus,IsPayed,PayWayID,deliveryman,b.Commen,c.Myname,    
 b.MemberNo,ShippingType,Emergency,c.Contact,c.Address,C.Manager    
from  salesorder b,customer c    
where   b.CustAccount = c.Account
GO
/****** Object:  View [dbo].[v_billdetail_ComRecheck]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_ComRecheck]
as 	  
select BillNo,Row_Id,b.COMID,cast(quantity as numeric(18,2)) as Quantity,DetailTime,inuse,Audit,BatchNo,ProDate,Validity,b.warehouse_code,c.comname,c.origin,c.specification,c.unit,
	c.BarCode,c.comindex,b.LocID,b.InspResult,cast(b.storeinprice as numeric(18,2)) as storeinprice,cast(b.inpricetaxed as numeric(18,2)) as inpricetaxed,b.costs,b.btPrice,b.ctPrice,b.inDeptCode,b.inEmpCode,b.SupEmpCode, 
	cast(b.coststaxed as numeric(18,2)) as coststaxed,b.InvSeqNo,b.supaccount,InspPerson,InspDate,InspRemark,AccountantPerson,AccountantDate,AccountantRemark,
	LeaderPerson,LeaderDate,LeaderRemark,WhPerson,WhDate,WhRemark,c.taxin,null as _BackColor
from  ComRecheckdetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_SalesCommission]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_SalesCommission]
as 	  
select b.billno,b.Row_Id,b.ComId,b.batchno,b.rewardType,b.rewardAmt,
	c.comname,c.origin,c.specification,c.unit,c.comindex
from SalesCommissiondetail b,commodity c
where  b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_RequestPlan]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_RequestPlan]
as 	  
select BillNo,Row_Id,b.COMID,Quantity,Price,Amount,DetailTime,SupQuantity,inuse,Audit,PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,AccountantPerson,AccountantDate,AccountantRemark,LeaderPerson,LeaderDate,LeaderRemark,
	c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex 
from  RequestPlanDetail b,commodity c
where  b.comid = c.comid
GO
/****** Object:  View [dbo].[v_DeptComBtPrice]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_DeptComBtPrice]
as 
 select distinct a.comid,a.comcode,a.comname,a.origin,a.comindex,a.specification,a.unit,c.btPrice,c.commen,b.pricetaxed,b.storeinprice,
	b.inDeptCode,inDeptName =(select min(dept_Name) from department where dept_Code = b.inDeptCode),
	invtype_name =(select min(invtype_name) from inventory_type where invtype_code = b.InvCode)
 from commodity a inner join inventory b on ( a.comid = b.comid )
	  left outer join DeptComBtPrice c on (b.indeptcode = c.deptcode and b.comid = c.comid)
GO
/****** Object:  View [dbo].[v_billdetail_StoreCheckInput]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_StoreCheckInput]
as 	  
select BillNo,Row_Id,b.COMID,WAREHOUSE_CODE,LocID,BatchNo,Quantity,MjBatchNo,ProDate,Validity,DetailTime
,c.comname,c.origin,c.specification,c.auth_code,c.manufacturer,c.unit,c.BarCode,c.comindex,c.Color 
from  StoreCheckInputDetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_StoreCheck]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_StoreCheck]
as 	  
select BillNo,Row_Id,b.COMID,WAREHOUSE_CODE,LocID,BatchNo,cast(quantity as numeric(18,2)) as Quantity,cast(realquantity as numeric(18,2)) as RealQuantity,MjBatchNo,ProDate,Validity,
	InvSeqNo,StoreinBill,StoreinRow,b.SupAccount,InvCode,InDate,StoreinPrice,Costs,b.TaxIn,cast(Inpricetaxed as numeric(18,2)) as InPriceTaxed,cast(coststaxed as numeric(18,2)) as CostsTaxed,DetailTime
,c.comname,c.origin,c.specification,c.auth_code,c.manufacturer,c.unit,c.BarCode,c.comindex,c.Color 
from  StoreCheckDetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_StoreAdjust]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_StoreAdjust]
as 	  
select BillNo,Row_Id,b.COMID,WAREHOUSE_CODE,LocID,BatchNo,cast(quantity as numeric(18,2)) as Quantity,MjBatchNo,ProDate,Validity,InvSeqNo,StoreinBill,StoreinRow,b.SupAccount,InvCode,InDate,
	cast(StoreinPrice as numeric(18,2)) as StoreinPrice,cast(Costs as numeric(18,2)) as Costs,b.TaxIn,b.btPrice,b.ctPrice,b.inDeptCode,b.InEmpCode,b.SupEmpCode,
	cast(InPriceTaxed as numeric(18,2)) as InPriceTaxed,cast(CostsTaxed as numeric(18,2)) as CostsTaxed,DetailTime,Vouchid,Vouchflag,inuse,Audit
,c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex,c.Color,b.srcBillno,b.srcRowId,InspPerson,InspDate,InspRemark,AccountantPerson,AccountantDate,AccountantRemark,LeaderPerson,LeaderDate,LeaderRemark,WhPerson,WhDate,WhRemark,null as _BackColor
from  storeAdjustdetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_StorageMove]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_StorageMove]
as 	  
select BillNo,DeptCode,ThisDate,a.InvSeqNo,WhCode,SrcLocId,DesLocId,a.Quantity,DesInvSeqNo,DocPerson,DocStatus,commen,
	c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex,b.BatchNo,b.Validity,b.comid,whName=(select warehouse_name from warehouse where warehouse_code = a.WhCode),
	LocName=(select LocName from goodslocation where LocID = a.SrcLocId),
	reqLocName=(select LocName from goodslocation where LocID = a.DesLocId)
from  StorageMove a,inventory b,commodity c
where  a.InvSeqNo = b.InvSeqNo and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_POReceive]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_POReceive]
as 	  
select BillNo,Row_Id,b.COMID,WAREHOUSE_CODE,LocID,cast(quantity  as numeric(18,2)) as Quantity,InvCode,DetailTime,inuse,Audit,b.BatchNo,b.ProDate,b.Validity
,c.comname,c.origin,c.specification,c.auth_code,c.manufacturer,c.unit,c.BarCode,c.comindex,c.Color,transmode,receiveTime,tempControlWay,receiveTemp 
from  POReceivedetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_monitor_inventorysum]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_monitor_inventorysum]
as 
select  
convert(numeric(4,2),isnull(sum(coststaxed),0)/10000) as CurValue,0 as MinValue,24 as MaxValue,4 as SafeValue,12 as AlertValue,'' as _Color1,'' as _Color2,'' as _Color3
from inventory
GO
/****** Object:  View [dbo].[v_inventory_forbill]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[v_inventory_forbill]  
as   
 select a.comid,a.comname,a.origin,a.comindex,a.specification,a.unit,b.docquantity,b.pricetaxed,b.batchno,b.validity,a.barcode,b.invseqno,b.storeinprice,b.SupAccount,b.StoreinBill,b.StoreinRow,b.InvCode,b.InDate,a.TaxOut,b.warehouse_code,b.LocID,b.prodate
,a.color,b.Status,  
price1,price2,price3,price4,price5,price6,case  when b.Status = 1 then  '-7278960'  --合格为绿色  
 when  b.Status = 0 then '-65536'  --不合格为红色   
 else '' end --待验为黄色  
       as _BackColor   
 from commodity a inner join inventory b on ( a.comid = b.comid )
GO
/****** Object:  Table [dbo].[PurchasePlanDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchasePlanDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[Price] [numeric](18, 6) NULL,
	[SupAccount] [varchar](32) NULL,
	[Amount] [numeric](18, 2) NULL,
	[DetailTime] [datetime] NULL,
	[SupQuantity] [numeric](18, 6) NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[PurchasePerson] [varchar](32) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[ContractFlag] [int] NULL,
	[OrderFlag] [int] NULL,
	[StoreinFlag] [int] NULL,
	[Unit] [varchar](32) NULL,
 CONSTRAINT [PK__PurchasePlanDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchaseOrderDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[Price] [numeric](18, 6) NULL,
	[Amount] [numeric](18, 2) NULL,
	[DetailTime] [datetime] NULL,
	[SupQuantity] [numeric](18, 6) NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[PurchasePerson] [varchar](32) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[ContractBill] [varchar](32) NULL,
	[ContractBillRowId] [int] NULL,
	[PlanBill] [varchar](32) NULL,
	[PlanBillRowId] [int] NULL,
	[StoreinFlag] [int] NULL,
	[Unit] [varchar](32) NULL,
	[commen] [varchar](256) NULL,
	[BatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[PayAmount] [numeric](18, 2) NULL,
	[PayFlag] [int] NULL,
 CONSTRAINT [PK__PurchaseOrderDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchaseContractDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchaseContractDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[Price] [numeric](18, 6) NULL,
	[Amount] [numeric](18, 2) NULL,
	[DetailTime] [datetime] NULL,
	[SupQuantity] [numeric](18, 6) NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[PurchasePerson] [varchar](32) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[PlanBill] [varchar](32) NULL,
	[PlanBillRowId] [int] NULL,
	[OrderFlag] [int] NULL,
	[StoreinFlag] [int] NULL,
	[Unit] [varchar](32) NULL,
 CONSTRAINT [PK__PurchaseContractDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesPay]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesPay](
	[BILLNO] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[PayWayID] [varchar](32) NULL,
	[BankAccount] [varchar](256) NULL,
	[handler] [varchar](64) NULL,
	[commen] [varchar](256) NULL,
	[DetailTime] [datetime] NULL,
	[PayAmount] [numeric](18, 2) NULL,
	[UpdateFlag] [int] NULL,
 CONSTRAINT [PK__SalesPay] PRIMARY KEY CLUSTERED 
(
	[BILLNO] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesOrderPay]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesOrderPay](
	[BILLNO] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[PayWayID] [varchar](32) NULL,
	[BankAccount] [varchar](256) NULL,
	[handler] [varchar](64) NULL,
	[DetailTime] [datetime] NULL,
	[PayAmount] [numeric](18, 2) NULL,
	[commen] [varchar](256) NULL,
	[UpdateFlag] [int] NULL,
 CONSTRAINT [PK__SalesOrderPay] PRIMARY KEY CLUSTERED 
(
	[BILLNO] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreInRefuseDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreInRefuseDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[BatchNo] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[Price] [numeric](18, 6) NULL,
	[Amount] [numeric](18, 2) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[InDate] [datetime] NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[OrderBill] [varchar](32) NULL,
	[OrderBillRowId] [int] NULL,
 CONSTRAINT [PK__StoreInRefuseDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreInDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreInDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NULL,
	[BatchNo] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[Price] [numeric](18, 6) NULL,
	[TaxIn] [numeric](5, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[PriceTaxed] [numeric](18, 6) NULL,
	[Charge] [numeric](18, 6) NULL,
	[MjBatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[InDate] [datetime] NULL,
	[StoreinBill] [varchar](32) NULL,
	[StoreinRow] [numeric](8, 0) NULL,
	[SupAccount] [varchar](32) NULL,
	[InvCode] [varchar](32) NULL,
	[InvSeqNo] [numeric](18, 0) NULL,
	[DetailTime] [datetime] NULL,
	[PayAmount] [numeric](18, 2) NULL,
	[PayFlag] [int] NULL,
	[Vouchid] [numeric](18, 0) NULL,
	[Vouchflag] [int] NULL,
	[inuse] [int] NULL,
	[LocID] [varchar](32) NULL,
	[Audit] [int] NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[InvoiceAmount] [numeric](18, 2) NULL,
	[InvoiceFlag] [int] NULL,
	[PurchasePerson] [varchar](32) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[InspResult] [int] NULL,
	[QaStatus] [varchar](32) NULL,
	[WhPerson] [varchar](32) NULL,
	[WhDate] [datetime] NULL,
	[WhRemark] [varchar](256) NULL,
	[wsbPrice] [numeric](18, 2) NULL,
	[CheckPerson] [varchar](32) NULL,
	[CheckDate] [datetime] NULL,
	[CheckRemark] [varchar](256) NULL,
	[SpotcheckQuantity] [numeric](18, 2) NULL,
	[SpotcheckUnit] [varchar](8) NULL,
	[SpotcheckItem] [varchar](32) NULL,
	[Spotcheckpurpose] [varchar](32) NULL,
	[SpotcheckResult] [varchar](32) NULL,
	[SpotcheckPerson] [varchar](32) NULL,
	[SpotcheckDate] [datetime] NULL,
	[SpotcheckRemark] [varchar](256) NULL,
	[importDrugsReportNo] [varchar](32) NULL,
	[importDrugsRegcode] [varchar](32) NULL,
	[importDrugsRegUnit] [varchar](32) NULL,
	[PlanBill] [varchar](32) NULL,
	[PlanBillRowId] [int] NULL,
	[ContractBill] [varchar](32) NULL,
	[ContractBillRowId] [int] NULL,
	[OrderBill] [varchar](32) NULL,
	[OrderBillRowId] [int] NULL,
	[InspPerson2] [varchar](32) NULL,
	[InspDate2] [datetime] NULL,
	[InspRemark2] [varchar](256) NULL,
	[PriceAdjustBill] [varchar](32) NULL,
	[quantity_refunded] [numeric](18, 4) NULL,
	[CheckQty] [numeric](18, 4) NULL,
	[RfdReason] [varchar](128) NULL,
	[POReceiveBill] [varchar](32) NULL,
	[POReceiveBillRowId] [int] NULL,
	[transmode] [varchar](128) NULL,
	[receiveTime] [varchar](32) NULL,
	[receiveTemp] [varchar](32) NULL,
	[tempControlWay] [varchar](128) NULL,
	[btPrice] [numeric](18, 6) NULL,
	[ctPrice] [numeric](18, 6) NULL,
	[inDeptCode] [varchar](32) NULL,
	[inEmpCode] [varchar](32) NULL,
	[SupEmpCode] [varchar](32) NULL,
	[ReceiveQuan] [numeric](18, 2) NULL,
	[RefuseQuan] [numeric](18, 2) NULL,
	[RefuseReason] [varchar](256) NULL,
	[RecheckQuan] [numeric](18, 2) NULL,
	[RecheckReason] [varchar](256) NULL,
	[isUpdateCheck] [int] NULL,
	[specification] [varchar](32) NULL,
	[Unit] [varchar](32) NULL,
	[despatchTime] [varchar](32) NULL,
	[despatchTemp] [varchar](32) NULL,
	[rtbPrice] [numeric](18, 6) NULL,
 CONSTRAINT [PK__StoreInDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_query_codesum]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_query_codesum] (@period int,@code varchar(128))
as
begin
begin tran;
	declare @sql nvarchar(4000)
	declare @startdate datetime 
	declare @rowcount numeric(9,0),@row numeric(9,0),@seq int,@seq2 int,@seq3 int,@codet varchar(32)
	declare @jamount1 numeric(18,2),@damount1 numeric(18,2),@jamount2 numeric(18,2),@damount2 numeric(18,2),@amount numeric(18,2)
	declare @codeflag int,@endflag varchar(8),@jdaflag varchar(8)
	declare @codelen int

	if exists (select * from sysobjects where name='tm_codesum' and type='U')
	begin
	  drop table tm_codesum
	end

	
	select  @startdate  = startdate from AcMonthSet where accnt_id = @period;
	select  @codelen = length  from  AcCodeGradeDetail where grade = 0;
	--先查询出结果
	if DATEDIFF(day,cast(year(@startdate)as varchar(4))+'-1-1' ,dateadd(day,-1,@startdate))< 0
	begin
	 select IDENTITY(int, 1, 1) as Row_Id,vouch_no,digest,code,code1,j_amount,d_amount,jd_flag,ba,seq into tm_codesum
	 from (		
		select  cast(null as varchar(32)) as vouch_no,'期初余额' as DIGEST, code,code as code1,null as j_amount,
			   null as d_amount,a.begin_jd_flag as jd_flag ,a.amount_pre as ba,1 as seq
			from acaccsum a,AcMonthSet b
			where a.period = b.accnt_id and period = @period and a.code in (select code from accode where grade = 0)
		union all select  null as vouch_no,'本期合计',substring(code,1,@codelen),null,sum(J_AMOUNT) as j_amount,sum(D_AMOUNT) as d_amount,'' as jd_flag,0 as ba ,2 as seq
			from v_vouch where is_booked = 2 and period = @period 
		     group by substring(code,1,@codelen)
		union all select  null as vouch_no,'本年合计',code,null,0  as j_amount,0 as d_amount,'' as jd_flag,0 as ba ,3 as seq
			from acaccsum where period = @period and code in (select code from accode where grade = 0)
			group by code
		) as aa
	 order by code,seq
	end
	else
	begin
	 select IDENTITY(int, 1, 1) as Row_Id,vouch_no,digest,code,code1,j_amount,d_amount,jd_flag,ba,seq into tm_codesum
	 from (		
		select  cast(null as varchar(32)) as vouch_no,'期初余额' as DIGEST, code,code as code1,null as j_amount,
			   null as d_amount,a.begin_jd_flag as jd_flag ,a.amount_pre as ba,1 as seq
			from acaccsum a,AcMonthSet b
			where a.period = b.accnt_id and period = @period and a.code in (select code from accode where grade = 0)
		union all select  null as vouch_no,'本期合计',substring(code,1,@codelen),null,sum(J_AMOUNT) as j_amount,sum(D_AMOUNT) as d_amount,'' as jd_flag,0 as ba ,2 as seq
			from v_vouch where is_booked = 2 and period = @period 
		     group by substring(code,1,@codelen)
		union all select  null as vouch_no,'本年合计',code,null,sum(amount_j) as j_amount,sum(amount_d) as d_amount,'' as jd_flag,0 as ba ,3 as seq
			from acaccsum where period in (select accnt_id from AcMonthSet where startdate 
							between cast(year(@startdate)as varchar(4))+'-1-1'  and dateadd(day,-1,@startdate)) 
					 and code in (select code from accode where grade = 0)
			group by code
		) as aa
	 order by code,seq
	end
 
	--更新余额
	select @rowcount = count(1) from tm_codesum;
	select @row = 1;

	while @row<=@rowcount
	begin		 
		select @seq = seq,@codet = code,@amount = isnull(ba ,0),@jdaflag = jd_flag
		 from tm_codesum where Row_Id = @row; 
		if  @seq = 1
		begin  
			
			select @codeflag = jd_direction from accode where code = @codet;

			select @seq2 = seq,@jamount1 = isnull(j_amount,0),@damount1 = isnull(d_amount,0) 
			from tm_codesum where Row_Id = @row + 1 and code = @codet;
			
			select @seq3 = seq,@jamount2 = isnull(j_amount,0),@damount2 = isnull(d_amount,0) 
			from tm_codesum where Row_Id = @row + 2 and code = @codet;

			if @seq2 = 2
			begin
				select @amount = case @jdaflag when 'J' then @amount else - @amount end + @jamount1 -@damount1;
				
				if @codeflag = 1 and @amount > 0 
					select @endflag = 'J' ;
				else if @codeflag = 1 and @amount < 0
					select @endflag = 'D' ;
				else if @codeflag = 0 and @amount > 0
					select @endflag = 'J' ;
				else if @codeflag = 0 and @amount < 0
					select @endflag = 'D';
				else  
					select @endflag = '-';
				
				update tm_codesum set jd_flag = @endflag,ba = abs(@amount) where Row_Id = @row + 1 and code = @codet;
			end 
			else 
			begin
				select @endflag = @jdaflag;
			end
			if @seq3 = 3
			begin
				update tm_codesum set j_amount =@jamount1 + @jamount2,d_amount = @damount1 + @damount2,
					jd_flag = @endflag,ba = abs(@amount) where Row_Id = @row + 2 and code = @codet;
			end  
		end 
		select @row = @row + 1;
	end
	
	select @sql = 'select digest,code1,codename=(select code_name from AcCode where code = tm_codesum.code),j_amount,d_amount,case jd_flag  when ''J'' then ''借'' when ''D'' then ''贷'' else ''平'' end as jd_flag,ba from tm_codesum';

	if @code <> ''
	  select @sql = @sql + ' where code = ''' +@code+ '''' 

	execute sp_executesql @sql;
commit tran;
end
GO
/****** Object:  UserDefinedFunction [dbo].[fn_FS]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_FS](@code varchar(128),@period int,@flag int,@inclAllVouch int)
returns numeric(18,2)
as
begin
   declare @AmtRet numeric(18,2)
   set @code = @code + '%';

   SELECT @AmtRet=sum((CASE WHEN @flag<>2 THEN v_vouch.j_amount ELSE v_vouch.d_amount End)) 
   FROM AcCode INNER JOIN v_vouch ON AcCode.code = v_vouch.code 
   WHERE v_vouch.period=@Period and v_vouch.code  like @code  and v_vouch.is_booked = 2;

   select @AmtRet= isnull(@AmtRet,0) 
return (@AmtRet)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_vouch_check]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_vouch_check] (@vouchid numeric(18,0) )  
as
begin 
	declare @rowcount int,@jAmt numeric(18,4),@dAmt numeric(18,4)
 

	select @rowcount = count(1)   from V_Vouch a,Accode b
	where a.code = b.code and a.vouchid = @vouchid and b.grade = 0 
	and b.code  in (select distinct parent_code from Accode where parent_code is not null);
	if @rowcount > 0
	 begin
		raiserror('本凭证未选择末级科目!',16,1) 
		return
	 end 

	select @jAmt= sum(isnull(j_amount,0)),@dAmt=sum(isnull(d_amount,0))  from V_Vouch a 
	where  a.vouchid = @vouchid;  
	if @jAmt <> @dAmt
	 begin
		raiserror('借贷不相等!',16,1) 
		return
	 end 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_unRegMemberScore]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_unRegMemberScore] (@BillNo nvarchar(32) )
as
begin
begin tran;  
	update c set c.curScore =  isnull(c.curScore,0) - case when a.ordertype in (6) then isnull(a.score,0) else - isnull(a.score,0) end
	from storeout a,member c 
	where  a.memberNo = c.memberNo   and a.billno = @BillNo and a.isRegScore = 1;
	if @@error <> 0 
	 begin
		raiserror('1计算积分失败!',16,1)
		rollback tran;
		return
	 end

	update a set  a.isRegScore = 0
	from storeout a 
	where a. billno = @BillNo and a.isRegScore = 1;
	if @@error <> 0 
	 begin
		raiserror('2计算积分失败!',16,1)
		rollback tran;
		return
	 end


commit tran;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inventory_dec]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_inventory_dec] (@BillType varchar(128),@BillNo nvarchar(32),@Row_Id nvarchar(32))
as
begin
begin tran;
	declare @sql nvarchar(4000),@maxinvseq numeric(18,0),@curinvseq numeric(18,0),@mflag varchar(2)

	select @mflag = '-',@maxinvseq = isnull(max(invseqno),0) + 1,@BillType=UPPER(@BillType) from inventory;  
	 
	--根据单据类型不同，判断是否有库存
	select @sql = case 
		when @BillType='STOREIN' then
			'select @curinvseq = min(b.InvSeqNo)
			from  storeindetail b where  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id
		when @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD' then
			'select @curinvseq = min(b.InvSeqNo)
			from  storeoutdetail b where  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id 
		when @BillType='STOREOVER' then
			'select @curinvseq = min(b.InvSeqNo)
			from  storeadjustdetail b where  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id 
		when @BillType='STOREINIT' then
			'select @curinvseq = min(b.InvSeqNo)
			from  storeindetail b where  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id
		else null end;
	execute sp_executesql @sql,N'@curinvseq numeric(18,0) OUTPUT',@curinvseq OUTPUT;
	if @curinvseq > 0--如果库存序号存在
	begin

		set @maxinvseq = @curinvseq;
		--根据单据类型不同，增加现有库存
		select @sql = case 
			when @BillType='STOREIN' then
				'update a set a.quantity = a.quantity '+@mflag+' b.quantity,a.docquantity = a.docquantity '+@mflag+' b.quantity,
					a.costs = a.storeinprice * (a.quantity '+@mflag+' b.quantity),a.coststaxed = a.pricetaxed * (a.quantity '+@mflag+' b.quantity) 
				from inventory a,storeindetail b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id
			when @BillType='STOREOUTRFD'or @BillType='STOREOUTRETAILRFD' then
				'update a set a.quantity = a.quantity '+@mflag+' b.quantity,a.docquantity = a.docquantity '+@mflag+' b.quantity,
					a.costs = a.storeinprice * (a.quantity '+@mflag+' b.quantity),a.coststaxed = a.pricetaxed * (a.quantity '+@mflag+' b.quantity) 
				from inventory a,storeoutdetail b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id 
			when @BillType='STOREOVER' then
				'update a set a.quantity = a.quantity '+@mflag+' b.quantity,a.docquantity = a.docquantity '+@mflag+' b.quantity,
					a.costs = a.storeinprice * (a.quantity '+@mflag+' b.quantity),a.coststaxed = a.pricetaxed * (a.quantity '+@mflag+' b.quantity) 
				from inventory a,storeadjustdetail b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id 
			when @BillType='STOREINIT' then
				'update a set a.quantity = a.quantity '+@mflag+' b.quantity,a.docquantity = a.docquantity '+@mflag+' b.quantity,
					a.costs = a.storeinprice * (a.quantity '+@mflag+' b.quantity),a.coststaxed = a.pricetaxed * (a.quantity '+@mflag+' b.quantity) 
				from inventory a,storeindetail b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id
			else null end;

			execute sp_executesql @sql; 
			if @@error <> 0 
			 begin
				raiserror('减少库存失败:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id)
				rollback tran;
				return
			 end
	end
	else --否则插入新记录
	begin		 
		raiserror('减少库存失败,库存序号不存在:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id)
		rollback tran;
		return 
	end 
commit tran;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inventory_add]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_inventory_add] (@BillType varchar(128),@BillNo nvarchar(32),@Row_Id nvarchar(32))
as
begin
	declare @sql nvarchar(4000),@maxinvseq numeric(18,0),@curinvseq numeric(18,0),@price numeric(18,2)

	select @maxinvseq = isnull(max(invseqno),0) + 1,@BillType=UPPER(@BillType) from inventory;  

	--根据单据类型不同，判断价格是否为零
	select @sql = case 
		when @BillType='STOREIN' then
			'select @price = isnull(b.PriceTaxed,-1)
			from  storeindetail b where  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id
		when @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD' then
			'select @price = isnull(b.InPriceTaxed,-1)
			from  storeoutdetail b where b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id 
		when @BillType='STOREOVER' then
			'select @price = isnull(b.InPriceTaxed,-1)
			from  storeadjustdetail b where  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id 
		when @BillType='STOREINIT' then
			'select @price = isnull(b.PriceTaxed,-1)
			from  storeindetail b where  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id
		when @BillType='COMRECHECK' then
			'select @price = isnull(b.InPriceTaxed,-1)
			from  COMRECHECKdetail b where  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id 
		else null end;
	execute sp_executesql @sql,N'@price numeric(18,4) OUTPUT',@price OUTPUT;
	if @price<0
	begin
		raiserror('请先输入进价:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id) 
		return
	end

	--根据单据类型不同，判断是否有库存
	select @sql = case 
		when @BillType='STOREIN' or @BillType='STOREINIT' then
			'select @curinvseq = min(a.InvSeqNo)
			from inventory a,storeindetail b,storein c where b.billno = c.billno and a.LocId = b.LocId and a.ComID = b.ComID and isnull(a.BatchNo,a.ComID) = isnull(b.BatchNo, b.ComID) and a.PriceTaxed = b.PriceTaxed 
				and isnull(a.InvCode,a.ComID) = isnull(b.InvCode, b.ComID) and isnull(c.deptcode,a.ComID) = isnull(b.inDeptCode, b.ComID) and isnull(c.SupEmpCode,a.ComID) = isnull(b.SupEmpCode, b.ComID)
				and isnull(c.EmpCode,a.ComID) = isnull(b.inEmpCode, b.ComID) and isnull(c.SupAccount,a.ComID) = isnull(b.SupAccount, b.ComID) 
				and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.inuse <>0'
		when @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD'  then
			'select @curinvseq = min(a.InvSeqNo)
			from inventory a,storeoutdetail b where a.LocId = b.LocId and a.ComID = b.ComID and isnull(a.BatchNo,a.ComID) = isnull(b.BatchNo, b.ComID) and a.PriceTaxed = b.InPriceTaxed 
				and isnull(a.InvCode,a.ComID) = isnull(b.InvCode, b.ComID) and isnull(a.inDeptCode,a.ComID) = isnull(b.inDeptCode, b.ComID) and isnull(a.SupEmpCode,a.ComID) = isnull(b.SupEmpCode, b.ComID)
				and isnull(a.inEmpCode,a.ComID) = isnull(b.inEmpCode, b.ComID) and isnull(a.SupAccount,a.ComID) = isnull(b.SupAccount, b.ComID) 
				and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.inuse <>0' 
		when @BillType='STOREOVER' then
			'select @curinvseq = min(a.InvSeqNo)
			from inventory a,storeadjustdetail b where a.LocId = b.LocId and a.ComID = b.ComID and isnull(a.BatchNo,a.ComID) = isnull(b.BatchNo, b.ComID) and a.PriceTaxed = b.InPriceTaxed 
				and isnull(a.InvCode,a.ComID) = isnull(b.InvCode, b.ComID) and isnull(a.inDeptCode,a.ComID) = isnull(b.inDeptCode, b.ComID) and isnull(a.SupEmpCode,a.ComID) = isnull(b.SupEmpCode, b.ComID)
				and isnull(a.inEmpCode,a.ComID) = isnull(b.inEmpCode, b.ComID) and isnull(a.SupAccount,a.ComID) = isnull(b.SupAccount, b.ComID) 
				and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.inuse <>0'  
		when @BillType='STOREMOVE' or @BillType='REQUISITION' then
			'select @curinvseq = min(a.InvSeqNo)
			from inventory a,storemovedetail b where a.LocId = b.ReqLocId and a.ComID = b.ComID and isnull(a.BatchNo,a.ComID) = isnull(b.BatchNo, b.ComID) and a.PriceTaxed = b.inPriceTaxed 
				and isnull(a.InvCode,a.ComID) = isnull(b.InvCode, b.ComID) and isnull(a.inDeptCode,a.ComID) = isnull(b.inDeptCode, b.ComID) and isnull(a.SupEmpCode,a.ComID) = isnull(b.SupEmpCode, b.ComID)
				and isnull(a.inEmpCode,a.ComID) = isnull(b.inEmpCode, b.ComID) and isnull(a.SupAccount,a.ComID) = isnull(b.SupAccount, b.ComID) 
				and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.ReqInuse <>0'
		when @BillType='COMRECHECK' then
			'select @curinvseq = min(a.InvSeqNo)
			from inventory a,COMRECHECKdetail b where a.LocId = b.LocId and a.ComID = b.ComID and isnull(a.BatchNo,a.ComID) = isnull(b.BatchNo, b.ComID) and a.PriceTaxed = b.inPriceTaxed
				and isnull(a.InvCode,a.ComID) = isnull(b.InvCode, b.ComID) and isnull(a.inDeptCode,a.ComID) = isnull(b.inDeptCode, b.ComID) and isnull(a.SupEmpCode,a.ComID) = isnull(b.SupEmpCode, b.ComID)
				and isnull(a.inEmpCode,a.ComID) = isnull(b.inEmpCode, b.ComID) and isnull(a.SupAccount,a.ComID) = isnull(b.SupAccount, b.ComID) 
				and a.Status = b.InspResult 
				and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.ReqInuse <>0'
		when @BillType='STORAGEMOVE' then
			'select @curinvseq = min(a.InvSeqNo)
			from inventory a,inventory b,StorageMove c where a.LocId = C.DesLocId and b.InvSeqNo = c.InvSeqNo and a.ComID = b.ComID and isnull(a.BatchNo,a.ComID) = isnull(b.BatchNo, b.ComID) and a.PriceTaxed = b.PriceTaxed 
				and isnull(a.InvCode,a.ComID) = isnull(b.InvCode, b.ComID) and isnull(a.inDeptCode,a.ComID) = isnull(b.inDeptCode, b.ComID) and isnull(a.SupEmpCode,a.ComID) = isnull(b.SupEmpCode, b.ComID)
				and isnull(a.inEmpCode,a.ComID) = isnull(b.inEmpCode, b.ComID) and isnull(a.SupAccount,a.ComID) = isnull(b.SupAccount, b.ComID) 
				and  c.billno = ''' +@BillNo+'''' +' and c.reqInuse <>0'
		else null end;
	execute sp_executesql @sql,N'@curinvseq numeric(18,0) OUTPUT',@curinvseq OUTPUT;
	begin tran;
	if @curinvseq > 0--如果同货位、同品种、同批号、同进价，则库存相加
	begin

		set @maxinvseq = @curinvseq;
		--根据单据类型不同，增加现有库存
		select @sql = case 
			when @BillType='STOREIN' then
				'update a set a.quantity = a.quantity + b.quantity,a.docquantity = a.docquantity + b.quantity,
					a.costs = a.storeinprice * (a.quantity + b.quantity),a.coststaxed = a.pricetaxed * (a.quantity + b.quantity) 
				from inventory a,storeindetail b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.inuse <>0'
			when @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD' then
				'update a set a.quantity = a.quantity + b.quantity,a.docquantity = a.docquantity + b.quantity,
					a.costs = a.storeinprice * (a.quantity + b.quantity),a.coststaxed = a.pricetaxed * (a.quantity + b.quantity) 
				from inventory a,storeoutdetail b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.inuse <>0' 
			when @BillType='STOREOVER' then
				'update a set a.quantity = a.quantity + b.quantity,a.docquantity = a.docquantity + b.quantity,
					a.costs = a.storeinprice * (a.quantity + b.quantity),a.coststaxed = a.pricetaxed * (a.quantity + b.quantity) 
				from inventory a,storeadjustdetail b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.inuse <>0' 
			when @BillType='STOREINIT' then
				'update a set a.quantity = a.quantity + b.quantity,a.docquantity = a.docquantity + b.quantity,
					a.costs = a.storeinprice * (a.quantity + b.quantity),a.coststaxed = a.pricetaxed * (a.quantity + b.quantity) 
				from inventory a,storeindetail b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.inuse <>0'
			when @BillType='STOREMOVE' or @BillType='REQUISITION' then
				'update a set a.quantity = a.quantity + b.quantity,a.docquantity = a.docquantity + b.quantity,
					a.costs = a.storeinprice * (a.quantity + b.quantity),a.coststaxed = a.pricetaxed * (a.quantity + b.quantity) 
				from inventory a,storemovedetail b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.ReqInuse <>0'
			when @BillType='COMRECHECK' then
				'update a set a.quantity = a.quantity + b.quantity,a.docquantity = a.docquantity + b.quantity,
					a.costs = a.storeinprice * (a.quantity + b.quantity),a.coststaxed = a.pricetaxed * (a.quantity + b.quantity) 
				from inventory a,COMRECHECKdetail b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' and b.Row_Id= '+  @Row_Id+' and b.ReqInuse <>0' 
			when @BillType='STORAGEMOVE' then
				'update a set a.quantity = a.quantity + b.quantity,a.docquantity = a.docquantity + b.quantity,
					a.costs = a.storeinprice * (a.quantity + b.quantity),a.coststaxed = a.pricetaxed * (a.quantity + b.quantity) 
				from inventory a,StorageMove b where a.InvSeqNo = '+cast(@maxinvseq as varchar(32))+
					'and  b.billno = ''' +@BillNo+''' '+' and b.reqInuse <>0'  
			else null end;

			execute sp_executesql @sql; 
			if @@error <> 0 
			 begin
				raiserror('增加库存失败:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id)
				rollback tran;
				return
			 end
	end
	else --否则插入新记录
	begin
		--根据单据类型不同，设置不同语句,添加库存
		select @sql = case 
		when @BillType='STOREIN' or @BillType='STOREINIT' then
			'insert into inventory(InvSeqNo,WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,DocQuantity,
				MjBatchNo,ProDate,Validity,StoreinBill,StoreinRow,SupAccount,StoreinPrice,Costs,
				PriceTaxed,CostsTaxed,InDate,InvCode,Status,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)
			select InvSeqNo='+cast(@maxinvseq as varchar(32))+',WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,Quantity,
				MjBatchNo,ProDate,Validity,billno,Row_Id,SupAccount=(select SupAccount from storein where billno = storeindetail.billno ),
				Price,Price* quantity,PriceTaxed,PriceTaxed * quantity,getdate(),InvCode,isnull(InspResult,1),btPrice,ctPrice,
				inDeptCode=(select deptcode from storein where billno = ''' +@BillNo+'''),
				InEmpCode=(select EmpCode from storein where billno = ''' +@BillNo+'''),
				SupEmpCode=(select SupEmpCode from storein where billno = ''' +@BillNo+''')
			from storeindetail where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and  inuse <>0'
		when @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD' then
			'insert into inventory(InvSeqNo,WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,DocQuantity,
				MjBatchNo,ProDate,Validity,StoreinBill,StoreinRow,SupAccount,StoreinPrice,Costs,
				PriceTaxed,CostsTaxed,InDate,InvCode,Status,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)
			select InvSeqNo='+cast(@maxinvseq as varchar(32))+',WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,Quantity,
				MjBatchNo,ProDate,Validity,billno,Row_Id,SupAccount,StoreinPrice,StoreinPrice* quantity,
				InPriceTaxed,InPriceTaxed * quantity,getdate(),InvCode,isnull(InspResult,1),btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
			from storeoutdetail where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and  inuse <>0'
		when @BillType='STOREOVER' then
			'insert into inventory(InvSeqNo,WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,DocQuantity,
				MjBatchNo,ProDate,Validity,StoreinBill,StoreinRow,SupAccount,StoreinPrice,Costs,
				PriceTaxed,CostsTaxed,InDate,InvCode,Status,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)
			select InvSeqNo='+cast(@maxinvseq as varchar(32))+',WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,Quantity,
				MjBatchNo,ProDate,Validity,billno,Row_Id,SupAccount,StoreinPrice,StoreinPrice* quantity,
				InPriceTaxed,InPriceTaxed * quantity,getdate(),InvCode,1,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
			from storeadjustdetail where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and  inuse <>0' 
		when @BillType='STOREMOVE'  or @BillType='REQUISITION' then
			'insert into inventory(InvSeqNo,WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,DocQuantity,
				MjBatchNo,ProDate,Validity,StoreinBill,StoreinRow,SupAccount,StoreinPrice,Costs,
				PriceTaxed,CostsTaxed,InDate,InvCode,Status,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)
			select InvSeqNo='+cast(@maxinvseq as varchar(32))+',ReqWhCode,ReqLocId,COMID,BatchNo,Quantity,Quantity,
				MjBatchNo,ProDate,Validity,billno,Row_Id,SupAccount,
				StoreinPrice,StoreinPrice* quantity,InPriceTaxed,InPriceTaxed * quantity,getdate(),InvCode,1,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
			from storemovedetail where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and  ReqInuse <>0'
		when @BillType='COMRECHECK' then
			'insert into inventory(InvSeqNo,WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,DocQuantity,
				MjBatchNo,ProDate,Validity,StoreinBill,StoreinRow,SupAccount,StoreinPrice,Costs,
				PriceTaxed,CostsTaxed,InDate,InvCode,Status,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)
			select InvSeqNo='+cast(@maxinvseq as varchar(32))+',WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,Quantity,
				MjBatchNo,ProDate,Validity,billno,Row_Id,SupAccount,
				StoreinPrice,StoreinPrice* quantity,InPriceTaxed,InPriceTaxed * quantity,getdate(),InvCode,isnull(InspResult,1),btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
			from COMRECHECKdetail where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and  ReqInuse <>0'
		when @BillType='STORAGEMOVE' then
			'insert into inventory(InvSeqNo,WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,DocQuantity,
				MjBatchNo,ProDate,Validity,StoreinBill,StoreinRow,SupAccount,StoreinPrice,Costs,
				PriceTaxed,CostsTaxed,InDate,InvCode,Status,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)
			select InvSeqNo='+cast(@maxinvseq as varchar(32))+', b.WAREHOUSE_CODE,a.DesLocId,b.COMID,b.BatchNo,a.Quantity,a.Quantity,
				b.MjBatchNo,b.ProDate,b.Validity,a.billno,1 as Row_Id,b.SupAccount,
				b.StoreinPrice,b.StoreinPrice* a.quantity,b.PriceTaxed,b.PriceTaxed * a.quantity,getdate(),b.InvCode,1,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
			from StorageMove a,inventory b where a.InvSeqNo = b.InvSeqNo and a.billno = ''' +@BillNo+''' '+' and a.reqInuse <>0' 
		else null end;
	
	 	execute sp_executesql @sql; 
		if @@error <> 0 
		 begin
			raiserror('增加库存失败:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id)
			rollback tran;
			return
		 end
	end

	--根据单据类型不同，设置不同语句,记录库存id号
	select @sql = case 
		when @BillType='STOREIN' then
			'update storeindetail set InvSeqNo='+cast(@maxinvseq as varchar(32))+',inuse=0 where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and inuse <>0'
		when @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD' then
			'update storeoutdetail  set InvSeqNo='+cast(@maxinvseq as varchar(32))+',inuse=0 where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and inuse <>0'
		when @BillType='STOREOVER' then
			'update storeadjustdetail  set InvSeqNo='+cast(@maxinvseq as varchar(32))+',inuse=0 where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and inuse <>0'
		when @BillType='STOREINIT' then
			'update storeindetail set InvSeqNo='+cast(@maxinvseq as varchar(32))+',inuse=0 where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and inuse <>0'
		when @BillType='STOREMOVE'  or @BillType='REQUISITION' then
			'update storemovedetail set ReqInvSeqNo='+cast(@maxinvseq as varchar(32))+',reqinuse=0 where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and  ReqInuse <>0'
		when @BillType='COMRECHECK' then
			'update COMRECHECKdetail set reqinuse=0 where billno = ''' +@BillNo+''' and Row_Id= '+  @Row_Id+' and reqinuse <>0'
		when @BillType='STORAGEMOVE' then
			'update STORAGEMOVE set DesInvSeqNo='+cast(@maxinvseq as varchar(32))+',reqInuse=0 where billno = ''' +@BillNo+''' ' +' and reqInuse <>0'
		else null end;
	
 	execute sp_executesql @sql; 
	if @@error <> 0 
	 begin
		raiserror('记录库存id失败:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id)
		rollback tran;
		return
	 end
commit tran;
end
GO
/****** Object:  Table [dbo].[ComMaintainDetailPlan]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComMaintainDetailPlan](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[batchNo] [varchar](32) NULL,
	[validity] [datetime] NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[InvQuantity] [numeric](18, 6) NULL,
	[SupAccount] [varchar](32) NULL,
	[QaStatus] [varchar](32) NULL,
	[MtResult] [varchar](32) NULL,
	[measure] [varchar](128) NULL,
	[MtReMark] [varchar](32) NULL,
	[WhCode] [varchar](32) NULL,
	[LocId] [varchar](32) NULL,
	[InvSeqNo] [numeric](18, 0) NULL,
	[isExecute] [int] NULL,
 CONSTRAINT [PK__ComMaintainDetailPlan] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComMaintainDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComMaintainDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[batchNo] [varchar](32) NULL,
	[validity] [datetime] NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[InvQuantity] [numeric](18, 6) NULL,
	[SupAccount] [varchar](32) NULL,
	[QaStatus] [varchar](32) NULL,
	[MtResult] [varchar](32) NULL,
	[measure] [varchar](128) NULL,
	[MtReMark] [varchar](32) NULL,
	[PlanBillNo] [varchar](32) NULL,
	[WhCode] [varchar](32) NULL,
	[LocId] [varchar](32) NULL,
 CONSTRAINT [PK__ComMaintainDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Newbillno]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--销售订单记录打印时间、次数、人员:增加分拣环节


 CREATE function [dbo].[fn_Newbillno](@btype varchar(32),@date datetime)  
returns varchar(32)  
as  
BEGIN  
 declare @billno varchar(32),@maxno varchar(32),@bseq varchar(8),@newseq int,@sdate varchar(32),@sedate varchar(32),@billabbrv varchar(2)  
    
 select @btype = lower(@btype),@sdate = convert(varchar(10),@date,112), @sedate = convert(varchar(10),dateadd(dd,1,@date),112);  
  
 if @btype ='storein'  
  select @maxno = max(billno),@billabbrv='JH' from storein where ordertype =1 and thisdate between @sdate and @sedate;  
 else if @btype ='storeinrfd'  
  select @maxno = max(billno),@billabbrv='TH' from storein where ordertype =2 and thisdate between @sdate and @sedate;  
 else if @btype ='storeout'  
  select @maxno = max(billno),@billabbrv='XH' from storeout where ordertype =1 and thisdate between @sdate and @sedate;  
 else if @btype ='storeoutrfd'  
  select @maxno = max(billno),@billabbrv='XT' from storeout where ordertype =2 and thisdate between @sdate and @sedate;  
 else if @btype ='storeoutretail'  
  select @maxno = max(billno),@billabbrv='RH' from storeout where ordertype =6 and thisdate between @sdate and @sedate;  
 else if @btype ='storeoutretailrfd'  
  select @maxno = max(billno),@billabbrv='RT' from storeout where ordertype =7 and thisdate between @sdate and @sedate;  
 else if @btype = 'storeover'  
  select @maxno = max(billno),@billabbrv='BY' from storeadjust where ordertype =1 and thisdate between @sdate and @sedate;   
 else if @btype = 'storeshort'  
  select @maxno = max(billno),@billabbrv='BS' from storeadjust where ordertype =2 and thisdate between @sdate and @sedate;   
 else if @btype = 'payout'  
  select @maxno = max(billno),@billabbrv='FK' from acpay where ordertype =1 and thisdate between @sdate and @sedate;   
 else if @btype = 'payin'  
  select @maxno = max(billno),@billabbrv='SK' from acpay where ordertype =2 and thisdate between @sdate and @sedate;   
 else if @btype = 'AcVouch'  
  select @maxno = cast(isnull(max(VouchId),0)+1 as varchar(32)) from v_vouch;   
 else if @btype ='salesorder'  
  select @maxno = max(billno),@billabbrv='XD' from salesorder where ordertype in(1,3) and thisdate between @sdate and @sedate;  
 else if @btype ='salesorderreturn'  
  select @maxno = max(billno),@billabbrv='XT' from salesorder where ordertype =2 and thisdate between @sdate and @sedate;  
 else if @btype ='storeinit'  
  select @maxno = max(billno),@billabbrv='QC' from storein where ordertype =0 and thisdate between @sdate and @sedate;  
 else if @btype ='firstvendor'  
  select @maxno = max(billno),@billabbrv='FV' from firstvendor where  thisdate between @sdate and @sedate;  
 else if @btype ='firstcom'  
  select @maxno = max(billno),@billabbrv='FM' from firstcommodity where  thisdate between @sdate and @sedate;  
 else if @btype ='firstcustomer'  
  select @maxno = max(billno),@billabbrv='FC' from firstcustomer where  thisdate between @sdate and @sedate;  
 else if @btype ='purchaseplan'  
  select @maxno = max(billno),@billabbrv='PP' from PurchasePlan where  thisdate between @sdate and @sedate;  
 else if @btype ='purchasecontract'  
  select @maxno = max(billno),@billabbrv='PC' from PurchaseContract where  thisdate between @sdate and @sedate;  
 else if @btype ='storeinrefuse'  
  select @maxno = max(billno),@billabbrv='SR' from StoreInRefuse where  thisdate between @sdate and @sedate;  
 else if @btype ='comrecheck'  
  select @maxno = max(billno),@billabbrv='CR' from ComRecheck where  thisdate between @sdate and @sedate;  
 else if @btype ='commaintain'  
  select @maxno = max(billno),@billabbrv='CM' from ComMaintain where  thisdate between @sdate and @sedate;  
 else if @btype ='storemove'  
  select @maxno = max(billno),@billabbrv='MV' from storemove where ordertype =1 and thisdate between @sdate and @sedate;  
 else if @btype = 'invoicein'  
  select @maxno = max(billno),@billabbrv='PI' from acinvoice where ordertype =1 and thisdate between @sdate and @sedate;   
 else if @btype = 'invoiceout'  
  select @maxno = max(billno),@billabbrv='SI' from acinvoice where ordertype =2 and thisdate between @sdate and @sedate;   
 else if @btype = 'salescommission'  
  select @maxno = max(billno),@billabbrv='SC' from SalesCommission where  thisdate between @sdate and @sedate;   
 else if @btype = 'disposal'  
  select @maxno = max(billno),@billabbrv='DP' from StoreAdjust where ordertype =3 and  thisdate between @sdate and @sedate;   
 else if @btype = 'destroy'  
  select @maxno = max(billno),@billabbrv='DT' from StoreAdjust where ordertype =4 and  thisdate between @sdate and @sedate;   
 else if @btype = 'storecheck'  
  select @maxno = max(billno),@billabbrv='IC' from StoreCheck where ordertype =1 and  thisdate between @sdate and @sedate;   
 else if @btype = 'storecheckinput'  
  select @maxno = max(billno),@billabbrv='IP' from StoreCheckInput where ordertype =1 and  thisdate between @sdate and @sedate;   
 else if @btype = 'salesstop'  
  select @maxno = max(billno),@billabbrv='TP' from SalesStop where  thisdate between @sdate and @sedate;   
 else if @btype = 'commaintainplan'  
  select @maxno = max(billno),@billabbrv='MP' from ComMaintainPlan where thisdate between @sdate and @sedate;   
 else if @btype = 'salestransport'  
  select @maxno = max(billno),@billabbrv='TS' from SalesTransport where   thisdate between @sdate and @sedate;   
 else if @btype = 'directinout'  
  select @maxno = max(billno),@billabbrv='DO' from DirectInOut where   thisdate between @sdate and @sedate;   
 else if @btype = 'storagemove'  
  select @maxno = max(billno),@billabbrv='SM' from StorageMove where   thisdate between @sdate and @sedate;   
 else if @btype = 'claritycheck'  
  select @maxno = max(billno),@billabbrv='YC' from ClarityCheck where  thisdate between @sdate and @sedate;   
 else if @btype = 'colorcheck'  
  select @maxno = max(billno),@billabbrv='SC' from ColorCheck where  thisdate between @sdate and @sedate;    
 else if @btype ='requisition'  
  select @maxno = max(billno),@billabbrv='RQ' from storemove where ordertype =2 and thisdate between @sdate and @sedate;   
 else if @btype = 'purchaseorder'  
  select @maxno = max(billno),@billabbrv='PO' from PurchaseOrder where  thisdate between @sdate and @sedate;    
 else if @btype ='adjustinprice'  
  select @maxno = max(billno),@billabbrv='AI' from storein where ordertype =3 and thisdate between @sdate and @sedate;  
 else if @btype ='adjustsalesprice'  
  select @maxno = max(billno),@billabbrv='AO' from storeout where ordertype =3 and thisdate between @sdate and @sedate;  
 else if @btype ='poreceive'  
  select @maxno = max(billno),@billabbrv='AO' from POReceive where ordertype =1 and thisdate between @sdate and @sedate;  
 else if @btype ='acdepartmentpayin'  
  select @maxno = max(billno),@billabbrv='DI' from AcDepartmentPay where  ordertype =1 and thisdate between @sdate and @sedate;  
 else if @btype ='acdepartmentpayout'  
  select @maxno = max(billno),@billabbrv='DO' from AcDepartmentPay where  ordertype =2 and thisdate between @sdate and @sedate;  
 else if @btype = 'salesshipping'  
  select @maxno = max(billno),@billabbrv='SS' from SalesShipping where   thisdate between @sdate and @sedate;  
 else if @btype = 'requestplan'  
  select @maxno = max(billno),@billabbrv='RP' from RequestPlan where   thisdate between @sdate and @sedate; 
 else if @btype = lower('Sorting')
		select @maxno = max(billno),@billabbrv='FJ' from StoreOut2 where thisdate between @sdate and @sedate;  
 else if @btype = lower('orderSorting')
		select @maxno = max(billno),@billabbrv='DJ' from Salesorder2 where thisdate between @sdate and @sedate; 
  
     
 if @btype = 'AcVouch'  
 begin  
  return @maxno;  
 end  
 if @maxno is null or len(@maxno) < 1  
 begin  
  select @bseq = '0001';  
 end  
 else  
 begin    
  select @newseq = cast(substring(@maxno,11,4) as int);   
    
  select @newseq = @newseq +1;  
  select @bseq = REPLICATE('0',4 - len(@newseq))+cast(@newseq as varchar(8));  
 end  
  
    
 select @billno = @billabbrv+convert(varchar(8),@sdate,112)+@bseq;   
    
return @billno  
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_LicDisable]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_LicDisable](@btype varchar(32),@Account varchar(32))
returns varchar(256)
as
BEGIN
	declare @Ret varchar(256),@date datetime;
	 
	select @btype = lower(@btype),@date = curDate from v_getdate; 

	if @btype ='vendor'
		select @Ret = case when  busiLicExp  < @date then '1营业执照已到期!'  when  QscExp   < @date then '1质量认证证书已到期!' when licenceExp  < @date then '1许可证已到期!' else null end
		from vendor where account =@Account;
	else if @btype ='customer'
		select @Ret = case when  busiLicExp  < @date then '1营业执照已到期!'  when  QscExp   < @date then '1质量认证证书已到期!' when licenceExp  < @date then '1许可证已到期!' else null end
		from customer where account =@Account; 	 
	else if @btype ='vendoremployee'
		select @Ret = case when  AuthExpDate  < @date then '1委托书已到期!'   else null end
		from VendorEmployee where supEmpCode =@Account; 	 

	select @Ret = null;
return @Ret
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_LicColor]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_LicColor](@btype varchar(32),@Account varchar(32))
returns varchar(256)
as
BEGIN
	declare @Ret varchar(256),@date datetime;
	 
	select @btype = lower(@btype),@date = curDate from v_getdate; 

	if @btype ='vendor'
		select @Ret = case when  busiLicExp  < @date or  QscExp   < @date or licenceExp  < @date then '-16181' else '' end
		from vendor where account =@Account;
	else if @btype ='customer'
		select @Ret = case when  busiLicExp  < @date or  QscExp   < @date or licenceExp  < @date then '-16181' else '' end
		from customer where account =@Account;	
	else if @btype ='vendoremployee'
		select @Ret = case when  AuthExpDate  < @date then '-16181'  else '' end
		from VendorEmployee where supEmpCode =@Account;  
return @Ret
END
GO
/****** Object:  Table [dbo].[DirectInOutDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DirectInOutDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[BatchNo] [varchar](32) NULL,
	[MjBatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[StoreinPrice] [numeric](18, 6) NULL,
	[Costs] [numeric](18, 6) NULL,
	[InPriceTaxed] [numeric](18, 6) NULL,
	[CostsTaxed] [numeric](18, 6) NULL,
	[TaxIn] [numeric](5, 2) NULL,
	[SalesPrice] [numeric](18, 6) NULL,
	[Amount] [numeric](18, 6) NULL,
	[AmountTaxed] [numeric](18, 6) NULL,
	[TaxOut] [numeric](5, 2) NULL,
	[DetailTime] [datetime] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[PurchasePerson] [varchar](32) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[AccountantPerson] [varchar](32) NULL,
	[AccountantDate] [datetime] NULL,
	[AccountantRemark] [varchar](256) NULL,
	[LeaderPerson] [varchar](32) NULL,
	[LeaderDate] [datetime] NULL,
	[LeaderRemark] [varchar](256) NULL,
	[Unit] [varchar](32) NULL,
 CONSTRAINT [PK__DirectInOutDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetLocStatus]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_GetLocStatus](@LocID varchar(32))
returns varchar(32)
as
BEGIN
	declare @row_id int,@Ret varchar(32)
	  

	select @Ret='',@row_id = COUNT(*) from inventory WHERE LocID = @LocID and status = 1; 
	 
	if @row_id >0
	begin
		select @Ret =@Ret+ 'G';
	end 

	select @row_id = COUNT(*) from inventory WHERE LocID = @LocID and status = 0; 
	 
	if @row_id >0
	begin
		select @Ret =@Ret+ 'R';
	end 
return @Ret
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_NJ]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_NJ](@code varchar(128),@period int,@flag int,@inclAllVouch int)
returns numeric(18,2)
as
begin
   declare @AmtRet numeric(18,2),@bPeriod int
   set @code = @code + '%';

   select @bPeriod = min(accnt_id) from AcMonthSet 
	where accnt_year = (select accnt_year from AcMonthSet where accnt_id = @period);
 

   SELECT @AmtRet=sum((CASE WHEN @flag<>2 THEN v_vouch.j_amount ELSE v_vouch.d_amount End)) 
   FROM AcCode INNER JOIN v_vouch ON AcCode.code = v_vouch.code 
   WHERE v_vouch.period>=@bPeriod and v_vouch.period<=@Period and v_vouch.code like @code  and v_vouch.is_booked = 2;

   select @AmtRet= isnull(@AmtRet,0) 
return (@AmtRet)
end
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetPayWayName]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_GetPayWayName](@Type varchar(32), @BillNo varchar(128))
returns varchar(1000)
as
begin
   declare @PayWayName varchar(128),@parent_code varchar(128)
   declare @PayWayName_return varchar(1000)
   declare @Row_Id   int,@counter int,@TotalRow int

   set @Type = lower(@Type);

   if @Type ='salesorderpay'
   	select @counter = count(*),@Row_Id = min(Row_Id) from SalesOrderPay where Billno = @BillNo;
   else if @Type ='salespay'
	select @counter = count(*),@Row_Id = min(Row_Id) from SalesPay where Billno = @BillNo;
    
   set @TotalRow = @counter;
   while @counter > 0
   begin
          
	 if @Type ='salesorderpay' 
         	select @PayWayName = PayWayName  from PayWay 
	  	where  PayWayID = (select PayWayID from SalesOrderPay where Billno = @BillNo and Row_Id=@Row_Id);
         else if @Type ='salespay' 
		select @PayWayName = PayWayName  from PayWay 
	  	where  PayWayID = (select PayWayID from SalesPay where Billno = @BillNo and Row_Id=@Row_Id);
	  
	 if @Type ='salesorderpay' and @TotalRow > 1
         	select @PayWayName =@PayWayName +':' + cast(isnull(PayAmount,0) as varchar(32))+'  大写:'+dbo.MoneyConvert(PayAmount)
		 from SalesOrderPay where Billno = @BillNo and Row_Id=@Row_Id;
         else if @Type ='salespay' and @TotalRow > 1
		select @PayWayName =@PayWayName +':' + cast(isnull(PayAmount,0) as varchar(32))+'  大写:'+dbo.MoneyConvert(PayAmount) 
		from SalesPay where Billno = @BillNo and Row_Id=@Row_Id;

         if @PayWayName_return <> '' 
            select @PayWayName_return =@PayWayName_return+' ' + @PayWayName
         else
            select @PayWayName_return =@PayWayName
        
	if @Type ='salesorderpay'
		 select @Row_Id = min(Row_Id) from SalesOrderPay where Billno = @BillNo and Row_Id >@Row_Id;
	else if @Type ='salespay'
		select @Row_Id = min(Row_Id) from SalesPay where Billno = @BillNo and Row_Id >@Row_Id;

         select @counter = @counter - 1
   end 

return (@PayWayName_return)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_query_apsum]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_query_apsum] (@bdate varchar(32) ,@edate varchar(32) )
as
begin
	select @edate = convert(varchar(10),dateadd(dd,1,@edate),120); 
 
	select ksrq = @bdate ,jzrq = @edate ,supname=(select myname from vendor where account = aa.account),
	    --account, paccount = (select parent_code from vendor where  account = aa.account),
	    --psupname=(select myname from vendor where account = (select parent_code from vendor where  account = aa.account)),
	    sum(qcamt) as qcamt,sum(addamt) as addamt,sum(decamt) as decamt,sum(qmamt) as qmamt
	from (
		select  account, sum(amount) as qcamt,0 as addamt,0 as decamt,sum(amount) as qmamt from aciniaccnt  
			where   thistype = 1   and thisdate < @bdate 
			group by account
		union all
		select a.supaccount,sum(case when a.ordertype =1 then b.amount else -b.amount end) as qcamt,0 as addamt,0 as decamt,sum(case when a.ordertype =1 then b.amount else -b.amount end) as qmamt
			from storein a,storeindetail b
			where a.billno = b.billno  and a.ordertype <>0 and a.docstatus = 0 and b.inuse=0 and a.IsPayed = 0 and a.thisdate < @bdate 
			group by a.supaccount
		union all
		select a.account,-sum(b.payamount) as qcamt,0 as addamt,0 as decamt,-sum(b.payamount) as qmamt
			from acpay a,acpaydetail b
			where a.billno = b.billno  and a.ordertype = 1 and a.docstatus = 0 and a.thisdate < @bdate 
			group by a.account
		union all
		select  account, 0 as qcamt,sum(amount) as addamt,0 as decamt,sum(amount) as qmamt from aciniaccnt  
			where   thistype = 1  and thisdate between @bdate  and @edate 
			group by account
		union all
		select a.supaccount,0 as qcamt,sum(case when a.ordertype =1 then b.amount else -b.amount end) as addamt,0 as decamt,sum(case when a.ordertype =1 then b.amount else -b.amount end) as qmamt
			from storein a,storeindetail b
			where a.billno = b.billno  and a.ordertype <>0 and a.docstatus = 0 and b.inuse=0 and a.IsPayed = 0 and a.thisdate between @bdate  and @edate 
			group by a.supaccount
		union all
		select a.account,0 as qcamt,0 as addamt,sum(b.payamount) as decamt,-sum(b.payamount) as qmamt
			from acpay a,acpaydetail b
			where a.billno = b.billno  and a.ordertype = 1 and a.docstatus = 0 and a.thisdate between @bdate  and @edate 
			group by a.account
	) as aa
	group by account

end
GO
/****** Object:  StoredProcedure [dbo].[sp_qryInventory]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_qryInventory] (@UID varchar(32),@BillType varchar(128),@BillNo nvarchar(32),@Input Varchar(256),@Filter varchar(800))
as
begin 
	declare @DeptCode varchar(32),@custAccount varchar(32),@custempcode varchar(32),@sql nvarchar(4000),@rowcount int,@taxRate numeric(18,2)
	declare @SalesByService int ,@ComAreaDisable int ,@ComByCustomer int ,@sql1 nvarchar(4000),@sqlService nvarchar(4000)
	declare @SqlComAuth nvarchar(4000) ,@SqlComAuth1 nvarchar(4000),@SqlComAuth2 nvarchar(4000)
	declare @SqlComArea nvarchar(4000),@SqlComByCust nvarchar(4000)  

	select @DeptCode = deptcode,@custAccount = custAccount,@custempcode = isnull(custempcode,''),@taxRate = isnull(taxRate,0)/100 from storeout where billno = @BillNo;	
	select *,price = case (select min(pricetype) from customer where account= @custAccount) when 1 then price1 when 2 then price2 when 3 then price3 when 4 then price4
when 5 then price5 when 6 then price6 else price1 end from v_inventory_forbill a where case when docquantity is not null then docquantity   else 1  end >0  and  (a.comid  like '%'+@Input+'%' or a.comindex like '%'+@Input+'%' or isnull(a.barcode,'')  like '%'+@Input+'%')  



	--execute sp_executesql @sql  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InvCheck_Input]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_InvCheck_Input] (@obillno varchar(32),@comid varchar(32),@quan numeric(18,4))  
as  
begin  
 begin transaction   
 declare @Row_Id int,@totalquan numeric(18,4),@billno varchar(32)  
  
 select @billno = billno from StoreCheckInput where OriginBill = @obillno;  
  
 if @billno is null or len(@billno) <1  
 begin  
  select @billno = dbo.fn_Newbillno('StoreCheckInput',getdate());  
  insert into StoreCheckInput(BillNo,DeptCode,OriginBill,DocStatus,OrderType,DocPerson)   
  select @billno,DeptCode,@obillno,1,'1',DocPerson  
   from StoreCheck where billno = @obillno;  
 end  
  
 select @Row_Id =isnull(min(Row_Id),0) from StoreCheckInputDetail where billno=@billno and comid = @comid;   
  
 if @Row_Id >0   
 begin  
  update StoreCheckInputDetail set Quantity = Quantity + @quan  where billno=@billno and Row_Id = @Row_Id;  
  if @@error<>0    
            begin  
               raiserror('1-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)  
               rollback transaction;   
               return   
            end   
 end  
 else  
 begin  
  select @Row_Id =(isnull(max(Row_Id),0) + 1) from StoreCheckInputDetail where billno=@billno;   
  -----------------------------------------处理明细-------------------------------------------------  
      
    
  INSERT INTO StoreCheckInputDetail ( BillNo,Row_Id,COMID,Quantity)    
    select @billno,@Row_Id,b.comid,@quan   
                 from  commodity b where b.comid = @comid;  
     if @@error<>0    
            begin  
               raiserror('2-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)  
               rollback transaction;   
               return   
            end   
 end      
   
-----------------------------------------处理明细-------------------------------------------------  
   
   commit transaction;  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AcPayOutByBill]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_AcPayOutByBill] (@billno varchar(32),@obillno varchar(32),@SelectAmt numeric(18,4))
as
begin
	declare @rowcount numeric(18,0),@amt numeric(18,4),@NotPayAmt  numeric(18,4),@Row_ID int,@CurAmt numeric(18,4),@PayAmt numeric(18,4)	 
	if @SelectAmt = 0  
	begin
		return;
	end
	select @amt = sum(case when a.ordertype in(0,1,3) then b.amount - isnull(b.payAmount,0) else -(b.amount - isnull(b.payAmount,0)) end),
			@CurAmt = @SelectAmt from storein a,storeindetail b where a.billno = b.billno and a.billno = @obillno;
	begin transaction 
	if @amt = @SelectAmt 
	begin		
		insert into acpaydetail2(BILLNO,oBillNo,oRowId,PayAmount) 
		select @billno,@obillno,b.Row_Id,case when a.ordertype in(0,1,3) then b.amount else -b.amount end
		from storein a,storeindetail b where a.billno = b.billno and a.billno = @obillno;
		if @@error<>0  
		   begin
				 raiserror('1-生成明细表失败,数据库返回代码:%d',16,1,@@error)
				 rollback transaction; 
				 return 
		   end	
		update storeindetail set PayFlag = 2, PayAmount = amount  where billno = @obillno;
		if @@error<>0  
		   begin
				 raiserror('2-更新单据标识失败,数据库返回代码:%d',16,1,@@error)
				 rollback transaction; 
				 return 
		   end	
	end
	else
	begin
		---------------------------------------------循环处理明细----------------------------------------------------
		declare cr_this cursor for
		
		select row_id,case when a.ordertype in(0,1,3) then b.amount - isnull(b.payAmount,0) else -(b.amount - isnull(b.payAmount,0)) end
		from storein a,storeindetail b where a.billno = b.billno and a.billno = @obillno order by row_id; 
		
		open cr_this 

		fetch next from cr_this into @Row_ID,@NotPayAmt 
		WHILE @@FETCH_STATUS = 0
		BEGIN
			if @NotPayAmt <>0 and @CurAmt <> 0
			begin
				if abs(@NotPayAmt) <= abs(@CurAmt) 
				begin
					 select @PayAmt  = @NotPayAmt;
				end
				else
				begin
			 		select @PayAmt  = @CurAmt;
				end   

				insert into acpaydetail2(BILLNO,oBillNo,oRowId,PayAmount) 
				select @billno,@obillno,b.Row_Id,case when a.ordertype in(0,1,3) then  @PayAmt else -@PayAmt end 
				from storein a,storeindetail b where a.billno = b.billno and a.billno = @obillno and b.row_id = @Row_ID;
				if @@error<>0  
				   begin
						 raiserror('3-生成明细表失败,数据库返回代码:%d',16,1,@@error)
						 rollback transaction; 
						 return 
				   end	
				update storeindetail set PayFlag =  case when amount =  isnull(PayAmount,0) + abs( @PayAmt) then 2 else 1 end, 
						PayAmount = isnull(PayAmount,0) +abs( @PayAmt)
				where billno = @obillno and  row_id = @Row_ID;
				if @@error<>0  
				   begin
						 raiserror('4-更新单据标识失败,数据库返回代码:%d',16,1,@@error)
						 rollback transaction; 
						 return 
				   end					 
	  
				select @CurAmt = @CurAmt - @PayAmt;  
			end			
			
			fetch next from cr_this into @Row_ID,@NotPayAmt 
		end
		close cr_this
		deallocate cr_this 
 
	-----------------------------------------处理明细-------------------------------------------------
	end
 
   commit transaction;
end
GO
/****** Object:  View [dbo].[v_warehouse_plat]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_warehouse_plat]
as 	  
select top 100000 LocID,LocName,status=dbo.fn_GetLocStatus(LocID),warehouse_code from goodslocation
order by LocName
GO
/****** Object:  View [dbo].[v_billdetail_storemove]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_storemove]
as 	  
select BillNo,Row_Id,b.COMID,WAREHOUSE_CODE,LocID,BatchNo,Quantity,PriceTaxed,AmountTaxed,b.TaxOut,Charge,MjBatchNo,ProDate,Validity,InvSeqNo,StoreinBill,StoreinRow,b.SupAccount,InvCode,InDate,StoreinPrice,Costs,InPriceTaxed,CostsTaxed,DetailTime,
Vouchid,Vouchflag,inuse,Audit,c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex,c.Color,b.ReqWhCode,b.ReqLocID,SupPurchasePerson,SupPurchaseDate,SupPurchaseRemark,SupInspPerson,SupInspDate,SupInspRemark,SupAccountantPerson,
	SupAccountantRemark,SupCheckPerson,SupCheckDate,SupCheckRemark,SupWhPerson,SupWhDate,SupWhRemark,ReqInspPerson,	
	ReqInspDate,ReqInspRemark,ReqAccountantPerson,ReqAccountantDate,ReqAccountantRemark,ReqWhPerson,ReqWhDate,ReqWhRemark,b.btPrice,b.ctPrice,b.inDeptCode,b.InEmpCode,b.SupEmpCode,null as _BackColor 
from  storemovedetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_StoreInRefuse]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_StoreInRefuse]
as 	  
select BillNo,Row_Id,b.COMID,cast(quantity  as numeric(18,2)) as Quantity,cast(price  as numeric(18,2)) as Price,cast(quantity*price  as numeric(18,2)) as amount,
DetailTime,inuse,Audit,BatchNo,ProDate,Validity,c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex 
from  StoreInRefusedetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_storein]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_storein]
as 	  
select BillNo,Row_Id,b.COMID,WAREHOUSE_CODE,LocID,BatchNo,cast(quantity  as numeric(18,2)) as Quantity,cast(price  as numeric(18,3)) as Price,b.TaxIn,cast(amount  as numeric(18,2)) as Amount,
 cast(PriceTaxed  as numeric(18,3)) as PriceTaxed,Charge,MjBatchNo,ProDate,Validity,InDate,StoreinBill,StoreinRow,b.SupAccount,InvCode,InvSeqNo,DetailTime,PayAmount,PayFlag,Vouchid,Vouchflag,inuse,Audit,b.btPrice,b.ctPrice,b.inDeptCode,b.InEmpCode,b.SupEmpCode
,c.comname,c.name_chem,c.origin,c.specification,c.auth_code,c.manufacturer,c.unit,c.BarCode,c.comindex,c.Color,c.PiecePacking,c.Outerpacking,c.InnerPacking,d.ComCatName,
	PackNo=cast(case when c.PiecePacking is not null and isnumeric(c.PiecePacking)=1 then Quantity/c.PiecePacking end as numeric(18,0)),
AccountantRemark,AccountantPerson,AccountantDate,PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,InspResult,WhPerson,WhDate,WhRemark,QaStatus,CheckPerson,CheckDate,
CheckRemark,SpotcheckQuantity,SpotcheckUnit,SpotcheckItem,Spotcheckpurpose,SpotcheckResult,SpotcheckPerson,SpotcheckDate,SpotcheckRemark,importDrugsReportNo,importDrugsRegcode,importDrugsRegUnit,InspPerson2,InspDate2,InspRemark2,CheckQty,RfdReason,transmode,receiveTime,tempControlWay,receiveTemp,
b.ReceiveQuan,b.RefuseQuan,b.RefuseReason,b.RecheckQuan,b.RecheckReason,b.despatchTime,b.despatchTemp,c.MedType,b.wsbPrice,b.rtbPrice,
case 	when b.InspResult = 1 then  '-7278960'  --合格为绿色
	when  b.InspResult = 0 then '-65536'  --不合格为红色 
	else '-256' end --待验为黄色
	as _BackColor
from  storeindetail b,commodity c,comcategory d
where   b.comid = c.comid and c.comcatid = d.comcatid
GO
/****** Object:  View [dbo].[v_billdetail_PurchasePlan]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_PurchasePlan]
as 	  
select BillNo,Row_Id,b.COMID,cast(Quantity as numeric(18,2)) as Quantity,cast(Price  as numeric(18,2)) as Price,b.SupAccount,DetailTime,inuse,Audit,cast(amount  as numeric(18,2)) as amount
,c.comname,c.name_chem,c.origin,c.specification,c.unit,c.BarCode,c.comindex,c.color,c.PiecePacking,c.Outerpacking,d.ComCatName,
PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,
AccountantPerson,AccountantDate,AccountantRemark,LeaderPerson,LeaderDate,LeaderRemark
from  PurchasePlandetail b,commodity c,comcategory d
where   b.comid = c.comid and c.comcatid = d.comcatid
GO
/****** Object:  View [dbo].[v_billdetail_PurchaseOrder]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_PurchaseOrder]
as 	  
select BillNo,Row_Id,b.COMID,cast(quantity  as numeric(18,2)) as Quantity,cast(price  as numeric(18,2)) as Price,cast(quantity*price  as numeric(18,2)) as amount,DetailTime,inuse,Audit
,c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex,PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,
AccountantPerson,AccountantDate,AccountantRemark,LeaderPerson,LeaderDate,LeaderRemark
from  PurchaseOrderdetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_PurchaseContract]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_PurchaseContract]
as 	  
select BillNo,Row_Id,b.COMID,cast(quantity  as numeric(18,2)) as Quantity,cast(price  as numeric(18,3)) as Price,DetailTime,inuse,Audit,cast(amount  as numeric(18,2)) as amount
,c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex,c.piecePacking,PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,
AccountantPerson,AccountantDate,AccountantRemark,LeaderPerson,LeaderDate,LeaderRemark
from  PurchaseContractdetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_DirectInOut]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_DirectInOut]
as 	  
select BillNo,Row_Id,b.COMID,cast(quantity as numeric(18,2)) as Quantity,BatchNo,MjBatchNo,ProDate,Validity,cast(storeinprice as numeric(18,2)) as StoreinPrice,cast(costs as numeric(18,2)) as Costs,
	cast(inpricetaxed as numeric(18,3)) as  InPriceTaxed,cast(coststaxed as numeric(18,2)) as CostsTaxed,b.TaxIn,cast(salesprice as numeric(18,3)) as SalesPrice,
	cast(amount as numeric(18,2)) as Amount,cast(amounttaxed as numeric(18,2)) as AmountTaxed,b.TaxOut,DetailTime,inuse,Audit,PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,AccountantPerson,AccountantDate,
	AccountantRemark,LeaderPerson,LeaderDate,LeaderRemark,c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex
from  DirectInOutDetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_ComMaintainPlan]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_ComMaintainPlan]
as 	  
select BillNo,Row_Id,b.COMID,cast(quantity as numeric(18,2)) as Quantity,DetailTime,inuse,Audit,BatchNo,Validity,c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex,
	cast(invquantity as numeric(18,2)) as InvQuantity,QaStatus,MtResult,measure,MtReMark 
from  ComMaintaindetailPlan b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_ComMaintain]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_ComMaintain]
as 	  
select BillNo,Row_Id,b.COMID,cast(quantity as numeric(18,2)) as Quantity,DetailTime,inuse,Audit,BatchNo,Validity,c.comname,c.origin,c.specification,c.unit,c.BarCode,
	cast(invquantity as numeric(18,2)) as InvQuantity,QaStatus,MtResult,measure,MtReMark,c.comindex 
from  ComMaintaindetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  Table [dbo].[SYS_Operator]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_Operator](
	[USER_ID] [varchar](128) NOT NULL,
	[USER_NAME] [varchar](128) NOT NULL,
	[PASSWD] [varchar](32) NULL,
	[commen] [varchar](128) NULL,
	[LoginTime] [datetime] NULL,
	[LoginCrc] [varchar](128) NULL,
	[isStop] [int] NOT NULL,
	[ExpDate] [datetime] NULL,
	[DeptCode] [varchar](32) NULL,
	[province] [varchar](64) NULL,
	[city] [varchar](64) NULL,
	[county] [varchar](64) NULL,
	[isActive] [int] NOT NULL,
	[billabbrv] [varchar](8) NULL,
	[allowReLogin] [int] NOT NULL,
	[sGUID] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[companyname]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[companyname](
	[companyname] [varchar](200) NOT NULL,
	[usernum] [numeric](18, 0) NULL,
	[VerifyString] [varchar](256) NULL,
	[SupUser] [varchar](32) NULL,
	[SupUserPWD] [char](32) NULL,
	[DevUser] [varchar](32) NULL,
	[DevUserPWD] [char](32) NULL,
	[manager] [varchar](18) NULL,
	[address] [varchar](40) NULL,
	[zip] [varchar](10) NULL,
	[email] [varchar](64) NULL,
	[telephone] [varchar](256) NULL,
	[fax] [varchar](18) NULL,
	[acct_back] [varchar](30) NULL,
	[acct_no] [varchar](20) NULL,
	[tax_no] [varchar](20) NULL,
	[acct_bank] [varchar](64) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetSettlePrice]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_GetSettlePrice](@billno varchar(32),@Row_Id nvarchar(32),@comid varchar(32))
returns numeric(18,4)
as
BEGIN
	declare  @iRowcout int,@uname varchar(32),@uid varchar(32)
	declare @price numeric(18,4),@dPrice numeric(18,4)
 
     select @price = price4 from  commodity where  comid = @comid; 
	 --先达
	 select @uid = user_id from sys_operator where user_name =(select isnull(realEmpName,docperson) from storeout where billno = @billno);
	 SELECT  @price = min(btPrice)  FROM COMTEMPLATEDETAIL WHERE TEMPLATEID IN (SELECT TEMPLATEID FROM COMTEMPLATEUSER 
		WHERE USER_ID =  @uid) AND BTPRICE >0  and COMID =  @comid;
	select @dPrice = @price;
return round(@dPrice,2)
END
GO
/****** Object:  Table [dbo].[StoreOutDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreOutDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[WAREHOUSE_CODE] [varchar](32) NULL,
	[BatchNo] [varchar](32) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[PriceTaxed] [numeric](18, 6) NULL,
	[AmountTaxed] [numeric](18, 6) NULL,
	[TaxOut] [numeric](5, 2) NULL,
	[Charge] [numeric](18, 6) NULL,
	[MjBatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[InvSeqNo] [numeric](18, 0) NULL,
	[StoreinBill] [varchar](32) NULL,
	[StoreinRow] [numeric](8, 0) NULL,
	[SupAccount] [varchar](32) NULL,
	[InvCode] [varchar](32) NULL,
	[InDate] [datetime] NULL,
	[StoreinPrice] [numeric](18, 2) NULL,
	[Costs] [numeric](18, 2) NULL,
	[InPriceTaxed] [numeric](18, 2) NULL,
	[CostsTaxed] [numeric](18, 2) NULL,
	[DetailTime] [datetime] NULL,
	[PayAmount] [numeric](18, 2) NULL,
	[PayFlag] [int] NULL,
	[Vouchid] [numeric](18, 0) NULL,
	[Vouchflag] [int] NULL,
	[quantity_refunded] [numeric](18, 2) NULL,
	[srcBillno] [varchar](32) NULL,
	[srcRowID] [numeric](18, 0) NULL,
	[score] [numeric](18, 2) NULL,
	[gdEmpCode] [varchar](32) NULL,
	[inuse] [int] NULL,
	[LocID] [varchar](32) NULL,
	[Audit] [int] NULL,
	[isPresent] [int] NULL,
	[CheckQty] [numeric](18, 2) NULL,
	[CheckPerson] [varchar](32) NULL,
	[CheckDate] [datetime] NULL,
	[CheckRemark] [varchar](256) NULL,
	[CashierPerson] [varchar](32) NULL,
	[CashierDate] [datetime] NULL,
	[CashierRemark] [varchar](256) NULL,
	[InvoiceAmount] [numeric](18, 2) NULL,
	[InvoiceFlag] [int] NULL,
	[SalesPerson] [varchar](32) NULL,
	[SalesDate] [datetime] NULL,
	[SalesRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[InspResult] [int] NULL,
	[QaStatus] [varchar](32) NULL,
	[WhPerson] [varchar](32) NULL,
	[WhDate] [datetime] NULL,
	[WhRemark] [varchar](256) NULL,
	[Notes] [varchar](256) NULL,
	[PackNo] [varchar](32) NULL,
	[InspPerson2] [varchar](32) NULL,
	[InspDate2] [datetime] NULL,
	[InspRemark2] [varchar](256) NULL,
	[CheckPerson2] [varchar](32) NULL,
	[CheckDate2] [datetime] NULL,
	[CheckRemark2] [varchar](256) NULL,
	[PriceAdjustBill] [varchar](32) NULL,
	[RfdReason] [varchar](128) NULL,
	[priceroleid] [varchar](32) NULL,
	[pharmacist] [varchar](32) NULL,
	[RxDate] [datetime] NULL,
	[RxRemark] [varchar](256) NULL,
	[btPrice] [numeric](18, 6) NULL,
	[ctPrice] [numeric](18, 6) NULL,
	[inDeptCode] [varchar](32) NULL,
	[inEmpCode] [varchar](32) NULL,
	[SupEmpCode] [varchar](32) NULL,
	[settlePrice] [numeric](18, 6) NULL,
	[outQuan] [numeric](18, 2) NULL,
	[RecheckQuan] [numeric](18, 2) NULL,
	[RecheckReason] [varchar](256) NULL,
	[isUpdateCheck] [int] NULL,
	[deptBtPrice] [numeric](18, 6) NULL,
	[SettleAmt] [numeric](9, 0) NULL,
	[Specification] [varchar](32) NULL,
	[Unit] [varchar](32) NULL,
	[BarCode] [varchar](32) NULL,
	[baQuan] [numeric](9, 0) NULL,
	[CashierReportNo] [varchar](32) NULL,
	[price] [numeric](18, 6) NULL,
	[wsbPrice] [numeric](18, 6) NULL,
	[rtbPrice] [numeric](18, 6) NULL,
	[sortBillno] [varchar](32) NULL,
	[PkDPrintTime] [varchar](800) NULL,
	[PkDPrintCount] [int] NULL,
	[PkDPrintUser] [varchar](256) NULL,
 CONSTRAINT [PK__StoreOutDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_gsp_storeinSpotcheck]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_storeinSpotcheck]
as 	  
select companyname = (select companyname from companyname),a.thisdate,b.InspDate,
	vendorName = (select min(MyName) from vendor where Account = a.SupAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.auth_code,c.origin,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
	isnull(b.batchno,'') as batchno,b.validity,b.SpotcheckPerson,SpotcheckDate,b.SpotcheckResult,b.Spotcheckpurpose,b.SpotcheckQuantity,
	b.SpotcheckUnit,b.SpotcheckItem
from storein a,storeindetail b,commodity c
where a.billno = b.billno and b.comid = c.comid and a.OrderType =1 and a.DocStatus=0 and b.SpotcheckDate is not null
GO
/****** Object:  View [dbo].[v_gsp_storeinrefund]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_storeinrefund]
as 	  
select companyname = (select companyname from companyname),a.thisdate,
	vendorName = (select min(MyName) from vendor where Account = a.SupAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.origin,c.auth_code,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
	isnull(b.batchno,'') as batchno,b.prodate,b.validity,cast(b.pricetaxed as numeric(18,2)) as pricetaxed,b.amount  
	,b.rfdReason as refundreason 
from storein a,storeindetail b,commodity c
where a.billno = b.billno and b.comid = c.comid and a.OrderType =2 and a.DocStatus=0
GO
/****** Object:  View [dbo].[v_gsp_storeinInspSpecial]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_storeinInspSpecial]
as 	  
select companyname = (select companyname from companyname),a.thisdate,b.InspDate,
	vendorName = (select min(MyName) from vendor where Account = a.SupAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.auth_code,c.origin,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
	cast(case when a.ordertype in(0,1) then b.CheckQty else -b.CheckQty end as numeric(18,2)) as CheckQuantity, 
	isnull(b.batchno,'') as batchno,b.prodate,b.validity,b.InspPerson,case when b.InspResult = 1 then '合格' else '不合格' end as InspResult,b.QaStatus,
	b.InspPerson2,b.InspRemark2,b.InspDate2
from storein a,storeindetail b,commodity c
where a.billno = b.billno and b.comid = c.comid and a.OrderType =1 and a.DocStatus=0 and c.isSpecial = 1 and b.InspDate is not null
GO
/****** Object:  View [dbo].[v_gsp_storeinInspImportDrugs]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_storeinInspImportDrugs]
as 	  
select companyname = (select companyname from companyname),a.thisdate,b.InspDate,
	vendorName = (select min(MyName) from vendor where Account = a.SupAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.auth_code,c.origin,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
	cast(case when a.ordertype in(0,1) then b.CheckQty else -b.CheckQty end as numeric(18,2)) as CheckQuantity, 
	isnull(b.batchno,'') as batchno,b.prodate,b.validity,b.InspPerson,case when b.InspResult = 1 then '合格' else '不合格' end as InspResult,
	b.QaStatus,importDrugsReportNo,importDrugsRegcode,importDrugsRegUnit
from storein a,storeindetail b,commodity c
where a.billno = b.billno and b.comid = c.comid and a.OrderType =1 and a.DocStatus=0 and c.isImportDrugs = 1 and b.InspDate is not null
GO
/****** Object:  View [dbo].[v_gsp_storeinInsp]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_storeinInsp]
as 	  
select companyname = (select companyname from companyname),a.thisdate,b.InspDate,
	vendorName = (select min(MyName) from vendor where Account = a.SupAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.auth_code,c.origin,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
	cast(case when a.ordertype in(0,1) then b.CheckQty else -b.CheckQty end as numeric(18,2)) as CheckQuantity, 
	isnull(b.batchno,'') as batchno,b.prodate,b.validity,b.InspPerson,case when b.InspResult = 1 then '合格' else '不合格' end as InspResult,b.QaStatus
from storein a,storeindetail b,commodity c
where a.billno = b.billno and b.comid = c.comid and a.OrderType =1 and a.DocStatus=0 and b.InspDate is not null
GO
/****** Object:  View [dbo].[v_gsp_storein]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_storein]
as 	  
select companyname = (select companyname from companyname),a.thisdate,
	vendorName = (select min(MyName) from vendor where Account = a.SupAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.origin,c.auth_code,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
	isnull(b.batchno,'') as batchno,b.prodate,b.validity,cast(b.pricetaxed as numeric(18,2)) as pricetaxed,b.amount
from storein a,storeindetail b,commodity c
where a.billno = b.billno and b.comid = c.comid and a.OrderType =1 and a.DocStatus=0
GO
/****** Object:  View [dbo].[v_gsp_ComMaintain]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_ComMaintain]
as 	  
select companyname = (select companyname from companyname),a.thisdate,a.ordertype,
	vendorName = (select min(MyName) from vendor where Account = b.SupAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.auth_code,c.origin,
	b.quantity,b.QaStatus,b.MtResult,b.measure,b.MtReMark,
	isnull(b.batchno,'') as batchno,b.validity 
from ComMaintain a,ComMaintaindetail b,commodity c
where a.billno = b.billno and b.comid = c.comid   and a.DocStatus=0
GO
/****** Object:  View [dbo].[v_gsp_unqualified]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_unqualified]
as 	  
select companyname = (select companyname from companyname),a.thisdate, 
	vendorName = (select min(MyName) from vendor where Account = b.SupAccount),
	empname = null,
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.origin,
	cast(b.quantity as numeric(18,2)) as quantity, 
	isnull(b.batchno,'') as batchno,b.validity 
from ComRecheck a,ComRecheckdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid   and a.DocStatus=0
GO
/****** Object:  View [dbo].[v_print_SalesCommission]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_SalesCommission]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.commen,a.docstatus,a.DeptCode,DeptName =(select dept_Name from department where dept_Code = a.DeptCode),
	b.ComId,b.batchno,rewardType=(select min(pname) from v_commissiontype where ptype = b.rewardType),b.rewardAmt,
	c.comname,c.origin,c.specification,c.unit,c.comindex
from SalesCommission a,SalesCommissiondetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_RequestPlan]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  view [dbo].[v_print_RequestPlan]  
as      
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.docstatus, 
 a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode), 
 Row_Id,b.COMID,Quantity,Price,DetailTime,inuse,Audit,Quantity*Price as amount,c.taxin,storeinprice = price /(1 +(isnull(c.taxin,0)/100) )  
 ,b.SupQuantity,c.comname,c.origin,c.specification,c.unit,c.barcode,c.comindex,c.color,c.PiecePacking,c.Outerpacking,
 PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,  
 AccountantPerson,AccountantDate,AccountantRemark,LeaderPerson,LeaderDate,LeaderRemark 
from RequestPlan a,RequestPlandetail b,commodity c  
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_PurchasePlan]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_PurchasePlan]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,b.SupAccount,a.docstatus, 
	 a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode), a.EmpCode,EmpName=(select min(empName) from employee  where empcode = a.EmpCode),
	vendorName = (select min(MyName) from vendor where Account = b.SupAccount), 
	Row_Id,b.COMID,cast(quantity  as numeric(18,2)) as Quantity,cast(price  as numeric(18,2)) as Price,DetailTime,inuse,Audit,cast(Quantity*Price   as numeric(18,2))as amount,c.taxin,storeinprice =cast( price /(1 +(isnull(c.taxin,0)/100) )     as numeric(18,2))   
	,c.comname,c.origin,c.specification,c.unit,c.comindex,c.BarCode,PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,
	AccountantPerson,AccountantDate,AccountantRemark,LeaderPerson,LeaderDate,LeaderRemark,b.ContractFlag,b.OrderFlag,b.StoreinFlag,b.SupQuantity
from PurchasePlan a,PurchasePlandetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_PurchaseOrder]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_PurchaseOrder]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.SupAccount,a.docstatus,   
	a.EmpCode,EmpName =(select min(EmpName) from employee where empCode = a.EmpCode),
	a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode),
	vendorName = (select min(MyName) from vendor where Account = a.SupAccount), 
	Row_Id,b.COMID,cast(quantity  as numeric(18,2)) as Quantity,cast(price  as numeric(18,2)) as Price,cast(quantity*price  as numeric(18,2)) as amount,DetailTime,inuse,Audit,c.taxin,storeinprice = price /(1 +(isnull(c.taxin,0)/100) )  
	,c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex,PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,
	AccountantPerson,AccountantDate,AccountantRemark,LeaderPerson,LeaderDate,LeaderRemark,b.StoreinFlag,b.SupQuantity
from PurchaseOrder a,PurchaseOrderdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_PurchaseContract]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_PurchaseContract]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.SupAccount,a.docstatus,  
	 a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode),  
	vendorName = (select min(MyName) from vendor where Account = a.SupAccount), 
	a.EmpCode,EmpName=(select min(empName) from employee  where empcode = a.EmpCode),
	Row_Id,b.COMID,cast(quantity  as numeric(18,2)) as Quantity,cast(price  as numeric(18,3)) as Price,cast(quantity*price  as numeric(18,2)) as amount,DetailTime,inuse,Audit,c.taxin,storeinprice =cast( price /(1 +(isnull(c.taxin,0)/100) )     as numeric(18,2))   
	,c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex,PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,
	AccountantPerson,AccountantDate,AccountantRemark,LeaderPerson,LeaderDate,LeaderRemark,b.orderflag,b.StoreinFlag,b.SupQuantity
from PurchaseContract a,PurchaseContractdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_POReceive]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_POReceive]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.SupAccount,a.docstatus,   
	a.EmpCode,EmpName =(select min(EmpName) from employee where empCode = a.EmpCode),
	a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode),
	vendorName = (select min(MyName) from vendor where Account = a.SupAccount), 
	Row_Id,b.COMID,cast(quantity  as numeric(18,2)) as Quantity,cast(Price  as numeric(18,2)) as Price,DetailTime,inuse,Audit,storeinFlag,b.BatchNo,b.ProDate,b.Validity,  
	b.Warehouse_Code,b.LocID,whName=(select warehouse_name from warehouse where warehouse_code = b.warehouse_code),LocName=(select LocName from goodslocation where LocID = b.LocID),
	c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex,b.SupQuantity,c.Taxin
from POReceive a,POReceivedetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_DirectInOut]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_DirectInOut]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,null as ShippingType,null as Emergency,null as PayWayName,
	a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode),a.docstatus, 
	a.EmpCode,EmpName=(select min(empName) from employee  where empcode = a.EmpCode),
	a.SaleEmpCode,SaleEmpName=(select min(empName) from employee  where empcode = a.SaleEmpCode),
	a.SupAccount,vendorName = (select min(MyName) from vendor where Account = a.SupAccount),a.commen,
	a.CustAccount,custName = (select min(MyName) from customer where Account = a.CustAccount),
	custAddress = (select min(Address) from customer where Account = a.CustAccount),telePhone = (select isnull(min(mobile),'') +'/'+isnull(min(contact),'') from customer where Account = a.CustAccount),
	cast(b.Quantity as numeric(18,2)) as Quantity,cast(storeinprice as numeric(18,2)) as StoreinPrice,cast(costs as numeric(18,2)) as Costs,
	cast(inpricetaxed as numeric(18,3)) as  InPriceTaxed,cast(coststaxed as numeric(18,2)) as costsTaxed,b.TaxIn,cast(salesprice as numeric(18,3)) as SalesPrice,
	cast(amount as numeric(18,2)) as Amount,cast(amounttaxed as numeric(18,2)) as amounttaxed,cast(b.SalesPrice as numeric(18,3)) as  pricetaxed,
	b.batchno,b.validity,b.ProDate,b.Row_Id,b.inuse,null as whName,null as LocName,PackNo=cast(case when c.PiecePacking is not null and isnumeric(c.PiecePacking)=1 then Quantity/c.PiecePacking end as numeric(18,0)),
	c.comid,c.comname,c.origin as manufacturer,c.origin,c.specification,c.unit,c.barcode,c.comindex,c.color,c.PiecePacking,c.Outerpacking,cast(c.price1 as numeric(18,2)) as price1,cast(c.price2 as numeric(18,2)) as price2,c.isBaseMed,c.Auth_Code
from DirectInOut a,DirectInOutdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_ComRecheck]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_ComRecheck]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson, a.docstatus, 
	vendorName = (select min(MyName) from vendor where Account =b.SupAccount), 
	 a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode), 
	Row_Id,b.COMID,cast(quantity as numeric(18,2)) as Quantity,DetailTime,inuse,Audit,BatchNo,ProDate,Validity,cast(b.storeinprice as numeric(18,2)) as storeinprice,
	cast(b.inpricetaxed as numeric(18,2)) as inpricetaxed,b.costs,cast(b.coststaxed as numeric(18,2)) as coststaxed,
	b.Warehouse_Code,b.LocID,whName=(select warehouse_name from warehouse where warehouse_code = b.warehouse_code),LocName=(select LocName from goodslocation where LocID = b.LocID),
	c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex 
from ComRecheck a,ComRecheckdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_acpay]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_acpay]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.ordertype,a.commen,a.docstatus, 
	vendorName =case when a.ordertype = 1 then (select min(MyName) from vendor where Account = a.Account) else (select min(MyName) from Customer where Account = a.Account) end,
	PayWayName =(select PayWayName from PayWay where PayWayID = b.PayWayID), 
	b.payamount,b.bankAccount,b.handler 
from acpay a,acpaydetail b 
where a.billno = b.billno
GO
/****** Object:  View [dbo].[v_print_AcInvoice]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_AcInvoice]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.ordertype,a.commen,a.docstatus, 
	a.Account,vendorName =case when a.ordertype = 1 then (select min(MyName) from vendor where Account = a.Account) else (select min(MyName) from Customer where Account = a.Account) end,
	b.invoiceAmount,b.taxAmount,b.ComId,b.quantity,b.PriceTaxed ,b.StoreinPrice,b.taxRate,
	c.comname,c.origin,c.specification,c.unit,c.comindex,a.InvoiceNo,a.InvoiceDate,a.ReceiveDate,a.invoice_taxcode,a.invoice_address,a.invoice_phone,a.invoice_bank,a.invoiceSeqNo,a.digest
from acinvoice a,acinvoicedetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_acpayout]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_acpayout]
as 	   
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.ordertype,a.commen,a.docstatus, 
	a.Account,vendorName = (select min(MyName) from vendor where Account = a.Account), 
	b.payamount,si.ComId,si.PriceTaxed,quantity =cast( case when si.PriceTaxed >0 then b.payamount / si.PriceTaxed else null end as numeric(18,2)),
	c.comname,c.origin,c.specification,c.unit,c.comindex
from acpay a,acpaydetail2 b,storeindetail si,commodity c
where a.billno = b.billno and b.oBillno = si.billno and b.oRowid = si.row_id and si.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_storemove]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_storemove]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.ordertype,a.commen,a.docstatus,  
	 a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode), 
	 a.ReqDeptCode,ReqDeptName =(select min(dept_Name) from department where dept_Code = a.ReqDeptCode),case when a.PrintTime is null then 0 else 1 end as isPrinted,
	cast(case when a.ordertype =1 then b.quantity else -b.quantity end as numeric(18,2)) as quantity,cast(b.pricetaxed as numeric(18,2)) as  pricetaxed,
	cast(case when a.ordertype =1 then b.amounttaxed else -b.amounttaxed end as numeric(18,2)) as amounttaxed,
	b.batchno,b.validity,b.Row_Id,b.inuse,warehouse_code,LocID,ReqWhCode,ReqLocID,StoreinPrice,Costs,InPriceTaxed,CostsTaxed,
	whName=(select warehouse_name from warehouse where warehouse_code = b.warehouse_code),
	LocName=(select LocName from goodslocation where LocID = b.LocID),
	reqWhName=(select warehouse_name from warehouse where warehouse_code = b.ReqWhCode),
	reqLocName=(select LocName from goodslocation where LocID = b.ReqLocID),b.btPrice,b.ctPrice,b.inDeptCode,b.InEmpCode,b.SupEmpCode,
	c.comid,c.comname,c.origin,c.specification,c.unit,c.barcode,c.comindex,c.PiecePacking,c.color,c.Outerpacking,cast(c.price1 as numeric(18,2)) as price1,cast(c.price2 as numeric(18,2)) as price2
from storemove a,storemovedetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_StoreInRefuse]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_StoreInRefuse]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.SupAccount,a.docstatus,   
a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode),
	vendorName = (select min(MyName) from vendor where Account = a.SupAccount), a.EmpCode,EmpName=(select min(empName) from employee  where empcode = a.EmpCode),
	Row_Id,b.COMID,cast(quantity  as numeric(18,2)) as Quantity,cast(price  as numeric(18,2)) as Price,cast(quantity*price  as numeric(18,2)) as amount,DetailTime,inuse,Audit,BatchNo,ProDate,Validity, 
	c.comname,c.origin,c.specification,c.unit,c.BarCode,c.comindex
from StoreInRefuse a,StoreInRefusedetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_storein]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_storein]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.ordertype,a.docstatus, 
	a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode),
	payStatus=(case when a.IsPayed = 1 then '已结' else '未结' end ),a.IsPayed,a.PayWayID,PayWayName=(select min(paywayname) from payway where paywayid = a.PayWayID),
	a.EmpCode,EmpName=(select min(empName) from employee  where empcode = a.EmpCode),
	a.SupAccount,vendorName = (select min(MyName) from vendor where Account = a.SupAccount),a.commen,
	cast(case when a.ordertype in(0,1,3) then b.quantity else -b.quantity end as numeric(18,2)) as quantity,cast(b.pricetaxed as numeric(18,3)) as  pricetaxed,
	cast(case when a.ordertype in(0,1,3) then b.amount else -b.amount end as numeric(18,2)) as amount,
	cast(case when a.ordertype in(0,1,3) then isnull(b.payAmount,0) else -isnull(b.payAmount,0) end as numeric(18,2)) as payAmount, 
	b.batchno,b.validity,b.ProDate,b.Row_Id,b.inuse,b.price as storeinprice,c.taxin,b.InvSeqNo,b.quantity_refunded,
	b.Warehouse_Code,b.LocID,whName=(select warehouse_name from warehouse where warehouse_code = b.warehouse_code),LocName=(select LocName from goodslocation where LocID = b.LocID),
	c.comid,c.comname,c.origin as manufacturer,c.origin,c.specification,c.unit,c.barcode,c.comindex,c.color,c.PiecePacking,c.Outerpacking,cast(c.price1 as numeric(18,2)) as price1,cast(c.price2 as numeric(18,2)) as price2,c.isBaseMed,c.Auth_Code,c.medType,c.comcode,c.isEMC,
	c.ComCatID,ComCatName=(select comCatName from comCategory where ComCatID = c.ComCatID),b.btPrice,b.ctPrice,b.inDeptCode,b.InEmpCode,b.SupEmpCode,
	isnull(b.PayFlag,0) as PayFlag,
	cast(case when a.ordertype in(0,1,3) then isnull(InvoiceAmount,0) else -isnull(InvoiceAmount,0) end as numeric(18,2)) as InvoiceAmount,case when a.HaveInvoice =0 then 2 else isnull(InvoiceFlag,0) end  as InvoiceFlag,HaveInvoice=(case when a.HaveInvoice = 1 then '有票' else '无票' end ),
	b.PriceAdjustBill,AccountantRemark,AccountantPerson,AccountantDate,PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,InspDate,InspRemark,InspResult,WhPerson,WhDate,WhRemark,QaStatus,CheckPerson,CheckDate,
CheckRemark,InspPerson2,InspDate2,InspRemark2,RfdReason
from storein a,storeindetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_StoreCheck]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_StoreCheck]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.ordertype, a.docstatus,  
	a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode),
	cast(case when a.ordertype =1 then b.quantity else -b.quantity end as numeric(18,2)) as quantity, cast(b.InPriceTaxed as numeric(18,2)) as InPriceTaxed,
	cast(case when a.ordertype =1 then b.CostsTaxed else -b.CostsTaxed end as numeric(18,2)) as CostsTaxed,
	b.batchno,b.validity,b.Row_Id,
	b.Warehouse_Code,b.LocID,whName=(select warehouse_name from warehouse where warehouse_code = b.warehouse_code),LocName=(select LocName from goodslocation where LocID = b.LocID),c.isBaseMed,
	c.comid,c.comname,c.origin,c.specification,c.unit,c.barcode,c.comindex,c.color,c.PiecePacking,c.Outerpacking,cast(c.price1 as numeric(18,2)) as price1,cast(c.price2 as numeric(18,2)) as price2
from StoreCheck a,StoreCheckdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_print_storeadjust]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_storeadjust]
as 	  
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.ordertype,a.docstatus,   
	a.DeptCode,DeptName =(select min(dept_Name) from department where dept_Code = a.DeptCode),
	cast(case when a.ordertype =1 then b.quantity else -b.quantity end as numeric(18,2)) as quantity, cast(b.InPriceTaxed as numeric(18,2)) as InPriceTaxed,
	cast(case when a.ordertype =1 then b.CostsTaxed else -b.CostsTaxed end as numeric(18,2)) as CostsTaxed,
	b.batchno,b.validity,b.Row_Id,b.btPrice,b.ctPrice,b.inDeptCode,b.InEmpCode,b.SupEmpCode,
	b.Warehouse_Code,b.LocID,whName=(select warehouse_name from warehouse where warehouse_code = b.warehouse_code),LocName=(select LocName from goodslocation where LocID = b.LocID),c.isBaseMed,c.isEmc,
	c.comid,c.comname,c.origin,c.specification,c.unit,c.barcode,c.comindex,c.color,c.PiecePacking,c.Outerpacking,cast(c.price1 as numeric(18,2)) as price1,cast(c.price2 as numeric(18,2)) as price2
from storeadjust a,storeadjustdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid
GO
/****** Object:  View [dbo].[v_ZjbgScan]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_ZjbgScan]
as 	  
select companyname = (select companyname from companyname),a.thisdate,
	VendorName = (select min(MyName) from vendor where Account = a.SupAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.auth_code,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
	b.BatchNo,b.validity,d.PicPath,b.ComID
from storein a inner join storeindetail b on (a.billno = b.billno)
	inner join commodity c on (b.comid = c.comid)
	left outer join ZjbgScan d on (b.comid = d.comid and b.BatchNo = d.BatchNo)
where   a.OrderType =1 and a.DocStatus=0 and b.BatchNo is not null and b.BatchNo <> ''
GO
/****** Object:  Table [dbo].[SalesOrderDetail]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesOrderDetail](
	[BillNo] [varchar](32) NOT NULL,
	[Row_Id] [numeric](8, 0) NOT NULL,
	[COMID] [varchar](32) NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[PriceTaxed] [numeric](18, 6) NULL,
	[AmountTaxed] [numeric](18, 6) NULL,
	[DetailTime] [datetime] NULL,
	[gdEmpCode] [varchar](32) NULL,
	[PayAmount] [numeric](18, 2) NULL,
	[PayFlag] [int] NULL,
	[Vouchid] [numeric](18, 0) NULL,
	[Vouchflag] [int] NULL,
	[slQuan] [numeric](18, 2) NULL,
	[slFlag] [int] NULL,
	[pcQuan] [numeric](18, 2) NULL,
	[pcFlag] [int] NULL,
	[inuse] [int] NULL,
	[Audit] [int] NULL,
	[isPresent] [int] NULL,
	[SalesPerson] [varchar](32) NULL,
	[SalesDate] [datetime] NULL,
	[SalesRemark] [varchar](256) NULL,
	[CheckQty] [numeric](18, 2) NULL,
	[CheckPerson] [varchar](32) NULL,
	[CheckDate] [datetime] NULL,
	[CheckRemark] [varchar](256) NULL,
	[CashierPerson] [varchar](32) NULL,
	[CashierDate] [datetime] NULL,
	[CashierRemark] [varchar](256) NULL,
	[InspPerson] [varchar](32) NULL,
	[InspDate] [datetime] NULL,
	[InspRemark] [varchar](256) NULL,
	[InspResult] [int] NULL,
	[QaStatus] [varchar](32) NULL,
	[WhPerson] [varchar](32) NULL,
	[WhDate] [datetime] NULL,
	[WhRemark] [varchar](256) NULL,
	[InvQuan] [numeric](18, 2) NULL,
	[RowId] [numeric](9, 0) NULL,
	[commen] [varchar](32) NULL,
	[PiecePacking] [varchar](32) NULL,
	[BatchNo] [varchar](32) NULL,
	[ProDate] [datetime] NULL,
	[Validity] [datetime] NULL,
	[ngPrice] [numeric](18, 4) NULL,
	[settlePrice] [numeric](18, 6) NULL,
	[sortBillno] [varchar](32) NULL,
	[PkDPrintTime] [varchar](800) NULL,
	[PkDPrintCount] [int] NULL,
	[PkDPrintUser] [varchar](256) NULL,
 CONSTRAINT [PK__SalesOrderDetail] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC,
	[Row_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSysMessage]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_GetSysMessage] (@UID varchar(32),@uname varchar(32))
as
begin 
	declare @sql nvarchar(4000),@BillType varchar(32),@FlowID varchar(32),@FlowStep int  
	if exists(select * from SystemPara where EnableSystemMessage = 0)
	begin
		return;
	end 
	begin transaction 
	select MsgName =cast('' as varchar(128)),Title=cast('' as varchar(128)),FnMenuID=cast('' as varchar(128)),MsgResult=cast('' as varchar(256)) into #tmpMsg from companyname;
	declare cr_this cursor for
	
	select b.BillType,b.FlowID,flowStep
			from billtype a,BillAuditDef b
			where a.BillType = b.BillType and b.FlowStep >0 and b.FnMenuID is not null
			and b.FnMenuID in (select distinct FnMenuID from roleDt where  roleID in (select roleID from Roleuser where USER_ID = @UID));  
	
	open cr_this 

	fetch next from cr_this into @BillType,@FlowID,@FlowStep 
	WHILE @@FETCH_STATUS = 0
	BEGIN   	
		select @sql = case when len(b.DetailTable)>0 then
			'select  MsgName ='''+a.BillName + b.FlowName+''',Title='''+a.BillName +b.FlowName+''',FnMenuID='''+b.FnMenuID+''',
				MsgResult= (select case when count(*) = 0 then null else ''共''+cast(count(*) as varchar(32))+''条记录'' end 
				from '+b.MainTable+' where  '+a.BillNoFld+' in (select distinct '+a.BillNoFld+' from '+b.DetailTable+' 
				where   '+a.AuditFld+'=(select isnull(FlowStep,-1) -1 as FlowStep from BillAuditDef 
				where billtype = '''+a.BillType+''' and FlowID = '''+b.FlowID+''')'+
			case when len(b.DetailTable)>0 then ' and '+b.DetailFilter else '' end +')'+
			case when len(b.MainFilter)>0 then ' and '+b.MainFilter else '' end +')'
		else
			'select  MsgName ='''+a.BillName +b.FlowName+''',Title='''+a.BillName +b.FlowName+''',FnMenuID='''+b.FnMenuID+''',
				MsgResult= (select case when count(*) = 0 then null else ''共''+cast(count(*) as varchar(32))+''条记录'' end 
				from '+b.MainTable+' where  '+a.AuditFld+'=(select isnull(FlowStep,-1) -1 as FlowStep from BillAuditDef 
				where billtype = '''+a.BillType+''' and FlowID = '''+b.FlowID+''')'+ 
			case when len(b.MainFilter)>0 then ' and '+b.MainFilter else '' end +')'
		end
				from billtype a,BillAuditDef b
				where a.BillType = b.BillType and b.FlowStep >0 and b.FnMenuID is not null 
				and b.BillType = @BillType and b.FlowID = @FlowID;
	 
		select @sql = replace(@sql,'#GSUID#',@UID);
		select @sql = replace(@sql,'#GSUNAME#',@uname);
		insert into #tmpMsg execute sp_executesql @sql; 
		fetch next from cr_this into @BillType,@FlowID,@FlowStep
	end
	close cr_this
	deallocate cr_this 
	
	select * from #tmpMsg where len(MsgResult)>0;
	drop table #tmpMsg;
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesOrderPackageLimit]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[sp_SalesOrderPackageLimit] (@BillNo nvarchar(32),@Row_Id nvarchar(32))
as
begin
 	declare @SellPackageLimit varchar(2),@slquan int,@PiecePacking int,@Outerpacking int,@reqWhCode varchar(32),@reqLocId varchar(32)
	declare @inventoryid numeric(18,0),@quan numeric(18,4),@price numeric(18,4),@curquan numeric(18,4),@comid varchar(32),@comname varchar(128)
	declare @wholeQuan numeric(18,6)
	
	select @SellPackageLimit=2,@slquan = a.quantity,@wholeQuan = a.quantity,
	       	@PiecePacking = cast(case when isnumeric(b.PiecePacking)=1 then b.PiecePacking else '1' end as int),
		@Outerpacking = cast(case when isnumeric(b.Outerpacking)=1 then b.Outerpacking else '1' end as int),
		@comid = a.comid,@comname=comname 
	from salesorderdetail a,commodity b
	where a.billno = @BillNo and a.row_id = @Row_Id and a.comid = b.comid ;
 
	if @SellPackageLimit = '2' and @slquan % @Outerpacking = 0 --正好中包装
	begin
		return;
	end 
	if @SellPackageLimit = '2'   --正好中包装
	begin
		raiserror('行号:%s商品:''%s''中包装为%d，当前开单数量%d,请按中包装开票!!',16,1,@Row_Id,@comname,@Outerpacking,@slquan);
		return;
	end 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesOrderCheck]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_SalesOrderCheck] (@BillNo nvarchar(32))
as
begin
begin tran;
	declare @rowcount int,@comid varchar(32),@comname varchar(128),@InvQuan numeric(18,2),@deptcode varchar(32)
	select @rowcount = count(*),@comid=min(b.comid),@deptcode = min(a.deptcode) from SalesOrder a,SalesOrderDetail b
	where a.billno = b.billno and a.billno = @BillNo and a.ordertype = 3
	and b.quantity > (select sum(docquantity) from inventory where comid = b.comid);
	if @rowcount > 0 
	begin
		  select @comname = comname from commodity where comid = @comid;
		  select @InvQuan = sum(docquantity) from inventory where comid = @comid 
			and warehouse_code in (select warehouse_code from v_deptWh where dept_code = @DeptCode) ;
		   raiserror('%s数量不能超过库存数量%d!:%d',16,1,@comname,@InvQuan,@rowcount)
  			 rollback tran;
		   return
		end   
commit tran;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_salesorder_sorting]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_salesorder_sorting] (@billno varchar(32))
AS
begin
declare @O_ID nvarchar(20)
declare @obillno NVARCHAR(32),@PickingByRoadway int 
 
 
declare mycursor cursor for 
	SELECT DISTINCT isnull(d.whManager,a.billno) FROM salesorder a with (nolock) 
		INNER JOIN dbo.salesorderDetail b  with (nolock) ON a.BillNo = b.BillNo 
		INNER JOIN dbo.commodity c with (nolock) on (b.comid = c.comid)
		INNER JOIN dbo.ComCategory d with (nolock) on (c.ComCatId = d.ComCatId)
where a.billno=@billno; 

open mycursor
fetch next from mycursor into @O_ID
WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @obillno = dbo.fn_Newbillno('orderSorting',getdate());
		INSERT INTO salesorder2 (billno,SaleBillno) VALUES (@obillno,@billno);
 
		UPDATE b SET sortBillno = @obillno 
		FROM salesorder a with (nolock) 
		INNER JOIN dbo.salesorderDetail b  with (nolock) ON a.BillNo = b.BillNo 
		INNER JOIN dbo.commodity c with (nolock) on (b.comid = c.comid)
		INNER JOIN dbo.ComCategory d with (nolock) on (c.ComCatId = d.ComCatId)
		where a.billno=@billno and isnull(d.whManager,a.billno) = @O_ID; 
		fetch next from mycursor into @O_ID
	END
close mycursor;
DEALLOCATE mycursor;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_salesorder_present]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[sp_salesorder_present] (@billno varchar(32),@comid varchar(32),@reqquan numeric(18,4),@gdEmp varchar(32))
as
begin
	declare @Row_Id int,@perSLquan numeric(18,2),@presentQuan numeric(18,2),@prstQuan numeric(18,2)
	select @perSLquan=isnull(perSLquan,0),@presentQuan=isnull(presentQuan,0) from commodity where comid = @comid;
        if @perSLquan > 0 and @presentQuan > 0
	begin
		select @prstQuan = FLOOR((@reqquan ) /@perSLquan)* @presentQuan ;
		if @prstQuan <=0 
		begin
			return;
		end
	end
	else
	begin
		return;
	end
	
	select @Row_Id =isnull(min(Row_Id),0) from SalesOrderDetail where billno=@billno and comid = @comid and isPresent=1;	

	begin transaction 
	if @Row_Id >0 
	begin
		update SalesOrderDetail set Quantity = @prstQuan  where billno=@billno and Row_Id = @Row_Id;
		if @@error<>0  
	           begin
		             raiserror('1-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
		             rollback transaction; 
		             return 
	           end	
	end
	else
	begin
		select @Row_Id =(isnull(max(Row_Id),0) + 1) from SalesOrderDetail where billno=@billno;	
		-----------------------------------------处理明细-------------------------------------------------
		  
	 
		INSERT INTO SalesOrderdetail ( BillNo,Row_Id,COMID,Quantity,PriceTaxed,AmountTaxed,gdEmpCode,isPresent)  
		 	select @billno,@Row_Id,b.comid,@prstQuan,0,0,@gdEmp,1
	                from  commodity b where b.comid = @comid;
		   if @@error<>0  
	           begin
		             raiserror('2-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
		             rollback transaction; 
		             return 
	           end	
	end			 

			 
-----------------------------------------处理明细-------------------------------------------------
 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_sorting]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sales_sorting] (@billno varchar(32))
AS
begin
declare @O_ID nvarchar(20)
declare @obillno NVARCHAR(32),@PickingByRoadway int 
 
 
declare mycursor cursor for 
	SELECT DISTINCT isnull(d.whManager,a.billno) FROM storeout a with (nolock) 
		INNER JOIN dbo.StoreOutDetail b  with (nolock) ON a.BillNo = b.BillNo 
		INNER JOIN dbo.commodity c with (nolock) on (b.comid = c.comid)
		INNER JOIN dbo.ComCategory d with (nolock) on (c.ComCatId = d.ComCatId)
where a.billno=@billno; 

open mycursor
fetch next from mycursor into @O_ID
WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @obillno = dbo.fn_Newbillno('Sorting',getdate());
		INSERT INTO storeout2 (billno,SaleBillno) VALUES (@obillno,@billno);
 
		UPDATE b SET sortBillno = @obillno 
		FROM storeout a with (nolock) 
		INNER JOIN dbo.StoreOutDetail b  with (nolock) ON a.BillNo = b.BillNo 
		INNER JOIN dbo.commodity c with (nolock) on (b.comid = c.comid)
		INNER JOIN dbo.ComCategory d with (nolock) on (c.ComCatId = d.ComCatId)
		where a.billno=@billno and isnull(d.whManager,a.billno) = @O_ID; 
		fetch next from mycursor into @O_ID
	END
close mycursor;
DEALLOCATE mycursor;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_present_nokc]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_sales_present_nokc] (@billno varchar(32),@comid varchar(32),@reqquan numeric(18,4),@gdEmp varchar(32))
as
begin
	declare @rowid int,@perSLquan numeric(18,2),@presentQuan numeric(18,2),@prstQuan numeric(18,2)
	select @perSLquan=isnull(perSLquan,0),@presentQuan=isnull(presentQuan,0) from commodity where comid = @comid;
        if @perSLquan > 0 and @presentQuan > 0
	begin
		select @prstQuan = FLOOR((@reqquan * @presentQuan) /@perSLquan) ;
		if @prstQuan <=0 
		begin
			return;
		end
	end
	else
	begin
		return;
	end
	
	select @rowid =isnull(min(RowId),0) from StoreOutDetail where billno=@billno and comid = @comid and isPresent=1;	

	begin transaction 
	if @rowid >0 
	begin
		update StoreOutDetail set Quantity = @prstQuan  where billno=@billno and RowId = @rowid;
		if @@error<>0  
	           begin
		             raiserror('1-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
		             rollback transaction; 
		             return 
	           end	
	end
	else
	begin
		select @rowid =(isnull(max(RowId),0) + 1) from StoreOutDetail where billno=@billno;	
		-----------------------------------------处理明细-------------------------------------------------
		  
	 
		INSERT INTO StoreOutDetail ( BillNo,rowid,COMID,Quantity,PriceTaxed,AmountTaxed,gdEmpCode,isPresent)  
		 	select @billno,@rowid,b.comid,@prstQuan,0,0,@gdEmp,1
	                from  commodity b where b.comid = @comid;
		   if @@error<>0  
	           begin
		             raiserror('2-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
		             rollback transaction; 
		             return 
	           end	
	end			 

			 
-----------------------------------------处理明细-------------------------------------------------
 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_query_arsum]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_query_arsum] (@bdate varchar(32) ,@edate varchar(32) )
as
begin
	select @edate = convert(varchar(10),dateadd(dd,1,@edate),120); 
	select ksrq = @bdate ,jzrq = @edate ,custname=(select myname from customer where account = aa.account),
	    --account, paccount = (select parent_code from vendor where  account = aa.account),
	    --psupname=(select myname from vendor where account = (select parent_code from vendor where  account = aa.account)),
	    sum(qcamt) as qcamt,sum(addamt) as addamt,sum(decamt) as decamt,sum(qmamt) as qmamt
	from (
		select  account, sum(amount) as qcamt,0 as addamt,0 as decamt,sum(amount) as qmamt from aciniaccnt  
			where   thistype = 2   and thisdate < @bdate 
			group by account
		union all
		select a.custaccount,sum(case when a.ordertype =1 then (case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) else -(case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) end) as qcamt,0 as addamt,0 as decamt,
				sum(case when a.ordertype =1 then (case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) else -(case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) end) as qmamt
			from storeout a,storeoutdetail b
			where a.billno = b.billno  and a.docstatus = 0 and b.inuse=0 and a.IsPayed = 0 and a.thisdate < @bdate 
			group by a.custaccount
		union all
		select a.account,-sum(b.payamount) as qcamt,0 as addamt,0 as decamt,-sum(b.payamount) as qmamt
			from acpay a,acpaydetail b
			where a.billno = b.billno  and a.ordertype = 2 and a.docstatus = 0 and a.thisdate < @bdate 
			group by a.account
		union all
		select  account, 0 as qcamt,sum(amount) as addamt,0 as decamt,sum(amount) as qmamt from aciniaccnt  
			where   thistype = 2  and thisdate between @bdate  and @edate 
			group by account
		union all
		select a.custaccount,0 as qcamt,sum(case when a.ordertype =1 then (case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) else -(case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) end) as addamt,0 as decamt,
			sum(case when a.ordertype =1 then (case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) else -(case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) end) as qmamt
			from storeout a,storeoutdetail b
			where a.billno = b.billno  and a.docstatus = 0 and b.inuse=0 and a.IsPayed = 0 and a.thisdate between @bdate  and @edate 
			group by a.custaccount
		union all
		select a.account,0 as qcamt,0 as addamt,sum(b.payamount) as decamt,-sum(b.payamount) as qmamt
			from acpay a,acpaydetail b
			where a.billno = b.billno  and a.ordertype = 2 and a.docstatus = 0  and a.thisdate between @bdate  and @edate 
			group by a.account
	) as aa
	group by account

end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_inner_dept]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_sales_inner_dept] (@UID varchar(32),@bdate varchar(32),@edate varchar(32))
as
begin  

	select a.dept_code,a.dept_name,@bdate as bdate,@edate as edate,cast(sum(selfAmt) as numeric(18,2)) as selfAmt,
		cast(sum(dAmt) as numeric(18,2)) as dAmt,cast(sum(jAmt) as numeric(18,2)) as jAmt,
		cast((sum(selfAmt) + sum(dAmt)) * 0.01  as numeric(18,2)) as fyAmt,cast((sum(selfAmt) + sum(jAmt)) * 0.01  as numeric(18,2)) as kcAmt,
		cast((sum(selfAmt) + sum(dAmt)) * 0.01 +(sum(selfAmt) + sum(jAmt)) * 0.01 + sum(jAmt) - sum(dAmt) as numeric(18,2)) as baAmt
	from department a 
	left outer join (
		select a.deptcode,sum(b.btPrice * b.quantity) as selfAmt,0 as dAmt,0 as jAmt
		from storeout a,storeoutdetail b 
			where a.billno = b.billno and   a.thisdate between @bdate and dateadd(day,1,@edate) and a.deptcode = b.indeptcode
		group by a.deptcode
		union all	
		select a.deptcode,0 as selfAmt,sum(b.btPrice * b.quantity) as dAmt,0 as jAmt
		from storeout a,storeoutdetail b 
			where a.billno = b.billno and   a.thisdate between @bdate and dateadd(day,1,@edate) and a.deptcode <> b.indeptcode
		group by a.deptcode
		union all
		select b.indeptcode,0 as selfAmt,0 as dAmt,sum(b.btPrice * b.quantity) as jAmt
		from storeout a,storeoutdetail b 
			where a.billno = b.billno and   a.thisdate between @bdate and dateadd(day,1,@edate) and a.deptcode <> b.indeptcode
		group by b.indeptcode
	) b on (a.dept_code = b.deptcode)
	group by a.dept_code,a.dept_name	
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_inner]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_sales_inner] (@UID varchar(32),@bdate varchar(32),@edate varchar(32))
as
begin 
	declare @invtypeCode varchar(32)

	select @invtypeCode = min (invtype_code) from invtype_user where user_id = @UID;

	select a.invtype_name,@bdate as bdate,@edate as edate,sum(selfAmt) as selfAmt,sum(totalAmt) as totalAmt,sum(totalAmt) - sum(selfAmt) as setAmt
	from inventory_type a 
	left outer join (
		select c.invtype_code,sum(b.amountTaxed) as selfAmt,0 as totalAmt
		from storeout a,storeoutdetail b,invtype_user c
			where a.billno = b.billno and a.docperson = c.user_id and a.thisdate between @bdate and '2012/10/3' 
		group by c.invtype_code
		union all	
		select b.invCode,0 as selfAmt,sum(b.amountTaxed) as totalAmt
		from storeout a,storeoutdetail b 
			where a.billno = b.billno  and a.thisdate between @bdate and '2012/10/3' 
		group by b.invCode
	) b on (a.invtype_code = b.invtype_code)
	group by a.invtype_name	
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inspection_check]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_inspection_check] (@BillType varchar(128),@BillNo nvarchar(32),@uid varchar(32),@uname varchar(32))
as
begin
	declare @Row_Id int,@rowcount int,@refuseCount int
	declare @NewBillNo varchar(32)
	if upper(@BillType)='STOREIN' --入库单
	begin
		select @rowcount=count(*) from storeindetail where billno = @BillNo and isnull(RecheckQuan,0) > 0  and isnull(isUpdateCheck,0) <>1; 
		select @refuseCount=count(*) from storeindetail where billno = @BillNo and isnull(RefuseQuan,0) > 0 and isnull(isUpdateCheck,0) <>1;
		if @rowcount <=0  and @refuseCount <=0
		begin
			return;
		end  
		begin transaction 
		if @rowcount >0 
		begin
			select @NewBillNo =  dbo.fn_Newbillno('ComRecheck',getdate()); 
			insert into ComRecheck(BillNo,DeptCode,DocPerson) 
			select @NewBillNo,DeptCode,@uname from  storein where billno = @BillNo;
			if @@error<>0  
			 begin
				 raiserror('1-生成复验单主表失败,数据库返回代码:%d',16,1,@@error)
				 rollback transaction; 
				 return 
			 end

			INSERT INTO ComRecheckDetail ( Billno,Row_ID,comid,warehouse_code,locid,batchno,quantity,prodate,validity,MjBatchNo,StoreinBill,StoreinRow,SupAccount,
			InvCode,StoreinPrice,costs,InpriceTaxed,CostsTaxed,inuse,ctPrice,IndeptCode,InEmpCode,SupEmpCODE,btPrice) 
			select @NewBillNo,Row_Id,b.comid,b.warehouse_code,b.locid,b.batchno,b.recheckquan,b.prodate,b.validity,b.MjBatchNo,b.billno,b.row_id,a.SupAccount,
					b.InvCode,b.price,b.price * b.recheckquan,b.priceTaxed,b.amount,1,b.ctPrice,a.deptCode,a.EmpCode,a.SupEmpCODE,b.btPrice
			from storein a,storeindetail b
			where a.billno = b.billno and a.billno =@BillNo and  isnull(RecheckQuan,0) > 0 ; 
			   if @@error<>0  
				   begin
						 raiserror('2-生成复验单明细表失败,数据库返回代码:%d',16,1,@@error)
						 rollback transaction; 
						 return 
				   end	
		end 
		if @refuseCount >0 
		begin
			select @NewBillNo =  dbo.fn_Newbillno('StoreInRefuse',getdate()); 
			insert into StoreInRefuse(BillNo,DeptCode,DocPerson,supAccount,EmpCode) 
			select @NewBillNo,DeptCode,@uname,supAccount,EmpCode from  storein where billno = @BillNo;
			if @@error<>0  
			 begin
				 raiserror('3-生成拒收单主表失败,数据库返回代码:%d',16,1,@@error)
				 rollback transaction; 
				 return 
			 end

			INSERT INTO StoreInRefuseDetail ( Billno,Row_ID,comid,batchno,quantity,prodate,validity,inuse) 
			select @NewBillNo,Row_Id,b.comid,b.batchno,b.RefuseQuan,b.prodate,b.validity,1
			from storein a,storeindetail b
			where a.billno = b.billno and a.billno =@BillNo and  isnull(RefuseQuan,0) > 0 ; 
			   if @@error<>0  
				   begin
						 raiserror('4-生成拒收单明细表失败,数据库返回代码:%d',16,1,@@error)
						 rollback transaction; 
						 return 
				   end	
		end 			 
	 
		update storeindetail set ReceiveQuan = quantity,Quantity = Quantity - isnull(RefuseQuan,0) - RecheckQuan,
				amount = pricetaxed * (Quantity - isnull(RefuseQuan,0) - RecheckQuan),
				CheckQty =  Quantity - isnull(RefuseQuan,0) - RecheckQuan ,isUpdateCheck = 1
		 where billno=@billno;
		if @@error<>0  
		   begin
				 raiserror('5-更改入库单明细表失败,数据库返回代码:%d',16,1,@@error)
				 rollback transaction; 
				 return 
		   end	
	end
	else if upper(@BillType)='STOREIN' --出库单
	begin	
		select @rowcount=count(*) from storeoutdetail where billno = @BillNo and isnull(RecheckQuan,0) > 0  and isnull(isUpdateCheck,0) <>1;  
		if @rowcount <=0 
		begin
			return;
		end  
		begin transaction 
		if @rowcount >0 
		begin
			select @NewBillNo =  dbo.fn_Newbillno('ComRecheck',getdate()); 
			insert into ComRecheck(BillNo,DeptCode,DocPerson) 
			select @NewBillNo,DeptCode,@uname from  storeout where billno = @BillNo;
			if @@error<>0  
			 begin
				 raiserror('1-生成复验单主表失败,数据库返回代码:%d',16,1,@@error)
				 rollback transaction; 
				 return 
			 end

			INSERT INTO ComRecheckDetail ( Billno,Row_ID,comid,warehouse_code,locid,batchno,quantity,prodate,validity,MjBatchNo,StoreinBill,StoreinRow,SupAccount,
			InvCode,StoreinPrice,costs,InpriceTaxed,CostsTaxed,inuse,ctPrice,IndeptCode,InEmpCode,SupEmpCODE,btPrice) 
			select @NewBillNo,Row_Id,b.comid,b.warehouse_code,b.locid,b.batchno,b.recheckquan,b.prodate,b.validity,b.MjBatchNo,b.billno,b.row_id,b.SupAccount,
					b.InvCode,b.storeinprice,b.storeinprice * b.recheckquan,b.inpriceTaxed,b.inpriceTaxed * b.recheckquan,1,b.ctPrice,b.indeptCode,b.inEmpCode,b.SupEmpCODE,b.btPrice
			from storeout a,storeoutdetail b
			where a.billno = b.billno and a.billno =@BillNo and  isnull(RecheckQuan,0) > 0 ; 
			   if @@error<>0  
				   begin
						 raiserror('2-生成复验单明细表失败,数据库返回代码:%d',16,1,@@error)
						 rollback transaction; 
						 return 
				   end	
		end      
	   update  a set a.docquantity = a.docquantity + b.isnull(RecheckQuan,0) 
	   from inventory a,storeoutdetail b where a.invseqno =b.invseqno and b.billno=@billno;
	   if @@error<>0  
           begin
	             raiserror('3-更改库存失败,数据库返回代码:%d',16,1,@@error)
	             rollback transaction; 
	             return 
           end	
		update storeoutdetail set outQuan = quantity,Quantity = Quantity - isnull(RecheckQuan,0),
				amounttaxed = pricetaxed * (Quantity - isnull(RecheckQuan,0)),
				costs = StoreinPrice * (Quantity - isnull(RecheckQuan,0)),
				coststaxed = inPricetaxed * (Quantity - isnull(RecheckQuan,0)),
				isUpdateCheck = 1
		 where billno=@billno;
		if @@error<>0  
		   begin
				 raiserror('5-更改入库单明细表失败,数据库返回代码:%d',16,1,@@error)
				 rollback transaction; 
				 return 
		   end	
	end
-----------------------------------------处理明细-------------------------------------------------
 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inventory_MinusQT]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[sp_inventory_MinusQT] (@BillType varchar(128),@BillNo nvarchar(32),@rowid nvarchar(32),@flag int)
as
begin
	declare @sql nvarchar(4000),@mflag varchar(2),@inuse varchar(2),@newinuse varchar(2)
	if @flag = 1
	begin
		select @mflag = '+',@inuse='0',@newinuse='2';
	end
	else
	begin
		select @mflag = '-',@inuse='2',@newinuse='0';
	end 

	select @BillType = UPPER(@BillType);
	if @BillType='STOREOUT'
	begin
		declare @invseq  varchar(32)
		select @invseq = InvSeqNo from storeoutdetail where billno = @BillNo and row_id = @rowid;
		if @invseq is null   return
	end
begin tran;
	--根据单据类型不同，设置不同语句,添加库存
	select @sql = case 
		when @BillType='STOREINRFD' then
			'update  a set a.quantity = a.quantity '+@mflag+' b.quantity ,
				a.costs = a.storeinprice * (a.quantity '+@mflag+' b.quantity),
				a.coststaxed = a.pricetaxed * (a.quantity '+@mflag+' b.quantity)
			from  inventory a ,storeindetail b where a.InvSeqNo = b.InvSeqNo 
				and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid +' and b.inuse = '+@inuse
		when @BillType='STOREOUT' then
			'update  a set a.quantity = a.quantity '+@mflag+' b.quantity ,
				a.costs = a.storeinprice * (a.quantity '+@mflag+' b.quantity),
				a.coststaxed = a.pricetaxed * (a.quantity '+@mflag+' b.quantity)
			from  inventory a ,storeoutdetail b where a.InvSeqNo = b.InvSeqNo 
				and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid +' and b.inuse = '+@inuse
		when @BillType='STORESHORT' then
			'update  a set a.quantity = a.quantity '+@mflag+' b.quantity ,
				a.costs = a.storeinprice * (a.quantity '+@mflag+' b.quantity),
				a.coststaxed = a.pricetaxed * (a.quantity '+@mflag+' b.quantity)
			from  inventory a ,storeadjustdetail b where a.InvSeqNo = b.InvSeqNo 
				and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid +' and b.inuse = '+@inuse
		when @BillType='STOREMOVE' then
			'update  a set a.quantity = a.quantity '+@mflag+' b.quantity ,
				a.costs = a.storeinprice * (a.quantity '+@mflag+' b.quantity),
				a.coststaxed = a.pricetaxed * (a.quantity '+@mflag+' b.quantity)
			from  inventory a ,storemovedetail b where a.InvSeqNo = b.InvSeqNo 
				and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid +' and b.inuse = '+@inuse
		when @BillType='COMRECHECK' then
			'update  a set a.quantity = a.quantity '+@mflag+' b.quantity ,
				a.costs = a.storeinprice * (a.quantity '+@mflag+' b.quantity),
				a.coststaxed = a.pricetaxed * (a.quantity '+@mflag+' b.quantity)
			from  inventory a ,COMRECHECKdetail b where a.InvSeqNo = b.InvSeqNo 
				and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid +' and b.inuse = '+@inuse
		when @BillType='DISPOSAL' then
			'update  a set a.quantity = a.quantity '+@mflag+' b.quantity ,
				a.costs = a.storeinprice * (a.quantity '+@mflag+' b.quantity),
				a.coststaxed = a.pricetaxed * (a.quantity '+@mflag+' b.quantity)
			from  inventory a ,storeadjustdetail b where a.InvSeqNo = b.InvSeqNo 
				and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid +' and b.inuse = '+@inuse
		else null end;
	
 	execute sp_executesql @sql; 
	if @@error <> 0 
	 begin
		raiserror('开单数量不能超过库存数量:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@rowid)
		rollback tran;
		return
	 end

	--根据单据类型不同，设置不同语句,更新单据inuse状态
	select @sql = case 
		when @BillType='STOREINRFD' then
			'update storeindetail set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid+' and inuse = '+@inuse
		when @BillType='STOREOUT' then
			'update storeoutdetail  set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid+' and inuse = '+@inuse
		when @BillType='STORESHORT' then
			'update storeadjustdetail  set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid+' and inuse = '+@inuse
		when @BillType='STOREMOVE' then
			'update storemovedetail  set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid+' and inuse = '+@inuse
		when @BillType='COMRECHECK' then
			'update COMRECHECKdetail  set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid+' and inuse = '+@inuse
		when @BillType='DISPOSAL' then
			'update storeadjustdetail  set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid+' and inuse = '+@inuse
		else null end;
	
 	execute sp_executesql @sql; 
	if @@error <> 0 
	 begin
		raiserror('更新单据状态失败:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@rowid)
		rollback tran;
		return
	 end
commit tran;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inventory_MinusDQ]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[sp_inventory_MinusDQ] (@BillType varchar(128),@BillNo nvarchar(32),@rowid nvarchar(32),@flag int)  
as  
begin  
 declare @sql nvarchar(4000),@mflag varchar(2),@inuse varchar(2),@newinuse varchar(2)  
 if @flag = 1  
 begin  
  select @mflag = '+',@inuse='2',@newinuse='1';  
 end  
 else  
 begin  
  select @mflag = '-',@inuse='1',@newinuse='2';  
 end  
  
 select @BillType = UPPER(@BillType);  
 if @BillType='STOREOUT'  
 begin  
  declare @invseq  varchar(32)  
  select @invseq = InvSeqNo from storeoutdetail where billno = @BillNo and row_id = @rowid;  
  if @invseq is null   return  
 end  
 begin tran;  
 --根据单据类型不同，设置不同语句,减少库存开票数量  
 select @sql = case   
  when @BillType='STOREINRFD' then  
   'update  a set a.docquantity = a.docquantity '+@mflag+' b.quantity     from  inventory a ,storeindetail b where a.InvSeqNo = b.InvSeqNo   
    and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid +' and b.inuse = '+@inuse  
  when @BillType='STOREOUT' then  
   'update  a set a.docquantity = a.docquantity '+@mflag+' b.quantity     from  inventory a ,storeoutdetail b where a.InvSeqNo = b.InvSeqNo   
    and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid  +' and b.inuse = '+@inuse  
  when @BillType='STORESHORT' then  
   'update  a set a.docquantity = a.docquantity '+@mflag+' b.quantity     from  inventory a ,storeadjustdetail b where a.InvSeqNo = b.InvSeqNo   
    and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid  +' and b.inuse = '+@inuse  
  when @BillType='STOREMOVE' then  
   'update  a set a.docquantity = a.docquantity '+@mflag+' b.quantity     from  inventory a ,storemovedetail b where a.InvSeqNo = b.InvSeqNo   
    and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid  +' and b.inuse = '+@inuse  
  when @BillType='COMRECHECK' then  
   'update  a set a.docquantity = a.docquantity '+@mflag+' b.quantity     from  inventory a ,ComRecheckdetail b where a.InvSeqNo = b.InvSeqNo   
    and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid  +' and b.inuse = '+@inuse  
  when @BillType='DISPOSAL' then  
   'update  a set a.docquantity = a.docquantity '+@mflag+' b.quantity     from  inventory a ,storeadjustdetail b where a.InvSeqNo = b.InvSeqNo   
    and b.billno = ''' +@BillNo+''' and b.row_id= '+  @rowid  +' and b.inuse = '+@inuse  
  else null end;  
   
  execute sp_executesql @sql;   
 if @@error <> 0   
  begin  
  raiserror('开单数量不能超过库存数量:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@rowid)  
  rollback tran;  
  return  
  end  
  
 --根据单据类型不同，设置不同语句,更新inuse状态  
 select @sql = case   
  when @BillType='STOREINRFD' then  
   'update storeindetail set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid +' and inuse = '+@inuse  
  when @BillType='STOREOUT' then  
   'update storeoutdetail  set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid +' and inuse = '+@inuse  
  when @BillType='STORESHORT' then  
   'update storeadjustdetail  set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid +' and inuse = '+@inuse  
  when @BillType='STOREMOVE' then  
   'update storemovedetail  set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid +' and inuse = '+@inuse  
  when @BillType='COMRECHECK' then  
   'update ComRecheckdetail  set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid +' and inuse = '+@inuse  
  when @BillType='DISPOSAL' then  
   'update storeadjustdetail  set inuse = '+@newinuse+' where billno = ''' +@BillNo+''' and row_id= '+  @rowid +' and inuse = '+@inuse  
  else null end;  
   
  execute sp_executesql @sql;   
 if @@error <> 0   
  begin  
  raiserror('更新单据状态失败:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@rowid)  
  rollback tran;  
  return  
  end  
commit tran;  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AcPayInByBill]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_AcPayInByBill] (@billno varchar(32),@obillno varchar(32),@SelectAmt numeric(18,4))
as
begin
	declare @rowcount numeric(18,0),@amt numeric(18,4),@NotPayAmt  numeric(18,4),@Row_ID int,@CurAmt numeric(18,4),@PayAmt numeric(18,4)	 
	if @SelectAmt = 0  
	begin
		return;
	end
	select @CurAmt = @SelectAmt ,@amt = sum(case when a.ordertype in (1,6) then  (case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) 
				else - (case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) end)
		from storeout a,storeoutdetail b where a.billno = b.billno and a.billno = @obillno;
	begin transaction 
	if @amt = @SelectAmt 
	begin		
		insert into acpaydetail2(BILLNO,oBillNo,oRowId,PayAmount) 
		select @billno,@obillno,b.Row_Id,case when a.ordertype in (1,6) then  (case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) 
				else - (case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) end
		from storeout a,storeoutdetail b where a.billno = b.billno and a.billno = @obillno;
		if @@error<>0  
		   begin
				 raiserror('1-生成明细表失败,数据库返回代码:%d',16,1,@@error)
				 rollback transaction; 
				 return 
		   end	
		update storeoutdetail set PayFlag = 2, PayAmount = case when dbo.fn_SalePara('AcBySettlePrice') = 0 then amounttaxed  else Settleprice * quantity end  where billno = @obillno;
		if @@error<>0  
		   begin
				 raiserror('2-更新单据标识失败,数据库返回代码:%d',16,1,@@error)
				 rollback transaction; 
				 return 
		   end	
	end
	else
	begin
		---------------------------------------------循环处理明细----------------------------------------------------
		declare cr_this cursor for
		
		select row_id,case when a.ordertype in(1,6) then (case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) - isnull(b.payAmount,0) 
			else -((case when dbo.fn_SalePara('AcBySettlePrice') = 0 then b.amounttaxed  else b.Settleprice * b.quantity end) - isnull(b.payAmount,0)) end
		from storeout a,storeoutdetail b where a.billno = b.billno and a.billno = @obillno order by row_id; 
		
		open cr_this 

		fetch next from cr_this into @Row_ID,@NotPayAmt 
		WHILE @@FETCH_STATUS = 0
		BEGIN
			if @NotPayAmt <>0 and @CurAmt <> 0
			begin
				if abs(@NotPayAmt) <= abs(@CurAmt) 
				begin
					 select @PayAmt  = @NotPayAmt;
				end
				else
				begin
			 		select @PayAmt  = @CurAmt;
				end   

				insert into acpaydetail2(BILLNO,oBillNo,oRowId,PayAmount) 
				select @billno,@obillno,b.Row_Id,case when a.ordertype in(1,6) then  @PayAmt else -@PayAmt end
				from storeout a,storeoutdetail b where a.billno = b.billno and a.billno = @obillno and b.row_id = @Row_ID;
				if @@error<>0  
				   begin
						 raiserror('3-生成明细表失败,数据库返回代码:%d',16,1,@@error)
						 rollback transaction; 
						 return 
				   end	
				update storeoutdetail set PayFlag =  case when (case when dbo.fn_SalePara('AcBySettlePrice') = 0 then amounttaxed  else Settleprice * quantity end)
												 =  isnull(PayAmount,0) + abs( @PayAmt) then 2 else 1 end, 
						PayAmount = isnull(PayAmount,0) +abs( @PayAmt)
				where billno = @obillno and  row_id = @Row_ID;
				if @@error<>0  
				   begin
						 raiserror('4-更新单据标识失败,数据库返回代码:%d',16,1,@@error)
						 rollback transaction; 
						 return 
				   end					 
	  
				select @CurAmt = @CurAmt - @PayAmt;  
			end			
			
			fetch next from cr_this into @Row_ID,@NotPayAmt 
		end
		close cr_this
		deallocate cr_this 
 
	-----------------------------------------处理明细-------------------------------------------------
	end
 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_DeptCredit_Limit]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_DeptCredit_Limit] (@BillType varchar(128),@BillNo nvarchar(32),@Row_Id nvarchar(32))
as
begin
	declare @sql nvarchar(4000),@RowCount numeric(18,0),@deptcode varchar(32),@indeptcode varchar(32)
	declare @bAmt numeric(18,4),@dAmt numeric(18,4),@jAmt numeric(18,4),@isBase int 

	select @deptcode=a.deptcode,@indeptcode=b.indeptcode 
	from storeout a,storeoutdetail b where a.billno = b.billno and b.row_id = @Row_Id
	and b.billno=@BillNo;

	select @isBase = isBase from department where dept_code = @deptcode;
	--如果是总部
	if @isBase = 1
	begin
		select @rowcount= count(*) from department where dept_code = @indeptcode and isBase = 1;
		if @rowcount >0 --同为总部销售
		begin
			return;
		end

		--销售其他部门
		select @dAmt = sum(b.amountTaxed)
		from storeout a,storeoutdetail b where a.billno = b.billno and b.audit <> -9 and a.deptcode in (select dept_code from department where  isBase = 1) and b.indeptcode not in (select dept_code from department where  isBase = 1);

		--其他部门销售本部门
		select @jAmt = sum(b.amountTaxed)
		from storeout a,storeoutdetail b where a.billno = b.billno and b.audit <> -9  and a.deptcode not in (select dept_code from department where  isBase = 1) and b.indeptcode in (select dept_code from department where  isBase = 1);

		--本部门现金余额
		select @bAmt = sum( case when OrderType = 1 then Amount else -Amount end ) from AcDepartmentPay where DeptCode in (select dept_code from department where  isBase = 1);
	end
	else
	begin	
	 	if @deptcode = @indeptcode --本部门销售
		begin
			return;
		end
		--销售其他部门
		select @dAmt = sum(b.amountTaxed)
		from storeout a,storeoutdetail b where a.billno = b.billno  and a.deptcode =  @deptcode and b.audit <> -9 and b.indeptcode <> @deptcode;

		--其他部门销售本部门
		select @jAmt = sum(b.amountTaxed)
		from storeout a,storeoutdetail b where a.billno = b.billno and a.deptcode <> @deptcode and b.audit <> -9  and b.indeptcode = @deptcode;

		--本部门现金余额
		select @bAmt = sum( case when OrderType = 1 then Amount else -Amount end ) from AcDepartmentPay where DeptCode = @deptcode;
	end 

	--后判断信用额度
	 if @jAmt + @bAmt < @dAmt
		begin
			raiserror('部门销售超出信用额度!单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id) 
			return
		end  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AdjustInprice]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_AdjustInprice] (@billno varchar(32))
as
begin
	declare @inventoryid numeric(18,0),@priceBa numeric(18,4),@SalesBill varchar(32),@NewBillNo varchar(32),@NewPrice numeric(18,6),@maxinvseq numeric(18,0)
 
	if exists (select * from storeoutdetail b,inventory iv where b.invseqno = iv.invseqno and b.Billno =@billno and iv.quantity <> iv.docquantity)
	begin
		raiserror('库存有未出库数量!',16,1) 
		return;
	end
 
	begin transaction 
	declare cr_InvSeq cursor for
	select InvSeqNo,sum(case when quantity > 0 then PriceTaxed else 0 end),sum(case when quantity > 0 then PriceTaxed else - PriceTaxed end) as PriceBa
	from storeindetail where BillNo =@billno
	group by InvSeqno order by InvSeqno; 
	
	open cr_InvSeq 

	fetch next from cr_InvSeq into @inventoryid,@NewPrice,@priceBa 
	WHILE @@FETCH_STATUS = 0
	BEGIN 		
			--调整销售成本
			declare cr_Sales cursor for
			select distinct a.billno   
			from storeout a,storeoutdetail b where a.billno = b.billno and b.invseqno = @inventoryid and b.quantity <> 0 order by a.billno; 
			
			open cr_Sales 
		
			fetch next from cr_Sales into @SalesBill 
			WHILE @@FETCH_STATUS = 0
			BEGIN 
					   select @NewBillNo =  dbo.fn_Newbillno(case when OrderType=1 then 'storeout' when OrderType=2 then 'StoreOutRfd' else '' end,getdate()) from storeout where billno = @SalesBill;

  					   insert into storeout(BillNo,OrderType,DeptCode,EmpCode,CustAccount,ThisDate,DocPerson,DocStatus,IsPayed,PayWayID,deliveryman,Commen,cust_name,MemberNo,custempcode)
					   select @NewBillNo,OrderType,DeptCode,EmpCode,CustAccount,getdate(),DocPerson,0 as DocStatus,IsPayed,PayWayID,deliveryman,Commen,cust_name,MemberNo,custempcode
					   from storeout where billno = @SalesBill;
					   if @@error<>0  
				           begin
					             raiserror('1-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
					             rollback transaction; 
					             return 
				           end		
					   INSERT INTO storeoutdetail ( BillNo,Row_Id,COMID,Quantity,PriceTaxed,AmountTaxed,gdEmpCode,WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,
							InPriceTaxed,StoreinPrice,CostsTaxed,Costs,SupAccount,StoreinBill,StoreinRow,InvCode,InDate,TaxOut,srcBillno,srcRowId,inuse,PriceAdjustBill,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)  
					 	select @NewBillNo,Row_Id,COMID,0 as Quantity,0 as PriceTaxed,0 as AmountTaxed,gdEmpCode,WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,
							0 as InPriceTaxed,0 as StoreinPrice,quantity *@priceBa as  CostsTaxed,(quantity *@priceBa )/(1+taxout/100) as Costs,SupAccount,StoreinBill,StoreinRow,InvCode,InDate,TaxOut,srcBillno,srcRowId,0,@billno,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
				                from storeoutdetail where billno = @SalesBill and invseqno = @inventoryid;
					   if @@error<>0  
				           begin
					             raiserror('2-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
					             rollback transaction; 
					             return 
				           end				   
				
				fetch next from cr_Sales into @SalesBill 
			end
			close cr_Sales
			deallocate cr_Sales 
			
			--调整报损成本
			declare cr_Short cursor for
			select distinct a.billno   
			from storeadjust a,storeadjustdetail b where a.billno = b.billno and a.OrderType =2 and b.invseqno = @inventoryid and b.quantity <> 0 order by a.billno; 
			
			open cr_Short 
		
			fetch next from cr_Short into @SalesBill 
			WHILE @@FETCH_STATUS = 0
			BEGIN 
					   select @NewBillNo =  dbo.fn_Newbillno('StoreShort',getdate()) from storeadjust where billno = @SalesBill;

  					   insert into storeadjust(billno,ordertype,thisdate,deptcode,docperson,docstatus,commen)
					   select @NewBillNo,ordertype,getdate(),deptcode,docperson,0 as docstatus,commen
					   from storeadjust where billno = @SalesBill;
					   if @@error<>0  
				           begin
					             raiserror('1-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
					             rollback transaction; 
					             return 
				           end		
					   INSERT INTO storeadjustdetail ( BillNo,Row_Id,COMID,WAREHOUSE_CODE,BatchNo,Quantity,MjBatchNo,ProDate,Validity,InvSeqNo,StoreinBill,StoreinRow,SupAccount,InvCode,InDate,StoreinPrice,Costs,TaxIn,InPriceTaxed,CostsTaxed,
							     	inuse,LocID,srcBillno,srcRowID,PriceAdjustBill,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)  
					 	select @NewBillNo,Row_Id,COMID,WAREHOUSE_CODE,BatchNo,0 as Quantity,MjBatchNo,ProDate,Validity,InvSeqNo,StoreinBill,StoreinRow,SupAccount,InvCode,InDate,0 as StoreinPrice,(quantity *@priceBa )/(1+TaxIn/100)  as Costs,TaxIn,0 as InPriceTaxed,
							quantity *@priceBa as CostsTaxed,0 as inuse,LocID,srcBillno,srcRowID,@billno,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
				                from storeadjustdetail where billno = @SalesBill and invseqno = @inventoryid;
					   if @@error<>0  
				           begin
					             raiserror('2-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
					             rollback transaction; 
					             return 
				           end				   
				
				fetch next from cr_Short into @SalesBill 
			end
			close cr_Short
			deallocate cr_Short 
			
			--调整采购成本
			declare cr_Storein cursor for
			select distinct a.billno   
			from Storein a,Storeindetail b where a.billno = b.billno and a.ordertype in (1,2) and b.invseqno = @inventoryid and b.quantity <> 0 order by a.billno; 
			
			open cr_Storein 
		
			fetch next from cr_Storein into @SalesBill 
			WHILE @@FETCH_STATUS = 0
			BEGIN 
					   select @NewBillNo = dbo.fn_Newbillno(case when OrderType=1 then 'Storein' when OrderType=2 then 'StoreinRfd' else '' end,getdate()) from Storein where billno = @SalesBill;

  					   insert into Storein(BillNo,OrderType,DeptCode,EmpCode,SupAccount,ThisDate,DocPerson,DocStatus,IsPayed,PayWayID,consignee,Commen,supempcode)
					   select @NewBillNo as BillNo,OrderType,DeptCode,EmpCode,SupAccount,getdate() as ThisDate,DocPerson,0 as DocStatus,IsPayed,PayWayID,consignee,Commen,supempcode 
					   from Storein where billno = @SalesBill;
					   if @@error<>0  
				           begin
					             raiserror('1-生成采购表失败,数据库返回代码:%d',16,1,@@error)
					             rollback transaction; 
					             return 
				           end		
					   INSERT INTO Storeindetail ( BillNo,Row_Id,COMID,WAREHOUSE_CODE,BatchNo,Quantity,Price,TaxIn,Amount,PriceTaxed,Charge,MjBatchNo,ProDate,Validity,InDate,StoreinBill,StoreinRow,SupAccount,InvCode,InvSeqNo,DetailTime,PayAmount,PayFlag,Vouchid,Vouchflag,inuse,LocID,
							PlanBill,PlanBillRowId,ContractBill,ContractBillRowId,OrderBill,OrderBillRowId,PriceAdjustBill,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode )  
						select @NewBillNo as BillNo,Row_Id,COMID,WAREHOUSE_CODE,BatchNo,0 as Quantity,0 as Price,TaxIn,quantity *@priceBa as Amount,0 as PriceTaxed,Charge,MjBatchNo,ProDate,Validity,InDate,StoreinBill,StoreinRow,SupAccount,InvCode,InvSeqNo,DetailTime,PayAmount,PayFlag,Vouchid,Vouchflag,0 as inuse,LocID,
							PlanBill,PlanBillRowId,ContractBill,ContractBillRowId,OrderBill,OrderBillRowId ,@billno,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
				                from Storeindetail where billno = @SalesBill and invseqno = @inventoryid;
					   if @@error<>0  
				           begin
					             raiserror('2-生成采购明细表失败,数据库返回代码:%d',16,1,@@error)
					             rollback transaction; 
					             return 
				           end				   
				
				fetch next from cr_Storein into @SalesBill 
			end
			close cr_Storein
			deallocate cr_Storein 

			--调整库存成本
			select @maxinvseq = isnull(max(invseqno),0) + 1 from inventory; 
			insert into inventory(InvSeqNo,WAREHOUSE_CODE,LocId,COMID,BatchNo,Quantity,DocQuantity,
				MjBatchNo,ProDate,Validity,StoreinBill,StoreinRow,SupAccount,StoreinPrice,Costs,
				PriceTaxed,CostsTaxed,InDate,InvCode,Status,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)
			select InvSeqNo= @maxinvseq,WAREHOUSE_CODE,LocId,a.COMID,BatchNo,Quantity,DocQuantity,
				MjBatchNo,ProDate,Validity,StoreinBill,StoreinRow,a.SupAccount,@NewPrice/(1+b.TaxIn/100) as StoreinPrice,(quantity *@NewPrice )/(1+b.TaxIn/100) as Costs,
				@NewPrice as PriceTaxed,quantity*@NewPrice as CostsTaxed,InDate,InvCode,Status,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
			from inventory a,commodity b where a.comid = b.comid and InvSeqNo = @inventoryid;
			   if @@error<>0  
		           begin
			             raiserror('2-生成库存表失败,数据库返回代码:%d',16,1,@@error)
			             rollback transaction; 
			             return 
		           end		

			update inventory set quantity = 0,docquantity = 0,costs = 0,coststaxed = 0 where InvSeqNo = @inventoryid;
			   if @@error<>0  
		           begin
			             raiserror('2-更新库存表失败,数据库返回代码:%d',16,1,@@error)
			             rollback transaction; 
			             return 
		           end		

		fetch next from cr_InvSeq into @inventoryid,@NewPrice,@priceBa 
	end
	close cr_InvSeq
	deallocate cr_InvSeq 
 
-----------------------------------------处理明细-------------------------------------------------
 
   commit transaction;
end
GO
/****** Object:  View [dbo].[v_ZjbgPrint]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_ZjbgPrint]
as 	  
select companyname = (select companyname from companyname),a.thisdate,
	custName = (select min(MyName) from Customer where Account = a.CustAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.auth_code,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
	b.BatchNo,b.validity,d.PicPath,b.ComID,d.zjbg
from storeout a inner join storeoutdetail b on (a.billno = b.billno)
	inner join commodity c on (b.comid = c.comid)
	left outer join ZjbgScan d on (b.comid = d.comid and b.BatchNo = d.BatchNo)
where   a.OrderType =1 and b.BatchNo is not null and b.BatchNo <> ''
GO
/****** Object:  View [dbo].[v_sumPay_salesorder]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_sumPay_salesorder]
as 	  
select companyname = (select companyname from companyname)+case when a.ordertype =1 then '销售单' else '销售退货单' end ,a.billno,a.thisdate,a.docPerson,a.CustAccount,a.MemberNo,a.ShippingType,a.Emergency,a.ordertype,a.commen,a.docstatus,
	DeptName=(select dept_name from department where dept_code = a.deptcode),
	payStatus=(case when a.IsPayed = 1 then '已结' else '未结' end ),PayWayName =dbo.fn_GetPayWayName('salesorderpay',a.BillNo),
	PayWaySum=case PayWayID when '2' then '现金已付' when '1' then '代收货款' when '6' then '代收货款' else '现金未付' end, 
	custName = (select min(MyName) from customer where Account = a.CustAccount),Manager = (select min(Manager) from customer where Account = a.CustAccount),
	custAddress = (select min(Address) from customer where Account = a.CustAccount),telePhone = (select min(contact) from customer where Account = a.CustAccount),
	a.EmpCode,EmpName=(select min(empName) from employee  where empcode = a.EmpCode),
	AreaCatID=(select AreaCatID from Customer where  Account = a.CustAccount), 
	AreaCatName=(select ar.AreaCatName from Customer ct,areacategory ar where ct.AreaCatID = ar.AreaCatID and ct.Account = a.CustAccount),b.amt,
	cash=(select sum(PayAmount) from salesorderpay where billno = a.billno and paywayid in (2)),
	collection=(select sum(PayAmount) from salesorderpay where billno = a.billno and paywayid in (1,6)),
	receive=(select sum(PayAmount) from salesorderpay where billno = a.billno and paywayid not in (1,2,6))
from salesorder a,(select billno,sum(amounttaxed) as amt from salesorderdetail group by billno) b 
where a.billno = b.billno
GO
/****** Object:  View [dbo].[v_sumPay_sales]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_sumPay_sales]
as 	  
select companyname = (select companyname from companyname)+case when a.ordertype =1 then '销售单' else '销售退货单' end ,a.billno,a.thisdate,a.docPerson,a.CustAccount,a.MemberNo,a.ShippingType,a.Emergency,a.ordertype,a.commen,a.docstatus,
	DeptName=(select dept_name from department where dept_code = a.deptcode),
	payStatus=(case when a.IsPayed = 1 then '已结' else '未结' end ),PayWayName =dbo.fn_GetPayWayName('salesorderpay',a.BillNo),
	PayWaySum=case PayWayID when '2' then '现金已付' when '1' then '代收货款' when '6' then '代收货款' else '现金未付' end, 
	custName = (select min(MyName) from customer where Account = a.CustAccount),Manager = (select min(Manager) from customer where Account = a.CustAccount),
	custAddress = (select min(Address) from customer where Account = a.CustAccount),telePhone = (select min(contact) from customer where Account = a.CustAccount),
	a.EmpCode,EmpName=(select min(empName) from employee  where empcode = a.EmpCode),
	AreaCatID=(select AreaCatID from Customer where  Account = a.CustAccount), 
	AreaCatName=(select ar.AreaCatName from Customer ct,areacategory ar where ct.AreaCatID = ar.AreaCatID and ct.Account = a.CustAccount),b.amt,
	cash=(select sum(PayAmount) from salespay where billno = a.billno and paywayid in (2)),
	collection=(select sum(PayAmount) from salespay where billno = a.billno and paywayid in (1,6)),
	receive=(select sum(PayAmount) from salespay where billno = a.billno and paywayid not in (1,2,6))
from storeout a,(select billno,sum(amounttaxed) as amt from storeoutdetail group by billno) b 
where a.billno = b.billno
GO
/****** Object:  View [dbo].[v_storeout_refund_selectbill]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_storeout_refund_selectbill]
as 	  
select a.thisdate,a.billno,b.Row_Id,a.ordertype,a.deptcode,a.empcode,a.custaccount,a.Ispayed,a.Paywayid,c.myname as fName,
      b.comid,b.warehouse_code,b.quantity,b.pricetaxed,b.amounttaxed,b.amounttaxed /(1 + taxout / 100) as amount,b.quantity_refunded,
      b.costs,b.coststaxed,b.amounttaxed * (taxout / 100) /(1 + taxout / 100) as TaxAmount,isnull(b.vouchflag,0) as vouchflag,b.vouchid,isnull(b.PayFlag,0) as PayFlag,isnull(PayAmount,0) as PayAmount
from Storeout a,Storeoutdetail b,Customer c
where a.billno = b.billno and a.custaccount = c.account and a.OrderType = 1 and b.quantity > b.quantity_refunded
GO
/****** Object:  View [dbo].[v_print_storeout]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   view [dbo].[v_print_storeout]  
as      
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.CustAccount,a.MemberNo,a.MemberName,a.ShippingType,a.Emergency,a.ordertype,a.commen, a.docstatus,   
 a.DeptCode,dt.dept_name as DeptName,BillStatus = case when b.inuse = 0 then '流转完毕' else case when b.audit = -9 then '已作废' else case when a.docstatus<>0 then '开票未确认' else '流转中' end end end,  
 payStatus=(case when a.IsPayed = 1 then '已结' else '未结' end ),a.PayWayID,pw.PayWayName,  
 PayWaySum=case a.PayWayID when '2' then '现金已付' when '1' then '代收货款' when '6' then '代收货款' else '现金未付' end,   
 cm.myname as custName,cm.Manager,cm.address as custAddress,telePhone = isnull(cm.mobile,'') +' '+isnull(cm.telePhone,''),  
 a.EmpCode,em.EmpName,b.Notes,c.ComCatID,cc.ComCatName,cm.AreaCatID, a.printcount,ar.AreaCatName,  
 cast(case when a.ordertype in (1,3,6) then b.quantity else -b.quantity end as numeric(18,0)) as quantity,cast(b.pricetaxed as numeric(18,3)) as  pricetaxed,  
 cast(case when a.ordertype in (1,3,6) then b.quantity*b.pricetaxed else -b.quantity*b.pricetaxed end as numeric(18,2)) as amounttaxed,b.gdEmpCode,gdEmpName=ge.empname,  
 discount=cast(cast(case when c.price1 is not null and c.price1 <>0 then (b.PriceTaxed*10/c.price1) end as numeric(18,1)) as varchar(32))+'折',b.quantity_refunded,  
 b.batchno,b.validity,b.prodate,b.Row_Id,cast(case when a.ordertype in (1,3,6) then isnull(b.payAmount,0) else -isnull(b.payAmount,0) end as numeric(18,2)) as payAmount, a.IsPayed,isnull(b.PayFlag,0) as PayFlag ,b.inuse,b.inspResult,  
 cast(case when a.ordertype in (1,3,6) then isnull(InvoiceAmount,0) else -isnull(InvoiceAmount,0) end as numeric(18,2)) as InvoiceAmount,case when a.HaveInvoice =0 then 2 else isnull(InvoiceFlag,0) end  as InvoiceFlag,  
 HaveInvoice=(case when a.HaveInvoice = 1 then '有票' else '无票' end ),b.RfdReason,b.btPrice,b.ctPrice,b.inDeptCode,b.InEmpCode,b.SupEmpCode,  
 b.Warehouse_Code,b.LocID,whName=wh.warehouse_name,st.LocName,c.isBaseMed,c.isEmc,  
 c.comid,c.comcode,c.comname,c.name_chem,c.origin as manufacturer,c.origin,c.specification,c.unit,c.barcode,c.comIndex,c.Auth_Code,c.PiecePacking,c.color,c.taxout,c.Outerpacking,c.innerPacking,cast(c.price1 as numeric(18,2)) as price1,
cast(c.price2 as numeric(18,2)) as price2,c.medType,  
        PackNo=cast(case when c.PiecePacking is not null and isnumeric(c.PiecePacking)=1 and c.PiecePacking !='0' then b.Quantity/c.PiecePacking end as numeric(18,0)),b.PackNo as BarPrint,a.isCustReceipt,a.CustReceiptDate,a.CustReceiptRecorder,  
 cast(b.InPriceTaxed as numeric(18,3)) as InPriceTaxed,cast(case when a.ordertype in (1,3,6) then b.CostsTaxed  else - b.CostsTaxed end as numeric(18,2)) as CostsTaxed,  
 cast(b.storeinprice as numeric(18,3)) as storeinprice,cast(case when a.ordertype in (1,3,6) then b.costs  else - b.costs end as numeric(18,2)) as costs,  
 CashierPerson,CashierDate,CashierRemark,InspPerson,InspDate,InspRemark,b.SalesPerson,SalesDate,SalesRemark,WhPerson,WhDate,WhRemark,b.CheckPerson,b.CheckDate,b.CheckRemark,b.CheckPerson2,b.CheckDate2,b.CheckRemark2,  
 isPrinted = case when PrintCount > 0 then 1 else 0 end,NeedContract=(case when a.NeedContract = 1 then '是' else '否' end ),NeedFirstVendor=(case when a.NeedFirstVendor = 1 then '是' else '否' end ),
  NeedFirstCom=(case when a.NeedFirstCom = 1 then '是' else '否' end ),  
    a.custempcode,ce.custempname,custReceiver,ReceiveAddress,b.settlePrice,case when a.ordertype in (1,3,6) then b.settlePrice * b.Quantity  else - b.settlePrice * b.Quantity end  as SettleAmount,  
 a.realEmpName,a.isPresent,a.PrintSeqNo,b.price,a.taxRate,b.wsbPrice,b.rtbPrice,a.pharmacist,a.RxDate,a.RxRemark,v.myName as vendorName,c.PurchaseEmpName,b.detailtime,b.CashierReportNo,  
 b.storeinbill,b.storeinRow,isnull(b.audit,0) as audit,b.sortBillno,  
 priceCatName = (select CatNAME from ComPriceCat where CatID =c.ComPriceCat ),c.PRESCRIPTION as isRx,iv.supAccount,  
 isPkPrinted = case when PkPrintCount > 0 then 1 else 0 end,b.PkDPrintTime,b.PkDPrintCount,b.PkDPrintUser,isPkDPrinted = case when b.PkDPrintCount > 0 then 1 else 0 end,   
 isnull(b.vouchflag,0) as vouchflag,cm.FindName as custIndex  
from storeout a WITH (NOLOCK)  inner join storeoutdetail b WITH (NOLOCK)  on (a.billno = b.billno)  
inner join commodity c  WITH (NOLOCK) on ( b.comid = c.comid)  
left outer join department dt  WITH (NOLOCK) on (dt.dept_Code = a.DeptCode)  
left outer join customer cm  WITH (NOLOCK) on (cm.account = a.CustAccount)  
left outer join CustomerEmployee ce  WITH (NOLOCK) on (ce.CustAccount=a.CustAccount and ce.custempcode = a.custempcode)  
left outer join warehouse wh  WITH (NOLOCK) on (wh.warehouse_code = b.warehouse_code)  
left outer join goodslocation st  WITH (NOLOCK) on (st.LocID = b.LocID)  
left outer join employee ge  WITH (NOLOCK) on (ge.empcode = b.gdEmpCode)  
left outer join employee em  WITH (NOLOCK) on (em.empcode = a.EmpCode)  
left outer join ComCategory cc  WITH (NOLOCK) on (cc.ComCatID=c.ComCatID)  
left outer join vendor v  WITH (NOLOCK) on (v.account = b.SupAccount)  
left outer join areacategory ar  WITH (NOLOCK) on (cm.AreaCatID = ar.AreaCatID and cm.Account = a.CustAccount)  
left outer join PayWay pw  WITH (NOLOCK) on (pw.PayWayID = a.PayWayID)  
left outer join inventory iv  WITH (NOLOCK) on (iv.invSeqNo = b.invSeqNo)
GO
/****** Object:  View [dbo].[v_print_salesorder]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   view [dbo].[v_print_salesorder]      
as          
select companyname = (select companyname from companyname)+case when a.ordertype =1 then '销售单' else '销售退货单' end ,a.billno,a.thisdate,a.docPerson,a.CustAccount,a.MemberNo,a.ShippingType,a.Emergency,a.ordertype,a.commen,a.docstatus,      
 a.deptcode,DeptName=(select dept_name from department where dept_code = a.deptcode),      
 payStatus=(case when a.IsPayed = 1 then '已结' else '未结' end ),PayWayName =dbo.fn_GetPayWayName('salesorderpay',a.BillNo),      
 PayWaySum=case PayWayID when '2' then '现金已付' when '1' then '代收货款' when '6' then '代收货款' else '现金未付' end,       
 custName = (select min(MyName) from customer where Account = a.CustAccount),Manager = (select min(Manager) from customer where Account = a.CustAccount),      
 custAddress = (select min(Address) from customer where Account = a.CustAccount),telePhone = (select min(telePhone) from customer where Account = a.CustAccount),      
 a.EmpCode,EmpName=(select min(empName) from employee  where empcode = a.EmpCode),d.MyName,    
 AreaCatID=(select AreaCatID from Customer where  Account = a.CustAccount),b.detailtime,d.Contact,d.Address,         
 AreaCatName=(select ar.AreaCatName from Customer ct,areacategory ar where ct.AreaCatID = ar.AreaCatID and ct.Account = a.CustAccount),       
 cast(case when a.ordertype in (1,3) then b.quantity else -b.quantity end as numeric(18,0)) as quantity,cast(b.pricetaxed as numeric(18,3)) as  pricetaxed,      
 cast(case when a.ordertype in (1,3) then b.quantity*b.pricetaxed else -b.quantity*b.pricetaxed end as numeric(18,2)) as amounttaxed,b.gdEmpCode,gdEmpName=(select min(empName) from employee  where empcode = b.gdEmpCode),      
  b.Row_Id,b.slQuan,cast(case when a.ordertype in (1,3) then isnull(b.payAmount,0) else -isnull(b.payAmount,0) end  as numeric(18,2)) as payAmount, c.ComCatID,ComCatName=(select ComCatName from ComCategory where ComCatID=c.ComCatID),      
   
discount=cast(cast(case when c.price1 is not null and c.price1 !=0 then (PriceTaxed*10/c.price1) end as numeric(18,1)) as varchar(32))+'折',   
   PackNo=cast(case when c.PiecePacking is not null and isnumeric(c.PiecePacking)=1 and c.PiecePacking!='0' then Quantity/c.PiecePacking end as numeric(18,0)),   
     
 c.comid,c.comname,c.origin,c.specification,c.unit,c.barcode,c.comcode,c.comindex,c.PiecePacking,c.color,c.Outerpacking,cast(c.price1 as numeric(18,2)) as price1,cast(c.price2 as numeric(18,2)) as price2,    
 b.audit,b.sortBillno,isPkPrinted = case when PkPrintCount > 0 then 1 else 0 end,b.PkDPrintTime,b.PkDPrintCount,b.PkDPrintUser,isPkDPrinted = case when b.PkDPrintCount > 0 then 1 else 0 end    
,isPrinted = case when PrintCount > 0 then 1 else 0 end    
from salesorder a,salesorderdetail b,commodity c,Customer d      
where a.billno = b.billno and b.comid = c.comid and a.CustAccount = d.account
GO
/****** Object:  View [dbo].[v_print_acpayin]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_print_acpayin]
as 	   
select companyname = (select companyname from companyname),a.billno,a.thisdate,a.docPerson,a.ordertype,a.commen,a.docstatus, 
	a.Account,vendorName = (select min(MyName) from Customer where Account = a.Account) , 
	b.payamount,si.ComId,si.PriceTaxed,quantity =cast( case when si.PriceTaxed >0 then b.payamount / si.PriceTaxed else null end as numeric(18,2)),
	c.comname,c.origin,c.specification,c.unit,c.comindex
from acpay a,acpaydetail2 b,storeoutdetail si,commodity c
where a.billno = b.billno and b.oBillno = si.billno and b.oRowid = si.row_id and si.comid = c.comid
GO
/****** Object:  View [dbo].[v_monitor_dxlv]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_monitor_dxlv]
as 
select  
cast(isnull(salesnum*100/kcnum,0) as numeric(8,0)) as CurValue,0 as MinValue,100 as MaxValue,40 as SafeValue,80 as AlertValue,'' as _Color1,'' as _Color2,'' as _Color3
from (select count(distinct comid) as salesnum from storeoutdetail where detailtime between dateadd(dd,-300,getdate()) and getdate()) as a,
(select count(distinct comid) as kcnum from inventory) as b
GO
/****** Object:  View [dbo].[v_monitor_todaysalessumbyhour]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_monitor_todaysalessumbyhour]
as 
select top 10000 DATEPART ( hh ,a.thisdate) as hr,sum(b.AmountTaxed) as amt from storeout a,storeoutdetail b
where a.billno = b.billno and a.docstatus = 0 
--and a.thisdate between convert(varchar(10),getdate(),112)  and convert(varchar(10),dateadd(dd,1,getdate()),112)
group by DATEPART ( hh ,a.thisdate)
order by DATEPART ( hh ,a.thisdate)
GO
/****** Object:  View [dbo].[v_monitor_todaysalessumbycat]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_monitor_todaysalessumbycat]
as 
select top 10000 d.ComCatName,sum(b.AmountTaxed) as amt from storeout a,storeoutdetail b,commodity c,comcategory d
where a.billno = b.billno and b.comid = c.comid and c.comcatid = d.comcatid and a.docstatus = 0 
--and a.thisdate between convert(varchar(10),getdate(),112)  and convert(varchar(10),dateadd(dd,1,getdate()),112)
group by d.ComCatName
order by d.ComCatName
GO
/****** Object:  View [dbo].[v_monitor_todaysalessum]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_monitor_todaysalessum]
as 
select  
convert(numeric(4,2),isnull(sum(b.amounttaxed),0)/10000) as CurValue,0 as MinValue,24 as MaxValue,10 as SafeValue,20 as AlertValue,'' as _Color1,'' as _Color2,'' as _Color3
from storeout a,storeoutdetail b
where a.billno = b.billno and a.docstatus = 0 
and  a.thisdate between convert(varchar(10),getdate(),112)  and convert(varchar(10),dateadd(dd,1,getdate()),112)
GO
/****** Object:  View [dbo].[v_monitor_sales]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_monitor_sales]
as 
select  a.BillNo as 单据编号,单位名称 = (select MyName from Customer where Account=a.CustAccount),
	a.ThisDate as 日期,b.amt as 单据金额,b.comNum as 品种数,b.DocTime as 开单时间,
	b.bdPickTime as 发货开始时间,b.edPickTime as 发货结束时间,b.bdCheckTime as 复核开始时间,b.edCheckTime as 复核结束时间,
 case when datediff(mi,b.DocTime,isnull(b.bdPickTime,getdate())) > 90 then  '-16181'  else '' end as _BackColor,--'-65536'红色-16181粉红-5383962蓝色    
 case when datediff(mi,b.DocTime,isnull(b.bdPickTime,getdate())) > 90 then  'Blip.wav' else '' end as _AlarmWave  
from storeout a,(select Billno,Count(1) as comNum,sum(AmountTaxed) as amt,max(DetailTime) as DocTime,min(WhDate) as bdPickTime,max(WhDate) as edPickTime, 
		min(CheckDate) as bdCheckTime,max(CheckDate) as edCheckTime from storeoutdetail group by Billno ) as b
where a.BillNo = b.Billno and a.DocStatus = 0
--a.thisdate>=cast(convert(varchar(20),GETDATE(),110) AS DATETIME)
GO
/****** Object:  View [dbo].[v_monitor_ITO]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_monitor_ITO]
as 
select  
cast(isnull(salescosts*100/kccosts,0) as numeric(8,0)) as CurValue,0 as MinValue,100 as MaxValue,40 as SafeValue,80 as AlertValue,'' as _Color1,'' as _Color2,'' as _Color3
from (select sum(isnull(coststaxed,0)) as salescosts from storeoutdetail where detailtime between dateadd(dd,-300,getdate()) and getdate()) as a,
(select sum(coststaxed) as kccosts from inventory) as b
GO
/****** Object:  View [dbo].[v_gsp_storeoutrefund]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_storeoutrefund]
as 	  
select companyname = (select companyname from companyname),a.thisdate,
	CustName = (select min(MyName) from customer where Account = a.CustAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.origin,c.auth_code,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
	isnull(b.batchno,'') as batchno,b.prodate,b.validity,cast(b.pricetaxed as numeric(18,2)) as pricetaxed,b.amounttaxed  
	,b.QaStatus,b.CheckPerson,b.rfdReason as refundreason 
from storeout a,storeoutdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid and a.OrderType =2 and a.DocStatus=0
GO
/****** Object:  View [dbo].[v_gsp_storeoutcheckSpecial]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_storeoutcheckSpecial]
as 	  
select companyname = (select companyname from companyname),a.thisdate,
	CustName = (select min(MyName) from customer where Account = a.CustAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.auth_code,c.origin,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity,
	isnull(b.batchno,'') as batchno,b.prodate,b.validity,cast(b.pricetaxed as numeric(18,2)) as pricetaxed,b.amounttaxed  
	,b.QaStatus,b.CheckPerson,b.CheckPerson2,b.CheckDate2,b.CheckRemark2
from storeout a,storeoutdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid and a.OrderType =1 and c.isSpecial = 1 and a.DocStatus=0
GO
/****** Object:  View [dbo].[v_gsp_storeoutcheck]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_storeoutcheck]
as 	  
select companyname = (select companyname from companyname),a.thisdate,
	CustName = (select min(MyName) from customer where Account = a.CustAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.auth_code,c.origin,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity,
	isnull(b.batchno,'') as batchno,b.prodate,b.validity,cast(b.pricetaxed as numeric(18,2)) as pricetaxed,b.amounttaxed  
	,b.QaStatus,b.CheckPerson
from storeout a,storeoutdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid and a.OrderType =1 and a.DocStatus=0
GO
/****** Object:  View [dbo].[v_gsp_storeout]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gsp_storeout]
as 	  
select companyname = (select companyname from companyname),a.thisdate,
	CustName = (select min(MyName) from customer where Account = a.CustAccount),
	empname = (select min(empname) from employee where empcode = a.EmpCode),
	c.comname,c.manufacturer,c.specification,c.unit,c.comindex,c.origin,c.auth_code,
	cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
	isnull(b.batchno,'') as batchno,b.prodate,b.validity,cast(b.pricetaxed as numeric(18,2)) as pricetaxed,b.amounttaxed 
from storeout a,storeoutdetail b,commodity c
where a.billno = b.billno and b.comid = c.comid and a.OrderType =1 and a.DocStatus=0
GO
/****** Object:  View [dbo].[v_employee_state]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[v_employee_state]       
as      
select EmpName as 姓名,Job as 岗位,phone as 电话,case when PickState is null and CheckState is null  then  '空闲'  else '工作中' end 工作状态,    
  case when PickState is null and CheckState is null  then  '-16181'  else '' end as _BackColor --'-65536'红色-16181粉红-5383962蓝色    
from employee em left outer join 
(
 select uName,min(PickState) as PickState,min(CheckState) as CheckState from (
	select WhPerson as uName,'发货'+min(BillNo)+'单据' as PickState,null as CheckState from storeoutdetail where inuse <>0 --and WhDate>cast(convert(varchar(20),GETDATE(),110) AS DATETIME)
	group by WhPerson
	union all 
	select CheckPerson,null as CheckState,'复核'+min(BillNo)+'单据' from storeoutdetail where inuse <>0 --and WhDate>cast(convert(varchar(20),GETDATE(),110) AS DATETIME)
	group by CheckPerson) as aa
group by uName) as bb on (em.empname = bb.uName)
GO
/****** Object:  View [dbo].[v_detail]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_detail] 	
as 	 
select 1 as doctype,'StoreIndetail' as tbname,'Billno' as billFld,'Row_Id' as rowFld,a.thisdate,a.billno,b.Row_Id,a.ordertype,a.deptcode,a.empcode,a.supaccount,null as custaccount,a.Ispayed,a.Paywayid,c.myname as fName,
      b.comid,b.warehouse_code,cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) as quantity, 
      b.pricetaxed,cast(case when a.ordertype in(0,1) then b.amount else -b.amount end as numeric(18,2)) as amounttaxed,cast(case when a.ordertype in(0,1) then b.quantity else -b.quantity end as numeric(18,2)) * b.price as amount,
      b.quantity * b.price as costs,b.amount as coststaxed,b.amount * (taxin / 100) /(1 + taxin / 100) as TaxAmount,isnull(b.vouchflag,0) as vouchflag,b.vouchid,isnull(b.PayFlag,0) as PayFlag,
	  cast(case when a.ordertype in(0,1) then isnull(PayAmount,0) else -isnull(PayAmount,0) end as numeric(18,2)) as PayAmount
from StoreIn a,StoreIndetail b,Vendor c
where a.billno = b.billno and a.supaccount = c.account and a.ordertype <>0
union all
select 2 as doctype,'StoreOutdetail' as tbname,'Billno' as billFld,'Row_Id' as rowFld,a.thisdate,a.billno,b.Row_Id,a.ordertype,a.deptcode,a.empcode,null as supaccount,a.custaccount,a.Ispayed,a.Paywayid,c.myname as fName,
      b.comid,b.warehouse_code,cast(case when a.ordertype =1 then b.quantity else -b.quantity end as numeric(18,2)) as quantity,b.pricetaxed,
      cast(case when a.ordertype in(1,6) then b.amounttaxed else -b.amounttaxed end as numeric(18,2)) as amounttaxed,cast(case when a.ordertype =1 then b.amounttaxed else -b.amounttaxed end as numeric(18,2)) /(1 + taxout / 100) as amount,
      b.costs,b.coststaxed,b.amounttaxed * (taxout / 100) /(1 + taxout / 100) as TaxAmount,isnull(b.vouchflag,0) as vouchflag,b.vouchid,isnull(b.PayFlag,0) as PayFlag,
	  cast(case when a.ordertype in (1,6) then isnull(PayAmount,0) else -isnull(PayAmount,0) end as numeric(18,2)) as PayAmount
from Storeout a,Storeoutdetail b,Customer c
where a.billno = b.billno and a.custaccount = c.account
union all
select 3 as doctype,'StoreAdjustdetail' as tbname,'Billno' as billFld,'Row_Id' as rowFld,a.thisdate,a.billno,b.Row_Id,a.ordertype,a.deptcode,null as empcode,null as supaccount,null as custaccount,null as Ispayed,null as Paywayid,null as fName,
      b.comid,b.warehouse_code,b.quantity,b.inpricetaxed,0 as amounttaxed,0 as amount,
      b.costs,b.coststaxed,0 as TaxAmount,isnull(b.vouchflag,0) as vouchflag,b.vouchid,2,0
from storeadjust a,storeadjustdetail b
where a.billno = b.billno and a.ordertype = 1
union all
select 4 as doctype,'StoreAdjustdetail' as tbname,'Billno' as billFld,'Row_Id' as rowFld,a.thisdate,a.billno,b.Row_Id,a.ordertype,a.deptcode,null as empcode,null as supaccount,null as custaccount,null as Ispayed,null as Paywayid,null as fName,
      b.comid,b.warehouse_code,b.quantity,b.inpricetaxed,0 as amounttaxed,0 as amount,
      b.costs,b.coststaxed,0 as TaxAmount,isnull(b.vouchflag,0) as vouchflag,b.vouchid,2,0
from storeadjust a,storeadjustdetail b
where a.billno = b.billno and a.ordertype = 2
union all
select 5 as doctype,'AcPaydetail' as tbname,'Billno' as billFld,'Row_Id' as rowFld,a.thisdate,a.billno,b.Row_Id,a.ordertype as ordertype,null as deptcode,null as empcode,a.account as supaccount,null as custaccount,null as Ispayed,b.Paywayid,c.myname as fName,
      null as comid,null as warehouse_code,0 as quantity,0 as inpricetaxed,payamount as amounttaxed,0 as amount,
      0 as costs,0 as coststaxed,0 as TaxAmount,isnull(b.vouchflag,0) as vouchflag,b.vouchid,2,0
from acpay a,acpaydetail b,Vendor c
where a.billno = b.billno and a.account = c.account and a.ordertype = 1
union all
select 6 as doctype,'AcPaydetail' as tbname,'Billno' as billFld,'Row_Id' as rowFld,a.thisdate,a.billno,b.Row_Id,a.ordertype as ordertype,null as deptcode,null as empcode,null as supaccount,a.account as custaccount,null as Ispayed,b.Paywayid,c.myname as fName,
      null as comid,null as warehouse_code,0 as quantity,0 as inpricetaxed,payamount as amounttaxed,0 as amount,
      0 as costs,0 as coststaxed,0 as TaxAmount,isnull(b.vouchflag,0) as vouchflag,b.vouchid,2,0
from acpay a,acpaydetail b,Customer c
where a.billno = b.billno and a.account = c.account and a.ordertype = 2
GO
/****** Object:  View [dbo].[v_billdetail_storeout_check]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  view [dbo].[v_billdetail_storeout_check]  
as      
select BillNo,Row_Id,b.COMID,WAREHOUSE_CODE,LocID,BatchNo,cast(quantity as numeric(18,0)) as Quantity,cast(pricetaxed as numeric(18,3)) as PriceTaxed,cast(amounttaxed as numeric(18,2)) as AmountTaxed,  
b.TaxOut,Charge,MjBatchNo,ProDate,Validity,InvSeqNo,StoreinBill,StoreinRow,b.SupAccount,InvCode,InDate,StoreinPrice,Costs,InPriceTaxed,CostsTaxed,DetailTime,PayAmount,PayFlag,
Vouchid,Vouchflag,quantity_refunded,srcBillno,srcRowId,score,gdEmpCode,inuse,Audit,  
c.comname,c.origin,c.specification,c.unit,isnull(c.BarCodeEx,c.BarCode) as BarCode,c.comindex,b.CheckQty,
 isnull(b.CheckQty,0) - b.quantity as baQuan,b.CheckPerson,b.CheckDate,b.CheckRemark,b.inspResult,
b.CheckPerson2,b.CheckDate2,b.CheckRemark2,b.outQuan,b.RecheckQuan,b.RecheckReason,  
  case  when b.CheckQty = b.Quantity  then  '-7278960'  --数量等于复核数量为绿色  
 when  b.CheckQty >  b.Quantity then '-65536'  --数量小于复核数量为红色  
 when  b.CheckQty <  b.Quantity then '-256'  --数量小于复核数量为黄色  
 else '' end as _BackColor --'-65536'红色 -256 黄色 -16744448绿色 -7278960浅绿色 -16181粉红-5383962蓝色      
from  storeoutdetail b,commodity c  
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_storeout]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_storeout]
as 	  
select BillNo,Row_Id,b.COMID,WAREHOUSE_CODE,LocID,BatchNo,cast(quantity as numeric(18,2)) as Quantity,cast(pricetaxed as numeric(18,3)) as PriceTaxed,cast(amounttaxed as numeric(18,2)) as AmountTaxed,
	b.TaxOut,Charge,MjBatchNo,ProDate,Validity,InvSeqNo,StoreinBill,StoreinRow,b.SupAccount,InvCode,InDate,StoreinPrice,Costs,InPriceTaxed,CostsTaxed,DetailTime,PayAmount,PayFlag,Vouchid,Vouchflag,quantity_refunded,srcBillno,srcRowId,score,gdEmpCode,inuse,Audit,
c.comname,c.name_chem,c.origin,c.specification,c.unit,c.comcode,c.BarCode,c.comindex,c.Color,d.ComCatName,
CashierPerson,CashierDate,CashierRemark,c.PiecePacking,c.Outerpacking,c.InnerPacking,c.price1 as retailPrice,InspPerson,InspDate,InspRemark,SalesPerson,SalesDate,SalesRemark,WhPerson,WhDate,WhRemark,pharmacist,RxDate,RxRemark,
b.Notes,cast(b.settlePrice as numeric(18,2)) as settlePrice,cast(b.settlePrice * b.Quantity as numeric(18,2)) as SettleAmt,PieceNo=null,--cast(case when c.PiecePacking is not null then Quantity/c.PiecePacking end as numeric(18,0)),
discount=cast(cast(case when c.price1 is not null then PriceTaxed*10/c.price1 end as numeric(18,1)) as varchar(32))+'折',b.inspResult,b.CheckQty,b.RfdReason,b.btPrice,b.ctPrice,b.inDeptCode,b.InEmpCode,b.SupEmpCode,b.outQuan,b.RecheckQuan,b.RecheckReason,b.deptBtPrice,
c.PRESCRIPTION,c.isMhj,c.MedType,PackNo=cast(case when c.PiecePacking is not null and isnumeric(c.PiecePacking)=1 then Quantity/c.PiecePacking end as numeric(18,0)),b.price,b.wsbPrice,b.rtbPrice,b.CheckPerson,b.CheckDate,b.CheckRemark,b.CheckPerson2,b.CheckDate2,b.CheckRemark2,
case 	when b.InspResult = 1 then  
		case when c.PRESCRIPTION = 1 then '-16181' else '-7278960'  end --合格为绿色
	when  b.InspResult = 0 then '-65536'  --不合格为红色 
	else '-256' end --待验为黄色
	as _BackColor
from  storeoutdetail b,commodity c,comcategory d
where   b.comid = c.comid and c.comcatid = d.comcatid
GO
/****** Object:  View [dbo].[v_acpay_storein]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_acpay_storein]
as 	   
select companyname,billno,thisdate,docPerson,ordertype,docstatus,DeptCode,DeptName,payStatus,IsPayed,PayWayID,PayWayName,null as RealEmpName,
EmpCode,EmpName,SupAccount,vendorName,commen,quantity,pricetaxed,amount,payAmount,batchno,validity,ProDate,Row_Id,inuse,
storeinprice,taxin,InvSeqNo,quantity_refunded,Warehouse_Code,LocID,whName,LocName,comid,comname,manufacturer,origin,
specification,unit,barcode,comindex,color,PiecePacking,Outerpacking,price1,price2,isBaseMed,Auth_Code,medType,comcode,
isEMC,ComCatID,ComCatName,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode,PayFlag,InvoiceAmount,InvoiceFlag,HaveInvoice,
PriceAdjustBill,AccountantRemark,AccountantPerson,AccountantDate,PurchasePerson,PurchaseDate,PurchaseRemark,InspPerson,
InspDate,InspRemark,InspResult,WhPerson,WhDate,WhRemark,QaStatus,CheckPerson,CheckDate,CheckRemark,InspPerson2,InspDate2,InspRemark2,RfdReason
 from v_print_storein
GO
/****** Object:  View [dbo].[v_billdetail_SalesShipping]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_billdetail_SalesShipping]
as 	  
select b.BillNo,b.Row_Id,b.SalesBillNo,b.packNo,custName = (select min(MyName) from customer where Account = c.CustAccount),
	Amount = (select sum(amounttaxed) from storeoutdetail where billno = c.billno)
from  SalesShippingDetail b,storeout c
where   b.SalesBillNo = c.BillNo
GO
/****** Object:  View [dbo].[v_billdetail_SalesOrder_check]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  view [dbo].[v_billdetail_SalesOrder_check]
as 	  
select BillNo,Row_Id,b.COMID,Quantity,PriceTaxed,AmountTaxed,DetailTime,PayAmount,PayFlag,Vouchid,Vouchflag,gdEmpCode,inuse,Audit,b.commen,
c.comname,c.origin,c.specification,c.unit,isnull(c.BarCodeEx,c.BarCode) as barcode,c.comindex,c.color,c.PiecePacking,c.Outerpacking,c.price1 as retailPrice,CashierPerson,CashierDate,CashierRemark,InspPerson,InspDate,InspRemark,SalesPerson,SalesDate,SalesRemark,WhPerson,WhDate,WhRemark,
PieceNo=null,b.CheckQty, isnull(b.CheckQty,0) - b.quantity as baQuan,b.CheckPerson,b.CheckDate,b.CheckRemark,b.inspResult,--cast(case when c.PiecePacking is not null then Quantity/c.PiecePacking end as numeric(18,0)),
  case 	when b.CheckQty = b.Quantity  then  '-7278960'  --数量等于复核数量为绿色
	when  b.CheckQty >  b.Quantity then '-65536'  --数量小于复核数量为红色
	when  b.CheckQty <  b.Quantity then '-256'  --数量小于复核数量为黄色
	else '' end as _BackColor, --'-65536'红色 -256 黄色 -16744448绿色 -7278960浅绿色 -16181粉红-5383962蓝色   
discount=cast(cast(case when c.price1 is not null then (PriceTaxed*10/c.price1) end as numeric(18,1)) as varchar(32))+'折'
from salesorderdetail b,commodity c
where   b.comid = c.comid
GO
/****** Object:  View [dbo].[v_billdetail_SalesOrder]    Script Date: 08/18/2017 14:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[v_billdetail_SalesOrder]  
as      
select BillNo,Row_Id,b.COMID,Quantity,PriceTaxed,AmountTaxed,DetailTime,PayAmount,PayFlag,Vouchid,Vouchflag,gdEmpCode,inuse,Audit,b.commen,b.batchno,b.prodate,b.validity,  
c.comname,c.name_chem,c.origin,c.specification,c.unit,c.barcode,c.comindex,c.color,c.MedType,d.ComCatName,c.PiecePacking,c.Outerpacking,c.price1 as retailPrice,CashierPerson,CashierDate,CashierRemark,InspPerson,InspDate,InspRemark,SalesPerson,SalesDate,
SalesRemark,WhPerson,WhDate,WhRemark,  
PieceNo=null,InvQuan,b.settlePrice,--cast(case when c.PiecePacking is not null then Quantity/c.PiecePacking end as numeric(18,0)),  
discount=cast(cast(case when c.price1 is not null then (PriceTaxed*10/c.price1) end as numeric(18,1)) as varchar(32))+'折'  
from salesorderdetail b (nolock),commodity c (nolock),comcategory d  (nolock) 
where   b.comid = c.comid and c.comcatid = d.comcatid
GO
/****** Object:  View [dbo].[v_bill_cancel]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_bill_cancel] 	
as 	 
select bt.BillType,bt.tableName as tbname,bt.BillNoFld,bt.RowIdFld,bt.AuditFld,a.thisdate,a.billno,b.Row_Id,1 as isSelect,c.myname as '单位名称',
      cm.comname as '商品名称',b.quantity as '数量',b.pricetaxed as '单价',b.amount as '金额','单据类型'= bt.billname,a.docperson as '制单人',
	'' as '作废人',null as '作废日期',null as '作废意见'
from StoreIn a,StoreIndetail b,Vendor c,commodity cm,(select * from BillType where BillType = 'StoreIn') as bt 
where a.billno = b.billno and a.OrderType = 1 and a.supaccount = c.account and b.comid = cm.comid and b.Audit = -9
union all
select bt.BillType,bt.tableName  as tbname,bt.BillNoFld,bt.RowIdFld,bt.AuditFld,a.thisdate,a.billno,b.Row_Id,1 as isSelect,c.myname as '单位名称',
      cm.comname as '商品名称',b.quantity as '数量',b.pricetaxed as '单价',b.amount as '金额','单据类型'= bt.billname,a.docperson,
	'' as cancelPerson,null as cancelDate,null as cancelRemark
from StoreIn a,StoreIndetail b,Vendor c,commodity cm,(select * from BillType where BillType = 'StoreInrfd') as bt 
where a.billno = b.billno and a.OrderType = 2 and a.supaccount = c.account and b.comid = cm.comid and b.Audit = -9
union all
select bt.BillType,bt.tableName  as tbname,bt.BillNoFld,bt.RowIdFld,bt.AuditFld,a.thisdate,a.billno,b.Row_Id,1 as isselect,c.myname as fName,
      cm.comname,b.quantity,b.pricetaxed,b.amounttaxed,'单据类型'= bt.billname,a.docperson,
	'' as cancelPerson,null as cancelDate,null as cancelRemark
from Storeout a,Storeoutdetail b,Customer c,commodity cm,(select * from BillType where BillType = 'StoreOut') as bt 
where a.billno = b.billno and a.OrderType = 1 and a.custaccount = c.account and b.comid = cm.comid and b.Audit = -9
union all
select bt.BillType,bt.tableName  as tbname,bt.BillNoFld,bt.RowIdFld,bt.AuditFld,a.thisdate,a.billno,b.Row_Id,1 as isselect,c.myname as fName,
      cm.comname,b.quantity,b.pricetaxed,b.amounttaxed,'单据类型'= bt.billname,a.docperson,
	'' as cancelPerson,null as cancelDate,null as cancelRemark
from Storeout a,Storeoutdetail b,Customer c,commodity cm,(select * from BillType where BillType = 'StoreOutrfd') as bt 
where a.billno = b.billno and a.OrderType = 2 and a.custaccount = c.account and b.comid = cm.comid and b.Audit = -9
union all
select bt.BillType,bt.tableName  as tbname,bt.BillNoFld,bt.RowIdFld,bt.AuditFld,a.thisdate,a.billno,b.Row_Id,1 as isselect,null as fName,
      cm.comname,b.quantity,b.inpricetaxed,0 as amounttaxed ,'单据类型'= bt.billname,a.docperson,
	'' as cancelPerson,null as cancelDate,null as cancelRemark
from storeadjust a,storeadjustdetail b,commodity cm,(select * from BillType where BillType = 'StoreOver') as bt 
where a.billno = b.billno and a.ordertype = 1 and b.comid = cm.comid and b.Audit = -9
union all
select bt.BillType,bt.tableName  as tbname,bt.BillNoFld,bt.RowIdFld,bt.AuditFld,a.thisdate,a.billno,b.Row_Id,1 as isselect,null as fName,
      cm.comname,b.quantity,b.inpricetaxed,0 as amounttaxed,'单据类型'= bt.billname,a.docperson,
	'' as cancelPerson,null as cancelDate,null as cancelRemark
from storeadjust a,storeadjustdetail b,commodity cm,(select * from BillType where BillType = 'StoreShort') as bt 
where a.billno = b.billno and a.ordertype = 2 and b.comid = cm.comid and b.Audit = -9
union all
select bt.BillType,bt.tableName  as tbname,bt.BillNoFld,null as RowIdFld,bt.AuditFld,a.thisdate,a.billno,null Row_Id,1 as isselect,myName as fName,
      null comname,null quantity,null pricetaxed,0 as amounttaxed,'单据类型'= bt.billname,a.AppLyperson,
	'' as cancelPerson,null as cancelDate,null as cancelRemark
from FirstVendor a,(select * from BillType where BillType = 'FirstVendor') as bt 
where  Audit = -9
union all
select bt.BillType,bt.tableName  as tbname,bt.BillNoFld,null as RowIdFld,bt.AuditFld,a.thisdate,a.billno,null Row_Id,1 as isselect,null as fName,
      comname,null quantity,null pricetaxed,0 as amounttaxed,'单据类型'= bt.billname,a.AppLyperson,
	'' as cancelPerson,null as cancelDate,null as cancelRemark
from FirstCommodity a,(select * from BillType where BillType = 'FirstCommodity') as bt 
where  Audit = -9
union all
select bt.BillType,bt.tableName  as tbname,bt.BillNoFld,null as RowIdFld,bt.AuditFld,a.thisdate,a.billno,null Row_Id,1 as isselect,myName as fName,
      null comname,null quantity,null pricetaxed,0 as amounttaxed,'单据类型'= bt.billname,a.AppLyperson,
	'' as cancelPerson,null as cancelDate,null as cancelRemark
from FirstCustomer a,(select * from BillType where BillType = 'FirstCustomer') as bt 
where  Audit = -9
union all
select bt.BillType,bt.tableName  as tbname,bt.BillNoFld,bt.RowIdFld,bt.AuditFld,a.thisdate,a.billno,b.Row_Id,1 as isSelect,c.myname as '单位名称',
      cm.comname as '商品名称',b.quantity as '数量',b.Price as '单价',b.amount as '金额','单据类型'= bt.billname,a.docperson,
	'' as cancelPerson,null as cancelDate,null as cancelRemark
from PurchasePlan a,PurchasePlandetail b,Vendor c,commodity cm,(select * from BillType where BillType = 'PurchasePlan') as bt 
where a.billno = b.billno  and b.supaccount = c.account and b.comid = cm.comid and b.Audit = -9
union all
select bt.BillType,bt.tableName  as tbname,bt.BillNoFld,bt.RowIdFld,bt.AuditFld,a.thisdate,a.billno,b.Row_Id,1 as isSelect,c.myname as '单位名称',
      cm.comname as '商品名称',b.quantity as '数量',b.Price as '单价',b.amount as '金额','单据类型'= bt.billname,a.docperson,
	'' as cancelPerson,null as cancelDate,null as cancelRemark
from PurchasePlan a,PurchasePlandetail b,Vendor c,commodity cm,(select * from BillType where BillType = 'PurchaseContract') as bt 
where a.billno = b.billno  and b.supaccount = c.account and b.comid = cm.comid and b.Audit = -9
GO
/****** Object:  View [dbo].[v_bill_audit]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_bill_audit] 	
as 	 
select a.thisdate,a.billno,b.Row_Id,c.myname,
      cm.comname,b.quantity,b.pricetaxed,b.amount, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'StoreIn' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=(select empname from employee where empcode = a.empcode),realEmpName  = null
from StoreIn a,StoreIndetail b,Vendor c,commodity cm,(select * from BillType where BillType = 'StoreIn') as bt 
where a.billno = b.billno and a.OrderType = 1 and a.supaccount = c.account and b.comid = cm.comid and b.inuse<>0
union all
select a.thisdate,a.billno,b.Row_Id,c.myname,
      cm.comname,b.quantity,b.pricetaxed,b.amount, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'StoreInrfd' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=(select empname from employee where empcode = a.empcode),realEmpName  = null
from StoreIn a,StoreIndetail b,Vendor c,commodity cm,(select * from BillType where BillType = 'StoreInrfd') as bt 
where a.billno = b.billno and a.OrderType = 2 and a.supaccount = c.account and b.comid = cm.comid and b.inuse<>0
union all
select a.thisdate,a.billno,b.Row_Id,c.myname as fName,
      cm.comname,b.quantity,b.pricetaxed,b.amounttaxed, bt.billname 
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'StoreOut' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=(select empname from employee where empcode = a.empcode),a.realEmpName
from Storeout a,Storeoutdetail b,Customer c,commodity cm,(select * from BillType where BillType = 'StoreOut') as bt 
where a.billno = b.billno and a.OrderType = 1 and a.custaccount = c.account and b.comid = cm.comid and b.inuse<>0
union all
select a.thisdate,a.billno,b.Row_Id,c.myname as fName,
      cm.comname,b.quantity,b.pricetaxed,b.amounttaxed, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'StoreOutrfd' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=(select empname from employee where empcode = a.empcode),a.realEmpName
from Storeout a,Storeoutdetail b,Customer c,commodity cm,(select * from BillType where BillType = 'StoreOutrfd') as bt 
where a.billno = b.billno and a.OrderType = 2 and a.custaccount = c.account and b.comid = cm.comid and b.inuse<>0
union all
select a.thisdate,a.billno,b.Row_Id,null as fName,
      cm.comname,b.quantity,b.inpricetaxed,b.coststaxed as amounttaxed , bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'StoreOver' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=null,realEmpName  = null
from storeadjust a,storeadjustdetail b,commodity cm,(select * from BillType where BillType = 'StoreOver') as bt 
where a.billno = b.billno and a.ordertype = 1 and b.comid = cm.comid and b.inuse<>0
union all
select a.thisdate,a.billno,b.Row_Id,null as fName,
      cm.comname,b.quantity,b.inpricetaxed,b.coststaxed as amounttaxed, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'StoreShort' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=null,realEmpName  = null
from storeadjust a,storeadjustdetail b,commodity cm,(select * from BillType where BillType = 'StoreShort') as bt 
where a.billno = b.billno and a.ordertype = 2 and b.comid = cm.comid and b.inuse<>0
union all
select a.thisdate,a.billno,null Row_Id,myName as fName,
      null comname,null quantity,null pricetaxed,0 as amounttaxed, bt.billname
	,case when a.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'FirstVendor' and FlowStep = a.Audit +1 ),null as DocPerson,
	empname=null,realEmpName  = null
from FirstVendor a,(select * from BillType where BillType = 'FirstVendor') as bt 
where  inuse<>0
union all
select a.thisdate,a.billno,null Row_Id,null as fName,
      comname,null quantity,null pricetaxed,0 as amounttaxed, bt.billname
	,case when a.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'FirstCommodity' and FlowStep = a.Audit +1 ),null as DocPerson,
	empname=null,realEmpName  = null
from FirstCommodity a,(select * from BillType where BillType = 'FirstCommodity') as bt 
where  inuse<>0
union all
select a.thisdate,a.billno,null Row_Id,myName as fName,
      null comname,null quantity,null pricetaxed,0 as amounttaxed, bt.billname
	,case when a.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'FirstCustomer' and FlowStep = a.Audit +1 ),null as DocPerson,
	empname=null,realEmpName  = null
from FirstCustomer a,(select * from BillType where BillType = 'FirstCustomer') as bt 
where  inuse<>0
union all
select a.thisdate,a.billno,b.Row_Id,c.myname,
      cm.comname,b.quantity,b.Price,b.amount, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'PurchasePlan' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=(select empname from employee where empcode = a.empcode),realEmpName  = null
from PurchasePlan a,PurchasePlandetail b,Vendor c,commodity cm,(select * from BillType where BillType = 'PurchasePlan') as bt 
where a.billno = b.billno  and b.supaccount = c.account and b.comid = cm.comid and b.inuse<>0
union all
select a.thisdate,a.billno,b.Row_Id,c.myname,
      cm.comname,b.quantity,b.Price,b.amount, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'PurchaseContract' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=(select empname from employee where empcode = a.empcode),realEmpName  = null
from PurchaseContract a,PurchaseContractdetail b,Vendor c,commodity cm,(select * from BillType where BillType = 'PurchaseContract') as bt 
where a.billno = b.billno  and a.supaccount = c.account and b.comid = cm.comid and b.inuse<>0
union all
select a.thisdate,a.billno,b.Row_Id,c.myname,
      cm.comname,b.quantity,b.Price,b.amount, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'PurchaseOrder' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=(select empname from employee where empcode = a.empcode),realEmpName  = null
from PurchaseOrder a,PurchaseOrderdetail b,Vendor c,commodity cm,(select * from BillType where BillType = 'PurchaseOrder') as bt 
where a.billno = b.billno  and a.supaccount = c.account and b.comid = cm.comid and b.inuse<>0
union all
select a.thisdate,a.billno,b.Row_Id,null as fName,
      cm.comname,b.quantity,b.inpricetaxed,0 as amounttaxed, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'Requisition' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=null,realEmpName  = null
from storemove a,storemovedetail b,commodity cm,(select * from BillType where BillType = 'Requisition') as bt 
where a.billno = b.billno and a.ordertype = 2 and b.comid = cm.comid and b.inuse<>0 
union all
select a.thisdate,a.billno,b.Row_Id,null as fName,
      cm.comname,b.quantity,b.inpricetaxed,0 as amounttaxed, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'RequisitionReturn' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=null,realEmpName  = null
from storemove a,storemovedetail b,commodity cm,(select * from BillType where BillType = 'RequisitionReturn') as bt 
where a.billno = b.billno and a.ordertype = 2 and b.comid = cm.comid and b.inuse<>0 
union all
select a.thisdate,a.billno,b.Row_Id,null as fName,
      cm.comname,b.quantity,b.inpricetaxed,0 as amounttaxed, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'ComRecheck' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=null,realEmpName  = null
from ComRecheck a,ComRecheckdetail b,commodity cm,(select * from BillType where BillType = 'ComRecheck') as bt 
where a.billno = b.billno and b.comid = cm.comid and b.inuse<>0 
union all
select a.thisdate,a.billno,b.Row_Id,null as fName,
      cm.comname,b.quantity,b.inpricetaxed,0 as amounttaxed, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'Disposal' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=null,realEmpName  = null
from StoreAdjust a,StoreAdjustDetail b,commodity cm,(select * from BillType where BillType = 'Disposal') as bt 
where a.billno = b.billno and a.ordertype = 3 and b.comid = cm.comid and b.inuse<>0 
union all
select a.thisdate,a.billno,b.Row_Id,null as fName,
      cm.comname,b.quantity,b.inpricetaxed,0 as amounttaxed, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'Destroy' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=null,realEmpName  = null
from StoreAdjust a,StoreAdjustDetail b,commodity cm,(select * from BillType where BillType = 'Destroy') as bt 
where a.billno = b.billno and a.ordertype = 4 and b.comid = cm.comid and b.inuse<>0 
union all
select a.thisdate,a.billno,b.Row_Id,null as fName,
      cm.comname,b.quantity,b.price,0 as amounttaxed, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'RequestPlan' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=null,realEmpName  = null
from RequestPlan a,RequestPlanDetail b,commodity cm,(select * from BillType where BillType = 'RequestPlan') as bt 
where a.billno = b.billno   and b.comid = cm.comid and b.inuse<>0 
union all
select a.thisdate,a.billno,b.Row_Id,c.myname,
      cm.comname,b.quantity,b.StoreinPrice,b.amount, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'DirectInOut' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=null,realEmpName  = null
from DirectInOut a,DirectInOutdetail b,Vendor c,commodity cm,(select * from BillType where BillType = 'DirectInOut') as bt 
where a.billno = b.billno  and a.supaccount = c.account and b.comid = cm.comid and b.inuse<>0
union all
select a.thisdate,a.seqid,b.Row_Id,null as fName,
      null as comname,null as quantity,null,b.Amount, bt.billname
	,case when b.audit = -9 then '已作废' when a.DocStatus=0 then '开票已确认' else '开票未确认' end as DocStatus,
	NextFlowName=(select min(FlowName) from BillAuditDef where BillType = 'AcExpenses' and FlowStep = b.Audit +1 ),a.DocPerson,
	empname=null,realEmpName  = null
from AcExpenses a,AcExpensesDetail b,(select * from BillType where BillType = 'AcExpenses') as bt 
where a.seqid = b.seqid  and b.inuse<>0
GO
/****** Object:  StoredProcedure [dbo].[sp_Retail_Check]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_Retail_Check] (@BillNo nvarchar(32))
as
begin
 	declare @mhjRowcount int,@rxRowcount int,@Rowcount int,@rowid int 
	declare @comname varchar(128),@quan numeric(18,2)
	
	select @mhjRowcount = sum(isnull(c.isMhj,0)),@rxRowcount = sum(isnull(c.PRESCRIPTION,0))
	from storeout a,StoreOutDetail b,commodity c 
	where a.billno = b.billno and b.comid = c.comid  and a.billno = @BillNo;

	if @mhjRowcount > 0 --有含麻黄碱品种
	begin
		select @Rowcount = count(*) from filemanage where refTable='StoreOut' and refFileKey='IdCardScan' and refKey =@BillNo;
		if  @Rowcount <1 
		begin
			raiserror('有含麻黄碱品种,未扫描顾客身份证!不能确认单据!',16,1);
			return;
		end		

		select @Rowcount = count(*),@rowid = min(b.row_id)
		from storeout a,StoreOutDetail b,commodity c 
		where a.billno = b.billno and b.comid = c.comid  and a.billno = @BillNo and a.OrderType =6 and c.isMhj = 1 and quantity >2;
		if @Rowcount > 0
		begin 
			select @comname= b.comname,@quan = a.quantity from storeoutdetail a,commodity b 
			where a.comid = b.comid  and a.billno = @BillNo and a.row_id = @rowid;
			raiserror('商品%s为含麻黄碱品种，销售数量%d不能大于2!',16,1,@comname,@quan);
			return;
		end  
	end

	if @rxRowcount > 0 --有处方药
	begin
		select @Rowcount = count(*) from filemanage where refTable='StoreOut' and refFileKey='RxScan' and refKey =@BillNo;
		if  @Rowcount <1 
		begin
			raiserror('未扫描处方笺!不能确认单据!',16,1);
			return;
		end
	end 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_RegMemberScore]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_RegMemberScore] (@BillNo nvarchar(32) )
as
begin
begin tran; 
	update b set b.score = case when mc.ScoreUnit > 0 and mc.AmountUnit > 0 then b.AmountTaxed *  mc.ScoreUnit / mc.AmountUnit else 0 end
	from storeout a,storeoutdetail b,member c,MemberCategory mc
	where a.billno = b.billno and a.memberNo = c.memberNo and c.MemCatID = mc.MemCatID 
	     and a.billno = @BillNo;
	if @@error <> 0 
	 begin
		raiserror('1计算积分失败!',16,1)
		rollback tran;
		return
	 end


	update a set a.score = b.score,a.curScore = c.curScore,a.isRegScore = 1
	from storeout a,(select billno,sum(score) as score from storeoutdetail group by billno ) b,member c 
	where a.billno = b.billno and a.memberNo = c.memberNo  
	     and a.billno = @BillNo;
	if @@error <> 0 
	 begin
		raiserror('2计算积分失败!',16,1)
		rollback tran;
		return
	 end

	update c set c.curScore =  isnull(c.curScore,0) + case when a.ordertype in (6) then isnull(a.score,0) else - isnull(a.score,0) end
	from storeout a,member c 
	where  a.memberNo = c.memberNo   and a.billno = @BillNo;
	if @@error <> 0 
	 begin
		raiserror('3计算积分失败!',16,1)
		rollback tran;
		return
	 end

commit tran;
end
GO
/****** Object:  UserDefinedFunction [dbo].[fn_NewBillRowID]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_NewBillRowID](@btype varchar(32),@billno varchar(32))
returns numeric(18,0)
as
BEGIN
	declare  @maxno numeric(18,0),@sql nvarchar(1000)
	 
	set @btype = upper(@btype);
	if @btype = 'STOREINDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from STOREINDETAIL where billno = @BillNo;
	else if @btype = 'STOREOUTDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from STOREOUTDETAIL where billno = @BillNo;
	else if @btype = 'STOREADJUSTDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from STOREADJUSTDETAIL where billno = @BillNo;
	else if @btype = 'ACPAYDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from ACPAYDETAIL where billno = @BillNo;
	else if @btype = 'ACVOUCHDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from ACVOUCHDETAIL where VouchID = @BillNo;
	else if @btype = 'SALESORDERDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from SALESORDERDETAIL where billno = @BillNo;
	else if @btype = 'PURCHASEPLANDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from purchaseplandetail where billno = @BillNo;
	else if @btype = 'PURCHASECONTRACTDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from purchasecontractdetail where billno = @BillNo;
	else if @btype = 'STOREINREFUSEDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from storeinrefusedetail where billno = @BillNo;
	else if @btype = 'COMRECHECKDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from comrecheckdetail where billno = @BillNo;
	else if @btype = 'COMMAINTAINDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from ComMaintaindetail where billno = @BillNo;
	else if @btype = 'STOREMOVEDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from STOREMOVEDETAIL where billno = @BillNo;
	else if @btype = 'ACINVOICEDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from ACINVOICEDETAIL where billno = @BillNo;
	else if @btype = 'SALESCOMMISSIONDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from SalesCommissionDetail where billno = @BillNo; 
	else if @btype = 'STOREMOVEDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from StoreMovedetail where billno = @BillNo; 
	else if @btype = 'STORECHECKINPUTDETAIL'
		select @maxno = isnull(max(Row_Id),0)+1 from StoreCheckInputDetail where billno = @BillNo; 
	else if @btype =upper( 'salesstopDETAIL')
		select @maxno = isnull(max(Row_Id),0)+1 from salesstopDetail where billno = @BillNo;  
	else if @btype =upper( 'commaintainplanDETAIL')
		select @maxno = isnull(max(Row_Id),0)+1 from commaintainplanDetail where billno = @BillNo;  
	else if @btype =upper( 'salestransportDETAIL')
		select @maxno = isnull(max(Row_Id),0)+1 from salestransportDetail where billno = @BillNo;  
	else if @btype =upper( 'directinoutDETAIL')
		select @maxno = isnull(max(Row_Id),0)+1 from directinoutDetail where billno = @BillNo;  
	else if @btype =upper( 'storagemoveDETAIL')
		select @maxno = isnull(max(Row_Id),0)+1 from storagemoveDetail where billno = @BillNo;  
	else if @btype =upper( 'claritycheckDETAIL')
		select @maxno = isnull(max(Row_Id),0)+1 from claritycheckDetail where billno = @BillNo;  
	else if @btype =upper( 'colorcheckDETAIL')
		select @maxno = isnull(max(Row_Id),0)+1 from colorcheckDetail where billno = @BillNo;  
	else if @btype =upper( 'PurchaseOrderDetail')
		select @maxno = isnull(max(Row_Id),0)+1 from PurchaseOrderDetail where billno = @BillNo; 
	else if @btype =upper( 'POReceiveDetail')
		select @maxno = isnull(max(Row_Id),0)+1 from POReceiveDetail where billno = @BillNo;  
	else if @btype =upper( 'SalesShippingDetail')
		select @maxno = isnull(max(Row_Id),0)+1 from SalesShippingDetail where billno = @BillNo;  
	else if @btype =upper( 'RequestPlandetail')
		select @maxno = isnull(max(Row_Id),0)+1 from RequestPlandetail where billno = @BillNo;  

	  
return @maxno
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_getRtPrice]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_getRtPrice](@billno varchar(32),@Row_Id nvarchar(32),@comid varchar(32),@RoleID varchar(32))
returns numeric(18,4)
as
BEGIN
	declare @iCustType varchar(32),@iComType varchar(32),@iPricetype varchar(32),@ipricerate numeric(10,2),@iRowcout int
	declare @price numeric(18,4),@dPrice numeric(18,4)

	--取类型设置 
	select @iCustType=CustType,@iComType=ComType,@iPricetype = pricetype,@ipricerate = pricerate from DeptPriceRole where @RoleID = @RoleID;
 
	
	--客户类型判断，非客户类型则退出
	--if @iCustType = -100 --所有顾客 
	if @iCustType = -1 --普通顾客
	begin
	   select @iRowcout = count(*) from storeout where billno = @billno and memberno is null;
	   if @iRowcout < 1
	   begin
		return null;
	   end
	end
	else if @iCustType <> -100 --会员类型
	begin
	   select @iRowcout = count(*) from storeout a,Member b where billno = @billno and a.memberno = b.MemberNo and b.MemCatID = @iCustType;
	   if @iRowcout < 1
	   begin
		return null;
	   end		
	end

	--商品价格分类判断
	if @iComType <> -100 
	begin
	  select  @iRowcout = count(*) from storeoutdetail a,commodity b where a.comid = b.comid and a.billno = @billno and a.row_id = @Row_Id and b.ComPriceCat = @iComType;
	  if @iRowcout < 1
	   begin
		return null;
	   end		
	end	
	
	--根据不同价格类型，获取不同价格
	if @iPricetype = -100--部门会员价
	begin
		select @price = memPrice from  DeptComPrice a,storeout b where a.deptcode = b.deptcode and b.billno = @billno and a.comid = @comid;
	end
	else if @iPricetype = -99--部门零售价
	begin
		select @price = retailPrice from  DeptComPrice a,storeout b where a.deptcode = b.deptcode and b.billno = @billno and a.comid = @comid;
	end
	else if @iPricetype = -1--零售价
	begin
		select @price = price1 from  commodity where  comid = @comid;
	end
	else if @iPricetype = -2--批发价
	begin
		select @price = price2 from  commodity where  comid = @comid;
	end
	else if @iPricetype = -3--公告价
	begin
		select @price = price3 from  commodity where  comid = @comid;
	end
	else if @iPricetype = -4--会员价
	begin
		select @price = price4 from  commodity where  comid = @comid;
	end
	else if @iPricetype = -5--特惠价
	begin
		select @price = price5 from  commodity where  comid = @comid;
	end
	else if @iPricetype = -6--自定义价
	begin
		select @price = price6 from  commodity where  comid = @comid;
	end
	else --特价商品
	begin
		select @price = price from ComPriceTypeDetail where CatID =@iPricetype and comid = @comid;
	end
	
	select @dPrice = @dPrice * @ipricerate / 100;
return round(@dPrice,2)
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetDeptCredit]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_GetDeptCredit](@deptcode varchar(32))
returns numeric(18,2)
as
BEGIN
	
	declare @sql nvarchar(4000),@RowCount numeric(18,0) 
	declare @bAmt numeric(18,4),@dAmt numeric(18,4),@jAmt numeric(18,4),@isBase int 
	
	select @isBase = isBase from department where dept_code = @deptcode;
	--如果是总部
	if @isBase = 1
	begin 
		--销售其他部门
		select @dAmt = sum(b.amountTaxed)
		from storeout a,storeoutdetail b where a.billno = b.billno and b.audit <> -9 and a.deptcode in (select dept_code from department where  isBase = 1) and b.indeptcode not in (select dept_code from department where  isBase = 1);

		--其他部门销售本部门
		select @jAmt = sum(b.amountTaxed)
		from storeout a,storeoutdetail b where a.billno = b.billno and b.audit <> -9  and a.deptcode not in (select dept_code from department where  isBase = 1) and b.indeptcode in (select dept_code from department where  isBase = 1);

		--本部门现金余额
		select @bAmt = sum( case when OrderType = 1 then Amount else -Amount end ) from AcDepartmentPay where DeptCode in (select dept_code from department where  isBase = 1);
	end
	else
	begin	 
		--销售其他部门
		select @dAmt = sum(b.amountTaxed)
		from storeout a,storeoutdetail b where a.billno = b.billno  and a.deptcode =  @deptcode and b.audit <> -9 and b.indeptcode <> @deptcode;

		--其他部门销售本部门
		select @jAmt = sum(b.amountTaxed)
		from storeout a,storeoutdetail b where a.billno = b.billno and a.deptcode <> @deptcode and b.audit <> -9  and b.indeptcode = @deptcode;

		--本部门现金余额
		select @bAmt = sum( case when OrderType = 1 then Amount else -Amount end ) from AcDepartmentPay where DeptCode = @deptcode;
	end 	

return  @jAmt + @bAmt - @dAmt
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_IsAuditEnd]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_IsAuditEnd](@BillType varchar(128),@BillNo nvarchar(32),@row_id nvarchar(32))
returns int
as
BEGIN
	declare @maxStep int,@RowCount int,@ret int	
	  
 	select @maxStep = isnull(max(cast(FlowStep as int)),0) ,@BillType = lower(@BillType)  from BillAuditDef where BillType = @BillType;
	select @maxStep = case when @maxStep = -1 then 0 else @maxStep end;
	 
	if @BillType ='storein'
		select @RowCount = count(*) from storeindetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;
	else if @BillType ='storeinrfd'
		select @RowCount = count(*) from storeindetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep; 
	else if @BillType ='storeout' or @BillType ='storeoutretail' 
		select @RowCount = count(*) from storeoutdetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep; 
	else if @BillType ='storeoutrfd' or @BillType ='storeoutretailrfd' 
		select @RowCount = count(*) from storeoutdetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType = 'storeover'
		select @RowCount = count(*) from storeadjustdetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep; 
	else if @BillType = 'storeshort'
		select @RowCount = count(*) from storeadjustdetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType = 'salesorder'
		select @RowCount = count(*) from salesorderdetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType ='storeinit'
		select @RowCount = count(*) from storeindetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType ='firstvendor'
		select @RowCount = count(*) from firstvendor where billno = @BillNo and isnull(Audit,-1) =@maxStep; 
	else if @BillType ='firstcom'
		select @RowCount = count(*) from firstcommodity where billno = @BillNo and isnull(Audit,-1) =@maxStep; 
	else if @BillType ='firstcustomer'
		select @RowCount = count(*) from firstcustomer where billno = @BillNo and isnull(Audit,-1) =@maxStep; 
	else if @BillType ='purchaseplan'
		select @RowCount = count(*) from purchaseplandetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType ='purchasecontract'
		select @RowCount = count(*) from purchasecontractdetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType ='storeinrefuse'
		select @RowCount = count(*) from storeinrefusedetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType ='comrecheck'
		select @RowCount = count(*) from comrecheckdetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType ='storemove'
		select @RowCount = count(*) from storemovedetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;
	else if @BillType ='salescommission'
		select @RowCount = count(*) from SalesCommissiondetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;
	else if @BillType ='commaintain'
		select @RowCount = count(*) from ComMaintainDetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;
	else if @BillType = 'disposal'
		select @RowCount = count(*) from storeadjustdetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType = 'destroy'
		select @RowCount = count(*) from storeadjustdetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType ='storagemove'
		select @RowCount = count(*) from storagemove where billno = @BillNo and isnull(Audit,-1) =@maxStep;
	else if @BillType ='requisition'
		select @RowCount = count(*) from storemovedetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;
	else if @BillType ='purchaseorder'
		select @RowCount = count(*) from PurchaseOrderdetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;  
	else if @BillType ='poreceive'
		select @RowCount = count(*) from POReceivedetail where billno = @BillNo and Row_Id = @row_id and isnull(Audit,-1) =@maxStep;
	else if @BillType ='acdepartmentpayin' or @BillType ='acdepartmentpayout' 
		select @RowCount = count(*) from AcDepartmentPay where billno = @BillNo and isnull(Audit,-1) =@maxStep;  
 
	select @ret = case when @RowCount >=1 then 1 else -1 end;

return @ret
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_InuseUpdate]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_InuseUpdate](@BillType varchar(128),@BillNo nvarchar(32),@row_id nvarchar(32))
returns int
as
BEGIN
	declare  @ret int,@IsEnd int
	   
	select @IsEnd = dbo.fn_IsAuditEnd(@BillType,@BillNo,@row_id)

	select @ret = case when @IsEnd >=1 then 0 else 1 end;

return @ret
END
GO
/****** Object:  View [dbo].[v_bill_storeout]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[v_bill_storeout]  
as      
select BillNo,OrderType,b.DeptCode,b.EmpCode,CustAccount,ThisDate,b.DocPerson,DocStatus,IsPayed,PayWayID,deliveryman,b.commen,cust_name = c.myname,  
 b.MemberNo,receivedAmount,changeAmount,b.score,ShippingType,Emergency,c.telephone,c.Contact,c.Address,b.custempcode,b.HaveInvoice,b.ReceiveAddress,  
 deptBa = dbo.fn_GetDeptCredit(b.deptcode),b.custReceiver,b.NeedContract,b.NeedFirstVendor,b.NeedFirstCom,b.realEmpName,b.isPresent  
from  storeout b,customer c  
where   b.CustAccount = c.Account
GO
/****** Object:  View [dbo].[v_acreceive_storeout]    Script Date: 08/18/2017 14:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_acreceive_storeout]
as 	   
select companyname,billno,thisdate,docPerson,CustAccount,MemberNo,MemberName,ShippingType,Emergency,ordertype,commen,docstatus,DeptCode,DeptName,
payStatus,PayWayID,PayWayName,PayWaySum,custName,Manager,custAddress,telePhone,EmpCode,EmpName,Notes,ComCatID,
ComCatName,AreaCatID,printcount,AreaCatName,quantity,pricetaxed,amounttaxed,gdEmpCode,gdEmpName,discount,
quantity_refunded,batchno,validity,prodate,Row_Id,payAmount,IsPayed,PayFlag,inuse,inspResult,InvoiceAmount,InvoiceFlag,
HaveInvoice,RfdReason,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode,Warehouse_Code,LocID,whName,LocName,isBaseMed,
isEmc,comid,comcode,comname,manufacturer,origin,specification,unit,barcode,comIndex,Auth_Code,PiecePacking,color,
taxout,Outerpacking,price1,price2,medType,PackNo,BarPrint,isCustReceipt,CustReceiptDate,CustReceiptRecorder,
InPriceTaxed,CostsTaxed,storeinprice,costs,CashierPerson,CashierDate,CashierRemark,InspPerson,InspDate,InspRemark,
SalesPerson,SalesDate,SalesRemark,WhPerson,WhDate,WhRemark,CheckPerson,CheckDate,CheckRemark,CheckPerson2,CheckDate2,
CheckRemark2,isPrinted,NeedContract,NeedFirstVendor,NeedFirstCom,custempcode,custempname,custReceiver,ReceiveAddress,
settlePrice,SettleAmount,realEmpName,isPresent
 from v_print_storeout
GO
/****** Object:  StoredProcedure [dbo].[sp_getRtPrice]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_getRtPrice] (@billno varchar(32),@Row_Id nvarchar(32),@comid varchar(32))
as
begin
	begin transaction 
	declare @deptcode varchar(32),@memberno varchar(32),@RoleID varchar(32),@price numeric(18,4)
 
	declare cr_cur cursor for  
	select RoleID from DeptPriceRole a,storeout b 
	where a.deptcode = b.deptcode and b.billno = @billno and getdate() between begindate and dateadd(dd,1,enddate)
		and a.isStop = 0 order by seqNo;

	open cr_cur 

	fetch next from cr_cur into @RoleID 
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		select @price = dbo.fn_getRtPrice(@billno,@Row_Id,@comid,@RoleID);
		if @price >0 
		begin
			update storeoutdetail set priceroleid =@RoleID where billno = @billno and row_id= @Row_Id;
			if @@error<>0  
		           begin
			             raiserror('01-更新销售单明细表失败,数据库返回代码:%d',16,1,@@error)
			             rollback transaction; 
			             return 
		           end		
		end 
		fetch next from cr_cur into @RoleID
	end
	close cr_cur
	deallocate cr_cur    
   	commit transaction;	
	select @price;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_firstent_check]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_firstent_check] (@BillType varchar(128),@BillNo nvarchar(32) )
as
begin
begin tran;
	declare @isAuditEnd int,@rowcount int,@MaxId varchar(32)

	select @BillType = UPPER(@BillType);

	--根据单据类型不同 
	if @BillType = 'FIRSTVENDOR'
	begin 
		select @isAuditEnd = dbo.fn_IsAuditEnd(@BillType,@BillNo,1);  
		if  @isAuditEnd <0 --如果未流转完毕,直接退出
		begin
			goto toEnd;
		end
		select @rowcount = count(*) from vendor where myname = (select min(myname) from firstVendor where billno = @billno);
		if @rowcount =0
		begin
			select @MaxId = isnull(max(cast(account as numeric(18,0))),0) +1 from vendor where isnumeric(Account) =1;
			
			insert into Vendor (Account,MyName,FindName,Manager,Address,Contact,
				VendorCatID,AreaCatID,ApAmount,commen,businessLicense,
				busiLicExp,busiLicCheckDate,businessScope,licence,licenceExp,licenceScope,fax)
			select @MaxId,MyName,FindName,Manager,Address,Contact,
				VendorCatID,null,0,commen,businessLicense,
				busiLicExp,null,businessScope,licence,licenceExp,licenceScope,fax
			 from FirstVendor where billno = @billno;
			if @@error <> 0 
			 begin
				raiserror('生成供应商档案失败:单据号:%s',16,1,@BillNo)
				rollback tran;
				return
			 end  	
		end	

		update FirstVendor set inuse = 0,supAccount=@MaxId where billno = @billno;
		if @@error <> 0 
		 begin
			raiserror('更改单据标志失败:单据号:%s',16,1,@BillNo)
			rollback tran;
			return
		 end 	
	end
	if @BillType = 'FIRSTCOM'
	begin 
		select @isAuditEnd = dbo.fn_IsAuditEnd(@BillType,@BillNo,1);  
		if  @isAuditEnd <0 --如果未流转完毕,直接退出
		begin
			goto toEnd;
		end
		select @rowcount = count(*) from commodity a,FirstCommodity b
		 where a.comname = b.comname and a.ORIGIN = b.ORIGIN and a.specification = b.specification and a.unit = b.unit and b.billno =@BillNo;
		if @rowcount =0
		begin
			select @MaxId = isnull(max(cast(ComID as numeric(18,0))),0) +1 from commodity where isnumeric(ComID) =1;
			
			insert into commodity (ComID,COMNAME,ORIGIN,COMINDEX,SPECIFICATION,UNIT,ComCatID,name_chem,auth_code,authExp,standardClass,isBaseMed,
				PRESCRIPTION,medType,medUsage,storeCondition,contraindication,labelNotes,detailNotes,manufacturer,trademark,
				GmpNo,GmpExp,CreatePurpose,insp_item,insp_standard,character,PiecePacking,Outerpacking,Innerpacking,barcode)
			select @MaxId,COMNAME,ORIGIN,COMINDEX,SPECIFICATION,UNIT,ComCatID,name_chem,auth_code,authExp,standardClass,isBaseMed,
				PRESCRIPTION,medType,medUsage,storeCondition,contraindication,labelNotes,detailNotes,manufacturer,trademark,
				GmpNo,GmpExp,CreatePurpose,insp_item,insp_standard,character,PiecePacking,Outerpacking,Innerpacking,null
			 from FirstCommodity where billno = @billno;
			if @@error <> 0 
			 begin
				raiserror('生成供应商档案失败:单据号:%s',16,1,@BillNo)
				rollback tran;
				return
			 end  	
		end		
		update FirstCommodity set inuse = 0,ComID=@MaxId where billno = @billno;
		if @@error <> 0 
		 begin
			raiserror('更改单据标志失败:单据号:%s',16,1,@BillNo)
			rollback tran;
			return
		 end 
	end 
	if @BillType = 'FIRSTCUSTOMER'
	begin 
		select @isAuditEnd = dbo.fn_IsAuditEnd(@BillType,@BillNo,1);  
		if  @isAuditEnd <0 --如果未流转完毕,直接退出
		begin
			goto toEnd;
		end
		select @rowcount = count(*) from customer where myname = (select min(myname) from firstcustomer where billno = @billno);
		if @rowcount =0
		begin
			select @MaxId = isnull(max(cast(account as numeric(18,0))),0) +1 from customer where isnumeric(Account) =1;
			
			insert into customer (Account,MyName,FindName,Manager,Address,Contact,
				CustCatID,AreaCatID,ArAmount,commen,businessLicense,
				busiLicExp,businessScope,licence,licenceExp,licenceScope,fax,province,city,county)
			select @MaxId,MyName,FindName,Manager,Address,Contact,
				CustCatID,null,0,commen,businessLicense,
				busiLicExp,businessScope,licence,licenceExp,licenceScope,fax,province,city,county
			 from Firstcustomer where billno = @billno;
			if @@error <> 0 
			 begin
				raiserror('生成客户档案失败:单据号:%s',16,1,@BillNo)
				rollback tran;
				return
			 end  	
		end	

		update Firstcustomer set inuse = 0,custAccount=@MaxId where billno = @billno;
		if @@error <> 0 
		 begin
			raiserror('更改单据标志失败:单据号:%s',16,1,@BillNo)
			rollback tran;
			return
		 end 	
	end
 

  	toEnd:
commit tran;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Credit_Limit]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_Credit_Limit] (@BillType varchar(128),@BillNo nvarchar(32),@Row_Id nvarchar(32))
as
begin
	declare @sql nvarchar(4000),@RowCount numeric(18,0),@CreditLine numeric(18,2),@CreditTerm int,@NotPayAmt numeric(18,2),@account varchar(32)

	select @BillType=UPPER(@BillType),@CreditLine = isnull(CreditLine,-1),@CreditTerm = isnull(CreditTerm,-1),@account=b.CustAccount
	from customer a,storeout b where a.Account = b.CustAccount
	and b.billno=@BillNo;

	if @CreditLine < 0 and @CreditTerm < 0 
	begin
		return;
	end
 	
	--先判断账期
	if @CreditTerm >= 0 
	begin
		select @RowCount =count(*) from v_print_storeout 
		where CustAccount=@account and getdate() > dateadd(dd,@CreditTerm,thisdate) and IsPayed <> 1 and PayFlag <> 2;
		if @RowCount >0
		begin
			raiserror('应收账款超出账期!单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id) 
			return
		end 
	end

	--后判断信用额度
	if @CreditTerm >= 0 
	begin
		select @NotPayAmt =sum(case when dbo.fn_SalePara('AcBySettlePrice') = 0 then amounttaxed  else SettleAmount end - isnull(PayAmount,0)) 
		from v_print_storeout where CustAccount=@account  and IsPayed <> 1 and PayFlag <> 2;
		if @CreditTerm < @NotPayAmt
		begin
			raiserror('应收账款超出信用额度!单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id) 
			return
		end 
	end 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_bill_uncheck]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_bill_uncheck] (@BillType varchar(128),@BillNo nvarchar(32))
as
begin
begin tran;
	declare @sql nvarchar(4000),@maxinvseq numeric(18,0) 
	declare @tablename varchar(32),@Row_Id nvarchar(32),@rowcount int,@counter int

	select @BillType = UPPER(@BillType);

	--根据单据类型不同，获取行号和行数
	select @sql = case 
		when @BillType='STOREIN' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeindetail where billno = ''' +@BillNo+''''
		when @BillType='STOREINRFD' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeindetail where billno = ''' +@BillNo+''''
		when @BillType='STOREOUT' or @BillType='STOREOUTRETAIL' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeoutdetail where billno = ''' +@BillNo+''''
		when @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeoutdetail where billno = ''' +@BillNo+''''
		when @BillType='STOREOVER' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeadjustdetail where billno = ''' +@BillNo+''''
		when @BillType='STORESHORT' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeadjustdetail where billno = ''' +@BillNo+''''
		when @BillType='STOREINIT' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeindetail where billno = ''' +@BillNo+''''
		else null end;
 
	execute sp_executesql @Sql,N'@Row_Id nvarchar(32) OUTPUT,@rowcount int output',@Row_Id OUTPUT,@rowcount output;
 
	set @counter = 1;
        while @counter <= @rowcount
	begin 
		if @BillType='STOREIN' 
		begin
			exec sp_inventory_dec @BillType,@BillNo,@Row_Id;
		end
		ELSE if @BillType='STOREINIT' 
		begin
			exec sp_inventory_dec @BillType,@BillNo,@Row_Id;
		end
		else if @BillType='STOREINRFD'
		begin 
			exec sp_inventory_MinusQT @BillType,@BillNo,@Row_Id,1; 
		end
		else if @BillType='STOREOUT' or @BillType='STOREOUTRETAIL'
		begin 
			exec sp_inventory_MinusQT @BillType,@BillNo,@Row_Id,1;			 
		end
		else if @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD'
		begin
			exec sp_inventory_dec @BillType,@BillNo,@Row_Id;
		end
		else if @BillType='STOREOVER' 
		begin
			exec sp_inventory_dec @BillType,@BillNo,@Row_Id;
		end
		else if @BillType='STORESHORT'
		begin
			exec sp_inventory_MinusQT @BillType,@BillNo,@Row_Id,1
		end
		if @@error <> 0 
		 begin
			raiserror('增加库存失败:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id)
			rollback tran;
			return
		 end  	

		
		--根据单据类型不同获取下一行 
		select @sql = case 
			when @BillType='STOREIN' then
				'select @Row_Id = min(Row_Id) from storeindetail where billno = ''' +@BillNo+''' and Row_Id >'+@Row_Id
			when @BillType='STOREINRFD' then
				'select @Row_Id = min(Row_Id) from storeindetail where billno = ''' +@BillNo+''' and Row_Id >'+@Row_Id
			when @BillType='STOREOUT' or @BillType='STOREOUTRETAIL' then
				'select @Row_Id = min(Row_Id) from storeoutdetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id
			when @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD' then
				'select @Row_Id = min(Row_Id) from storeoutdetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id
			when @BillType='STOREOVER' then
				'select @Row_Id = min(Row_Id) from storeadjustdetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id
			when @BillType='STORESHORT' then
				'select @Row_Id = min(Row_Id) from storeadjustdetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id
			when @BillType='STOREINIT' then
				'select @Row_Id = min(Row_Id) from storeindetail where billno = ''' +@BillNo+''' and Row_Id >'+@Row_Id
			else null end;
	 
		execute sp_executesql @Sql,N'@Row_Id nvarchar(32) OUTPUT',@Row_Id OUTPUT;
	set @counter =@counter + 1; 
	end
commit tran;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_bill_check]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_bill_check] (@BillType varchar(128),@BillNo nvarchar(32),@flag int)
as
begin
begin tran;
	declare @sql nvarchar(4000),@maxinvseq numeric(18,0),@isAuditEnd int
	declare @tablename varchar(32),@Row_Id nvarchar(32),@rowcount int,@counter int

	select @BillType = UPPER(@BillType);

	--根据单据类型不同，获取行号和行数
	select @sql = case 
		when @BillType='STOREIN' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeindetail where billno = ''' +@BillNo+''' and  inuse <>0'
		when @BillType='STOREINRFD' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeindetail where billno = ''' +@BillNo+''' and  inuse <>0'
		when @BillType='STOREOUT' or @BillType='STOREOUTRETAIL' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeoutdetail where billno = ''' +@BillNo+''' and  inuse <>0'
		when @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeoutdetail where billno = ''' +@BillNo+''' and  inuse <>0'
		when @BillType='STOREOVER' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeadjustdetail where billno = ''' +@BillNo+''' and  inuse <>0'
		when @BillType='STORESHORT' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeadjustdetail where billno = ''' +@BillNo+''' and  inuse <>0'
		when @BillType='STOREINIT' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeindetail where billno = ''' +@BillNo+''' and  inuse <>0'
		when @BillType='STOREMOVE' or @BillType='REQUISITION' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storemovedetail where billno = ''' +@BillNo+''' and  inuse <>0'
		when @BillType='COMRECHECK' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from COMRECHECKdetail where billno = ''' +@BillNo+''' and  inuse <>0'
		when @BillType='DISPOSAL' then
			'select @Row_Id = min(Row_Id),@rowcount=count(*) from storeadjustdetail where billno = ''' +@BillNo+''' and  inuse <>0'
		when @BillType='STORAGEMOVE' then
			'select @Row_Id = 1,@rowcount=count(*) from STORAGEMOVE where billno = ''' +@BillNo+''' and  inuse <>0' 
		else null end;
 
	execute sp_executesql @Sql,N'@Row_Id nvarchar(32) OUTPUT,@rowcount int output',@Row_Id OUTPUT,@rowcount output;
 
	set @counter = 1;
        while @counter <= @rowcount
	begin
		select @isAuditEnd = dbo.fn_IsAuditEnd(@BillType,@BillNo,@Row_Id); 
		if @flag = 0 and @isAuditEnd <0 --如果未流转完毕,直接进入下一循环
		begin
			goto toNext;
		end
		if @BillType='STOREIN' 
		begin
			exec sp_inventory_add @BillType,@BillNo,@Row_Id;
		end
		ELSE if @BillType='STOREINIT' 
		begin
			exec sp_inventory_add @BillType,@BillNo,@Row_Id;
		end
		else if @BillType='STOREINRFD'
		begin
			if @flag = 0 
			begin
				exec sp_inventory_MinusQT @BillType,@BillNo,@Row_Id,@flag;
			end
			else if @flag = 1 
			begin
				exec sp_inventory_MinusDQ @BillType,@BillNo,@Row_Id,@flag;
			end
		end
		else if @BillType='STOREOUT'or @BillType='STOREOUTRETAIL'
		begin
			if @flag = 0 
			begin
				exec sp_inventory_MinusQT @BillType,@BillNo,@Row_Id,@flag;
			end
			else if @flag = 1 
			begin
				exec sp_inventory_MinusDQ @BillType,@BillNo,@Row_Id,@flag;
			end
		end
		else if @BillType='STOREOUTRFD' or @BillType='STOREOUTRETAILRFD'
		begin
			exec sp_inventory_add @BillType,@BillNo,@Row_Id;
		end
		else if @BillType='STOREOVER' 
		begin
			exec sp_inventory_add @BillType,@BillNo,@Row_Id;
		end
		else if @BillType='STORESHORT'
		begin
			if @flag = 0 
			begin
				exec sp_inventory_MinusQT @BillType,@BillNo,@Row_Id,@flag;
			end
			else if @flag = 1 
			begin
				exec sp_inventory_MinusDQ @BillType,@BillNo,@Row_Id,@flag;
			end
		end
		else if @BillType='STOREMOVE' or @BillType='REQUISITION' 
		begin
			if @flag = 0 
			begin
				exec sp_inventory_MinusQT @BillType,@BillNo,@Row_Id,@flag;--先减少供方库存
				exec sp_inventory_add @BillType,@BillNo,@Row_Id;--增加需方库存
			end
			else if @flag = 1 
			begin
				exec sp_inventory_MinusDQ @BillType,@BillNo,@Row_Id,@flag;
			end
		end
		else if @BillType='COMRECHECK'
		begin
			if @flag = 0 
			begin
				exec sp_inventory_MinusQT @BillType,@BillNo,@Row_Id,@flag;--先减少库存
				exec sp_inventory_add @BillType,@BillNo,@Row_Id;--增加不合格库存
			end
			else if @flag = 1 
			begin
				exec sp_inventory_MinusDQ @BillType,@BillNo,@Row_Id,@flag;
			end
		end
		else if @BillType='DISPOSAL'
		begin
			if @flag = 0 
			begin
				exec sp_inventory_MinusQT @BillType,@BillNo,@Row_Id,@flag;
			end
			else if @flag = 1 
			begin
				exec sp_inventory_MinusDQ @BillType,@BillNo,@Row_Id,@flag;
			end
		end
		else if @BillType='STORAGEMOVE'
		begin
			if @flag = 0 
			begin
				exec sp_inventory_MinusQT @BillType,@BillNo,@Row_Id,@flag;--先减少供方库存
				exec sp_inventory_add @BillType,@BillNo,@Row_Id;--增加需方库存
			end
			else if @flag = 1 
			begin
				exec sp_inventory_MinusDQ @BillType,@BillNo,@Row_Id,@flag;
			end
		end
		if @@error <> 0 
		 begin
			raiserror('增加库存失败:单据类型:%s,单据号:%s,行号:%s',16,1,@BillType,@BillNo,@Row_Id)
			rollback tran;
			return
		 end  	

		
		--根据单据类型不同获取下一行
	    toNext:
		select @sql = case 
			when @BillType='STOREIN' then
				'select @Row_Id = min(Row_Id) from storeindetail where billno = ''' +@BillNo+''' and Row_Id >'+@Row_Id + ' and  inuse <>0'
			when @BillType='STOREINRFD' then
				'select @Row_Id = min(Row_Id) from storeindetail where billno = ''' +@BillNo+''' and Row_Id >'+@Row_Id + ' and  inuse <>0'
			when @BillType='STOREOUT'or @BillType='STOREOUTRETAIL' then
				'select @Row_Id = min(Row_Id) from storeoutdetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id + ' and  inuse <>0'
			when @BillType='STOREOUTRFD'or @BillType='STOREOUTRETAILRFD' then
				'select @Row_Id = min(Row_Id) from storeoutdetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id + ' and  inuse <>0'
			when @BillType='STOREOVER' then
				'select @Row_Id = min(Row_Id) from storeadjustdetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id + ' and  inuse <>0'
			when @BillType='STORESHORT' then
				'select @Row_Id = min(Row_Id) from storeadjustdetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id + ' and  inuse <>0'
			when @BillType='STOREINIT' then
				'select @Row_Id = min(Row_Id) from storeindetail where billno = ''' +@BillNo+''' and Row_Id >'+@Row_Id + ' and  inuse <>0'
			when @BillType='STOREMOVE' or @BillType='REQUISITION' then
				'select @Row_Id = min(Row_Id) from storemovedetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id + ' and  inuse <>0'
			when @BillType='COMRECHECK' then
				'select @Row_Id = min(Row_Id) from COMRECHECKdetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id + ' and  inuse <>0'
			when @BillType='DISPOSAL' then
				'select @Row_Id = min(Row_Id) from storeadjustdetail where billno = ''' +@BillNo+'''and Row_Id >'+@Row_Id + ' and  inuse <>0'
			else null end;
	 
		execute sp_executesql @Sql,N'@Row_Id nvarchar(32) OUTPUT',@Row_Id OUTPUT;
	set @counter =@counter + 1; 
	end
commit tran;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_autoRequisition]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_autoRequisition] (@UID varchar(32),@planBillNo varchar(32))
as
begin
	begin transaction 
	declare @inventoryid numeric(18,0),@reqquan numeric(28,4),@quan numeric(18,4),@docquan numeric(18,4),@comname varchar(64),@ComId varchar(32),@price numeric(18,4)
	declare @gdEmp varchar(32),@Row_Id int,@sumQuan numeric(18,4)
 

	declare @billno  varchar(32),@reqLocId varchar(32),@reqWhCode varchar(32),@supDeptCode varchar(32),@reqDeptCode varchar(32)
	 
	select @supDeptCode = isnull(Dept_code,(select min(dept_code) from department)) from employee where logid = @UID;
	select @billno = dbo.fn_Newbillno('Requisition',getdate());
	select @reqDeptCode = DeptCode from RequestPlan where billno = @planBillNo;
	select @reqWhCode =MIN(warehouse_code)  From DeptWh where dept_code = @reqDeptCode;
	select @reqLocId = min(LocID) from goodsLocation where warehouse_code = @reqWhCode;
 
	insert into StoreMove(BillNo,DeptCode,ReqDeptCode,Commen,OrderType,DocPerson,DocStatus)
	values(@billno,@supDeptCode,@reqDeptCode,'自动配送单据',2,@UID,1);
	if @@error<>0  
         begin
             raiserror('1-生成移库单主表失败,数据库返回代码:%d',16,1,@@error)
             rollback transaction; 
             return 
         end 
	 -----------------------------------------处理明细-------------------------------------------------
	DECLARE cr_reqquan CURSOR FOR
	select ComId,quantity - isnull(supQuantity,0)
	 from  RequestPlanDetail where billno = @planBillNo and quantity > isnull(supQuantity,0);

	OPEN cr_reqquan 

	FETCH NEXT FROM cr_reqquan
	INTO @ComId,@reqquan 

	select @Row_Id = 1;
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		---------------------------------------------取可供数量----------------------------------------------------
		declare cr_supquan cursor for
		
		select invseqno,docquantity from inventory where docquantity >0 
		  	and ComId = @ComId and warehouse_code in (select  warehouse_code  From DeptWh where dept_code = @reqDeptCode)  order by validity,docquantity; 
		
		open cr_supquan 
	
		fetch next from cr_supquan into @inventoryid,@docquan 
		WHILE @@FETCH_STATUS = 0
		BEGIN
			if @reqquan >0
			begin
				if @docquan <= @reqquan 
				begin
				     select @quan  = @docquan;
				end
				else
				begin
				 	select @quan  = @reqquan;
				end   
	
				INSERT INTO storemovedetail ( BillNo,Row_Id,ComId,Quantity,PriceTaxed,AmountTaxed,WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,
						InPriceTaxed,StoreinPrice,CostsTaxed,Costs,SupAccount,StoreinBill,StoreinRow,InvCode,InDate,TaxOut,reqWhCode,reqLocId,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)  
				 	select @billno,dbo.fn_NewBillRowId('StoreMovedetail',@billno),a.ComId,@quan,@price,@quan*@price,
						WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,PriceTaxed,StoreinPrice,@quan*PriceTaxed,@quan*StoreinPrice,a.SupAccount,StoreinBill,StoreinRow,
						InvCode,InDate,b.TaxOut,@reqWhCode,@reqLocId,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
			                from inventory a,commodity b where a.ComId = b.ComId and a. invseqno = @inventoryid;
				   if @@error<>0  
			           begin
				             raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
				             rollback transaction; 
				             return 
			           end				 
	
				exec sp_inventory_MinusDQ 'REQUISITION',@billno,@Row_Id,0; 
				if @@error<>0  
			           begin
				             raiserror('4-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
				             rollback transaction; 
				             return 
			           end	
	 
				select @sumQuan  = @sumQuan + @quan; 
				select @reqquan = @reqquan - @quan;
				select @Row_Id =(max(Row_Id) + 1) from storemovedetail where billno=@billno;	 
			end			
			
			fetch next from cr_supquan into @inventoryid,@docquan
		end
		close cr_supquan
		deallocate cr_supquan 
 
	-------------------------------------------------------------------------------------------------	
	   FETCH NEXT FROM cr_reqquan
	   INTO @ComId,@reqquan
	END
	
	CLOSE cr_reqquan
	DEALLOCATE cr_reqquan
-----------------------------------------处理明细-------------------------------------------------
 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_automovestore]    Script Date: 08/18/2017 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_automovestore] (@UID varchar(32),@supWhCode varchar(32),@reqWhCode varchar(32))
as
begin
	begin transaction 
	declare @inventoryid numeric(18,0),@reqquan numeric(28,4),@quan numeric(18,4),@docquan numeric(18,4),@comname varchar(64),@ComId varchar(32),@price numeric(18,4)
	declare @gdEmp varchar(32),@Row_Id int,@sumQuan numeric(18,4)
 

	declare @billno  varchar(32),@deptCode varchar(32),@reqLocId varchar(32)
	if @supWhCode = @reqWhCode
         begin
             raiserror('0-补货失败,需方仓库不能与供方仓库为同一仓库，数据库返回代码:%d',16,1,@@error)
             rollback transaction; 
             return 
         end 

	select @deptCode = isnull(Dept_code,(select min(dept_code) from department)) from employee where logid = @UID;
	select @billno = dbo.fn_Newbillno('StoreMove',getdate());
	select @reqLocId = min(LocID) from goodsLocation where warehouse_code = @reqWhCode;
 
	insert into StoreMove(BillNo,DeptCode,Commen,OrderType,DocPerson,DocStatus)
	values(@billno,@deptCode,'自动补货单据',1,@UID,1);
	if @@error<>0  
         begin
             raiserror('1-生成移库单主表失败,数据库返回代码:%d',16,1,@@error)
             rollback transaction; 
             return 
         end 
	 -----------------------------------------处理明细-------------------------------------------------
	DECLARE cr_reqquan CURSOR FOR
	select c.ComId,isnull(c.PiecePacking,2) - isnull(a.amt,0)
	 from  commodity c left outer join 
		(select ComID,sum(isnull(quantity,0)) as amt from inventory where warehouse_code = @reqWhCode group by ComId) a on (a.ComID = c.ComID);

	OPEN cr_reqquan 

	FETCH NEXT FROM cr_reqquan
	INTO @ComId,@reqquan 

	select @Row_Id = 1;
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		---------------------------------------------取可供数量----------------------------------------------------
		declare cr_supquan cursor for
		
		select invseqno,docquantity from inventory where docquantity >0 
		  	and ComId = @ComId and warehouse_code = @supWhCode order by validity,docquantity; 
		
		open cr_supquan 
	
		fetch next from cr_supquan into @inventoryid,@docquan 
		WHILE @@FETCH_STATUS = 0
		BEGIN
			if @reqquan >0
			begin
				if @docquan <= @reqquan 
				begin
				     select @quan  = @docquan;
				end
				else
				begin
				 	select @quan  = @reqquan;
				end   
	
				INSERT INTO storemovedetail ( BillNo,Row_Id,ComId,Quantity,PriceTaxed,AmountTaxed,WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,
						InPriceTaxed,StoreinPrice,CostsTaxed,Costs,SupAccount,StoreinBill,StoreinRow,InvCode,InDate,TaxOut,reqWhCode,reqLocId,inuse,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)  
				 	select @billno,dbo.fn_NewBillRowID('StoreMovedetail',@billno),a.ComId,@quan,@price,@quan*@price,
						WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,PriceTaxed,StoreinPrice,@quan*PriceTaxed,@quan*StoreinPrice,a.SupAccount,StoreinBill,StoreinRow,
						InvCode,InDate,b.TaxOut,@reqWhCode,@reqLocId,1,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
			                from inventory a,commodity b where a.ComId = b.ComId and a. invseqno = @inventoryid;
				   if @@error<>0  
			           begin
				             raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
				             rollback transaction; 
				             return 
			           end				 
	
				exec sp_inventory_MinusDQ 'STOREMOVE',@billno,@Row_Id,0; 
				if @@error<>0  
			           begin
				             raiserror('4-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
				             rollback transaction; 
				             return 
			           end	
	 
				select @sumQuan  = @sumQuan + @quan; 
				select @reqquan = @reqquan - @quan;
				select @Row_Id =(max(Row_Id) + 1) from StoreOutDetail where billno=@billno;	 
			end			
			
			fetch next from cr_supquan into @inventoryid,@docquan
		end
		close cr_supquan
		deallocate cr_supquan 
 
	-------------------------------------------------------------------------------------------------	
	   FETCH NEXT FROM cr_reqquan
	   INTO @ComId,@reqquan
	END
	
	CLOSE cr_reqquan
	DEALLOCATE cr_reqquan
-----------------------------------------处理明细-------------------------------------------------
 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_guideshopping_nokc]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[sp_sales_guideshopping_nokc] (@billno varchar(32),@comid varchar(32),@reqquan numeric(18,4),@price numeric(18,4),@gdEmp varchar(32))  
as  
begin  
 begin transaction   
 declare @rowid int,@totalquan numeric(18,4)  
  
 select @rowid =isnull(min(Row_Id),0) from StoreOutDetail where billno=@billno and comid = @comid and isPresent=0;   
  
 if @rowid >0   
 begin  
  update StoreOutDetail set Quantity = Quantity + @reqquan,AmountTaxed =( Quantity + @reqquan)*PriceTaxed  where billno=@billno and Row_Id = @rowid;  
  if @@error<>0    
            begin  
               raiserror('1-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)  
               rollback transaction;   
               return   
            end   
 end  
 else  
 begin  
  select @rowid =(isnull(max(Row_Id),0) + 1) from StoreOutDetail where billno=@billno;   
  -----------------------------------------处理明细-------------------------------------------------  
      
    
  INSERT INTO StoreOutDetail ( BillNo,row_id,COMID,Quantity,PriceTaxed,AmountTaxed,gdEmpCode)    
    select @billno,@rowid,b.comid,@reqquan,@price,@reqquan*@price,@gdEmp   
                 from  commodity b where b.comid = @comid;  
     if @@error<>0    
            begin  
               raiserror('2-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)  
               rollback transaction;   
               return   
            end   
 end      
  
 select @totalquan = Quantity from StoreOutDetail where billno=@billno and row_id = @rowid;  
 if @totalquan > 0   
 begin  
  exec sp_salesorder_present @billno,@comid,@totalquan,@gdEmp ;   
 end   
-----------------------------------------处理明细-------------------------------------------------  
   
   commit transaction;  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_present]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[sp_sales_present] (@billno varchar(32),@comid varchar(32),@reqquan numeric(18,4),@gdEmp varchar(32))  
as  
begin  
 declare @rowid int,@perSLquan numeric(18,2),@presentQuan numeric(18,2),@prstQuan numeric(18,2),@curQuan numeric(18,2)  
 declare @inventoryid numeric(18,0),@quan numeric(18,4),@docquan numeric(18,4),@comname varchar(64)  
 select @perSLquan=isnull(perSLquan,0),@presentQuan=isnull(presentQuan,0) from commodity where comid = @comid;  
        if @perSLquan > 0 and @presentQuan > 0  
 begin  
  select @prstQuan = FLOOR((@reqquan ) /@perSLquan)* @presentQuan ;  
 end  
 else return;   
  
 if @prstQuan <=0 return;
 --无库存赠品处理  
 declare @invseq  varchar(32)  
 select @invseq = min(InvSeqNo) from storeoutdetail where billno = @BillNo and comid = @comid and isPresent<>1;  
 if @invseq is null     
 begin  
  exec sp_sales_present_nokc @billno,@comid,@reqquan,@gdEmp;  
  return;  
 end  
  
 select @curQuan =isnull(sum(quantity),0) from storeoutdetail where billno=@billno and comid = @comid and isPresent=1;    
 if @prstQuan = @curQuan return;  
 set @prstQuan = @prstQuan - @curQuan;   
   
 begin transaction   
 if @prstQuan < 0   
 begin  
  ---------------------------------------------取原有销售记录----------------------------------------------------  
  declare cr_cur cursor for   
  select Row_Id  from StoreOutDetail where billno=@billno and comid = @comid and isPresent=1 order by Row_Id desc;   
    
  open cr_cur   
   
  fetch next from cr_cur into @rowid   
  WHILE @@FETCH_STATUS = 0  
  BEGIN  
   if @prstQuan <0  
   begin  
    select @inventoryid = invseqno,@quan=quantity from storeoutdetail where billno = @billno and row_id = @rowid;   
       
    if @quan >= abs(@prstQuan)   
    begin  
        set @quan = abs(@prstQuan);  
    end    
    if @quan >0  
    begin          
       update inventory set docquantity = docquantity + @quan where invseqno =@inventoryid;  
       if @@error<>0    
              begin  
                 raiserror('1-生成销售订单明细表赠品失败,数据库返回代码:%d',16,1,@@error)  
                 rollback transaction;   
                 return   
              end          
       update storeoutdetail set quantity = quantity - @quan,amounttaxed = pricetaxed * (quantity - @quan),  
      costs = (quantity - @quan)*storeinprice,coststaxed = (quantity - @quan)*InpriceTaxed  
      where billno = @billno and row_id = @rowid;  
       if @@error<>0    
              begin  
                 raiserror('2-生成销售订单明细表赠品失败,数据库返回代码:%d',16,1,@@error)  
                 rollback transaction;   
                 return   
              end       
     end  
    select @prstQuan = @prstQuan + @quan;    
   end   
   else  
   begin  
    commit transaction;   
    return   
   end    
     
   fetch next from cr_cur into @rowid  
  end  
  close cr_cur  
  deallocate cr_cur    
-----------------------------------------处理明细-------------------------------------------------  
 end  
 else  
 begin  
  ---------------------------------------------取原有销售记录----------------------------------------------------  
  declare cr_cur cursor for   
  select Row_Id  from StoreOutDetail where billno=@billno and comid = @comid and isPresent=1 order by Row_Id;   
    
  open cr_cur   
   
  fetch next from cr_cur into @rowid   
  WHILE @@FETCH_STATUS = 0  
  BEGIN  
   if @prstQuan >0  
   begin  
    select @inventoryid = invseqno from storeoutdetail where billno = @billno and row_id = @rowid;  
    select @docquan=docquantity from inventory where invseqno =@inventoryid and  docquantity >0 and comid = @comid;   
      
    set @quan=0;  
    if  @docquan <= @prstQuan   
    begin  
        set @quan = @docquan;  
    end  
    else if @docquan > @prstQuan   
    begin  
     set @quan = @prstQuan;  
    end  
    if @quan >0  
    begin          
       update inventory set docquantity = docquantity - @quan where invseqno =@inventoryid;  
       if @@error<>0    
              begin  
                 raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)  
                 rollback transaction;   
                 return   
              end          
     update storeoutdetail set quantity = quantity + @quan,amounttaxed = pricetaxed * (quantity + @quan),  
      costs = (quantity + @quan)*storeinprice,coststaxed = (quantity + @quan)*InpriceTaxed  
      where billno = @billno and row_id = @rowid;  
       if @@error<>0    
              begin  
                 raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)  
                 rollback transaction;   
                 return   
              end       
     end  
    select @prstQuan = @prstQuan - @quan;    
   end   
   else  
   begin  
    commit transaction;   
    return   
   end    
     
   fetch next from cr_cur into @rowid  
  end  
  close cr_cur  
  deallocate cr_cur    
 -----------------------------------------处理明细-------------------------------------------------  
   if @prstQuan <= 0 goto theend;  
  ---------------------------------------------取可供数量----------------------------------------------------  
  declare cr_supquan cursor for  
    
  select invseqno,docquantity from inventory where docquantity >0   
     and comid = @comid order by validity,docquantity;   
    
  open cr_supquan   
   
  fetch next from cr_supquan into @inventoryid,@docquan   
  if @@FETCH_STATUS <> 0  
  begin  
       select @comname = comname from commodity where comid = @comid;  
       raiserror('1-生成销售订单明细表失败,''%s''库存数量不够',16,1,@comname)  
              rollback transaction;   
              return   
  end  
  WHILE @@FETCH_STATUS = 0  
  BEGIN  
   if @prstQuan >0  
   begin  
    if @docquan < @prstQuan   
    begin  
         select @quan  = @docquan;  
    end  
    else  
    begin  
      select @quan  = @prstQuan;  
    end     
   
                  select @rowid =(isnull(max(Row_Id),0) + 1) from StoreOutDetail where billno=@billno;  
    INSERT INTO storeoutdetail ( BillNo,row_id,COMID,Quantity,PriceTaxed,AmountTaxed,gdEmpCode,WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,  
      InPriceTaxed,StoreinPrice,CostsTaxed,Costs,SupAccount,StoreinBill,StoreinRow,InvCode,InDate,TaxOut,isPresent)    
      select @billno,@rowid,a.comid,@quan,0,@quan*0,@gdEmp,  
      WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,PriceTaxed,StoreinPrice,@quan*PriceTaxed,@quan*StoreinPrice,a.SupAccount,StoreinBill,StoreinRow,  
      InvCode,InDate,b.TaxOut,1  
                   from inventory a,commodity b where a.comid = b.comid and a. invseqno = @inventoryid;  
       if @@error<>0    
              begin  
                 raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)  
                 rollback transaction;   
                 return   
              end       
   
    exec sp_inventory_MinusDQ 'STOREOUT',@billno,@rowid,0;   
     if @@error<>0    
              begin  
                 raiserror('4-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)  
                 rollback transaction;   
                 return   
              end   
   
    select @prstQuan = @prstQuan - @quan;  
    select @rowid =(max(Row_Id) + 1) from StoreOutDetail where billno=@billno;    
   end     
     
   fetch next from cr_supquan into @inventoryid,@docquan  
  end  
  close cr_supquan  
  deallocate cr_supquan    
 -----------------------------------------处理明细-------------------------------------------------  
 end   
   theend:  
   commit transaction;  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_salesorder]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_salesorder] (@billno varchar(32),@comid varchar(32),@reqquan numeric(18,4),@price numeric(18,4),@gdEmp varchar(32))
as
begin
	begin transaction 
	declare @Row_Id int,@totalquan numeric(18,4)

	select @Row_Id =isnull(min(Row_Id),0) from SalesOrderDetail where billno=@billno and comid = @comid and isPresent=0;	

	if @Row_Id >0 
	begin
		update SalesOrderDetail set Quantity = Quantity + @reqquan,AmountTaxed =( Quantity + @reqquan)*PriceTaxed  where billno=@billno and Row_Id = @Row_Id;
		if @@error<>0  
	           begin
		             raiserror('1-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
		             rollback transaction; 
		             return 
	           end	
	end
	else
	begin
		select @Row_Id =(isnull(max(Row_Id),0) + 1) from SalesOrderDetail where billno=@billno;	
		-----------------------------------------处理明细-------------------------------------------------
		  
	 
		INSERT INTO SalesOrderdetail ( BillNo,Row_Id,COMID,Quantity,PriceTaxed,AmountTaxed,gdEmpCode)  
		 	select @billno,@Row_Id,b.comid,@reqquan,@price,@reqquan*@price,@gdEmp 
	                from  commodity b where b.comid = @comid;
		   if @@error<>0  
	           begin
		             raiserror('2-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
		             rollback transaction; 
		             return 
	           end	
	end			 

	select @totalquan = Quantity from SalesOrderDetail where billno=@billno and Row_Id = @Row_Id;
	if @totalquan > 0 
	begin
		exec sp_salesorder_present @billno,@comid,@totalquan,@gdEmp ;	
	end 
-----------------------------------------处理明细-------------------------------------------------
 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SellPackageLimit]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[sp_SellPackageLimit] (@BillNo nvarchar(32),@Row_Id nvarchar(32))
as
begin
 	declare @SellPackageLimit varchar(2),@slquan int,@PiecePacking int,@Outerpacking int,@reqWhCode varchar(32),@reqLocId varchar(32)
	declare @inventoryid numeric(18,0),@quan numeric(18,4),@price numeric(18,4),@curquan numeric(18,4),@comid varchar(32),@comname varchar(128)
	declare @wholeQuan numeric(18,6)
	
	select 	@SellPackageLimit = isnull(c.SellPackageLimit,'0'),@slquan = a.quantity,@wholeQuan = a.quantity,
	       	@PiecePacking = cast(case when isnumeric(b.PiecePacking)=1 then b.PiecePacking else '1' end as int),
		@Outerpacking = cast(case when isnumeric(b.Outerpacking)=1 then b.Outerpacking else '1' end as int),
		@inventoryid = a.invseqno, @reqWhCode = c.moveinwh,@comid = a.comid,@comname=comname 
	from StoreOutDetail a,commodity b,warehouse c
	where a.billno = @BillNo and a.row_id = @Row_Id and a.comid = b.comid and a.warehouse_code = c.warehouse_code;

	if @wholeQuan - @slquan <> 0
	begin
			raiserror('行号:%s商品:''%s''数量%d为小数!禁止开票!',16,1,@Row_Id,@comname,@wholeQuan);
		return;
	end
	if @SellPackageLimit = '0'--不限制整件开票
	begin
		return;
	end
	if @SellPackageLimit = '1' and @slquan % @PiecePacking = 0 --正好整件
	begin
		return;
	end
	if @SellPackageLimit = '2' and @slquan % @Outerpacking = 0 --正好中包装
	begin
		return;
	end

	if @SellPackageLimit = '1' and @slquan % @PiecePacking <> 0 and @slquan / @PiecePacking>=1 --整货库开零件
	begin
			raiserror('行号:%s整货库商品:''%s''件包装为%d，当前开单数量%d已超过一件!  请仔细核对数量!如确需零货，请先开整货，再开零货!',16,1,@Row_Id,@comname,@PiecePacking,@slquan);
			return;
	end 
	if @SellPackageLimit = '2' and @reqWhCode is null --正好中包装
	begin
		raiserror('行号:%s商品:''%s''中包装为%d，当前开单数量%d,请按中包装开票!!',16,1,@Row_Id,@comname,@Outerpacking,@slquan);
		return;
	end

	declare @mvbillno  varchar(32)
	select @mvbillno = dbo.fn_Newbillno('StoreMove',getdate()); 
	select @reqLocId = min(LocID) from ComStoreLocation where warehousecode = @reqWhCode and comid = @comid;
	if @reqLocId is null
	begin
		select @reqLocId = min(LocID) from inventory where warehouse_code = @reqWhCode and comid = @comid;
	end
	if @reqLocId is null
	begin
		select @reqLocId = min(LocID) from goodsLocation where warehouse_code = @reqWhCode;
	end

	begin transaction 
	insert into StoreMove(BillNo,DeptCode,Commen,OrderType,DocPerson,DocStatus)
	select @mvbillno,DeptCode,'批发开票自动移库单据',1,DocPerson,0
	from storeOut where billno = @BillNo;
	if @@error<>0  
         begin
             raiserror('1-生成移库单主表失败,数据库返回代码:%d',16,1,@@error)
             rollback transaction; 
             return 
         end  
	if @SellPackageLimit = '1'
	begin
		select @quan = @slquan  + (@PiecePacking - @slquan % @PiecePacking);
	end 
	if @SellPackageLimit = '2'
	begin
		select @quan = @slquan  + (@Outerpacking - @slquan % @Outerpacking);
	end
	select @curquan = docquantity from inventory where InvSeqNo = @inventoryid;
	if @curquan >= @slquan and @curquan < @quan
	begin
		select @quan = @curquan;
	end
	
	INSERT INTO storemovedetail ( BillNo,Row_Id,ComId,Quantity,PriceTaxed,AmountTaxed,WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,
			InPriceTaxed,StoreinPrice,CostsTaxed,Costs,SupAccount,StoreinBill,StoreinRow,InvCode,InDate,TaxOut,reqWhCode,reqLocId,audit,inuse,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)  
	 	select @mvbillno,dbo.fn_NewBillRowId('StoreMovedetail',@mvbillno),a.ComId,@quan,@price,@quan*@price,
			WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,PriceTaxed,StoreinPrice,@quan*PriceTaxed,@quan*StoreinPrice,a.SupAccount,StoreinBill,StoreinRow,
			InvCode,InDate,b.TaxOut,@reqWhCode,@reqLocId,0,1,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
                from inventory a,commodity b where a.ComId = b.ComId and a. invseqno = @inventoryid;
	   if @@error<>0  
           begin
	             raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
	             rollback transaction; 
	             return 
           end				 

	exec sp_inventory_MinusDQ 'STOREMOVE',@mvbillno,1,0; 
	if @@error<>0  
           begin
	             raiserror('4-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
	             rollback transaction; 
	             return 
           end	   
	

	exec sp_bill_check 'STOREMOVE',@mvbillno,0;
	if @@error<>0  
           begin
	             raiserror('4-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
	             rollback transaction; 
	             return 
           end


	update storeoutdetail set InvSeqNo =( select ReqInvSeqNo from storeMoveDetail where billno = @mvbillno and row_id =1),
		warehouse_code = @reqWhCode,LocId = @reqLocId
	where billno = @BillNo and row_id = @Row_Id;

   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_modquan_wap]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_sales_modquan_wap] (@billno varchar(32),@comid varchar(32),@newquan numeric(18,4))
as
begin
	declare @inventoryid numeric(18,0),@Row_Id int,@price numeric(18,4),@gdEmp varchar(32),@quan numeric(18,4),@docquan numeric(18,4)
	declare @comname varchar(64),@reqquan numeric(18,4),@curQuan numeric(18,4)
 
	select @curQuan =sum(quantity),@price=min(pricetaxed) from storeoutdetail where billno=@billno and comid = @comid and isPresent=0;	
	if @newquan = @curQuan return;
	set @reqquan = @newquan - @curQuan;
 
	begin transaction;
	if @reqquan < 0 
	begin
		---------------------------------------------取原有销售记录----------------------------------------------------
		declare cr_cur cursor for 
		select Row_Id  from StoreOutDetail where billno=@billno and comid = @comid and isPresent=0 order by Row_Id desc; 
		
		open cr_cur 
	
		fetch next from cr_cur into @Row_Id 
		WHILE @@FETCH_STATUS = 0
		BEGIN
			if @reqquan <0
			begin
				select @inventoryid = invseqno,@quan=quantity from storeoutdetail where billno = @billno and Row_Id = @Row_Id; 
				  
				if @quan >= abs(@reqquan) 
				begin
				   	set @quan = abs(@reqquan);
				end 
				if @quan >0
				begin			     
				   update inventory set docquantity = docquantity + @quan where invseqno =@inventoryid;
				   if @@error<>0  
			           begin
				             raiserror('1-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
				             rollback transaction; 
				             return 
			           end			     
				   update storeoutdetail set quantity = quantity - @quan,amounttaxed = pricetaxed * (quantity - @quan),
						costs = (quantity - @quan)*storeinprice,coststaxed = (quantity - @quan)*InpriceTaxed
					 where billno = @billno and Row_Id = @Row_Id;
				   if @@error<>0  
			           begin
				             raiserror('2-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
				             rollback transaction; 
				             return 
			           end				 
	 			end
				select @reqquan = @reqquan + @quan;  
			end	
			else
			begin
				commit transaction; 
				return 
			end		
			
			fetch next from cr_cur into @Row_Id
		end
		close cr_cur
		deallocate cr_cur  
-----------------------------------------处理明细-------------------------------------------------
	end
	else
	begin
		---------------------------------------------取原有销售记录----------------------------------------------------
		declare cr_cur cursor for 
		select Row_Id  from StoreOutDetail where billno=@billno and comid = @comid and isPresent=0 order by Row_Id; 
		
		open cr_cur 
	
		fetch next from cr_cur into @Row_Id 
		WHILE @@FETCH_STATUS = 0
		BEGIN
			if @reqquan >0
			begin
				select @inventoryid = invseqno from storeoutdetail where billno = @billno and Row_Id = @Row_Id;
				select @docquan=docquantity from inventory where invseqno =@inventoryid and  docquantity >0 and comid = @comid; 
				
				set @quan=0;
				if  @docquan <= @reqquan 
				begin
				   	set @quan = @docquan;
				end
				else if  @docquan > @reqquan 
				begin
					set @quan = @reqquan;
				end
				if @quan >0
				begin			     
				   update inventory set docquantity = docquantity - @quan where invseqno =@inventoryid;
				   if @@error<>0  
			           begin
				             raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
				             rollback transaction; 
				             return 
			           end			     
				   update storeoutdetail set quantity = quantity + @quan,amounttaxed = pricetaxed * (quantity + @quan),
						costs = (quantity + @quan)*storeinprice,coststaxed = (quantity + @quan)*InpriceTaxed
					 where billno = @billno and Row_Id = @Row_Id;
				   if @@error<>0  
			           begin
				             raiserror('4-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
				             rollback transaction; 
				             return 
			           end				 
	 			end
				select @reqquan = @reqquan - @quan;  
			end	
			else
			begin
				commit transaction; 
				return 
			end		
			
			fetch next from cr_cur into @Row_Id
		end
		close cr_cur
		deallocate cr_cur  
	-----------------------------------------处理明细------------------------------------------------- 
	 	if @reqquan <=0 goto theend;
		---------------------------------------------取可供数量----------------------------------------------------
		declare cr_supquan cursor for
		
		select invseqno,docquantity from inventory where docquantity >0 
		  	and comid = @comid order by validity,docquantity; 
		
		open cr_supquan 
	
		fetch next from cr_supquan into @inventoryid,@docquan 
		if @@FETCH_STATUS <> 0
		begin
		     select @comname = comname from commodity where comid = @comid;
		     raiserror('1-生成销售订单明细表失败,''%s''库存数量不够',16,1,@comname)
	             rollback transaction; 
	             return 
		end
		WHILE @@FETCH_STATUS = 0
		BEGIN
			if @reqquan >0
			begin
				if @docquan < @reqquan 
				begin
				     select @quan = @docquan;
				end
				else
				begin
				 	select @quan  = @reqquan;
				end   
	
		                select @Row_Id =(isnull(max(Row_Id),0) + 1) from StoreOutDetail where billno=@billno;
				INSERT INTO storeoutdetail ( BillNo,Row_Id,COMID,Quantity,PriceTaxed,AmountTaxed,gdEmpCode,WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,
						InPriceTaxed,StoreinPrice,CostsTaxed,Costs,SupAccount,StoreinBill,StoreinRow,InvCode,InDate,TaxOut,isPresent,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode)  
				 	select @billno,@Row_Id,a.comid,@quan,@price,@quan*@price,@gdEmp,
						WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,PriceTaxed,StoreinPrice,@quan*PriceTaxed,@quan*StoreinPrice,a.SupAccount,StoreinBill,StoreinRow,
						InvCode,InDate,b.TaxOut,0,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode
			                from inventory a,commodity b where a.comid = b.comid and a. invseqno = @inventoryid;
				   if @@error<>0  
			           begin
				             raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
				             rollback transaction; 
				             return 
			           end				 
	
				exec sp_inventory_MinusDQ 'STOREOUT',@billno,@Row_Id,0; 
					if @@error<>0  
			           begin
				             raiserror('4-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
				             rollback transaction; 
				             return 
			           end	
	
				select @reqquan = @reqquan - @quan;
				select @Row_Id =(max(Row_Id) + 1) from StoreOutDetail where billno=@billno;	 
			end			
			
			fetch next from cr_supquan into @inventoryid,@docquan
		end
		close cr_supquan
		deallocate cr_supquan  
	-----------------------------------------处理明细-------------------------------------------------
	end 
 
 
   theend:
	select @quan =sum(quantity)+@reqquan from StoreOutDetail where billno=@billno and ComId = @comid and isPresent = 0;	
	 
 	exec sp_sales_present @billno,@comid,@quan,@gdEmp; 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_modquan]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_sales_modquan] (@billno varchar(32),@rowid int,@newquan numeric(18,4))
as
begin
	declare @inventoryid numeric(18,0),@comid varchar(32),@price numeric(18,4),@gdEmp varchar(32),@quan numeric(18,4),@docquan numeric(18,4)
	declare @comname varchar(64),@reqquan numeric(18,4)

	select @inventoryid =invseqno,@reqquan = @newquan - quantity,@comid=ComId,@price=PriceTaxed,@gdEmp=gdEmpCode from StoreOutDetail where billno=@billno and rowid = @rowid;	
	if @inventoryid is null   
	begin
		exec sp_sales_present @billno,@comid,@newquan,@gdEmp; 
		return;
	end
	select @docquan = docquantity from inventory where invseqno = @inventoryid;
	
	if @reqquan = 0 return; 
	-----------------------------------------处理明细-------------------------------------------------	 
	begin transaction 
	if @reqquan < 0 --如果数量减少
	begin
		update inventory set docquantity = docquantity - @reqquan where invseqno = @inventoryid;
		if @@error<>0  
	           begin
		             raiserror('1-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
		             rollback transaction; 
		             return;
	           end		 
	end
	else if @reqquan > 0 and @docquan >= @reqquan--如果数量增大
	begin 
		set @quan = @reqquan;
		update inventory set docquantity = docquantity - @quan where invseqno = @inventoryid;
		if @@error<>0  
	           begin
		             raiserror('1-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
		             rollback transaction; 
		             return;
	           end		 
			
	end 
	else
	begin
             raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
             rollback transaction; 
             return;
   	end	

	select @quan =sum(quantity)+@reqquan from StoreOutDetail where billno=@billno and ComId = @comid and isPresent = 0;	
	
 	exec sp_sales_present @billno,@comid,@quan,@gdEmp; 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_guideshopping]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[sp_sales_guideshopping] (@billno varchar(32),@comid varchar(32),@reqquan numeric(18,4),@price numeric(18,4),@gdEmp varchar(32))    
as    
begin    
 declare @inventoryid numeric(18,0),@quan numeric(18,4),@docquan numeric(18,4),@comname varchar(64),@rowid int    
    
 declare @invseq  varchar(32)    
 select @invseq = min(InvSeqNo) from inventory where comid = @comid;    
 if @invseq is null      
 begin    
     begin    
        raiserror('无库存不能销售:%d',16,1,@@error)    
        rollback transaction;     
        return     
     end     
	--exec sp_sales_guideshopping_nokc @billno,@comid,@reqquan,@price,@gdEmp;    
   return;    
 end    
 begin transaction     
---------------------------------------------取原有销售记录----------------------------------------------------    
 declare cr_cur cursor for     
 select Row_Id  from StoreOutDetail where billno=@billno and comid = @comid and isPresent=0 order by Row_Id;     
     
 open cr_cur     
    
 fetch next from cr_cur into @rowid     
 WHILE @@FETCH_STATUS = 0    
 BEGIN    
  if @reqquan >0    
  begin    
   select @inventoryid = invseqno from storeoutdetail where billno = @billno and row_id = @rowid;    
   select @docquan=docquantity from inventory where invseqno =@inventoryid and  docquantity >0 and comid = @comid;     
       
   set @quan=0;    
   if @docquan <= @reqquan     
   begin    
       set @quan = @docquan;    
   end    
   else if @docquan > @reqquan    
   begin    
    set @quan = @reqquan;    
   end    
    
   if @quan >0    
   begin            
      update inventory set docquantity = docquantity - @quan where invseqno =@inventoryid;    
      if @@error<>0      
             begin    
                raiserror('01-生成销售单明细表失败,数据库返回代码:%d',16,1,@@error)    
                rollback transaction;     
                return     
             end            
      update storeoutdetail set quantity = quantity + @quan,amounttaxed = pricetaxed * (quantity + @quan),    
     costs = (quantity + @quan)*storeinprice,coststaxed = (quantity + @quan)*InpriceTaxed    
     where billno = @billno and row_id = @rowid;    
      if @@error<>0      
             begin    
                raiserror('02-生成销售单明细表失败,数据库返回代码:%d',16,1,@@error)    
                rollback transaction;     
                return     
             end         
    end    
   select @reqquan = @reqquan - @quan;      
  end     
  else goto theend;     
      
  fetch next from cr_cur into @rowid    
 end    
 close cr_cur    
 deallocate cr_cur      
-----------------------------------------处理明细-------------------------------------------------    
  if @reqquan <=0 goto theend;    
 ---------------------------------------------取可供数量----------------------------------------------------    
 declare cr_supquan cursor for    
     
 select invseqno,docquantity from inventory where docquantity >0     
    and comid = @comid order by validity,docquantity;     
     
 open cr_supquan     
    
 fetch next from cr_supquan into @inventoryid,@docquan    
 if @@FETCH_STATUS <> 0    
 begin    
      select @comname = comname from commodity where comid = @comid;    
      raiserror('11-生成销售单明细表失败,''%s''库存数量不够',16,1,@comname)    
             rollback transaction;     
             return     
 end    
 WHILE @@FETCH_STATUS = 0    
 BEGIN    
  if @reqquan >0    
  begin    
   if @docquan < @reqquan     
   begin    
        select @quan = @docquan;    
   end    
   else    
   begin    
     select @quan  = @reqquan;    
   end       
    
                 select @rowid =(isnull(max(Row_Id),0) + 1) from StoreOutDetail where billno=@billno;    
   INSERT INTO storeoutdetail ( BillNo,row_id,COMID,Quantity,PriceTaxed,AmountTaxed,gdEmpCode,WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,    
     InPriceTaxed,StoreinPrice,CostsTaxed,Costs,SupAccount,StoreinBill,StoreinRow,InvCode,InDate,TaxOut)      
     select @billno,@rowid,a.comid,@quan,@price,@quan*@price,@gdEmp,    
     WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,PriceTaxed,StoreinPrice,@quan*PriceTaxed,@quan*StoreinPrice,a.SupAccount,StoreinBill,StoreinRow,    
     InvCode,InDate,b.TaxOut    
                  from inventory a,commodity b where a.comid = b.comid and a. invseqno = @inventoryid;    
      if @@error<>0      
             begin    
                raiserror('12-生成销售单明细表失败,数据库返回代码:%d',16,1,@@error)    
                rollback transaction;     
                return     
             end         
    
   exec sp_inventory_MinusDQ 'STOREOUT',@billno,@rowid,0;     
    if @@error<>0      
             begin    
                raiserror('13-生成销售单明细表失败,数据库返回代码:%d',16,1,@@error)    
                rollback transaction;     
                return     
             end     
    
   select @reqquan = @reqquan - @quan;    
   select @rowid =(max(Row_Id) + 1) from StoreOutDetail where billno=@billno;      
  end       
      
  fetch next from cr_supquan into @inventoryid,@docquan    
 end    
 close cr_supquan    
 deallocate cr_supquan      
-----------------------------------------处理明细-------------------------------------------------    
     
   theend:    
   select @quan =sum(quantity)+@reqquan from StoreOutDetail where billno=@billno and ComId = @comid and isPresent = 0;     
    
   exec sp_sales_present @billno,@comid,@quan,@gdEmp;     
   commit transaction;    
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_byorderDetail]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_sales_byorderDetail] (@billno varchar(32),@sobillno varchar(32),@soRow_Id int,@reqquan numeric(18,4))
as
begin
	begin transaction 
	declare @inventoryid numeric(18,0),@quan numeric(18,4),@docquan numeric(18,4),@comname varchar(64),@comid varchar(32),@price numeric(18,4)
	declare @gdEmp varchar(32),@Row_Id int,@sumQuan numeric(18,4),@packNum int,@DeptCode varchar(32)

	select @DeptCode = deptcode from salesorder where billno = @sobillno;
	select @comid =comid,@price= pricetaxed,@gdEmp = gdEmpCode,@sumQuan=0,
		@packNum=isnull((select cast(cast(PiecePacking as numeric(18,0)) as int) from commodity  
				where comid = SalesOrderDetail.comid and isnumeric(PiecePacking)=1),0) 
	 from SalesOrderDetail where billno=@sobillno and Row_Id = @soRow_Id;	
	select @Row_Id =(isnull(max(Row_Id),0) + 1) from StoreOutDetail where billno=@billno;	
	-----------------------------------------处理明细-------------------------------------------------
	 
	---------------------------------------------取可供数量----------------------------------------------------	
	if @packNum=0 or @reqquan < @packNum --不足一件，先开零货
	begin
		declare cr_supquan cursor for
		select invseqno,docquantity from inventory a,warehouse b 
		where a.warehouse_code = b.warehouse_code and a.comid = @comid and  docquantity >0 
			and b.warehouse_code in (select warehouse_code from v_deptWh where dept_code = @DeptCode)  
		  	  order by b.isEntirePackage,validity,docquantity;
	end
	else if cast(@reqquan as int)%@packNum =0 --整件倍数
	begin
		declare cr_supquan cursor for
		select invseqno,docquantity from inventory a,warehouse b where a.warehouse_code = b.warehouse_code and a.comid = @comid   and docquantity >0
			and b.warehouse_code in (select warehouse_code from v_deptWh where dept_code = @DeptCode)  
		  	 order by b.isEntirePackage desc,cast(docquantity as int) %@packNum,validity,docquantity;
	end
	else if cast(@reqquan as int)%@packNum >0 --整件加零货
	begin
		declare cr_supquan cursor for
		select invseqno,docquantity from inventory a,warehouse b where a.warehouse_code = b.warehouse_code and a.comid = @comid   and docquantity >0
			and b.warehouse_code in (select warehouse_code from v_deptWh where dept_code = @DeptCode)  
		  	order by b.isEntirePackage desc,cast(docquantity as int) %@packNum,validity,docquantity;
	end 
	
	open cr_supquan 

	fetch next from cr_supquan into @inventoryid,@docquan 
	WHILE @@FETCH_STATUS = 0
	BEGIN
		if @reqquan >0
		begin
			if @docquan <= @reqquan 
			begin
			     select @quan  = @docquan;
			end
			else
			begin
			 	select @quan  = @reqquan;
			end   

			INSERT INTO storeoutdetail ( BillNo,Row_Id,COMID,Quantity,PriceTaxed,AmountTaxed,gdEmpCode,WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,
					InPriceTaxed,StoreinPrice,CostsTaxed,Costs,SupAccount,StoreinBill,StoreinRow,InvCode,InDate,TaxOut,srcBillno,srcRowId,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode,SettlePrice)  
			 	select @billno,@Row_Id,a.comid,@quan,@price,@quan*@price,@gdEmp,
					WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,PriceTaxed,StoreinPrice,@quan*PriceTaxed,@quan*StoreinPrice,a.SupAccount,StoreinBill,StoreinRow,
					InvCode,InDate,b.TaxOut,@sobillno,@soRow_Id,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode,dbo.fn_GetSettlePrice(@billno,@Row_Id,a.comid)
		                from inventory a,commodity b where a.comid = b.comid and a. invseqno = @inventoryid;
			   if @@error<>0  
		           begin
			             raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
			             rollback transaction; 
			             return 
		           end				 
		

			exec sp_SellPackageLimit @billno,@Row_Id;
			if @@error<>0  
				   begin
						 raiserror('4-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
						 rollback transaction; 
						 return 
				   end	

			exec sp_inventory_MinusDQ 'STOREOUT',@billno,@Row_Id,0; 
			if @@error<>0  
		           begin
			             raiserror('5-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
			             rollback transaction; 
			             return 
		           end	
 
			select @sumQuan  = @sumQuan + @quan; 
			select @reqquan = @reqquan - @quan;
			select @Row_Id =(max(Row_Id) + 1) from StoreOutDetail where billno=@billno;	 
		end			
		
		fetch next from cr_supquan into @inventoryid,@docquan
	end
	close cr_supquan
	deallocate cr_supquan 

	if @sumQuan>0
	begin
		update salesorderdetail set slFlag =  case when quantity =  isnull(slQuan,0) + @sumQuan then 2 else 1 end, slQuan = isnull(slQuan,0) + @sumQuan
		where billno=@sobillno and Row_Id = @soRow_Id; 
		if @@error<>0  
	           begin
		             raiserror('5-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
		             rollback transaction; 
		             return 
	           end	 
	end
-----------------------------------------处理明细-------------------------------------------------
 
   commit transaction;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sales_byorder]    Script Date: 08/18/2017 14:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_sales_byorder] (@sobillno varchar(32),@uid varchar(32),@uname varchar(32))
as
begin
	begin transaction 
	declare @inventoryid numeric(18,0),@quan numeric(18,4),@docquan numeric(18,4),@comname varchar(64)
	declare @NewBillNo varchar(32),@comid varchar(32),@price numeric(18,4),@packNum int
	declare @gdEmp varchar(32),@Row_Id int,@sumQuan numeric(18,4),@soRow_Id int,@reqquan numeric(18,4),@DeptCode varchar(32)
 
    select @NewBillNo =  dbo.fn_Newbillno('storeout',getdate()),@DeptCode = deptcode from salesorder where billno = @sobillno;
    insert into StoreOut(BillNo,DeptCode,EmpCode,DocPerson,CustAccount,OrderType,docstatus,
		IsPayed,PayWayID,ShippingType,Emergency,commen,custempcode,custReceiver,ReceiveAddress,HaveInvoice,NeedContract,NeedFirstVendor,NeedFirstCom,realEmpName) 
	select @NewBillNo,DeptCode,EmpCode,@uname,CustAccount,1,0,
		IsPayed,PayWayID,ShippingType,Emergency,commen,custempcode,custReceiver,ReceiveAddress,HaveInvoice,NeedContract,NeedFirstVendor,NeedFirstCom,DocPerson
	 from  salesorder where billno = @sobillno;
	if @@error<>0  
         begin
             raiserror('1-生成销售单主表失败,数据库返回代码:%d',16,1,@@error)
             rollback transaction; 
             return 
         end

	-----------------------------------------处理明细-------------------------------------------------
    DECLARE cr_reqquan CURSOR FOR
	select  row_id,comid,quantity
	 from SalesOrderDetail where billno=@sobillno order by comid

	OPEN cr_reqquan 

	FETCH NEXT FROM cr_reqquan
	INTO @soRow_Id,@comid,@reqquan 
 
	WHILE @@FETCH_STATUS = 0
	BEGIN	 
		select @price= pricetaxed,@gdEmp = gdEmpCode,@sumQuan=0,
		@packNum=isnull((select cast(cast(PiecePacking as numeric(18,0)) as int) from commodity  
				where comid = SalesOrderDetail.comid and isnumeric(PiecePacking)=1),0) 
		from SalesOrderDetail where billno=@sobillno and Row_Id = @soRow_Id;	
		select @Row_Id =(isnull(max(Row_Id),0) + 1) from StoreOutDetail where billno=@NewBillNo;	
		---------------------------------------------取可供数量----------------------------------------------------
		if @packNum=0 or @reqquan < @packNum --不足一件，先开零货
		begin
			declare cr_supquan cursor for
			select invseqno,docquantity from inventory a,warehouse b 
			where a.warehouse_code = b.warehouse_code and a.comid = @comid and  docquantity >0 
				  and b.warehouse_code in (select warehouse_code from v_deptWh where dept_code = @DeptCode)  
		  		  order by b.isEntirePackage,validity,docquantity;
		end
		else if cast(@reqquan as int)%@packNum =0 --整件倍数
		begin
			declare cr_supquan cursor for
			select invseqno,docquantity from inventory a,warehouse b where a.warehouse_code = b.warehouse_code and a.comid = @comid   and docquantity >0
			and b.warehouse_code in (select warehouse_code from v_deptWh where dept_code = @DeptCode)  
		  		 order by b.isEntirePackage desc,cast(docquantity as int) %@packNum,validity,docquantity;
		end
		else if cast(@reqquan as int)%@packNum >0 --整件加零货
		begin
			declare cr_supquan cursor for
			select invseqno,docquantity from inventory a,warehouse b where a.warehouse_code = b.warehouse_code and a.comid = @comid   and docquantity >0
			and b.warehouse_code in (select warehouse_code from v_deptWh where dept_code = @DeptCode)  
		  		order by b.isEntirePackage desc,cast(docquantity as int) %@packNum,validity,docquantity;
		end  
		
		open cr_supquan 

		fetch next from cr_supquan into @inventoryid,@docquan 
		WHILE @@FETCH_STATUS = 0
		BEGIN
			if @reqquan >0
			begin
				if @docquan <= @reqquan 
				begin
					 select @quan  = @docquan;
				end
				else
				begin
			 		select @quan  = @reqquan;
				end   

				INSERT INTO storeoutdetail ( BillNo,Row_Id,COMID,Quantity,PriceTaxed,AmountTaxed,gdEmpCode,WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,
						InPriceTaxed,StoreinPrice,CostsTaxed,Costs,SupAccount,StoreinBill,StoreinRow,InvCode,InDate,TaxOut,srcBillno,srcRowId,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode,audit,SettlePrice)  
			 		select @NewBillNo,@Row_Id,a.comid,@quan,@price,@quan*@price,@gdEmp,
						WAREHOUSE_CODE,LocID,BatchNo,ProDate,Validity,invseqno,PriceTaxed,StoreinPrice,@quan*PriceTaxed,@quan*StoreinPrice,a.SupAccount,StoreinBill,StoreinRow,
						InvCode,InDate,b.TaxOut,@sobillno,@soRow_Id,btPrice,ctPrice,inDeptCode,InEmpCode,SupEmpCode,1,dbo.fn_GetSettlePrice(@NewBillNo,@Row_Id,a.comid)--audit 为1 直接调过第二步
							from inventory a,commodity b where a.comid = b.comid and a. invseqno = @inventoryid;
				   if @@error<>0  
					   begin
							 raiserror('3-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
							 rollback transaction; 
							 return 
					   end			

				exec sp_SellPackageLimit @NewBillNo,@Row_Id;
				if @@error<>0  
					   begin
							 raiserror('4-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
							 rollback transaction; 
							 return 
					   end		 

				exec sp_inventory_MinusDQ 'STOREOUT',@NewBillNo,@Row_Id,0; 
				if @@error<>0  
					   begin
							 raiserror('5-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
							 rollback transaction; 
							 return 
					   end	

				select @sumQuan  = @sumQuan + @quan; 
				select @reqquan = @reqquan - @quan;
				select @Row_Id =(max(Row_Id) + 1) from StoreOutDetail where billno=@NewBillNo;	 
			end			
			
			fetch next from cr_supquan into @inventoryid,@docquan
		end
		close cr_supquan
		deallocate cr_supquan     

		if @sumQuan>0
		begin
			update salesorderdetail set slFlag =  case when quantity =  isnull(slQuan,0) + @sumQuan then 2 else 1 end, slQuan = isnull(slQuan,0) + @sumQuan
			where billno=@sobillno and Row_Id = @soRow_Id; 
			if @@error<>0  
				   begin
						 raiserror('5-生成销售订单明细表失败,数据库返回代码:%d',16,1,@@error)
						 rollback transaction; 
						 return 
				   end	
		end 
	   FETCH NEXT FROM cr_reqquan
	   INTO @soRow_Id,@comid,@reqquan  
	
	end
	CLOSE cr_reqquan
	DEALLOCATE cr_reqquan
-----------------------------------------处理明细-------------------------------------------------
 
   commit transaction;
end
GO
/****** Object:  Default [DF__AcCashIO__DocSta__4D755761]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIO] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__AcCashIO__inuse__4E697B9A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIO] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__AcCashIO__Audit__4F5D9FD3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIO] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__AcCashIO__Detail__5051C40C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIO] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__AcCashIO__isClos__5145E845]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIO] ADD  DEFAULT (0) FOR [isClosed]
GO
/****** Object:  Default [DF__AcCashIOD__inuse__2902ECC1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIODetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__AcCashIOD__Audit__29F710FA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIODetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__AcCashIOD__Detai__2AEB3533]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIODetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__AcCashIOD__isClo__2BDF596C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIODetail] ADD  DEFAULT (0) FOR [isClosed]
GO
/****** Object:  Default [DF__AcCashIOi__DocSt__1313ABA2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIOinit] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__AcCashIOi__inuse__1407CFDB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIOinit] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__AcCashIOi__Audit__14FBF414]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIOinit] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__AcCashIOi__Detai__15F0184D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIOinit] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__AcCashIOi__isClo__16E43C86]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCashIOinit] ADD  DEFAULT (0) FOR [isClosed]
GO
/****** Object:  Default [DF__AcCODE__JD_DIREC__607251E5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCODE] ADD  DEFAULT (1) FOR [JD_DIRECTION]
GO
/****** Object:  Default [DF__AcCODE__GRADE__6166761E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCODE] ADD  DEFAULT (0) FOR [GRADE]
GO
/****** Object:  Default [DF__AcCODE__RELATED___625A9A57]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCODE] ADD  DEFAULT (0) FOR [RELATED_INUSE]
GO
/****** Object:  Default [DF__AcCode__isStop__0E4EF685]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCODE] ADD  DEFAULT (0) FOR [isStop]
GO
/****** Object:  Default [DF__AcCode__isCash__0F431ABE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCODE] ADD  DEFAULT (0) FOR [isCash]
GO
/****** Object:  Default [DF__AcCode__isBank__10373EF7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCODE] ADD  DEFAULT (0) FOR [isBank]
GO
/****** Object:  Default [DF__AcCODE_BA__JD_DI__65370702]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCODE_BASE] ADD  DEFAULT (1) FOR [JD_DIRECTION]
GO
/****** Object:  Default [DF__AcCODE_BA__GRADE__662B2B3B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCODE_BASE] ADD  DEFAULT (0) FOR [GRADE]
GO
/****** Object:  Default [DF__AcCODE_BA__RELAT__671F4F74]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCODE_BASE] ADD  DEFAULT (0) FOR [RELATED_INUSE]
GO
/****** Object:  Default [DF__AcCodeGra__GRADE__5AB9788F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCodeGrade] ADD  DEFAULT (0) FOR [GRADE]
GO
/****** Object:  Default [DF__AcCodeGra__GRADE__5CA1C101]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCodeGradeDetail] ADD  DEFAULT ('0') FOR [GRADE]
GO
/****** Object:  Default [DF__AcCodeGrad__tLen__5D95E53A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCodeGradeDetail] ADD  DEFAULT (1) FOR [tLen]
GO
/****** Object:  Default [DF__AcDepartm__ThisD__758D6A5C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcDepartmentPay] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__AcDepartm__PayTy__76818E95]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcDepartmentPay] ADD  DEFAULT (0) FOR [PayType]
GO
/****** Object:  Default [DF__AcDepartm__DocSt__7775B2CE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcDepartmentPay] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__AcDepartm__inuse__7869D707]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcDepartmentPay] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__AcDepartm__Audit__795DFB40]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcDepartmentPay] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__AcExpense__DocSt__1C9D15DC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcExpenses] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__AcExpense__Detai__1D913A15]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcExpenses] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__AcExpense__inuse__206DA6C0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcExpensesDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__AcExpense__Audit__2161CAF9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcExpensesDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__AcExpense__Detai__2255EF32]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcExpensesDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__AcExpense__isClo__234A136B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcExpensesDetail] ADD  DEFAULT (0) FOR [isClosed]
GO
/****** Object:  Default [DF__AcExpense__PayAm__243E37A4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcExpensesDetail] ADD  DEFAULT (0) FOR [PayAmount]
GO
/****** Object:  Default [DF__AcExpense__cashA__25325BDD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcExpensesDetail] ADD  DEFAULT (0) FOR [cashAmount]
GO
/****** Object:  Default [DF__AcIniAccn__PayFL__40058253]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcIniAccnt] ADD  DEFAULT (0) FOR [PayFLAG]
GO
/****** Object:  Default [DF__AcInvoice__ThisD__51300E55]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcInvoice] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__AcInvoice__DocSt__5224328E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcInvoice] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__AcInvoice__Detai__55F4C372]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcInvoiceDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__AcInvoice__inuse__56E8E7AB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcInvoiceDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__AcInvoice__Audit__57DD0BE4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcInvoiceDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__AcMonthSe__INUSE__7755B73D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcMonthSet] ADD  DEFAULT (1) FOR [INUSE]
GO
/****** Object:  Default [DF__AcMonthSe__COSTS__7849DB76]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcMonthSet] ADD  DEFAULT (0) FOR [COSTS_FLAG]
GO
/****** Object:  Default [DF__AcMonthSe__CHECK__793DFFAF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcMonthSet] ADD  DEFAULT (1) FOR [CHECK_FLAG]
GO
/****** Object:  Default [DF__AcPay__ThisDate__43D61337]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPay] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__AcPay__PayType__44CA3770]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPay] ADD  DEFAULT (0) FOR [PayType]
GO
/****** Object:  Default [DF__AcPay__DocStatus__45BE5BA9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPay] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__AcPayDeta__Detai__4A8310C6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__AcPayDeta__inuse__4B7734FF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__AcPayDeta__Audit__4C6B5938]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__AcPayDeta__cashA__271AA44F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayDetail] ADD  DEFAULT (0) FOR [cashAmount]
GO
/****** Object:  Default [DF__AcPayOutA__ThisD__77A09B57]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayOutApply] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__AcPayOutA__DocSt__7894BF90]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayOutApply] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__AcPayOutA__inuse__7988E3C9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayOutApply] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__AcPayOutA__Audit__7A7D0802]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayOutApply] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__AcVOUCH__SYNC_FL__6EC0713C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcVOUCH] ADD  DEFAULT (0) FOR [SYNC_FLAG]
GO
/****** Object:  Default [DF__AcVOUCH__detailT__6FB49575]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcVOUCH] ADD  DEFAULT (getdate()) FOR [detailTime]
GO
/****** Object:  Default [DF__AcVOUCH__isClose__70A8B9AE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcVOUCH] ADD  DEFAULT (0) FOR [isClosed]
GO
/****** Object:  Default [DF__AcVouchDe__detai__73852659]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcVouchDetail] ADD  DEFAULT (getdate()) FOR [detailTime]
GO
/****** Object:  Default [DF__AcVouchDe__Audit__2C146396]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcVouchDetail] ADD  DEFAULT ((-2)) FOR [Audit]
GO
/****** Object:  Default [DF__AreaCateg__ileve__45F365D3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AreaCategory] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__BankAccou__ileve__2FAFEA50]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__BillType__EndFla__1ED998B2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[BillType] ADD  DEFAULT ('inuse') FOR [EndFlag]
GO
/****** Object:  Default [DF__BillUpdat__isSto__22AA2996]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[BillUpdateSyntax] ADD  DEFAULT (0) FOR [isStop]
GO
/****** Object:  Default [DF__CashierRe__detai__37861642]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CashierReport] ADD  DEFAULT (getdate()) FOR [detailtime]
GO
/****** Object:  Default [DF__CashierRe__DocSt__387A3A7B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CashierReport] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__CashierRe__inuse__396E5EB4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CashierReport] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__CashierRe__Audit__3A6282ED]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CashierReport] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__CashierRe__cashA__26268016]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CashierReport] ADD  DEFAULT (0) FOR [cashAmount]
GO
/****** Object:  Default [DF__ClarityCh__ThisD__1FB8AE52]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheck] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__ClarityCh__DocPe__20ACD28B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheck] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__ClarityCh__DocSt__21A0F6C4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheck] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__ClarityCh__Quant__2665ABE1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheckDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__ClarityCh__Check__2759D01A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheckDetail] ADD  DEFAULT (0) FOR [CheckQuantity]
GO
/****** Object:  Default [DF__ClarityCh__Detai__284DF453]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheckDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__ClarityCh__inuse__2942188C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheckDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__ClarityCh__Audit__2A363CC5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheckDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__ColorChec__ThisD__116A8EFB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheck] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__ColorChec__DocPe__125EB334]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheck] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__ColorChec__DocSt__1352D76D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheck] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__ColorChec__Quant__18178C8A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheckDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__ColorChec__Check__190BB0C3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheckDetail] ADD  DEFAULT (0) FOR [CheckQuantity]
GO
/****** Object:  Default [DF__ColorChec__Detai__19FFD4FC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheckDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__ColorChec__inuse__1AF3F935]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheckDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__ColorChec__Audit__1BE81D6E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheckDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__ComCatego__ileve__3D5E1FD2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComCategory] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__ComMainta__ThisD__10E07F16]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintain] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__ComMainta__DocPe__11D4A34F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintain] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__ComMainta__DocSt__12C8C788]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintain] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__ComMainta__Order__10B661E4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintain] ADD  DEFAULT (1) FOR [OrderType]
GO
/****** Object:  Default [DF__ComMainta__Quant__178D7CA5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__ComMainta__Detai__1881A0DE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__ComMainta__inuse__1975C517]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__ComMainta__Audit__1A69E950]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__ComMainta__InvQu__1B5E0D89]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetail] ADD  DEFAULT (0) FOR [InvQuantity]
GO
/****** Object:  Default [DF__ComMainta__Quant__4CC05EF3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetailPlan] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__ComMainta__Detai__4DB4832C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetailPlan] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__ComMainta__inuse__4EA8A765]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetailPlan] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__ComMainta__Audit__4F9CCB9E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetailPlan] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__ComMainta__InvQu__5090EFD7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetailPlan] ADD  DEFAULT (0) FOR [InvQuantity]
GO
/****** Object:  Default [DF__ComMainta__isExe__7D246A83]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetailPlan] ADD  DEFAULT (1) FOR [isExecute]
GO
/****** Object:  Default [DF__ComMainta__ThisD__46136164]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainPlan] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__ComMainta__DocPe__4707859D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainPlan] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__ComMainta__DocSt__47FBA9D6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainPlan] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__COMMODITY__ItemT__48CFD27E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (1) FOR [ItemType]
GO
/****** Object:  Default [DF__commodity__taxin__13F1F5EB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [taxin]
GO
/****** Object:  Default [DF__commodity__taxou__14E61A24]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [taxout]
GO
/****** Object:  Default [DF__commodity__isBas__29E1370A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isBaseMed]
GO
/****** Object:  Default [DF__commodity__PRESC__2AD55B43]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [PRESCRIPTION]
GO
/****** Object:  Default [DF__commodity__isSpe__2BC97F7C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isSpecial]
GO
/****** Object:  Default [DF__commodity__isXFJ__2CBDA3B5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isXFJ]
GO
/****** Object:  Default [DF__commodity__isSWZ__2DB1C7EE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isSWZP]
GO
/****** Object:  Default [DF__commodity__isELJ__2EA5EC27]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isELJSYP]
GO
/****** Object:  Default [DF__commodity__isQX__2F9A1060]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isQX]
GO
/****** Object:  Default [DF__commodity__isImp__3A6CA48E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isImportDrugs]
GO
/****** Object:  Default [DF__commodity__isEMC__03DB89B3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isEMC]
GO
/****** Object:  Default [DF__commodity__isNew__6C23FBB3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isNewProduct]
GO
/****** Object:  Default [DF__commodity__isMhj__0ECE1972]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isMhj]
GO
/****** Object:  Default [DF__commodity__isSto__0FC23DAB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (0) FOR [isStop]
GO
/****** Object:  Default [DF__commodity__price__77368703]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY] ADD  DEFAULT (1) FOR [pricenull]
GO
/****** Object:  Default [DF__Commodity__ItemT__00F4FB67]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT ('1') FOR [ItemType]
GO
/****** Object:  Default [DF__Commodity__taxin__01E91FA0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [taxin]
GO
/****** Object:  Default [DF__Commodity__taxou__02DD43D9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [taxout]
GO
/****** Object:  Default [DF__Commodity__isBas__03D16812]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [isBaseMed]
GO
/****** Object:  Default [DF__Commodity__PRESC__04C58C4B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [PRESCRIPTION]
GO
/****** Object:  Default [DF__Commodity__isSpe__05B9B084]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [isSpecial]
GO
/****** Object:  Default [DF__Commodity__isXFJ__06ADD4BD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [isXFJ]
GO
/****** Object:  Default [DF__Commodity__isSWZ__07A1F8F6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [isSWZP]
GO
/****** Object:  Default [DF__Commodity__isELJ__08961D2F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [isELJSYP]
GO
/****** Object:  Default [DF__CommodityT__isQX__098A4168]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [isQX]
GO
/****** Object:  Default [DF__Commodity__isImp__0A7E65A1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [isImportDrugs]
GO
/****** Object:  Default [DF__Commodity__isEMC__0B7289DA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [isEMC]
GO
/****** Object:  Default [DF__Commodity__isMhj__0C66AE13]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [isMhj]
GO
/****** Object:  Default [DF__Commodity__isSto__0D5AD24C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CommodityTarget] ADD  DEFAULT (0) FOR [isStop]
GO
/****** Object:  Default [DF__companyna__SupUs__164452B1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[companyname] ADD  DEFAULT ([dbo].[md5]('')) FOR [SupUserPWD]
GO
/****** Object:  Default [DF__companyna__DevUs__173876EA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[companyname] ADD  DEFAULT ([dbo].[md5]('')) FOR [DevUserPWD]
GO
/****** Object:  Default [DF__ComRechec__ThisD__7CD98669]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheck] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__ComRechec__DocPe__7DCDAAA2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheck] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__ComRechec__DocSt__7EC1CEDB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheck] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__ComRechec__Quant__056ECC6A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__ComRechec__Store__0662F0A3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail] ADD  DEFAULT (0) FOR [StoreinPrice]
GO
/****** Object:  Default [DF__ComRechec__Costs__075714DC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail] ADD  DEFAULT (0) FOR [Costs]
GO
/****** Object:  Default [DF__ComRechec__InPri__084B3915]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail] ADD  DEFAULT (0) FOR [InPriceTaxed]
GO
/****** Object:  Default [DF__ComRechec__Costs__093F5D4E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail] ADD  DEFAULT (0) FOR [CostsTaxed]
GO
/****** Object:  Default [DF__ComRechec__Detai__0A338187]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__ComRechec__inuse__0B27A5C0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__ComRechec__Audit__0C1BC9F9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__COMRECHEC__reqIn__10416098]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail] ADD  DEFAULT (1) FOR [reqInuse]
GO
/****** Object:  Default [DF__CustCateg__ileve__4316F928]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CustCategory] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__Customer__ilevel__534D60F1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__Customer__Score__7B264821]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (0) FOR [Score]
GO
/****** Object:  Default [DF__CustomerT__ileve__58F12BAE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CustomerTarget] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__DEPARTMEN__ileve__34C8D9D1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__DepartMen__haveA__6F4A8121]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  DEFAULT (0) FOR [haveAccount]
GO
/****** Object:  Default [DF__DeptPrice__isLun__6A1BB7B0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DeptPriceRole] ADD  DEFAULT (0) FOR [isLunar]
GO
/****** Object:  Default [DF__DeptPrice__isMem__6B0FDBE9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DeptPriceRole] ADD  DEFAULT (0) FOR [isMemDay]
GO
/****** Object:  Default [DF__DeptPrice__isReg__6C040022]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DeptPriceRole] ADD  DEFAULT (1) FOR [isRegScore]
GO
/****** Object:  Default [DF__DeptPrice__isSto__6CF8245B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DeptPriceRole] ADD  DEFAULT (0) FOR [isStop]
GO
/****** Object:  Default [DF__DeptPrice__seqNo__6DEC4894]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DeptPriceRole] ADD  DEFAULT (0) FOR [seqNo]
GO
/****** Object:  Default [DF__DeviceInU__DocTi__237F1D95]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DeviceInUse] ADD  DEFAULT (getdate()) FOR [DocTime]
GO
/****** Object:  Default [DF__DeviceMai__DocTi__265B8A40]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DeviceMaintain] ADD  DEFAULT (getdate()) FOR [DocTime]
GO
/****** Object:  Default [DF__DeviceRep__DocTi__2937F6EB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DeviceRepair] ADD  DEFAULT (getdate()) FOR [DocTime]
GO
/****** Object:  Default [DF__DirectInO__ThisD__72E607DB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOut] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__DirectInO__DocPe__73DA2C14]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOut] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__DirectInO__DocSt__74CE504D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOut] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__DirectInO__Quant__7993056A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__DirectInO__Store__7A8729A3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (0) FOR [StoreinPrice]
GO
/****** Object:  Default [DF__DirectInO__Costs__7B7B4DDC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (0) FOR [Costs]
GO
/****** Object:  Default [DF__DirectInO__InPri__7C6F7215]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (0) FOR [InPriceTaxed]
GO
/****** Object:  Default [DF__DirectInO__Costs__7D63964E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (0) FOR [CostsTaxed]
GO
/****** Object:  Default [DF__DirectInO__TaxIn__7E57BA87]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (0) FOR [TaxIn]
GO
/****** Object:  Default [DF__DirectInO__Sales__7F4BDEC0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (0) FOR [SalesPrice]
GO
/****** Object:  Default [DF__DirectInO__Amoun__004002F9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (0) FOR [Amount]
GO
/****** Object:  Default [DF__DirectInO__Amoun__01342732]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (0) FOR [AmountTaxed]
GO
/****** Object:  Default [DF__DirectInO__TaxOu__02284B6B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (0) FOR [TaxOut]
GO
/****** Object:  Default [DF__DirectInO__Detai__031C6FA4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__DirectInO__inuse__041093DD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__DirectInO__Audit__0504B816]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__Emergency__LEVEL__619B8048]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Emergency] ADD  DEFAULT (0) FOR [LEVEL]
GO
/****** Object:  Default [DF__EmployeeC__ThisD__05EEBAAE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[EmployeeCheck] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__EmployeeC__ThisD__0BA79404]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[EmployeeCheckAbnormal] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__EmployeeC__DocPe__0C9BB83D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[EmployeeCheckAbnormal] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__EmployeeC__DocSt__0D8FDC76]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[EmployeeCheckAbnormal] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__EmployeeC__inuse__0E8400AF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[EmployeeCheckAbnormal] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__EmployeeC__Audit__0F7824E8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[EmployeeCheckAbnormal] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__EmployeeT__ThisD__08CB2759]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[EmployeeTraining] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__eventlog__logTim__1B0907CE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[eventlog] ADD  DEFAULT (getdate()) FOR [logTime]
GO
/****** Object:  Default [DF__expenseCa__ileve__19C0A931]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[expenseCategory] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__FileManag__thisd__320C68B7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FileManage] ADD  DEFAULT (getdate()) FOR [thisdate]
GO
/****** Object:  Default [DF__FirstComm__ThisD__382F5661]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCommodity] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__FirstComm__DocSt__39237A9A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCommodity] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__FirstComm__Audit__3A179ED3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCommodity] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__FirstComm__INUSE__3B0BC30C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCommodity] ADD  DEFAULT (1) FOR [INUSE]
GO
/****** Object:  Default [DF__FirstComm__isBas__3CF40B7E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCommodity] ADD  DEFAULT (0) FOR [isBaseMed]
GO
/****** Object:  Default [DF__FirstComm__PRESC__3DE82FB7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCommodity] ADD  DEFAULT (0) FOR [PRESCRIPTION]
GO
/****** Object:  Default [DF__FirstCust__ThisD__40C49C62]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCustomer] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__FirstCust__DocSt__41B8C09B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCustomer] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__FirstCust__Audit__42ACE4D4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCustomer] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__FirstCust__INUSE__43A1090D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCustomer] ADD  DEFAULT (1) FOR [INUSE]
GO
/****** Object:  Default [DF__FirstVend__ThisD__32767D0B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstVendor] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__FirstVend__DocSt__336AA144]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstVendor] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__FirstVend__Audit__345EC57D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstVendor] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__FirstVend__INUSE__3552E9B6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstVendor] ADD  DEFAULT (1) FOR [INUSE]
GO
/****** Object:  Default [DF__FuncAuthA__DocSt__60BD35FF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FuncAuthApply] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__FuncAuthA__inuse__61B15A38]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FuncAuthApply] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__FuncAuthA__Audit__62A57E71]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FuncAuthApply] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__FuncAuthA__docti__6399A2AA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FuncAuthApply] ADD  DEFAULT (getdate()) FOR [doctime]
GO
/****** Object:  Default [DF__GSP_Device__sbzt__20A2B0EA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GSP_Device] ADD  DEFAULT ('备用') FOR [sbzt]
GO
/****** Object:  Default [DF__GSP_Maint__ThisD__1AE9D794]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GSP_MaintainSummary] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__GSP_Vendo__ThisD__1DC6443F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GSP_VendorStoreinJudge] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__GspCheck__ThisDa__68294D9D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GspCheck] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__GspCheck__DocPer__691D71D6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GspCheck] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__GspCheck__DocSta__6A11960F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GspCheck] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__GspCheckD__Detai__6DE226F3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GspCheckDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__GspCheckD__inuse__6ED64B2C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GspCheckDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__GspCheckD__Audit__6FCA6F65]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GspCheckDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__Ini_Inven__Quant__214BF109]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Ini_Inventory] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__Ini_Inven__Store__22401542]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Ini_Inventory] ADD  DEFAULT (0) FOR [StoreinPrice]
GO
/****** Object:  Default [DF__Ini_Inven__Costs__2334397B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Ini_Inventory] ADD  DEFAULT (0) FOR [Costs]
GO
/****** Object:  Default [DF__Ini_Inven__Price__24285DB4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Ini_Inventory] ADD  DEFAULT (0) FOR [PriceTaxed]
GO
/****** Object:  Default [DF__Ini_Inven__Costs__251C81ED]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Ini_Inventory] ADD  DEFAULT (0) FOR [CostsTaxed]
GO
/****** Object:  Default [DF__Ini_Inven__TaxIn__2610A626]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Ini_Inventory] ADD  DEFAULT (0) FOR [TaxIn]
GO
/****** Object:  Default [DF__Ini_Inven__InDat__2704CA5F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Ini_Inventory] ADD  DEFAULT (getdate()) FOR [InDate]
GO
/****** Object:  Default [DF__Inventory__Quant__6A30C649]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__Inventory__DocQu__6B24EA82]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory] ADD  DEFAULT (0) FOR [DocQuantity]
GO
/****** Object:  Default [DF__Inventory__Store__6C190EBB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory] ADD  DEFAULT (0) FOR [StoreinPrice]
GO
/****** Object:  Default [DF__Inventory__Costs__6D0D32F4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory] ADD  DEFAULT (0) FOR [Costs]
GO
/****** Object:  Default [DF__Inventory__Price__6E01572D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory] ADD  DEFAULT (0) FOR [PriceTaxed]
GO
/****** Object:  Default [DF__Inventory__Costs__6EF57B66]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory] ADD  DEFAULT (0) FOR [CostsTaxed]
GO
/****** Object:  Default [DF__inventory__ileve__59063A47]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[inventory_type] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__KeyComCon__ThisD__1E3A7A34]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[KeyComConfirm] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__MedAQuali__ThisD__12549193]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MedAQualityInfo] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__MedAQuali__inuse__56FEC19B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MedAQualityInfo] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__MedAQuali__Audit__57F2E5D4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MedAQualityInfo] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__MedType__ilevel__000AF8CF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MedType] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__Member__JoinDate__3C89F72A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Member] ADD  DEFAULT (getdate()) FOR [JoinDate]
GO
/****** Object:  Default [DF__Member__IsStop__3D7E1B63]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Member] ADD  DEFAULT (0) FOR [IsStop]
GO
/****** Object:  Default [DF__Member__CurScore__3E723F9C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Member] ADD  DEFAULT (0) FOR [CurScore]
GO
/****** Object:  Default [DF__Member__CurAmoun__3F6663D5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Member] ADD  DEFAULT (0) FOR [CurAmount]
GO
/****** Object:  Default [DF__Member__CurLeft__405A880E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Member] ADD  DEFAULT (0) FOR [CurLeft]
GO
/****** Object:  Default [DF__Member__ilevel__414EAC47]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Member] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__MemberCat__ileve__38B96646]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MemberCategory] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__MemberCat__AddUp__39AD8A7F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MemberCategory] ADD  DEFAULT (0) FOR [AddUpLeft]
GO
/****** Object:  Default [DF__MemberDay__isLun__627A95E8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MemberDay] ADD  DEFAULT (0) FOR [isLunar]
GO
/****** Object:  Default [DF__MemberSco__SeqId__7FEAFD3E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MemberScoreDetail] ADD  DEFAULT (convert(char(36),newid())) FOR [SeqId]
GO
/****** Object:  Default [DF__MemberSco__Score__00DF2177]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MemberScoreDetail] ADD  DEFAULT (getdate()) FOR [ScoreTime]
GO
/****** Object:  Default [DF__MemberSco__inuse__01D345B0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MemberScoreDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__MemberSco__isMan__02C769E9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MemberScoreDetail] ADD  DEFAULT (0) FOR [isManul]
GO
/****** Object:  Default [DF__MemberSco__Audit__03BB8E22]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MemberScoreDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__MemberSco__DocSt__04AFB25B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[MemberScoreDetail] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__ModifyApp__DocSt__66760F55]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ModifyApply] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__ModifyApp__inuse__676A338E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ModifyApply] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__ModifyApp__Audit__685E57C7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ModifyApply] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__ModifyApp__docti__69527C00]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ModifyApply] ADD  DEFAULT (getdate()) FOR [doctime]
GO
/****** Object:  Default [DF__Organizat__ileve__5827EFFE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Organization] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__overshort__Actor__408F9238]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[overshort_dzjg] ADD  DEFAULT ('扫描人') FOR [Actor]
GO
/****** Object:  Default [DF__overshort__ActDa__4183B671]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[overshort_dzjg] ADD  DEFAULT (getdate()) FOR [ActDate]
GO
/****** Object:  Default [DF__overshort__isUpl__4277DAAA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[overshort_dzjg] ADD  DEFAULT (0) FOR [isUpload]
GO
/****** Object:  Default [DF__PayWay__LEVEL__5BE2A6F2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PayWay] ADD  DEFAULT (0) FOR [LEVEL]
GO
/****** Object:  Default [DF__PayWay__isPayed__1B9317B3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PayWay] ADD  DEFAULT (0) FOR [isPayed]
GO
/****** Object:  Default [DF__POReceive__Order__45DE573A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceive] ADD  DEFAULT (1) FOR [OrderType]
GO
/****** Object:  Default [DF__POReceive__ThisD__46D27B73]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceive] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__POReceive__DocPe__47C69FAC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceive] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__POReceive__DocSt__48BAC3E5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceive] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__POReceive__IsPay__1F83A428]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceive] ADD  DEFAULT (1) FOR [IsPayed]
GO
/****** Object:  Default [DF__POReceive__Quant__4F67C174]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__POReceive__Detai__505BE5AD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__POReceive__inuse__515009E6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__POReceive__Audit__52442E1F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__POReceive__Store__53385258]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail] ADD  DEFAULT (0) FOR [StoreinFlag]
GO
/****** Object:  Default [DF__POReceive__SupQu__71BCD978]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail] ADD  DEFAULT (0) FOR [SupQuantity]
GO
/****** Object:  Default [DF__POReceive__Price__113584D1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail] ADD  DEFAULT (0) FOR [Price]
GO
/****** Object:  Default [DF__PurchaseC__ThisD__5B78929E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContract] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__PurchaseC__DocPe__5C6CB6D7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContract] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__PurchaseC__DocSt__5D60DB10]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContract] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__PurchaseC__Quant__6225902D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__PurchaseC__Price__6319B466]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail] ADD  DEFAULT (0) FOR [Price]
GO
/****** Object:  Default [DF__PurchaseC__Amoun__640DD89F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail] ADD  DEFAULT (0) FOR [Amount]
GO
/****** Object:  Default [DF__PurchaseC__Detai__6501FCD8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__PurchaseC__SupQu__65F62111]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail] ADD  DEFAULT (0) FOR [SupQuantity]
GO
/****** Object:  Default [DF__PurchaseC__inuse__66EA454A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__PurchaseC__Audit__67DE6983]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__PurchaseC__Order__0DCF0841]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail] ADD  DEFAULT (0) FOR [OrderFlag]
GO
/****** Object:  Default [DF__PurchaseC__Store__0EC32C7A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail] ADD  DEFAULT (0) FOR [StoreinFlag]
GO
/****** Object:  Default [DF__PurchaseO__ThisD__7D98A078]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrder] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__PurchaseO__DocPe__7E8CC4B1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrder] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__PurchaseO__DocSt__7F80E8EA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrder] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__PurchaseO__IsPay__2077C861]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrder] ADD  DEFAULT (1) FOR [IsPayed]
GO
/****** Object:  Default [DF__PurchaseO__HaveI__33B5855E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrder] ADD  DEFAULT (1) FOR [HaveInvoice]
GO
/****** Object:  Default [DF__PurchaseO__Quant__04459E07]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__PurchaseO__Price__0539C240]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  DEFAULT (0) FOR [Price]
GO
/****** Object:  Default [DF__PurchaseO__Amoun__062DE679]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  DEFAULT (0) FOR [Amount]
GO
/****** Object:  Default [DF__PurchaseO__Detai__07220AB2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__PurchaseO__SupQu__08162EEB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  DEFAULT (0) FOR [SupQuantity]
GO
/****** Object:  Default [DF__PurchaseO__inuse__090A5324]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__PurchaseO__Audit__09FE775D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__PurchaseO__Store__0FB750B3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  DEFAULT (0) FOR [StoreinFlag]
GO
/****** Object:  Default [DF__PurchaseP__ThisD__4865BE2A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlan] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__PurchaseP__DocPe__4959E263]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlan] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__PurchaseP__DocSt__4A4E069C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlan] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__PurchaseP__Quant__4F12BBB9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__PurchaseP__Price__5006DFF2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail] ADD  DEFAULT (0) FOR [Price]
GO
/****** Object:  Default [DF__PurchaseP__Amoun__51EF2864]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail] ADD  DEFAULT (0) FOR [Amount]
GO
/****** Object:  Default [DF__PurchaseP__Detai__52E34C9D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__PurchaseP__SupQu__53D770D6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail] ADD  DEFAULT (0) FOR [SupQuantity]
GO
/****** Object:  Default [DF__PurchaseP__inuse__54CB950F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__PurchaseP__Audit__55BFB948]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__PurchaseP__Contr__0AF29B96]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail] ADD  DEFAULT (0) FOR [ContractFlag]
GO
/****** Object:  Default [DF__PurchaseP__Order__0BE6BFCF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail] ADD  DEFAULT (0) FOR [OrderFlag]
GO
/****** Object:  Default [DF__PurchaseP__Store__0CDAE408]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail] ADD  DEFAULT (0) FOR [StoreinFlag]
GO
/****** Object:  Default [DF__RealMessa__sendT__34E8D562]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RealMessage] ADD  DEFAULT (getdate()) FOR [sendTime]
GO
/****** Object:  Default [DF__RealMessa__isRea__35DCF99B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RealMessage] ADD  DEFAULT (1) FOR [isRead]
GO
/****** Object:  Default [DF__RegShorta__Detai__785FB566]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RegShortage] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__RegShorta__DocSt__7953D99F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RegShortage] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__RegShorta__inuse__7A47FDD8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RegShortage] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__RegShorta__Audit__7B3C2211]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RegShortage] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__RequestPl__ThisD__2E06CDA9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlan] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__RequestPl__DocPe__2EFAF1E2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlan] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__RequestPl__DocSt__2FEF161B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlan] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__RequestPl__Quant__33BFA6FF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlanDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__RequestPl__Price__34B3CB38]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlanDetail] ADD  DEFAULT (0) FOR [Price]
GO
/****** Object:  Default [DF__RequestPl__Amoun__35A7EF71]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlanDetail] ADD  DEFAULT (0) FOR [Amount]
GO
/****** Object:  Default [DF__RequestPl__Detai__369C13AA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlanDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__RequestPl__SupQu__379037E3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlanDetail] ADD  DEFAULT (0) FOR [SupQuantity]
GO
/****** Object:  Default [DF__RequestPl__inuse__38845C1C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlanDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__RequestPl__Audit__39788055]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlanDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__retailPay__SeqId__3E3D3572]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[retailPayment] ADD  DEFAULT (convert(char(36),newid())) FOR [SeqId]
GO
/****** Object:  Default [DF__retailPay__Detai__3F3159AB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[retailPayment] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__retailPay__inuse__40257DE4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[retailPayment] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__retailPay__Audit__4119A21D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[retailPayment] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__retailPay__DocSt__420DC656]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[retailPayment] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__RiskByEnt__ThisD__5ACF527F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RiskByEnterprice] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__RiskByEnt__DocSt__5BC376B8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RiskByEnterprice] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__RiskByEnt__Audit__5CB79AF1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RiskByEnterprice] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__RiskByEnt__INUSE__5DABBF2A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RiskByEnterprice] ADD  DEFAULT (1) FOR [INUSE]
GO
/****** Object:  Default [DF__roleDtFilt__ROpr__117F9D94]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[roleDtFilter] ADD  DEFAULT (0) FOR [ROpr]
GO
/****** Object:  Default [DF__sales_dzj__Actor__3CBF0154]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sales_dzjg] ADD  DEFAULT ('扫描人') FOR [Actor]
GO
/****** Object:  Default [DF__sales_dzj__ActDa__3DB3258D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sales_dzjg] ADD  DEFAULT (getdate()) FOR [ActDate]
GO
/****** Object:  Default [DF__sales_dzj__isUpl__3EA749C6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sales_dzjg] ADD  DEFAULT (0) FOR [isUpload]
GO
/****** Object:  Default [DF__SalesComm__ThisD__4924D839]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommission] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__SalesComm__DocPe__4A18FC72]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommission] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__SalesComm__DocSt__4B0D20AB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommission] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__SalesComm__ThisD__410F807C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionByAmt] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__SalesComm__DocPe__4203A4B5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionByAmt] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__SalesComm__DocSt__42F7C8EE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionByAmt] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__SalesComm__Detai__46C859D2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionByAmtDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__SalesComm__inuse__47BC7E0B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionByAmtDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__SalesComm__Audit__48B0A244]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionByAmtDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__SalesComm__Detai__4FD1D5C8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__SalesComm__inuse__50C5FA01]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__SalesComm__Audit__51BA1E3A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__SalesOrde__ThisD__0C85DE4D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__SalesOrde__DocSt__0D7A0286]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__salesorde__Print__5B438874]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (0) FOR [PrintCount]
GO
/****** Object:  Default [DF__salesorde__HaveI__1D9B5BB6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (1) FOR [HaveInvoice]
GO
/****** Object:  Default [DF__salesorde__isPre__7FA0E47B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (0) FOR [isPresent]
GO
/****** Object:  Default [DF__salesorde__PkPri__00BFF13D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (0) FOR [PkPrintCount]
GO
/****** Object:  Default [DF__salesorde__thisd__04908221]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[salesorder2] ADD  DEFAULT (getdate()) FOR [thisdate]
GO
/****** Object:  Default [DF__SalesOrde__Quant__1332DBDC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__SalesOrde__Price__14270015]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderDetail] ADD  DEFAULT (0) FOR [PriceTaxed]
GO
/****** Object:  Default [DF__SalesOrde__Amoun__151B244E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderDetail] ADD  DEFAULT (0) FOR [AmountTaxed]
GO
/****** Object:  Default [DF__SalesOrde__Detai__160F4887]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__salesOrde__inuse__0F2D40CE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__salesorde__Audit__18B6AB08]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__salesorde__isPre__1A9EF37A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderDetail] ADD  DEFAULT (0) FOR [isPresent]
GO
/****** Object:  Default [DF__salesorde__PkDPr__0F0E1094]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderDetail] ADD  DEFAULT (0) FOR [PkDPrintCount]
GO
/****** Object:  Default [DF__SalesOrde__ThisD__532E30B7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderImport] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__SalesOrde__Quant__542254F0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderImport] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__SalesOrde__Price__55167929]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderImport] ADD  DEFAULT (0) FOR [PriceTaxed]
GO
/****** Object:  Default [DF__SalesOrde__Amoun__560A9D62]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderImport] ADD  DEFAULT (0) FOR [AmountTaxed]
GO
/****** Object:  Default [DF__SalesOrde__Detai__61F08603]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderPay] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__SalesOrde__Updat__62E4AA3C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderPay] ADD  DEFAULT (0) FOR [UpdateFlag]
GO
/****** Object:  Default [DF__SalesPara__Enabl__01892CED]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesPara] ADD  DEFAULT (0) FOR [EnableAreaUserAuth]
GO
/****** Object:  Default [DF__SalesPara__Enabl__027D5126]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesPara] ADD  DEFAULT (0) FOR [EnableComUserAuth]
GO
/****** Object:  Default [DF__SalesPara__AcByS__0371755F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesPara] ADD  DEFAULT (0) FOR [AcBySettlePrice]
GO
/****** Object:  Default [DF__SalesPara__Daily__2D0887CF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesPara] ADD  DEFAULT ('23:59:59') FOR [DailyReportTime]
GO
/****** Object:  Default [DF__SalesPay__Detail__67A95F59]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesPay] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__SalesPay__Update__689D8392]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesPay] ADD  DEFAULT (0) FOR [UpdateFlag]
GO
/****** Object:  Default [DF__SalesShip__ThisD__150615B5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesShipping] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__SalesShip__DocPe__15FA39EE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesShipping] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__SalesShip__DocSt__16EE5E27]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesShipping] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__SalesShip__Detai__1ABEEF0B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesShippingDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__SalesShip__inuse__1BB31344]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesShippingDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__SalesShip__Audit__1CA7377D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesShippingDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__SalesStop__ThisD__546180BB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesStop] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__SalesStop__DocPe__5555A4F4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesStop] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__SalesStop__DocSt__5649C92D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesStop] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__SalesStop__inuse__5832119F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesStop] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__SalesStop__Audit__592635D8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesStop] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__SalesStop__isRel__5A1A5A11]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesStop] ADD  DEFAULT (0) FOR [isRelease]
GO
/****** Object:  Default [DF__SalesStop__Detai__5B0E7E4A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesStop] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__SalesTran__ThisD__63A3C44B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesTransport] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__SalesTran__DocPe__6497E884]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesTransport] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__SalesTran__DocSt__658C0CBD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesTransport] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__SalesTran__isFre__34A9A997]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesTransport] ADD  DEFAULT (0) FOR [isFreeze]
GO
/****** Object:  Default [DF__SalesTran__Detai__695C9DA1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesTransportDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__SalesTran__inuse__6A50C1DA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesTransportDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__SalesTran__Audit__6B44E613]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesTransportDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__ShippingT__LEVEL__5EBF139D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ShippingType] ADD  DEFAULT (0) FOR [LEVEL]
GO
/****** Object:  Default [DF__StorageMo__ThisD__08D548FA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StorageMove] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__StorageMo__Quant__09C96D33]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StorageMove] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__StorageMo__DocPe__0ABD916C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StorageMove] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__StorageMo__DocSt__0BB1B5A5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StorageMove] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__StorageMo__inuse__0CA5D9DE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StorageMove] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__StorageMo__Audit__0D99FE17]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StorageMove] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__STORAGEMO__reqIn__0F4D3C5F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StorageMove] ADD  DEFAULT (1) FOR [reqInuse]
GO
/****** Object:  Default [DF__StoreAdju__ThisD__30C33EC3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjust] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__StoreAdju__DocSt__31B762FC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjust] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__StoreAdju__Print__5C37ACAD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjust] ADD  DEFAULT (0) FOR [PrintCount]
GO
/****** Object:  Default [DF__StoreAdju__Quant__37703C52]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__StoreAdju__Store__3864608B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail] ADD  DEFAULT (0) FOR [StoreinPrice]
GO
/****** Object:  Default [DF__StoreAdju__Costs__395884C4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail] ADD  DEFAULT (0) FOR [Costs]
GO
/****** Object:  Default [DF__StoreAdju__TaxIn__3A4CA8FD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail] ADD  DEFAULT (0) FOR [TaxIn]
GO
/****** Object:  Default [DF__StoreAdju__InPri__3B40CD36]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail] ADD  DEFAULT (0) FOR [InPriceTaxed]
GO
/****** Object:  Default [DF__StoreAdju__Costs__3C34F16F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail] ADD  DEFAULT (0) FOR [CostsTaxed]
GO
/****** Object:  Default [DF__StoreAdju__Detai__3D2915A8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__storeAdju__inuse__0E391C95]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__storeAdju__Audit__17C286CF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__storeadju__isDes__5D2BD0E6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail] ADD  DEFAULT (0) FOR [isDestroy]
GO
/****** Object:  Default [DF__StoreChec__ThisD__1387E197]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheck] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__StoreChec__DocSt__147C05D0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheck] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__StoreChec__Input__15702A09]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheck] ADD  DEFAULT (0) FOR [InputStatus]
GO
/****** Object:  Default [DF__StoreChec__Check__16644E42]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheck] ADD  DEFAULT (0) FOR [CheckStatus]
GO
/****** Object:  Default [DF__StoreChec__Quant__1D114BD1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__StoreChec__RealQ__1E05700A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail] ADD  DEFAULT (0) FOR [RealQuantity]
GO
/****** Object:  Default [DF__StoreChec__Store__1EF99443]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail] ADD  DEFAULT (0) FOR [StoreinPrice]
GO
/****** Object:  Default [DF__StoreChec__Costs__1FEDB87C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail] ADD  DEFAULT (0) FOR [Costs]
GO
/****** Object:  Default [DF__StoreChec__TaxIn__20E1DCB5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail] ADD  DEFAULT (0) FOR [TaxIn]
GO
/****** Object:  Default [DF__StoreChec__InPri__21D600EE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail] ADD  DEFAULT (0) FOR [InPriceTaxed]
GO
/****** Object:  Default [DF__StoreChec__Costs__22CA2527]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail] ADD  DEFAULT (0) FOR [CostsTaxed]
GO
/****** Object:  Default [DF__StoreChec__Detai__23BE4960]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__StoreChec__inuse__5C02A283]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__StoreChec__Audit__5CF6C6BC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__StoreChec__ThisD__278EDA44]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInput] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__StoreChec__DocSt__2882FE7D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInput] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__StoreChec__Quant__2F2FFC0C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInputDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__StoreChec__Detai__30242045]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInputDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__StoreChec__inuse__5DEAEAF5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInputDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__StoreChec__Audit__5EDF0F2E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInputDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__StoreCond__ileve__02E7657A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCondition] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__StoreIn__OrderTy__73BA3083]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn] ADD  DEFAULT (1) FOR [OrderType]
GO
/****** Object:  Default [DF__StoreIn__ThisDat__778AC167]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__StoreIn__DocPers__787EE5A0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__StoreIn__DocStat__797309D9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__StoreIn__IsPayed__7A672E12]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn] ADD  DEFAULT (1) FOR [IsPayed]
GO
/****** Object:  Default [DF__StoreIn__PrintCo__595B4002]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn] ADD  DEFAULT (0) FOR [PrintCount]
GO
/****** Object:  Default [DF__Storein__HaveInv__5CC1BC92]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn] ADD  DEFAULT (1) FOR [HaveInvoice]
GO
/****** Object:  Default [DF__storein_d__Actor__38EE7070]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[storein_dzjg] ADD  DEFAULT ('扫描人') FOR [Actor]
GO
/****** Object:  Default [DF__storein_d__ActDa__39E294A9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[storein_dzjg] ADD  DEFAULT (getdate()) FOR [ActDate]
GO
/****** Object:  Default [DF__storein_d__isUpl__3AD6B8E2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[storein_dzjg] ADD  DEFAULT (0) FOR [isUpload]
GO
/****** Object:  Default [DF__StoreInDe__Quant__01142BA1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__StoreInDe__Price__02084FDA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT (0) FOR [Price]
GO
/****** Object:  Default [DF__StoreInDe__TaxIn__02FC7413]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT (0) FOR [TaxIn]
GO
/****** Object:  Default [DF__StoreInDe__Amoun__03F0984C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT (0) FOR [Amount]
GO
/****** Object:  Default [DF__StoreInDe__Price__04E4BC85]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT (0) FOR [PriceTaxed]
GO
/****** Object:  Default [DF__StoreInDe__Charg__05D8E0BE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT (0) FOR [Charge]
GO
/****** Object:  Default [DF__StoreInDe__Detai__06CD04F7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__storeinDe__inuse__0C50D423]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__storeinDe__Audit__15DA3E5D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__storeinDe__quant__4301EA8F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT (0) FOR [quantity_refunded]
GO
/****** Object:  Default [DF__storeInDe__isUpd__0D64F3ED]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail] ADD  DEFAULT (0) FOR [isUpdateCheck]
GO
/****** Object:  Default [DF__StoreInRe__ThisD__6D9742D9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuse] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__StoreInRe__DocPe__6E8B6712]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuse] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__StoreInRe__DocSt__6F7F8B4B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuse] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__StoreInRe__Quant__74444068]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuseDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__StoreInRe__Price__753864A1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuseDetail] ADD  DEFAULT (0) FOR [Price]
GO
/****** Object:  Default [DF__StoreInRe__Amoun__762C88DA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuseDetail] ADD  DEFAULT (0) FOR [Amount]
GO
/****** Object:  Default [DF__StoreInRe__Detai__7720AD13]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuseDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__StoreInRe__inuse__7814D14C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuseDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__StoreInRe__Audit__7908F585]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuseDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__StoreMove__ThisD__22FF2F51]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMove] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__StoreMove__DocSt__23F3538A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMove] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__StoreMove__Print__72B0FDB1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMove] ADD  DEFAULT (0) FOR [PrintCount]
GO
/****** Object:  Default [DF__StoreMove__ThisD__7E4D98E6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveByPack] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__StoreMove__Quant__7F41BD1F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveByPack] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__StoreMove__DocPe__0035E158]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveByPack] ADD  DEFAULT ('xt') FOR [DocPerson]
GO
/****** Object:  Default [DF__StoreMove__DocSt__012A0591]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveByPack] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__StoreMove__inuse__021E29CA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveByPack] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__StoreMove__Audit__03124E03]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveByPack] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__StoreMove__Quant__2C88998B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__StoreMove__Price__2D7CBDC4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (0) FOR [PriceTaxed]
GO
/****** Object:  Default [DF__StoreMove__Amoun__2E70E1FD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (0) FOR [AmountTaxed]
GO
/****** Object:  Default [DF__StoreMove__TaxOu__2F650636]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (0) FOR [TaxOut]
GO
/****** Object:  Default [DF__StoreMove__Charg__30592A6F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (0) FOR [Charge]
GO
/****** Object:  Default [DF__StoreMove__Store__314D4EA8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (0) FOR [StoreinPrice]
GO
/****** Object:  Default [DF__StoreMove__Costs__324172E1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (0) FOR [Costs]
GO
/****** Object:  Default [DF__StoreMove__InPri__3335971A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (0) FOR [InPriceTaxed]
GO
/****** Object:  Default [DF__StoreMove__Costs__3429BB53]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (0) FOR [CostsTaxed]
GO
/****** Object:  Default [DF__StoreMove__Detai__351DDF8C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__StoreMove__inuse__361203C5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__StoreMove__Audit__370627FE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__Storemove__reqIn__0E591826]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail] ADD  DEFAULT (1) FOR [reqInuse]
GO
/****** Object:  Default [DF__StoreOut__ThisDa__1BC821DD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__StoreOut__DocSta__1CBC4616]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__storeout__receiv__7C1A6C5A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [receivedAmount]
GO
/****** Object:  Default [DF__storeout__change__7D0E9093]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [changeAmount]
GO
/****** Object:  Default [DF__storeout__score__05A3D694]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [score]
GO
/****** Object:  Default [DF__StoreOut__PrintC__5A4F643B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [PrintCount]
GO
/****** Object:  Default [DF__StoreOut__isCust__5FD33367]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [isCustReceipt]
GO
/****** Object:  Default [DF__storeout__isRegS__3B60C8C7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [isRegScore]
GO
/****** Object:  Default [DF__StoreOut__HaveIn__5DB5E0CB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (1) FOR [HaveInvoice]
GO
/****** Object:  Default [DF__storeout__isPres__7EACC042]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [isPresent]
GO
/****** Object:  Default [DF__storeout__isRxCh__49A4C67D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (1) FOR [isRxCheck]
GO
/****** Object:  Default [DF__storeout__Audit__4A98EAB6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT ((-2)) FOR [Audit]
GO
/****** Object:  Default [DF__StoreOut__AcPrin__6DAD1CC9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [AcPrintCount]
GO
/****** Object:  Default [DF__StoreOut__PkPrin__6EA14102]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [PkPrintCount]
GO
/****** Object:  Default [DF__StoreOut__ShpPri__6F95653B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [ShpPrintCount]
GO
/****** Object:  Default [DF__StoreOut__CkPrin__70898974]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut] ADD  DEFAULT (0) FOR [CkPrintCount]
GO
/****** Object:  Default [DF__storeout2__thisd__02A839AF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[storeout2] ADD  DEFAULT (getdate()) FOR [thisdate]
GO
/****** Object:  Default [DF__StoreOutD__Quant__236943A5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [Quantity]
GO
/****** Object:  Default [DF__StoreOutD__Price__245D67DE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [PriceTaxed]
GO
/****** Object:  Default [DF__StoreOutD__Amoun__25518C17]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [AmountTaxed]
GO
/****** Object:  Default [DF__StoreOutD__TaxOu__2645B050]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [TaxOut]
GO
/****** Object:  Default [DF__StoreOutD__Charg__2739D489]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [Charge]
GO
/****** Object:  Default [DF__StoreOutD__Store__282DF8C2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [StoreinPrice]
GO
/****** Object:  Default [DF__StoreOutD__Costs__29221CFB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [Costs]
GO
/****** Object:  Default [DF__StoreOutD__InPri__2A164134]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [InPriceTaxed]
GO
/****** Object:  Default [DF__StoreOutD__Costs__2B0A656D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [CostsTaxed]
GO
/****** Object:  Default [DF__StoreOutD__Detai__2BFE89A6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (getdate()) FOR [DetailTime]
GO
/****** Object:  Default [DF__Storeoutd__quant__2CF2ADDF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [quantity_refunded]
GO
/****** Object:  Default [DF__storeoutD__score__0697FACD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [score]
GO
/****** Object:  Default [DF__storeoutD__inuse__0D44F85C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__storeoutD__Audit__16CE6296]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__storeoutD__isPre__19AACF41]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [isPresent]
GO
/****** Object:  Default [DF__storeOutD__isUpd__1E8F7FEF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [isUpdateCheck]
GO
/****** Object:  Default [DF__StoreOutD__PkDPr__0E19EC5B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail] ADD  DEFAULT (0) FOR [PkDPrintCount]
GO
/****** Object:  Default [DF__SYS_Opera__PASSW__0AD2A005]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SYS_Operator] ADD  DEFAULT ([dbo].[md5]('')) FOR [PASSWD]
GO
/****** Object:  Default [DF__SYS_Opera__isSto__0BC6C43E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SYS_Operator] ADD  DEFAULT (0) FOR [isStop]
GO
/****** Object:  Default [DF__SYS_Opera__isAct__68E867AC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SYS_Operator] ADD  DEFAULT (0) FOR [isActive]
GO
/****** Object:  Default [DF__SYS_Opera__allow__717DADAD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SYS_Operator] ADD  DEFAULT (1) FOR [allowReLogin]
GO
/****** Object:  Default [DF__sysField__OrderS__25869641]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sysField] ADD  DEFAULT (0) FOR [OrderSeq]
GO
/****** Object:  Default [DF__sysField__OrderT__267ABA7A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sysField] ADD  DEFAULT (0) FOR [OrderType]
GO
/****** Object:  Default [DF__sysField__isOnly__276EDEB3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sysField] ADD  DEFAULT (0) FOR [isOnlyEdit]
GO
/****** Object:  Default [DF__sysField__isOnly__286302EC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sysField] ADD  DEFAULT (0) FOR [isOnlyQry]
GO
/****** Object:  Default [DF__sysField__isProt__29572725]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sysField] ADD  DEFAULT (0) FOR [isProtect]
GO
/****** Object:  Default [DF__sysField__isText__2A4B4B5E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sysField] ADD  DEFAULT (0) FOR [isText]
GO
/****** Object:  Default [DF__sysField__isFilt__2B3F6F97]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sysField] ADD  DEFAULT (0) FOR [isFilter]
GO
/****** Object:  Default [DF__sysField__isRef__2C3393D0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[sysField] ADD  DEFAULT (0) FOR [isRef]
GO
/****** Object:  Default [DF__SysMainta__DocSt__6C2EE8AB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SysMaintain] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__SysMainta__inuse__6D230CE4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SysMaintain] ADD  DEFAULT (1) FOR [inuse]
GO
/****** Object:  Default [DF__SysMainta__Audit__6E17311D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SysMaintain] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__SysMainta__docti__6F0B5556]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SysMaintain] ADD  DEFAULT (getdate()) FOR [doctime]
GO
/****** Object:  Default [DF__SysParame__Score__078C1F06]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SysParameter] ADD  DEFAULT (1) FOR [Score]
GO
/****** Object:  Default [DF__SysParamet__Unit__0880433F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SysParameter] ADD  DEFAULT (1) FOR [Unit]
GO
/****** Object:  Default [DF__SysParame__Throw__09746778]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SysParameter] ADD  DEFAULT (1) FOR [ThrowLeft]
GO
/****** Object:  Default [DF__SysParame__recRe__0A688BB1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SysParameter] ADD  DEFAULT (1) FOR [recRefund]
GO
/****** Object:  Default [DF__SysParame__IsSco__0B5CAFEA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SysParameter] ADD  DEFAULT (1) FOR [IsScore]
GO
/****** Object:  Default [DF__SystemPar__Enabl__6B2FD77A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SystemPara] ADD  DEFAULT (0) FOR [EnableSystemMessage]
GO
/****** Object:  Default [DF__SystemPar__Commo__71E7C201]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SystemPara] ADD  DEFAULT (7) FOR [CommonMaintainPlanTimer]
GO
/****** Object:  Default [DF__SystemPar__KeyMa__72DBE63A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SystemPara] ADD  DEFAULT (7) FOR [KeyMaintainPlanTimer]
GO
/****** Object:  Default [DF__TaskManag__sendT__3C4ACB5F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[TaskManage] ADD  DEFAULT (getdate()) FOR [sendTime]
GO
/****** Object:  Default [DF__TaskManage__flag__3D3EEF98]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[TaskManage] ADD  DEFAULT (1) FOR [flag]
GO
/****** Object:  Default [DF__TransUnit__ThisD__09946309]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[TransUnit] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__TransUnit__DocSt__0A888742]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[TransUnit] ADD  DEFAULT (1) FOR [DocStatus]
GO
/****** Object:  Default [DF__TransUnit__Audit__0B7CAB7B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[TransUnit] ADD  DEFAULT ((-1)) FOR [Audit]
GO
/****** Object:  Default [DF__TransUnit__INUSE__0C70CFB4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[TransUnit] ADD  DEFAULT (1) FOR [INUSE]
GO
/****** Object:  Default [DF__Unqualifi__ThisD__1530FE3E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[UnqualifiedMedInfo] ADD  DEFAULT (getdate()) FOR [ThisDate]
GO
/****** Object:  Default [DF__UserAuthDt__ROpr__7FCBCD04]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[UserAuthDtFilter] ADD  DEFAULT (0) FOR [ROpr]
GO
/****** Object:  Default [DF__UserFavor__IsAut__30F848ED]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[UserFavorites] ADD  DEFAULT (0) FOR [IsAutoRun]
GO
/****** Object:  Default [DF__Vendor__ilevel__4E88ABD4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Vendor] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__VendorCat__ileve__403A8C7D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[VendorCategory] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__VendorTar__ileve__5614BF03]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[VendorTarget] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__WAREHOUSE__ileve__37A5467C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[WAREHOUSE] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Default [DF__warehouse__isEnt__216BEC9A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[WAREHOUSE] ADD  DEFAULT (0) FOR [isEntirePackage]
GO
/****** Object:  Default [DF__WhArea__ilevel__7D2E8C24]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[WhArea] ADD  DEFAULT (0) FOR [ilevel]
GO
/****** Object:  Check [chk_payamountlessthanamount_iniaccnt]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcIniAccnt]  WITH CHECK ADD  CONSTRAINT [chk_payamountlessthanamount_iniaccnt] CHECK  ((abs([payamount]) <= abs([amount])))
GO
ALTER TABLE [dbo].[AcIniAccnt] CHECK CONSTRAINT [chk_payamountlessthanamount_iniaccnt]
GO
/****** Object:  Check [CHK_DOCQUANTITY]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [CHK_DOCQUANTITY] CHECK  (([DocQuantity] >= 0))
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [CHK_DOCQUANTITY]
GO
/****** Object:  Check [Chk_DocQuantityLessThanQuantity]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [Chk_DocQuantityLessThanQuantity] CHECK  (([DocQuantity] <= [Quantity]))
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [Chk_DocQuantityLessThanQuantity]
GO
/****** Object:  ForeignKey [FK_AcCODE_PARENT_CODE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcCODE]  WITH CHECK ADD  CONSTRAINT [FK_AcCODE_PARENT_CODE] FOREIGN KEY([PARENT_CODE])
REFERENCES [dbo].[AcCODE] ([CODE])
GO
ALTER TABLE [dbo].[AcCODE] CHECK CONSTRAINT [FK_AcCODE_PARENT_CODE]
GO
/****** Object:  ForeignKey [FK__AcInvoice__BILLN__55009F39]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcInvoiceDetail]  WITH CHECK ADD FOREIGN KEY([BILLNO])
REFERENCES [dbo].[AcInvoice] ([BILLNO])
GO
/****** Object:  ForeignKey [FK__AcPayDeta__BILLN__489AC854]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayDetail]  WITH CHECK ADD FOREIGN KEY([BILLNO])
REFERENCES [dbo].[AcPay] ([BILLNO])
GO
/****** Object:  ForeignKey [FK__AcPayDeta__PayWa__498EEC8D]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayDetail]  WITH CHECK ADD FOREIGN KEY([PayWayID])
REFERENCES [dbo].[PayWay] ([PayWayID])
GO
/****** Object:  ForeignKey [FK__AcPayDeta__BILLN__4E53A1AA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcPayDetail2]  WITH CHECK ADD FOREIGN KEY([BILLNO])
REFERENCES [dbo].[AcPay] ([BILLNO])
GO
/****** Object:  ForeignKey [FK__AcVouchDe__DEPT___72910220]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[AcVouchDetail]  WITH CHECK ADD FOREIGN KEY([DEPT_CODE])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__ClarityCh__DeptC__1EC48A19]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheck]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__ClarityCh__BillN__247D636F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheckDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[ClarityCheck] ([BillNo])
GO
/****** Object:  ForeignKey [FK__ClarityCh__COMID__257187A8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ClarityCheckDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__ColorChec__DeptC__10766AC2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheck]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__ColorChec__BillN__162F4418]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheckDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[ColorCheck] ([BillNo])
GO
/****** Object:  ForeignKey [FK__ColorChec__COMID__17236851]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ColorCheckDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__ComMainta__DeptC__0EF836A4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintain]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__ComMainta__EmpCo__0FEC5ADD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintain]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__ComMainta__BillN__15A53433]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[ComMaintain] ([BillNo])
GO
/****** Object:  ForeignKey [FK__ComMainta__COMID__1699586C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__ComMainta__BillN__4AD81681]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetailPlan]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[ComMaintainPlan] ([BillNo])
GO
/****** Object:  ForeignKey [FK__ComMainta__COMID__4BCC3ABA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainDetailPlan]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__ComMainta__DeptC__442B18F2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainPlan]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__ComMainta__EmpCo__451F3D2B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComMaintainPlan]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__COMMODITY__ComCa__49C3F6B7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[COMMODITY]  WITH CHECK ADD FOREIGN KEY([ComCatID])
REFERENCES [dbo].[ComCategory] ([ComCatID])
GO
/****** Object:  ForeignKey [FK__ComRechec__DeptC__7BE56230]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheck]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__ComRechec__BillN__019E3B86]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[ComRecheck] ([BillNo])
GO
/****** Object:  ForeignKey [FK__ComRechec__COMID__02925FBF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__ComRechec__LocID__047AA831]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail]  WITH CHECK ADD FOREIGN KEY([LocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__ComRechec__WAREH__038683F8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[ComRecheckDetail]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__Customer__AreaCa__52593CB8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([AreaCatID])
REFERENCES [dbo].[AreaCategory] ([AreaCatID])
GO
/****** Object:  ForeignKey [FK__Customer__CustCa__5165187F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([CustCatID])
REFERENCES [dbo].[CustCategory] ([CustCatID])
GO
/****** Object:  ForeignKey [FK__CustomerE__CustA__58671BC9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CustomerEmployee]  WITH CHECK ADD FOREIGN KEY([CustAccount])
REFERENCES [dbo].[Customer] ([Account])
GO
/****** Object:  ForeignKey [FK__CustomerR__CustA__5BCD9859]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[CustomerReceiver]  WITH CHECK ADD FOREIGN KEY([CustAccount])
REFERENCES [dbo].[Customer] ([Account])
GO
/****** Object:  ForeignKey [FK__DirectInO__CustA__70FDBF69]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOut]  WITH CHECK ADD FOREIGN KEY([CustAccount])
REFERENCES [dbo].[Customer] ([Account])
GO
/****** Object:  ForeignKey [FK__DirectInO__DeptC__6E2152BE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOut]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__DirectInO__EmpCo__6F1576F7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOut]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__DirectInO__SaleE__71F1E3A2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOut]  WITH CHECK ADD FOREIGN KEY([SaleEmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__DirectInO__SupAc__70099B30]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOut]  WITH CHECK ADD FOREIGN KEY([SupAccount])
REFERENCES [dbo].[Vendor] ([Account])
GO
/****** Object:  ForeignKey [FK__DirectInO__BillN__77AABCF8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[DirectInOut] ([BillNo])
GO
/****** Object:  ForeignKey [FK__DirectInO__COMID__789EE131]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[DirectInOutDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__EMPLOYEE__DEPT_C__5629CD9C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD FOREIGN KEY([DEPT_CODE])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__FirstComm__ComCa__3BFFE745]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[FirstCommodity]  WITH CHECK ADD FOREIGN KEY([ComCatID])
REFERENCES [dbo].[ComCategory] ([ComCatID])
GO
/****** Object:  ForeignKey [FK__GoodsLoca__WAREH__3A81B327]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GoodsLocation]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__GspCheckD__BillN__6CEE02BA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[GspCheckDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[GspCheck] ([BillNo])
GO
/****** Object:  ForeignKey [FK__Ini_Inven__COMID__2057CCD0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Ini_Inventory]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__Ini_Inven__LocID__1F63A897]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Ini_Inventory]  WITH CHECK ADD FOREIGN KEY([LocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__Ini_Inven__WAREH__1E6F845E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Ini_Inventory]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__Inventory__COMID__693CA210]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__inventory__LocID__12FDD1B2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([LocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__Inventory__WAREH__68487DD7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__POReceive__BillN__4B973090]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[POReceive] ([BillNo])
GO
/****** Object:  ForeignKey [FK__POReceive__COMID__4C8B54C9]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__POReceive__LocID__4E739D3B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail]  WITH CHECK ADD FOREIGN KEY([LocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__POReceive__WAREH__4D7F7902]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[POReceiveDetail]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__PurchaseC__DeptC__589C25F3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContract]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__PurchaseC__EmpCo__59904A2C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContract]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__PurchaseC__SupAc__5A846E65]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContract]  WITH CHECK ADD FOREIGN KEY([SupAccount])
REFERENCES [dbo].[Vendor] ([Account])
GO
/****** Object:  ForeignKey [FK__PurchaseC__BillN__603D47BB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[PurchaseContract] ([BillNo])
GO
/****** Object:  ForeignKey [FK__PurchaseC__COMID__61316BF4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseContractDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__PurchaseO__DeptC__7BB05806]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__PurchaseO__EmpCo__7CA47C3F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__PurchaseO__BillN__025D5595]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[PurchaseOrder] ([BillNo])
GO
/****** Object:  ForeignKey [FK__PurchaseO__COMID__035179CE]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__PurchaseP__DeptC__467D75B8]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlan]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__PurchaseP__EmpCo__477199F1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlan]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__PurchaseP__BillN__4D2A7347]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[PurchasePlan] ([BillNo])
GO
/****** Object:  ForeignKey [FK__PurchaseP__COMID__4E1E9780]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__PurchaseP__SupAc__50FB042B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[PurchasePlanDetail]  WITH CHECK ADD FOREIGN KEY([SupAccount])
REFERENCES [dbo].[Vendor] ([Account])
GO
/****** Object:  ForeignKey [FK__RequestPl__DeptC__2D12A970]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlan]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__RequestPl__BillN__32CB82C6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[RequestPlanDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[RequestPlan] ([BillNo])
GO
/****** Object:  ForeignKey [FK__SalesComm__DeptC__4830B400]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommission]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__SalesComm__DeptC__401B5C43]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionByAmt]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__SalesComm__BillN__45D43599]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionByAmtDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[SalesCommissionByAmt] ([BillNo])
GO
/****** Object:  ForeignKey [FK__SalesComm__BillN__4DE98D56]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[SalesCommission] ([BillNo])
GO
/****** Object:  ForeignKey [FK__SalesComm__COMID__4EDDB18F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesCommissionDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__SalesOrde__CustA__0B91BA14]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD FOREIGN KEY([CustAccount])
REFERENCES [dbo].[Customer] ([Account])
GO
/****** Object:  ForeignKey [FK__SalesOrde__DeptC__09A971A2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__SalesOrde__EmpCo__0A9D95DB]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__SalesOrde__PayWa__0E6E26BF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD FOREIGN KEY([PayWayID])
REFERENCES [dbo].[PayWay] ([PayWayID])
GO
/****** Object:  ForeignKey [FK__SalesOrde__BillN__114A936A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[SalesOrder] ([BillNo])
GO
/****** Object:  ForeignKey [FK__SalesOrde__COMID__123EB7A3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__SalesOrde__BILLN__60083D91]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderPay]  WITH CHECK ADD FOREIGN KEY([BILLNO])
REFERENCES [dbo].[SalesOrder] ([BillNo])
GO
/****** Object:  ForeignKey [FK__SalesOrde__PayWa__60FC61CA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesOrderPay]  WITH CHECK ADD FOREIGN KEY([PayWayID])
REFERENCES [dbo].[PayWay] ([PayWayID])
GO
/****** Object:  ForeignKey [FK__SalesPay__BILLNO__65C116E7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesPay]  WITH CHECK ADD FOREIGN KEY([BILLNO])
REFERENCES [dbo].[StoreOut] ([BillNo])
GO
/****** Object:  ForeignKey [FK__SalesPay__PayWay__66B53B20]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesPay]  WITH CHECK ADD FOREIGN KEY([PayWayID])
REFERENCES [dbo].[PayWay] ([PayWayID])
GO
/****** Object:  ForeignKey [FK__SalesShip__DeptC__1411F17C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesShipping]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__SalesShip__BillN__19CACAD2]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesShippingDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[SalesShipping] ([BillNo])
GO
/****** Object:  ForeignKey [FK__SalesStop__COMID__573DED66]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesStop]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__SalesStop__DeptC__536D5C82]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesStop]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__SalesTran__DeptC__62AFA012]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesTransport]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__SalesTran__BillN__68687968]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[SalesTransportDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[SalesTransport] ([BillNo])
GO
/****** Object:  ForeignKey [FK__StorageMo__DeptC__07E124C1]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StorageMove]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__StoreAdju__DeptC__2FCF1A8A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjust]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__StoreAdju__BillN__3493CFA7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[StoreAdjust] ([BillNo])
GO
/****** Object:  ForeignKey [FK__StoreAdju__COMID__3587F3E0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__storeAdju__LocID__1209AD79]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail]  WITH CHECK ADD FOREIGN KEY([LocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__StoreAdju__WAREH__367C1819]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreAdjustDetail]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__StoreChec__DeptC__1293BD5E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheck]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__StoreChec__BillN__1940BAED]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[StoreCheck] ([BillNo])
GO
/****** Object:  ForeignKey [FK__StoreChec__COMID__1A34DF26]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__StoreChec__LocID__1C1D2798]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail]  WITH CHECK ADD FOREIGN KEY([LocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__StoreChec__WAREH__1B29035F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckDetail]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__StoreChec__DeptC__269AB60B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInput]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__StoreChec__BillN__2B5F6B28]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInputDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[StoreCheckInput] ([BillNo])
GO
/****** Object:  ForeignKey [FK__StoreChec__COMID__2C538F61]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInputDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__StoreChec__LocID__2E3BD7D3]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInputDetail]  WITH CHECK ADD FOREIGN KEY([LocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__StoreChec__WAREH__2D47B39A]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreCheckInputDetail]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__StoreIn__DeptCod__74AE54BC]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__StoreIn__EmpCode__75A278F5]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__StoreIn__PayWayI__7B5B524B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn]  WITH CHECK ADD FOREIGN KEY([PayWayID])
REFERENCES [dbo].[PayWay] ([PayWayID])
GO
/****** Object:  ForeignKey [FK__StoreIn__SupAcco__76969D2E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreIn]  WITH CHECK ADD FOREIGN KEY([SupAccount])
REFERENCES [dbo].[Vendor] ([Account])
GO
/****** Object:  ForeignKey [FK__StoreInDe__BillN__7E37BEF6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[StoreIn] ([BillNo])
GO
/****** Object:  ForeignKey [FK__StoreInDe__COMID__7F2BE32F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__storeinDe__LocID__10216507]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail]  WITH CHECK ADD FOREIGN KEY([LocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__StoreInDe__WAREH__00200768]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInDetail]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__StoreInRe__DeptC__6ABAD62E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuse]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__StoreInRe__EmpCo__6BAEFA67]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuse]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__StoreInRe__SupAc__6CA31EA0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuse]  WITH CHECK ADD FOREIGN KEY([SupAccount])
REFERENCES [dbo].[Vendor] ([Account])
GO
/****** Object:  ForeignKey [FK__StoreInRe__BillN__725BF7F6]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuseDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[StoreInRefuse] ([BillNo])
GO
/****** Object:  ForeignKey [FK__StoreInRe__COMID__73501C2F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreInRefuseDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__StoreMove__DeptC__2116E6DF]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMove]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__StoreMove__EmpCo__220B0B18]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMove]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__StoreMove__DeptC__7D5974AD]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveByPack]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__StoreMove__BillN__26CFC035]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[StoreMove] ([BillNo])
GO
/****** Object:  ForeignKey [FK__StoreMove__COMID__27C3E46E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__StoreMove__LocID__29AC2CE0]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail]  WITH CHECK ADD FOREIGN KEY([LocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__StoreMove__ReqLo__2B947552]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail]  WITH CHECK ADD FOREIGN KEY([ReqLocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__StoreMove__ReqWh__2AA05119]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail]  WITH CHECK ADD FOREIGN KEY([ReqWhCode])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__StoreMove__WAREH__28B808A7]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreMoveDetail]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__StoreOut__CustAc__1AD3FDA4]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut]  WITH CHECK ADD FOREIGN KEY([CustAccount])
REFERENCES [dbo].[Customer] ([Account])
GO
/****** Object:  ForeignKey [FK__StoreOut__DeptCo__18EBB532]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut]  WITH CHECK ADD FOREIGN KEY([DeptCode])
REFERENCES [dbo].[DEPARTMENT] ([DEPT_CODE])
GO
/****** Object:  ForeignKey [FK__StoreOut__EmpCod__19DFD96B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut]  WITH CHECK ADD FOREIGN KEY([EmpCode])
REFERENCES [dbo].[EMPLOYEE] ([EMPCODE])
GO
/****** Object:  ForeignKey [FK__StoreOut__PayWay__1DB06A4F]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOut]  WITH CHECK ADD FOREIGN KEY([PayWayID])
REFERENCES [dbo].[PayWay] ([PayWayID])
GO
/****** Object:  ForeignKey [FK__StoreOutD__BillN__208CD6FA]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail]  WITH CHECK ADD FOREIGN KEY([BillNo])
REFERENCES [dbo].[StoreOut] ([BillNo])
GO
/****** Object:  ForeignKey [FK__StoreOutD__COMID__2180FB33]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail]  WITH CHECK ADD FOREIGN KEY([COMID])
REFERENCES [dbo].[COMMODITY] ([COMID])
GO
/****** Object:  ForeignKey [FK__storeoutD__LocID__11158940]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail]  WITH CHECK ADD FOREIGN KEY([LocID])
REFERENCES [dbo].[GoodsLocation] ([LocID])
GO
/****** Object:  ForeignKey [FK__StoreOutD__WAREH__22751F6C]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[StoreOutDetail]  WITH CHECK ADD FOREIGN KEY([WAREHOUSE_CODE])
REFERENCES [dbo].[WAREHOUSE] ([WAREHOUSE_CODE])
GO
/****** Object:  ForeignKey [FK__Vendor__AreaCatI__4D94879B]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD FOREIGN KEY([AreaCatID])
REFERENCES [dbo].[AreaCategory] ([AreaCatID])
GO
/****** Object:  ForeignKey [FK__Vendor__VendorCa__4CA06362]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD FOREIGN KEY([VendorCatID])
REFERENCES [dbo].[VendorCategory] ([VendorCatID])
GO
/****** Object:  ForeignKey [FK__VendorEmp__SupAc__558AAF1E]    Script Date: 08/18/2017 14:03:59 ******/
ALTER TABLE [dbo].[VendorEmployee]  WITH CHECK ADD FOREIGN KEY([SupAccount])
REFERENCES [dbo].[Vendor] ([Account])
GO
