
IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'MAY') AND name = 'WorkingCycle')
begin
    ALTER TABLE dbo.MAY ADD WorkingCycle INT NULL
end 
GO

IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'MAY') AND name = 'DataCollectionCycle')
begin
    ALTER TABLE dbo.MAY ADD DataCollectionCycle INT NULL
end 
GO

IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'MAY') AND name = 'TimeSendMgs')
begin
    ALTER TABLE dbo.MAY ADD TimeSendMgs DECIMAL(18,2) NULL
end 
GO

IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'MAY') AND name = 'NumberPerCyle')
begin
    ALTER TABLE dbo.MAY ADD NumberPerCyle DECIMAL(18,2) NULL
end 
GO

IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'MAY') AND name = 'StandardSpeed')
begin
    ALTER TABLE dbo.MAY ADD StandardSpeed DECIMAL(18,2) NULL
end 
GO


IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'MENU') AND name = 'LOAI_MENU')
begin
    ALTER TABLE dbo.MENU ADD LOAI_MENU BIGINT NULL
end 
GO


IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'NGUYEN_NHAN_DUNG_MAY') AND name = 'Planned')
begin
    ALTER TABLE NGUYEN_NHAN_DUNG_MAY ADD Planned INT NULL
end 
GO

IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'NGUYEN_NHAN_DUNG_MAY') AND name = 'CauseCode')
begin
    ALTER TABLE NGUYEN_NHAN_DUNG_MAY ADD CauseCode NVARCHAR(50) NULL
end 
GO

IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'NGUYEN_NHAN_DUNG_MAY') AND name = 'DownTimeTypeID')
begin
    ALTER TABLE NGUYEN_NHAN_DUNG_MAY ADD DownTimeTypeID INT NULL
end 
GO

IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'THOI_GIAN_NGUNG_MAY') AND name = 'ProductionRunID')
begin
    ALTER TABLE THOI_GIAN_NGUNG_MAY ADD ProductionRunID BIGINT NULL
end 
GO

IF NOT EXISTS (SELECT * FROM   sys.columns WHERE  object_id = OBJECT_ID(N'THOI_GIAN_NGUNG_MAY') AND name = 'ProductionRunDetailsID')
begin
    ALTER TABLE THOI_GIAN_NGUNG_MAY ADD ProductionRunDetailsID BIGINT NULL
end 
GO

GO
/****** Object:  Table [dbo].[DINH_DANG_LUOI]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DINH_DANG_LUOI](
	[MS_LUOI] [nvarchar](50) NULL,
	[DINH_DANG_LUOI] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DON_VI_TINH_GIO]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_VI_TINH_GIO](
	[MS_DVT_GIO] [int] NOT NULL,
	[TEN_DVT_GO] [nvarchar](50) NULL,
	[TEN_DVT_GO_A] [nvarchar](50) NULL,
	[TEN_DVT_GO_H] [nvarchar](50) NULL,
 CONSTRAINT [PK_DON_VI_TINH_GIO] PRIMARY KEY CLUSTERED 
(
	[MS_DVT_GIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DON_VI_TINH_TOC_DO]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_VI_TINH_TOC_DO](
	[MS_DVT_TD] [int] IDENTITY(1,1) NOT NULL,
	[TEN_DVT_TD] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DON_VI_TINH_TOC_DO] PRIMARY KEY CLUSTERED 
(
	[MS_DVT_TD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DownTimeType]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DownTimeType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DownTimeTypeName] [nvarchar](250) NULL,
	[DownTimeTypeNameA] [nvarchar](250) NULL,
	[DownTimeTypeNameH] [nvarchar](250) NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_DownTimeType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemCode] [nvarchar](50) NULL,
	[ItemName] [nvarchar](250) NULL,
	[ItemNameA] [nvarchar](250) NULL,
	[ItemNameH] [nvarchar](250) NULL,
	[OtherName] [nvarchar](250) NULL,
	[Barcode] [nvarchar](50) NULL,
	[IDItemGroup] [bigint] NULL,
	[Description] [nvarchar](50) NULL,
	[UOMConverionGroupID] [bigint] NULL,
	[UOM] [bigint] NOT NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemGroup]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemGroup](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemGroupName] [nvarchar](250) NULL,
	[ItemGroupNameA] [nvarchar](250) NULL,
	[ItemGroupNameH] [nvarchar](250) NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_ItemGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemMay]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemMay](
	[MS_MAY] [nvarchar](30) NOT NULL,
	[ItemID] [bigint] NOT NULL,
	[StandardOutput] [numeric](18, 2) NULL,
	[MS_DV_TG_Output] [bigint] NULL,
	[StandardSpeed] [numeric](18, 2) NULL,
	[MS_DV_TG_Speed] [bigint] NULL,
	[DataCollectionCycle] [bigint] NULL,
	[DownTimeRecord] [bigint] NULL,
	[WorkingCycle] [int] NULL,
	[NumberPerCyle] [numeric](18, 2) NULL,
	[TimeSendMgs] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ItemMay] PRIMARY KEY CLUSTERED 
(
	[MS_MAY] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAY_NGUYEN_NHAN]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAY_NGUYEN_NHAN](
	[MS_MAY] [nvarchar](30) NOT NULL,
	[MS_NGUYEN_NHAN] [int] NOT NULL,
	[DVT] [int] NULL,
	[DINH_MUC] [int] NULL,
 CONSTRAINT [PK_MAY_NGUYEN_NHAN] PRIMARY KEY CLUSTERED 
(
	[MS_MAY] ASC,
	[MS_NGUYEN_NHAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Operator]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operator](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OperatorCode] [nvarchar](50) NULL,
	[OperatorName] [nvarchar](250) NULL,
	[OperatorNameA] [nvarchar](250) NULL,
	[OperatorNameH] [nvarchar](250) NULL,
	[CardID] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_Operator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrODetails]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrODetails](
	[DetailsID] [bigint] IDENTITY(1,1) NOT NULL,
	[PrOID] [bigint] NULL,
	[ItemID] [bigint] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[UOMID] [bigint] NULL,
	[PlannedQuantity] [decimal](18, 2) NULL,
	[PlannedStartTime] [datetime] NULL,
	[DueDate] [datetime] NULL,
 CONSTRAINT [PK_PrODetails] PRIMARY KEY CLUSTERED 
(
	[DetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductionOrder]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionOrder](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PrOrNumber] [nvarchar](50) NOT NULL,
	[OrderDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[Status] [bigint] NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_ProductionOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductionRun]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionRun](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](12) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[CaSTT] [int] NULL,
	[Note] [nchar](500) NULL,
 CONSTRAINT [PK_MachineRun] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductionRunDetails]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionRunDetails](
	[DetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductionRunID] [bigint] NOT NULL,
	[PrOID] [bigint] NOT NULL,
	[ItemID] [bigint] NOT NULL,
	[MS_HE_THONG] [int] NULL,
	[MS_MAY] [nvarchar](30) NOT NULL,
	[OperatorID] [bigint] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[ActualQuantity] [numeric](18, 2) NULL,
	[DefectQuantity] [numeric](18, 2) NULL,
	[ActualSpeed] [numeric](18, 2) NULL,
	[StandardSpeed] [numeric](18, 2) NULL,
	[StandardOutput] [numeric](18, 2) NULL,
	[WorkingCycle] [int] NULL,
	[NumberPerCycle] [numeric](18, 2) NULL,
	[DownTimeRecord] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ProductionRunDetails] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProSchedule]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProSchedule](
	[ScheduleID] [bigint] IDENTITY(1,1) NOT NULL,
	[PrOID] [bigint] NULL,
	[DetailsID] [bigint] NULL,
	[MS_HE_THONG] [int] NULL,
	[MS_MAY] [nvarchar](30) NOT NULL,
	[CaID] [int] NULL,
	[MS_TO] [int] NULL,
	[PlannedQuantity] [numeric](18, 2) NULL,
	[PlannedStartTime] [datetime] NULL,
	[DueTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[ActualQty] [numeric](18, 2) NULL,
	[StandardSpeed] [numeric](18, 2) NULL,
	[StandardOutput] [numeric](18, 2) NULL,
	[ActualQuantity] [numeric](18, 2) NULL,
	[WorkingCycle] [int] NULL,
	[NumberPerCycle] [numeric](18, 2) NULL,
	[DownTimeRecord] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ProSchedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPORT_OEE]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT_OEE](
	[MENU_ID] [nvarchar](255) NOT NULL,
	[MENU_TEXT] [nvarchar](255) NULL,
	[MENU_ENGLISH] [nvarchar](255) NULL,
	[MENU_CHINESE] [nvarchar](255) NULL,
	[MENU_PARENT] [varchar](64) NULL,
	[MENU_LINE] [bit] NULL,
	[MENU_INDEX] [numeric](10, 0) NOT NULL,
	[SHORT_KEY] [nvarchar](150) NULL,
	[DLL_NAME] [varchar](64) NULL,
	[CLASS_NAME] [varchar](64) NULL,
	[FUNCTION_NAME] [varchar](64) NULL,
	[CUSTUMER] [nvarchar](512) NULL,
	[NOTE] [nvarchar](512) NULL,
	[MENU_IMAGE] [image] NULL,
	[PROJECT_NAME] [nvarchar](128) NULL,
	[MENU_NOTE] [nvarchar](255) NULL,
	[MENU_FONT] [varchar](150) NULL,
	[MENU_POSITION] [int] NULL,
	[MENU_TYPE] [int] NULL,
	[AN_HIEN] [bit] NULL,
 CONSTRAINT [PK_REPORT_OEE] PRIMARY KEY CLUSTERED 
(
	[MENU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatusProDuct]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatusProDuct](
	[ID] [smallint] NOT NULL,
	[NAME_STATUS] [nvarchar](500) NULL,
	[NAME_STATUS_A] [nvarchar](500) NULL,
	[NAME_STATUS_H] [nvarchar](500) NULL,
 CONSTRAINT [PK_SatusProDuct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StopType]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StopType](
	[ID] [int] NOT NULL,
	[StopTypeName] [nvarchar](50) NULL,
	[StopTypeNameA] [nvarchar](50) NULL,
	[StopTypeNameH] [nvarchar](50) NULL,
 CONSTRAINT [PK_StopType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Target]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Target](
	[Year] [int] NOT NULL,
	[MS_MAY] [nvarchar](30) NOT NULL,
	[OEE] [decimal](18, 2) NULL,
	[PE] [decimal](18, 2) NULL,
	[EL] [decimal](18, 2) NULL,
	[SpeedVar] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Target] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[MS_MAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TargetOfYear]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TargetOfYear](
	[Year] [int] NOT NULL,
	[OEE] [decimal](18, 2) NULL,
	[PE] [decimal](18, 2) NULL,
	[EL] [decimal](18, 2) NULL,
	[SpeedVar] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TargetOfYear] PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UOM]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UOM](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UOMCode] [nvarchar](50) NULL,
	[UOMName] [nvarchar](250) NULL,
	[UOMNameA] [nvarchar](250) NULL,
	[UOMNameH] [nvarchar](250) NULL,
	[Length] [numeric](18, 2) NULL,
	[Width] [numeric](18, 2) NULL,
	[Height] [numeric](18, 2) NULL,
	[Volume] [numeric](18, 2) NULL,
	[Weight] [numeric](18, 2) NULL,
	[BasedUOM] [bit] NULL,
	[UOMNote] [nvarchar](500) NULL,
 CONSTRAINT [PK_UOM] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UOMConversionGroup]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UOMConversionGroup](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](250) NULL,
	[BasedUOMID] [bigint] NULL,
	[Note] [nvarchar](500) NULL,
	[GroupNameA] [nvarchar](250) NULL,
	[GroupNameH] [nvarchar](250) NULL,
 CONSTRAINT [PK_UOMConversionGourp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UOMConversionGroupDetails]    Script Date: 27/03/2021 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UOMConversionGroupDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UOMConversionGroupID] [bigint] NOT NULL,
	[UOMID] [bigint] NOT NULL,
	[UOMQuantity] [decimal](18, 4) NULL,
	[BasedUOMQuantity] [decimal](18, 4) NULL,
	[CapacityUOM] [bit] NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_UOMConversionGroupDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvUOM', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="12">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colID</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colUOMCode</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">121</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colUOMName</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">250</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colUOMNameA</property>
      <property name="Width">106</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colUOMNameH</property>
      <property name="Width">106</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colLength</property>
      <property name="Width">106</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colWidth</property>
      <property name="Width">106</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colHeight</property>
      <property name="Width">106</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item9" isnull="true" iskey="true">
      <property name="Name">colVolume</property>
      <property name="Width">106</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item10" isnull="true" iskey="true">
      <property name="Name">colWeight</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">106</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item11" isnull="true" iskey="true">
      <property name="Name">colBasedUOM</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">106</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item12" isnull="true" iskey="true">
      <property name="Name">colUOMNote</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">250</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvPrODetails', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@10,Width=1.33333337@10,Height=1.23076928</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowFooter">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="9">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colDetailsID</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colPrOID</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colItemID</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">133</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colItemName</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">226</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colUOMID</property>
      <property name="VisibleIndex">5</property>
      <property name="Visible">true</property>
      <property name="Width">250</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colPlannedStartTime</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">156</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colDueDate</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">172</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colPlannedQuantity</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">198</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item9" isnull="true" iskey="true">
      <property name="Name">colAllocatedQuantity</property>
      <property name="VisibleIndex">6</property>
      <property name="Visible">true</property>
      <property name="Width">266</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="SortInfoState" iskey="true" value="1">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Orders">Ascending</property>
      <property name="Columns">colUOMID</property>
    </property>
    <property name="Content" isnull="true" iskey="true">
      <property name="GroupCount">0</property>
    </property>
  </property>
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvEquipment', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="11">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colMS_MAY</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colCaSTT</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colTH</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colNPH</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colGPH</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colDT</property>
      <property name="VisibleIndex">5</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colPE</property>
      <property name="VisibleIndex">6</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colOEE</property>
      <property name="VisibleIndex">7</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item9" isnull="true" iskey="true">
      <property name="Name">colDTP</property>
      <property name="VisibleIndex">8</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item10" isnull="true" iskey="true">
      <property name="Name">colEL</property>
      <property name="VisibleIndex">9</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item11" isnull="true" iskey="true">
      <property name="Name">colELV</property>
      <property name="VisibleIndex">10</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvNgungMay', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="13">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colMS_LAN</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">97</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colCaID</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colMS_NGUYEN_NHAN</property>
      <property name="Width">127</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colNGAY</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">97</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colCA</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">78</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colTU_NGAY</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">146</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colDEN_NGAY</property>
      <property name="VisibleIndex">5</property>
      <property name="Visible">true</property>
      <property name="Width">146</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colTHOI_GIAN_SUA</property>
      <property name="VisibleIndex">6</property>
      <property name="Visible">true</property>
      <property name="Width">78</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item9" isnull="true" iskey="true">
      <property name="Name">colTHOI_GIAN_SUA_CHUA</property>
      <property name="Width">144</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item10" isnull="true" iskey="true">
      <property name="Name">colTEN_NGUYEN_NHAN</property>
      <property name="VisibleIndex">7</property>
      <property name="Visible">true</property>
      <property name="Width">400</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item11" isnull="true" iskey="true">
      <property name="Name">colProductionRunDetailsID</property>
      <property name="Width">106</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item12" isnull="true" iskey="true">
      <property name="Name">colItemName</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">195</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item13" isnull="true" iskey="true">
      <property name="Name">colPlanned</property>
      <property name="Width">38</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="SortInfoState" iskey="true" value="1">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Orders">Descending</property>
      <property name="Columns">colTEN_NGUYEN_NHAN</property>
    </property>
    <property name="Content" isnull="true" iskey="true">
      <property name="GroupCount">0</property>
    </property>
  </property>
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvMayPar', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="3">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colCHON</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">53</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colMS_MAY</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">81</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colTEN_MAY</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">101</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvOperator', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="5">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colID</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colOperatorName</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colOperatorCode</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colCardID</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colNote</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvGroup', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="7">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colID</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colGroupName</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colGroupNameA</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colGroupNameH</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colBasedUOMID</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colNote</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colCapacityUOM</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvGroupUOM', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="5">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colID</property>
      <property name="Width">120</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colItemGroupName</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">242</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colItemGroupNameA</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">242</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colItemGroupNameH</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">242</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colNote</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">485</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvItemMay', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@10,Width=1.33333337@10,Height=1.23076928</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="ColumnAutoWidth">false</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="12">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colDeviceID</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">335</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colMS_MAY</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">363</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colStandardOutput</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">294</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colMS_DV_TG_Output</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colStandardSpeed</property>
      <property name="Width">176</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colMS_DV_TG_Speed</property>
      <property name="Width">160</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colDataCollectionCycle</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colDownTimeRecord</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item9" isnull="true" iskey="true">
      <property name="Name">colWorkingCycle</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item10" isnull="true" iskey="true">
      <property name="Name">colNumberPerCyle</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item11" isnull="true" iskey="true">
      <property name="Name">colTimeSendMgs</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item12" isnull="true" iskey="true">
      <property name="Name">colCapacityUOM</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">275</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="SortInfoState" iskey="true" value="1">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Orders">Ascending</property>
      <property name="Columns">colStandardOutput</property>
    </property>
    <property name="Content" isnull="true" iskey="true">
      <property name="GroupCount">0</property>
    </property>
  </property>
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvItem', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@10,Width=1.33333337@10,Height=1.23076928</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="ColumnAutoWidth">false</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="11">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colID</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colItemCode</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">148</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colItemName</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">382</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colItemNameA</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colItemNameH</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colOtherName</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colBarcode</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colIDItemGroup</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item9" isnull="true" iskey="true">
      <property name="Name">colDescription</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item10" isnull="true" iskey="true">
      <property name="Name">colUOMConverionGroupID</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item11" isnull="true" iskey="true">
      <property name="Name">colUOM</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvSchedule', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@10,Width=1.33333337@10,Height=1.23076928</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="NewItemRowPosition">Bottom</property>
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="ColumnAutoWidth">false</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="21">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colScheduleID</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colPrOID</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colDetailsID</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colMS_TO</property>
      <property name="Width">120</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colMS_HE_THONG</property>
      <property name="Width">120</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colMS_MAY</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">315</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colCaID</property>
      <property name="Width">120</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colPlannedQuantity</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">217</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item9" isnull="true" iskey="true">
      <property name="Name">colUOMID</property>
      <property name="Width">249</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item10" isnull="true" iskey="true">
      <property name="Name">colPlannedStartTime</property>
      <property name="Width">150</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item11" isnull="true" iskey="true">
      <property name="Name">colDueTime</property>
      <property name="Width">150</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item12" isnull="true" iskey="true">
      <property name="Name">colActualQuantity</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">193</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item13" isnull="true" iskey="true">
      <property name="Name">colStandardOutput</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">203</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item14" isnull="true" iskey="true">
      <property name="Name">colMS_DV_TG_Output</property>
      <property name="Width">120</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item15" isnull="true" iskey="true">
      <property name="Name">colStandardSpeed</property>
      <property name="Width">121</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item16" isnull="true" iskey="true">
      <property name="Name">colMS_DV_TG_Speed</property>
      <property name="Width">120</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item17" isnull="true" iskey="true">
      <property name="Name">colWorkingCycle</property>
      <property name="Width">120</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item18" isnull="true" iskey="true">
      <property name="Name">colNumberPerCycle</property>
      <property name="Width">120</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item19" isnull="true" iskey="true">
      <property name="Name">colDownTimeRecord</property>
      <property name="Width">120</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item20" isnull="true" iskey="true">
      <property name="Name">colCapacityUOM</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">256</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item21" isnull="true" iskey="true">
      <property name="Name">colSumStandardOutput</property>
      <property name="Width">185</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="SortInfoState" iskey="true" value="1">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Orders">Ascending</property>
      <property name="Columns">colDueTime</property>
    </property>
    <property name="Content" isnull="true" iskey="true">
      <property name="GroupCount">0</property>
    </property>
  </property>
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvPrRunDetails', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="ColumnAutoWidth">false</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="20">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colDetailID</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colPrOID</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colItemID</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">135</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colMS_HE_THONG</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">100</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colMS_MAY</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">120</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colOperatorID</property>
      <property name="VisibleIndex">6</property>
      <property name="Visible">true</property>
      <property name="Width">90</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colStartTime</property>
      <property name="VisibleIndex">12</property>
      <property name="Visible">true</property>
      <property name="Width">150</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colEndTime</property>
      <property name="VisibleIndex">13</property>
      <property name="Visible">true</property>
      <property name="Width">150</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item9" isnull="true" iskey="true">
      <property name="Name">colSumMinute</property>
      <property name="VisibleIndex">14</property>
      <property name="Visible">true</property>
      <property name="Width">70</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item10" isnull="true" iskey="true">
      <property name="Name">colActualQuantity</property>
      <property name="VisibleIndex">7</property>
      <property name="Visible">true</property>
      <property name="Width">66</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item11" isnull="true" iskey="true">
      <property name="Name">colUOM</property>
      <property name="VisibleIndex">9</property>
      <property name="Visible">true</property>
      <property name="Width">90</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item12" isnull="true" iskey="true">
      <property name="Name">colConvertQuantity</property>
      <property name="VisibleIndex">10</property>
      <property name="Visible">true</property>
      <property name="Width">150</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item13" isnull="true" iskey="true">
      <property name="Name">colDefectQuantity</property>
      <property name="VisibleIndex">8</property>
      <property name="Visible">true</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item14" isnull="true" iskey="true">
      <property name="Name">colActualSpeed</property>
      <property name="Width">90</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item15" isnull="true" iskey="true">
      <property name="Name">colStandardSpeed</property>
      <property name="Width">53</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item16" isnull="true" iskey="true">
      <property name="Name">colStandardOutput</property>
      <property name="VisibleIndex">11</property>
      <property name="Visible">true</property>
      <property name="Width">137</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item17" isnull="true" iskey="true">
      <property name="Name">colWorkingCycle</property>
      <property name="Width">90</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item18" isnull="true" iskey="true">
      <property name="Name">colNumberPerCycle</property>
      <property name="Width">90</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item19" isnull="true" iskey="true">
      <property name="Name">colTEN_MAY</property>
      <property name="VisibleIndex">5</property>
      <property name="Visible">true</property>
      <property name="Width">81</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item20" isnull="true" iskey="true">
      <property name="Name">colItemCode</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">90</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="SortInfoState" iskey="true" value="2">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Orders">Descending</property>
      <property name="Columns">colOperatorID</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Orders">Ascending</property>
      <property name="Columns">colDefectQuantity</property>
    </property>
    <property name="Content" isnull="true" iskey="true">
      <property name="GroupCount">0</property>
    </property>
  </property>
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvProDuctOD', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="ColumnAutoWidth">false</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="7">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colID</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colPrOrNumber</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">120</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colOrderDate</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">93</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colStartDate</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">110</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colDueDate</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colStatus</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colNote</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvDownTimeType', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="5">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colID</property>
      <property name="Width">75</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colDownTimeTypeName</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">200</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colDownTimeTypeNameA</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">200</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colDownTimeTypeNameH</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">200</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colNote</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">200</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvProDuctRun', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@10,Width=1.33333337@10,Height=1.23076928</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="ColumnAutoWidth">false</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="6">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colID</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colCode</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">160</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colStartTime</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">150</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colEndTime</property>
      <property name="Width">27</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colCaSTT</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colNote</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvData', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="8">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colCHON</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">53</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colMS_MAY</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">122</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colTEN_MAY</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">439</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colStandardSpeed</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">99</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colDataCollectionCycle</property>
      <property name="VisibleIndex">5</property>
      <property name="Visible">true</property>
      <property name="Width">123</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colWorkingCycle</property>
      <property name="VisibleIndex">6</property>
      <property name="Visible">true</property>
      <property name="Width">91</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colNumberPerCyle</property>
      <property name="VisibleIndex">7</property>
      <property name="Visible">true</property>
      <property name="Width">101</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colTimeSendMgs</property>
      <property name="VisibleIndex">8</property>
      <property name="Visible">true</property>
      <property name="Width">96</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvDeviceCause', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="5">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colMS_NGUYEN_NHAN</property>
      <property name="Width">107</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colTEN_NGUYEN_NHAN</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">382</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colDVT</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">102</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colDINH_MUC</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">80</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colCauseCode</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">127</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvTarget', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="6">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colMS_MAY</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">81</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colTEN_MAY</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">101</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colOEE</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">42</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colPE</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">42</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colEL</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">42</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colSpeedVar</property>
      <property name="VisibleIndex">5</property>
      <property name="Visible">true</property>
      <property name="Width">59</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvNguyenNhanPar', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="4">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colCHON</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">53</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colMS_NGUYEN_NHAN</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">127</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colTEN_NGUYEN_NHAN</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">271</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colPlanned</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">61</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvPareto', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="8">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colTEN_MAY</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">179</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colDownTimeTypeName</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">134</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colCauseCode</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">80</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colTEN_NGUYEN_NHAN</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">180</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colTONG_SO_PHUT</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">110</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colPT_NGUNG_MAY</property>
      <property name="VisibleIndex">5</property>
      <property name="Visible">true</property>
      <property name="Width">111</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colSO_LAN_XAY_RA</property>
      <property name="VisibleIndex">6</property>
      <property name="Visible">true</property>
      <property name="Width">112</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colSO_PHUT_TB</property>
      <property name="VisibleIndex">7</property>
      <property name="Visible">true</property>
      <property name="Width">93</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvGroupDetails', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@10,Width=1.33333337@10,Height=1.23076928</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="8">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colID</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colUOMConversionGroupID</property>
      <property name="Width">100</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colUOMQuantity</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">134</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colUOMID</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">134</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colBasedUOMQuantity</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">134</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colBasedUOMID</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">95</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colNote</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">171</property>
      <property name="MinWidth">27</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colCapacityUOM</property>
      <property name="VisibleIndex">5</property>
      <property name="Visible">true</property>
      <property name="Width">176</property>
      <property name="MinWidth">25</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvDownTimeCause', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="11">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colMS_NGUYEN_NHAN</property>
      <property name="Width">127</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colTEN_NGUYEN_NHAN</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">522</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colTEN_NGUYEN_NHAN_ANH</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">522</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colHU_HONG</property>
      <property name="Width">408</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colBTDK</property>
      <property name="Width">461</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colMAC_DINH</property>
      <property name="Width">50</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colPlanned</property>
      <property name="Width">175</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colDownTimeTypeID</property>
      <property name="Width">117</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item9" isnull="true" iskey="true">
      <property name="Name">colCauseCode</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">276</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item10" isnull="true" iskey="true">
      <property name="Name">colDownTimeTypeName</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">326</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item11" isnull="true" iskey="true">
      <property name="Name">colStopTypeName</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">251</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="SortInfoState" iskey="true" value="1">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Orders">Ascending</property>
      <property name="Columns">colDownTimeTypeName</property>
    </property>
    <property name="Content" isnull="true" iskey="true">
      <property name="GroupCount">0</property>
    </property>
  </property>
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvMayPro', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="11">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colCHON</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">53</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colPrOID</property>
      <property name="VisibleIndex">2</property>
      <property name="Visible">true</property>
      <property name="Width">54</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item3" isnull="true" iskey="true">
      <property name="Name">colPrOrNumber</property>
      <property name="VisibleIndex">3</property>
      <property name="Visible">true</property>
      <property name="Width">86</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item4" isnull="true" iskey="true">
      <property name="Name">colItemID</property>
      <property name="VisibleIndex">4</property>
      <property name="Visible">true</property>
      <property name="Width">56</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item5" isnull="true" iskey="true">
      <property name="Name">colItemName</property>
      <property name="VisibleIndex">5</property>
      <property name="Visible">true</property>
      <property name="Width">214</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item6" isnull="true" iskey="true">
      <property name="Name">colMS_MAY</property>
      <property name="VisibleIndex">6</property>
      <property name="Visible">true</property>
      <property name="Width">81</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item7" isnull="true" iskey="true">
      <property name="Name">colTEN_MAY</property>
      <property name="VisibleIndex">7</property>
      <property name="Visible">true</property>
      <property name="Width">101</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item8" isnull="true" iskey="true">
      <property name="Name">colPlannedStartTime</property>
      <property name="VisibleIndex">8</property>
      <property name="Visible">true</property>
      <property name="Width">112</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item9" isnull="true" iskey="true">
      <property name="Name">colDueTime</property>
      <property name="VisibleIndex">9</property>
      <property name="Visible">true</property>
      <property name="Width">68</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item10" isnull="true" iskey="true">
      <property name="Name">colPlannedQuantity</property>
      <property name="VisibleIndex">10</property>
      <property name="Visible">true</property>
      <property name="Width">103</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item11" isnull="true" iskey="true">
      <property name="Name">colSL_CHUA_SX</property>
      <property name="VisibleIndex">11</property>
      <property name="Visible">true</property>
      <property name="Width">91</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
INSERT [dbo].[DINH_DANG_LUOI] ([MS_LUOI], [DINH_DANG_LUOI]) VALUES (N'grvMay', N'<XtraSerializer version="1.0" application="View">
  <property name="#LayoutVersion" />
  <property name="#LayoutScaleFactor">@1,Width=1@1,Height=1</property>
  <property name="OptionsView" isnull="true" iskey="true">
    <property name="AllowHtmlDrawHeaders">true</property>
    <property name="RowAutoHeight">true</property>
    <property name="ShowGroupPanel">false</property>
  </property>
  <property name="ActiveFilterEnabled">true</property>
  <property name="Columns" iskey="true" value="2">
    <property name="Item1" isnull="true" iskey="true">
      <property name="Name">colMS_MAY</property>
      <property name="VisibleIndex">0</property>
      <property name="Visible">true</property>
      <property name="Width">150</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
    <property name="Item2" isnull="true" iskey="true">
      <property name="Name">colTEN_MAY</property>
      <property name="VisibleIndex">1</property>
      <property name="Visible">true</property>
      <property name="Width">280</property>
      <property name="MinWidth">20</property>
      <property name="MaxWidth">0</property>
    </property>
  </property>
  <property name="GroupSummary" iskey="true" value="0" />
  <property name="ActiveFilterString" />
  <property name="GroupSummarySortInfoState" />
  <property name="FindFilterText" />
  <property name="FindPanelVisible">false</property>
</XtraSerializer>')
GO
INSERT [dbo].[DON_VI_TINH_GIO] ([MS_DVT_GIO], [TEN_DVT_GO], [TEN_DVT_GO_A], [TEN_DVT_GO_H]) VALUES (1, N'Giờ', N'Hours', N'Hours')
INSERT [dbo].[DON_VI_TINH_GIO] ([MS_DVT_GIO], [TEN_DVT_GO], [TEN_DVT_GO_A], [TEN_DVT_GO_H]) VALUES (2, N'Phút', N'Minutes', N'Minutes')
INSERT [dbo].[DON_VI_TINH_GIO] ([MS_DVT_GIO], [TEN_DVT_GO], [TEN_DVT_GO_A], [TEN_DVT_GO_H]) VALUES (3, N'Giây', N'Seconds', N'Seconds')
GO
SET IDENTITY_INSERT [dbo].[DON_VI_TINH_TOC_DO] ON 

INSERT [dbo].[DON_VI_TINH_TOC_DO] ([MS_DVT_TD], [TEN_DVT_TD]) VALUES (1, N'sachets/phút')
SET IDENTITY_INSERT [dbo].[DON_VI_TINH_TOC_DO] OFF
GO
SET IDENTITY_INSERT [dbo].[DownTimeType] ON 

INSERT [dbo].[DownTimeType] ([ID], [DownTimeTypeName], [DownTimeTypeNameA], [DownTimeTypeNameH], [Note]) VALUES (6, N'Chuyển đổi mặt hàng ', N'Change over', N'', N'')
INSERT [dbo].[DownTimeType] ([ID], [DownTimeTypeName], [DownTimeTypeNameA], [DownTimeTypeNameH], [Note]) VALUES (7, N'Bảo trì phòng ngừa', N'PM', N'', N'')
INSERT [dbo].[DownTimeType] ([ID], [DownTimeTypeName], [DownTimeTypeNameA], [DownTimeTypeNameH], [Note]) VALUES (8, N'Do nhân sự ', N'HR', N'', N'')
INSERT [dbo].[DownTimeType] ([ID], [DownTimeTypeName], [DownTimeTypeNameA], [DownTimeTypeNameH], [Note]) VALUES (9, N'Do đào tạo', N'Training ', N'', N'')
INSERT [dbo].[DownTimeType] ([ID], [DownTimeTypeName], [DownTimeTypeNameA], [DownTimeTypeNameH], [Note]) VALUES (10, N'Do chất lượng ', N'Quality', N'', N'')
INSERT [dbo].[DownTimeType] ([ID], [DownTimeTypeName], [DownTimeTypeNameA], [DownTimeTypeNameH], [Note]) VALUES (11, N'Do thiếu hàng ', N'Logistics', N'', N'')
INSERT [dbo].[DownTimeType] ([ID], [DownTimeTypeName], [DownTimeTypeNameA], [DownTimeTypeNameH], [Note]) VALUES (12, N'Sự cố máy ', N'Breakdown', N'', N'')
INSERT [dbo].[DownTimeType] ([ID], [DownTimeTypeName], [DownTimeTypeNameA], [DownTimeTypeNameH], [Note]) VALUES (13, N'Do điện lực', N'Power', N'', N'')
SET IDENTITY_INSERT [dbo].[DownTimeType] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (12, N'5000000', N'G7 3in1 Instant coffee - bag 100st (E/C)', N'G7 3in1 Instant coffee - bag 100st (E/C)', NULL, N'G7 3in1- bag 100st (E/C)', NULL, 3, NULL, 303, 240)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (13, N'5000001', N'G7 3in1 Instant coffee - box 10sa (E/C)', N'G7 3in1 Instant coffee - box 10sa (E/C)', NULL, N'G7 3in1 - box 10sa (E/C)', NULL, 3, NULL, 304, 34)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (14, N'5000002', N'G7 3in1 Instant coffee - box 18 st (E/C)', N'G7 3in1 Instant coffee - box 18 st (E/C)', NULL, N'G7 3in1 - box 18 st (E/C)', NULL, 3, NULL, 305, 242)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (15, N'5000004', N'G7 3in1 Instant coffee - bag 22 sa ( E/C', N'G7 3in1 Instant coffee - bag 22 sa ( E/C', NULL, N'G7 3in1 - bag 22 sa ( E/C', NULL, 3, NULL, 306, 36)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (16, N'5000005', N'G7 3in1 Instant coffee - Box 24 st(E/C)', N'G7 3in1 Instant coffee - Box 24 st(E/C)', NULL, N'G7 3in1 - Box 24 st(E/C)', NULL, 3, NULL, 307, 37)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (17, N'5000007', N'G7 3in1 Instant coffee - bag 50 sa(E/C)', N'G7 3in1 Instant coffee - bag 50 sa(E/C)', NULL, N'G7 3in1 - bag 50 sa(E/C)', NULL, 3, NULL, 308, 38)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (18, N'5000008', N'G7 3in1 Instant Coffee- Bag 100 st', N'G7 3in1 Instant Coffee- Bag 100 st', NULL, N'G7 3in1 - Bag 100 st', NULL, 3, NULL, 309, 39)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (19, N'5000009', N'G7 3in1 Instant Coffee - Bag 22 sa', N'G7 3in1 Instant Coffee - Bag 22 sa', NULL, N'G7 3in1 - Bag 22 sa', NULL, 3, NULL, 310, 40)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (20, N'5000011', N'G7 3in1 Instant Coffee - Bag 22 st', N'G7 3in1 Instant Coffee - Bag 22 st', NULL, N'G7 3in1 - Bag 22 st', NULL, 3, NULL, 311, 41)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (21, N'5000013', N'G7 3in1 Instant coffee - Bag 50 sa', N'G7 3in1 Instant coffee - Bag 50 sa', NULL, N'G7 3in1 - Bag 50 sa', NULL, 3, NULL, 312, 42)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (22, N'5000015', N'G7 3in1 Instant Coffee - Box 10 sa', N'G7 3in1 Instant Coffee - Box 10 sa', NULL, N'G7 3in1 - Box 10 sa', NULL, 3, NULL, 313, 43)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (23, N'5000016', N'G7 3in1 Instant Coffee - Box 18 st', N'G7 3in1 Instant Coffee - Box 18 st', NULL, N'G7 3in1 - Box 18 st', NULL, 3, NULL, 314, 44)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (24, N'5000017', N'G7 3in1 Instant Coffee - Box 20 sa', N'G7 3in1 Instant Coffee - Box 20 sa', NULL, N'G7 3in1 - Box 20 sa', NULL, 3, NULL, 315, 45)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (25, N'5000021', N'G7 Pure Black  - Box 15 sachet (E/C)', N'G7 Pure Black  - Box 15 sachet (E/C)', NULL, N'Pure Black - Box 15 sachet (E/C)', NULL, 4, NULL, 316, 46)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (26, N'5000022', N'G73in1 Sugar Free-Collagen bag 22 sa E/C', N'G73in1 Sugar Free-Collagen bag 22 sa E/C', NULL, N'Sugar Free bag 22 sa E/C', NULL, 5, NULL, 317, 47)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (27, N'5000023', N'G7 Cappuccino Mocha-box 12 st ( E/C)', N'G7 Cappuccino Mocha-box 12 st ( E/C)', NULL, N'Cappuccino Mocha-box 12 st ( E/C)', NULL, 16, NULL, 318, 48)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (28, N'5000024', N'G7 Cappuccino Hazelnut-Box 6 st (E/C)', N'G7 Cappuccino Hazelnut-Box 6 st (E/C)', NULL, N'Cappuccino Hazelnut-Box 6 st (E/C)', NULL, 16, NULL, 319, 49)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (29, N'5000025', N'G7 CappuccinoHazelnut-box 12 st (E/C)', N'G7 CappuccinoHazelnut-box 12 st (E/C)', NULL, N'CappuccinoHazelnut-box 12 st (E/C)', NULL, 16, NULL, 320, 50)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (30, N'5000026', N'G7 Cappuccino Mocha-Box 6 st ( E/C)', N'G7 Cappuccino Mocha-Box 6 st ( E/C)', NULL, N'Cappuccino Mocha-Box 6 st ( E/C)', NULL, 16, NULL, 321, 51)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (31, N'5000028', N'G7 Pure Black  - Box 15 sachet (E/E)', N'G7 Pure Black  - Box 15 sachet (E/E)', NULL, N'Pure Black  - Box 15 sachet (E/E)', NULL, 4, NULL, 322, 52)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (33, N'5000030', N'G7 Cappuccino Mocha - Box 12 st', N'G7 Cappuccino Mocha - Box 12 st', NULL, N'Cappuccino Mocha - Box 12 st', NULL, 16, NULL, 324, 54)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (34, N'5000031', N'G7 Cappuccino Hazelnut - Box 12 st', N'G7 Cappuccino Hazelnut - Box 12 st', NULL, N'Cappuccino Hazelnut - Box 12 st', NULL, 16, NULL, 325, 55)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (35, N'5000032', N'G7 3in1 Sugar Free-Collagen bag 22 sa', N'G7 3in1 Sugar Free-Collagen bag 22 sa', NULL, N'Sugar Free bag 22 sa', NULL, 5, NULL, 326, 56)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (36, N'5000033', N'Cà phê G7 3in1 - Hộp 18 sticks 16g', N'Cà phê G7 3in1 - Hộp 18 sticks 16g', NULL, N'G7 3in1 - Hộp 18 sticks 16g', NULL, 3, NULL, 327, 57)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (37, N'5000034', N'Cà phê G7 3in1 - Hộp 21', N'Cà phê G7 3in1 - Hộp 21', NULL, N'G7 3in1 - Hộp 21', NULL, 3, NULL, 328, 58)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (38, N'5000040', N'Càphê G7 3in1-Bịch 100 sticks 16gr', N'Càphê G7 3in1-Bịch 100 sticks 16gr', NULL, N'G7 3in1 - Bịch 100 sticks 16gr', NULL, 3, NULL, 329, 59)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (39, N'5000042', N'Cà phê G7 3in1 - Bịch 50 sachets', N'Cà phê G7 3in1 - Bịch 50 sachets', NULL, N'G7 3in1 - Bịch 50 sachets', NULL, 3, NULL, 330, 60)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (40, N'5000043', N'Cà phê G7 3in1 - Bịch 50 sticks 16g', N'Cà phê G7 3in1 - Bịch 50 sticks 16g', NULL, N'G7 3in1 - Bịch 50 sticks 16g', NULL, 3, NULL, 331, 61)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (41, N'5000044', N'Cà phê G7 3in1 - Dây 10 sachets 16g', N'Cà phê G7 3in1 - Dây 10 sachets 16g', NULL, N'G7 3in1 - Dây 10 sachets 16g', NULL, 3, NULL, 332, 62)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (42, N'5000048', N'Cà phê G7 hòa tan đen - Hộp 15 gói', N'Cà phê G7 hòa tan đen - Hộp 15 gói', NULL, N'G7 hòa tan đen - Hộp 15 gói', NULL, 4, NULL, 333, 63)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (43, N'5000053', N'Cà phê G7 2in1 - Hộp 15 gói 16gr', N'Cà phê G7 2in1 - Hộp 15 gói 16gr', NULL, N'G7 2in1 - Hộp 15 gói 16gr', NULL, 7, NULL, 334, 64)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (44, N'5000069', N'Gu mạnh 3 in 1 hộp 12', N'Gu mạnh 3 in 1 hộp 12', NULL, N'Gu mạnh 3 in 1 hộp 12', NULL, 9, NULL, 335, 65)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (45, N'5000070', N'G7 3in1 - Bịch 20 sachets 16g', N'G7 3in1 - Bịch 20 sachets 16g', NULL, N'G7 3in1 - Bịch 20 sachets 16g', NULL, 3, NULL, 336, 66)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (46, N'5000199', N'Capucino Mocha XK thô (bịch 0.5kg)', N'Capucino Mocha XK thô (bịch 0.5kg)', NULL, N'Capucino Mocha XK thô (bịch 0.5kg)', NULL, 16, NULL, 337, 67)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (47, N'5000200', N'Capucino Hazelnut XK thô  ( bịch 0.5 kg)', N'Capucino Hazelnut XK thô  ( bịch 0.5 kg)', NULL, N'Capucino Hazelnut XK thô  ( bịch 0.5 kg)', NULL, 16, NULL, 338, 68)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (48, N'5000201', N'G7 3 in 1 Instant Coffee  - Bag 1000g', N'G7 3 in 1 Instant Coffee  - Bag 1000g', NULL, N'G7 3 in 1 - Bag 1000g', NULL, 3, NULL, 339, 69)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (50, N'5000291', N'G7 3in1 Instant coffee BAG 48+3 sa (E/C)', N'G7 3in1 Instant coffee BAG 48+3 sa (E/C)', NULL, N'G7 3in1 BAG 48+3 sa (E/C)', NULL, 3, NULL, 341, 71)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (51, N'5000402', N'G7 Strong X2 3in1 24st E/E', N'G7 Strong X2 3in1 24st E/E', NULL, N'G7 Strong X2 3in1 24st E/E', NULL, 9, NULL, 342, 72)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (52, N'5000403', N'G7 Black Instant Coffee BAG 100sa (E/E)', N'G7 Black Instant Coffee BAG 100sa (E/E)', NULL, N'G7 Black BAG 100sa (E/E)', NULL, 4, NULL, 343, 73)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (53, N'5000407', N'G7 Espresso Instant Coffee 15st (E/E)-NV', N'G7 Espresso Instant Coffee 15st (E/E)-NV', NULL, N'G7 Espresso 15st (E/E)-NV', NULL, 9, NULL, 344, 74)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (54, N'5000412', N'G7 Strong X2 3in1 Bag 28sa (E/C)', N'G7 Strong X2 3in1 Bag 28sa (E/C)', NULL, N'G7 Strong X2 3in1 Bag 28sa (E/C)', NULL, 9, NULL, 345, 75)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (55, N'5000414', N'G7 Strong X2 3in1 Bag 48st (E/C)', N'G7 Strong X2 3in1 Bag 48st (E/C)', NULL, N'G7 Strong X2 3in1 Bag 48st (E/C)', NULL, 9, NULL, 346, 76)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (56, N'5000504', N'G7 3in1 instant coffee - Bag 20 st (E/E)', N'G7 3in1 instant coffee - Bag 20 st (E/E)', NULL, N'G7 3in1 - Bag 20 st (E/E)', NULL, 3, NULL, 347, 77)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (57, N'5000514', N'Cà phê Legend CFSĐ – Hộp 5 sticks', N'Cà phê Legend CFSĐ – Hộp 5 sticks', NULL, N'Legend CFSĐ – Hộp 5 sticks', NULL, 10, NULL, 348, 78)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (58, N'5000515', N'Cà phê Legend CFSĐ – Hộp 9 sticks', N'Cà phê Legend CFSĐ – Hộp 9 sticks', NULL, N'Legend CFSĐ – Hộp 9 sticks', NULL, 10, NULL, 349, 79)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (59, N'5000516', N'G7 Pure Black - Bag 200 sachets (E/E)', N'G7 Pure Black - Bag 200 sachets (E/E)', NULL, N'Pure Black - Bag 200 sachets (E/E)', NULL, 4, NULL, 350, 80)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (60, N'5000545', N'G7 3in1 Instant Coffee-Bag 50sa-XK(V/V)', N'G7 3in1 Instant Coffee-Bag 50sa-XK(V/V)', NULL, N'G7 3in1-Bag 50sa-XK(V/V)', NULL, 3, NULL, 351, 81)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (61, N'5000546', N'G7 3in1 Instant Coffee-Bag 100st-XK(V/V)', N'G7 3in1 Instant Coffee-Bag 100st-XK(V/V)', NULL, N'G7 3in1-Bag 100st-XK(V/V)', NULL, 3, NULL, 352, 82)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (62, N'5000551', N'G7 Black Instant Coffee-Box 30sa(E/C)', N'G7 Black Instant Coffee-Box 30sa(E/C)', NULL, N'G7 Black -Box 30sa(E/C)', NULL, 4, NULL, 353, 83)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (63, N'5000552', N'G7 2in1 Instant Coffee-Box 15sa(E/C)', N'G7 2in1 Instant Coffee-Box 15sa(E/C)', NULL, N'G7 2in1 -Box 15sa(E/C)', NULL, 7, NULL, 354, 84)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (64, N'5000562', N'Cà phê Legend Special Edition-Hộp 18 St', N'Cà phê Legend Special Edition-Hộp 18 St', NULL, N'Legend Special Edition-Hộp 18 St', NULL, 11, NULL, 355, 85)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (65, N'5000563', N'Cà phê Legend Special Edition-Lon 12 St', N'Cà phê Legend Special Edition-Lon 12 St', NULL, N'Legend Special Edition-Lon 12 St', NULL, 11, NULL, 356, 86)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (66, N'5000568', N'G7 Espresso Instant coffee-Box 15st(E/C)', N'G7 Espresso Instant coffee-Box 15st(E/C)', NULL, N'G7 Espresso -Box 15st(E/C)', NULL, 9, NULL, 357, 87)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (72, N'5000579', N'Cà phê Legend Classic-  Bịch 24 sachets', N'Cà phê Legend Classic-  Bịch 24 sachets', NULL, N'Legend Classic-  Bịch 24 sachets', NULL, 12, NULL, 363, 93)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (73, N'5000580', N'Cà phê Legend Classic - Bịch 46 sachets', N'Cà phê Legend Classic - Bịch 46 sachets', NULL, N'Legend Classic - Bịch 46 sachets', NULL, 12, NULL, 364, 94)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (74, N'5000581', N'Cà phê Legend Classic - Hộp 12 sticks', N'Cà phê Legend Classic - Hộp 12 sticks', NULL, N'Legend Classic - Hộp 12 sticks', NULL, 12, NULL, 365, 95)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (75, N'5000597', N'G7 3in1 instant coffee-box 18stx16 (E/E)', N'G7 3in1 instant coffee-box 18stx16 (E/E)', NULL, N'G7 3in1 -box 18stx16 (E/E)', NULL, 3, NULL, 366, 96)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (78, N'5000638', N'Cà phê Legend CFSĐ – Hộp 5 sticks (E/V)', N'Cà phê Legend CFSĐ – Hộp 5 sticks (E/V)', NULL, N'Legend CFSĐ – Hộp 5 sticks (E/V)', NULL, 10, NULL, 369, 99)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (79, N'5000639', N'Cà phê Legend CFSĐ – Hộp 9 sticks (E/V)', N'Cà phê Legend CFSĐ – Hộp 9 sticks (E/V)', NULL, N'Legend CFSĐ – Hộp 9 sticks (E/V)', NULL, 10, NULL, 370, 100)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (80, N'5000640', N'Cà phê Legend Special Edition-Hộp18St EV', N'Cà phê Legend Special Edition-Hộp18St EV', NULL, N'Legend Special Edition-Hộp18St EV', NULL, 11, NULL, 371, 101)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (81, N'5000641', N'Cà phê Legend Special Edition-Lon12St EV', N'Cà phê Legend Special Edition-Lon12St EV', NULL, N'Legend Special Edition-Lon12St EV', NULL, 11, NULL, 372, 102)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (82, N'5000642', N'Cà phê Legend Classic - Hộp 12st (E/V)', N'Cà phê Legend Classic - Hộp 12st (E/V)', NULL, N'Legend Classic - Hộp 12st (E/V)', NULL, 12, NULL, 373, 103)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (83, N'5000643', N'Cà phê Legend Classic-  Bịch 24 sa (E/V)', N'Cà phê Legend Classic-  Bịch 24 sa (E/V)', NULL, N'Legend Classic-  Bịch 24 sa (E/V)', NULL, 12, NULL, 374, 104)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (84, N'5000644', N'Cà phê Legend Classic - Bịch 46 sa (E/V)', N'Cà phê Legend Classic - Bịch 46 sa (E/V)', NULL, N'Legend Classic - Bịch 46 sa (E/V)', NULL, 12, NULL, 375, 105)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (85, N'5000648', N'G7 3in1 InstantCoffee-Box18st-XKTC(V/V)', N'G7 3in1 InstantCoffee-Box18st-XKTC(V/V)', NULL, N'G7 3in1-Box18st-XKTC(V/V)', NULL, 3, NULL, 376, 106)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (86, N'5000649', N'G7 3in1 InstantCoffee-Bag50sa-XKTC(V/V)', N'G7 3in1 InstantCoffee-Bag50sa-XKTC(V/V)', NULL, N'G7 3in1 -Bag50sa-XKTC(V/V)', NULL, 3, NULL, 377, 107)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (87, N'5000650', N'G73in1 InstantCoffee-Bag100st-XKTC(V/V)', N'G73in1 InstantCoffee-Bag100st-XKTC(V/V)', NULL, N'G73in1 -Bag100st-XKTC(V/V)', NULL, 3, NULL, 378, 108)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (88, N'5000651', N'Cà phê Hòa tan đen G7- Hộp 50 gói', N'Cà phê Hòa tan đen G7- Hộp 50 gói', NULL, N'Hòa tan đen G7- Hộp 50 gói', NULL, 4, NULL, 379, 109)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (89, N'5000652', N'Cà phê Hòa tan đen G7- Bịch 100 gói', N'Cà phê Hòa tan đen G7- Bịch 100 gói', NULL, N'Hòa tan đen G7- Bịch 100 gói', NULL, 4, NULL, 380, 110)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (90, N'5000653', N'Cà phê Legend Cappu Hazelnut- H12 St', N'Cà phê Legend Cappu Hazelnut- H12 St', NULL, N'Legend Cappu Hazelnut- H12 St', NULL, 16, NULL, 381, 111)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (91, N'5000654', N'Cà phê Legend Cappu Mocha- H12 St', N'Cà phê Legend Cappu Mocha- H12 St', NULL, N'Legend Cappu Mocha- H12 St', NULL, 16, NULL, 382, 112)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (92, N'5000655', N'Cà phê Legend Cappu Mocha- Bịch 1kg', N'Cà phê Legend Cappu Mocha- Bịch 1kg', NULL, N'Legend Cappu Mocha- Bịch 1kg', NULL, 16, NULL, 383, 113)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (93, N'5000656', N'Cà phê Legend Passiona- Hộp 14 St', N'Cà phê Legend Passiona- Hộp 14 St', NULL, N'Legend Passiona- Hộp 14 St', NULL, 14, NULL, 384, 114)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (94, N'5000659', N'G7 3in1 Instant Coffee-String10SA(C/C)', N'G7 3in1 Instant Coffee-String10SA(C/C)', NULL, N'G7 3in1-String10SA(C/C)', NULL, 3, NULL, 385, 115)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (95, N'5000667', N'G7 3in1 paper cup - carton x 48 cup E/E', N'G7 3in1 paper cup - carton x 48 cup E/E', NULL, N'Paper cup - carton x 48 cup E/E', NULL, 3, NULL, 386, 116)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (96, N'5000668', N'G73in1 paper cup-cartonx48cups (có khay)', N'G73in1 paper cup-cartonx48cups (có khay)', NULL, N'Paper cup-cartonx48cups (có khay)', NULL, 3, NULL, 387, 117)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (97, N'5000689', N'Cà phê Legend Cappu Coconut - H12 St', N'Cà phê Legend Cappu Coconut - H12 St', NULL, N'Legend Cappu Coconut - H12 St', NULL, 16, NULL, 388, 118)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (98, N'5000773', N'G7 3in1 Instant Coffee – Bag 22 st x 12', N'G7 3in1 Instant Coffee – Bag 22 st x 12', NULL, N'G7 3in1 – Bag 22 st x 12', NULL, 3, NULL, 389, 119)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (99, N'5000693', N'G7 3in1 Instant Coffee - Box 24 sa (C/C)', N'G7 3in1 Instant Coffee - Box 24 sa (C/C)', NULL, N'G7 3in1 - Box 24 sa (C/C)', NULL, 3, NULL, 390, 120)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (100, N'5000389', N'G7 3in1 Instant Coffee Bag 20 Sa x 24', N'G7 3in1 Instant Coffee Bag 20 Sa x 24', NULL, N'G7 3in1 Bag 20 Sa x 24', NULL, 3, NULL, 391, 121)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (101, N'5000409', N'G7 Cappuccino Mocha - Bag 1000gr (E/E)', N'G7 Cappuccino Mocha - Bag 1000gr (E/E)', NULL, N'G7 Cappuccino Mocha - Bag 1000gr (E/E)', NULL, 16, NULL, 392, 122)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (102, N'5000753', N'G7 2in1 coffee - Box 15 sa - US FDA', N'G7 2in1 coffee - Box 15 sa - US FDA', NULL, N'G7 2in1 - Box 15 sa - US FDA', NULL, 7, NULL, 393, 123)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (103, N'5000038', N'Cà phê G7 3in1 - Bịch 1 kg', N'Cà phê G7 3in1 - Bịch 1 kg', NULL, N'G7 3in1 - Bịch 1 kg', NULL, 3, NULL, 394, 124)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (104, N'5000729', N'Cà phê Legend Cappu Mocha - Stick 18g', N'Cà phê Legend Cappu Mocha - Stick 18g', NULL, N'Legend Cappu Mocha - Stick 18g', NULL, 16, NULL, 395, 125)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (105, N'5000730', N'Cà phê Legend Cappu Coconut - Stick 18g', N'Cà phê Legend Cappu Coconut - Stick 18g', NULL, N'Legend Cappu Coconut - Stick 18g', NULL, 16, NULL, 396, 126)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (108, N'5000789', N'G7 3in1 Instant coffee-Bag 100+2st (E/E)', N'G7 3in1 Instant coffee-Bag 100+2st (E/E)', NULL, N'G7 3in1 -Bag 100+2st (E/E)', NULL, 3, NULL, 399, 129)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (109, N'5000790', N'G7 3in1 Instant coffee-Bag 50+1st (E/E)', N'G7 3in1 Instant coffee-Bag 50+1st (E/E)', NULL, N'G7 3in1-Bag 50+1st (E/E)', NULL, 3, NULL, 400, 130)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (110, N'5000599', N'G7 Black inst coffee-bag 100sax18(E/E)', N'G7 Black inst coffee-bag 100sax18(E/E)', NULL, N'G7 Black -bag 100sax18(E/E)', NULL, 4, NULL, 401, 131)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (111, N'5000637', N'Cà phê Legend Special Edition-Hộp 9st EV', N'Cà phê Legend Special Edition-Hộp 9st EV', NULL, N'Legend Special Edition-Hộp 9st EV', NULL, 11, NULL, 402, 132)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (112, N'5000793', N'Cà phê Legend Cappuccino Hazelnut-H12st', N'Cà phê Legend Cappuccino Hazelnut-H12st', NULL, N'Legend Cappuccino Hazelnut-H12st', NULL, 16, NULL, 403, 133)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (113, N'5000794', N'Cà phê Legend Cappuccino Mocha-H12st', N'Cà phê Legend Cappuccino Mocha-H12st', NULL, N'Legend Cappuccino Mocha-H12st', NULL, 16, NULL, 404, 134)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (114, N'5000795', N'Cà phê Legend Cappuccino Coconut-H12st', N'Cà phê Legend Cappuccino Coconut-H12st', NULL, N'Legend Cappuccino Coconut-H12st', NULL, 16, NULL, 405, 135)
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName], [ItemNameA], [ItemNameH], [OtherName], [Barcode], [IDItemGroup], [Description], [UOMConverionGroupID], [UOM]) VALUES (115, N'5000665', N'Cà phê Legend Special Edition Hộp 9 St', N'Cà phê Legend Special Edition Hộp 9 St', NULL, N'Legend Special Edition Hộp 9 St', NULL, 11, NULL, 406, 136)
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemGroup] ON 

INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (3, N'G7 3 in 1', N'G7 3 in 1', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (4, N'G7 hòa tan đen', N'G7 hòa tan đen', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (5, N'Sugar Free', N'Sugar Free', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (6, N'Cappucchino', N'Cappucchino', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (7, N'G7 2 in 1', N'G7 2 in 1', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (8, N'G7 Gu Mạnh', N'G7 Gu Mạnh', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (9, N'G7 Espresso', N'G7 Espresso', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (10, N'Legend CFSĐ', N'Legend CFSĐ', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (11, N'Legend Special', N'Legend Special', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (12, N'Legend Classic', N'Legend Classic', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (13, N'Combo Hỗn Hợp', N'Combo Hỗn Hợp', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (14, N'Passiona', N'Passiona', NULL, NULL)
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (15, N'E-coffee', N'E-coffee', N'', N'')
INSERT [dbo].[ItemGroup] ([ID], [ItemGroupName], [ItemGroupNameA], [ItemGroupNameH], [Note]) VALUES (16, N'Cappucchino', N'Cappucchino', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ItemGroup] OFF
GO
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 12, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 14, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 16, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 18, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 20, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 23, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 36, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 38, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 40, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 53, CAST(80.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 56, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 61, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 66, CAST(80.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 75, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 85, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 87, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 95, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 96, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 98, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 103, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-001', 108, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 12, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 14, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 16, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 18, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 20, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 23, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 26, CAST(180.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 35, CAST(180.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 36, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 38, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 40, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 56, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 61, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 72, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 73, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 74, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 75, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 82, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 83, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 84, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 85, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 87, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 93, CAST(180.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 95, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 96, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 98, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 103, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-002', 108, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 12, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 14, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 16, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 18, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 20, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 23, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 27, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 28, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 29, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 30, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 33, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 34, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 36, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 38, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 40, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 46, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 47, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 56, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 61, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 75, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 85, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 87, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 90, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 91, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 92, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 95, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 96, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 97, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 98, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 101, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 103, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 104, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 105, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 108, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 112, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 113, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-003', 114, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 27, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 28, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 29, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 30, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 33, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 34, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 36, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 38, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 46, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 47, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 90, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 91, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 92, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 97, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 101, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 103, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 104, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 105, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 112, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 113, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-004', 114, CAST(120.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 12, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 14, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 16, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 18, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 20, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 23, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 26, CAST(180.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 35, CAST(180.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 40, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 56, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 61, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 72, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 73, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 74, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 75, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 82, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 83, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 84, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 85, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 87, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 93, CAST(180.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 95, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 96, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 98, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 103, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-ARA-005', 108, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 12, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 14, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 16, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 18, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 20, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 23, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 26, CAST(168.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 35, CAST(168.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 36, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 38, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 40, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 56, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 61, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 75, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 85, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 87, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 93, CAST(168.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 95, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 96, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 98, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 103, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-001', 108, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 12, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 14, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 16, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 18, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 20, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 23, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 36, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 38, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 40, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 56, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 57, CAST(114.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 58, CAST(114.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 61, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 75, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 78, CAST(114.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 79, CAST(114.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 85, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 87, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 95, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 96, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 98, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 103, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MED-002', 108, CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 13, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 15, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 17, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 19, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 21, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 22, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 24, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 25, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 31, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 37, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 39, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 41, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 42, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 44, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 45, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 48, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 50, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 51, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 52, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 54, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 55, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 59, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 60, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 62, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 86, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 88, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 89, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 94, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 99, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 100, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 103, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 109, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-001', 110, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 13, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 15, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 17, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 19, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 21, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 22, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 24, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 25, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 31, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 37, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 39, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 41, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 42, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 44, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 45, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 48, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 50, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 51, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 52, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 54, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 55, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 59, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 60, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 62, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 86, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 88, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 89, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 94, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 99, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 100, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 103, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 109, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-002', 110, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 13, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 15, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 17, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 19, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 21, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 22, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 24, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 25, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 31, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 37, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 39, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 41, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 42, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 44, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 45, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 48, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 50, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 51, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 52, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 54, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 55, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 59, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 60, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 62, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 86, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 88, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 89, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 94, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 99, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 100, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 103, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 109, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-003', 110, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 13, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 15, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 17, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 19, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 21, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 22, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 24, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 25, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 31, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 37, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 39, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 41, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 42, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 44, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 45, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 48, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 50, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 51, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 52, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 54, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 55, CAST(160.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 59, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 60, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 62, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 86, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 88, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 89, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 94, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 99, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 100, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 103, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 109, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MES-004', 110, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 13, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 15, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 17, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 19, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 21, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 22, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 24, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 37, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 39, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 41, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 45, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 48, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 50, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 60, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 86, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 94, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 99, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 100, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 103, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-MF0-001', 109, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 13, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 15, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 17, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 19, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 21, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 22, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 24, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 37, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 39, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 41, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 45, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 48, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 50, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 60, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 86, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 94, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 99, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 100, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 103, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-001', 109, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 13, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 15, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 17, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 19, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 21, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 22, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 24, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 37, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 39, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 41, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 45, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 48, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 50, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 60, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 86, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 94, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 99, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 100, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 103, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-002', 109, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 13, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 15, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 17, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 19, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 21, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 22, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 24, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 26, CAST(150.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 35, CAST(150.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 37, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 39, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 41, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 43, CAST(150.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 45, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 48, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 50, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 60, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 63, CAST(150.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 86, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 93, CAST(150.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 94, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 99, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 100, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 102, CAST(150.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 103, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-PIL-003', 109, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 12, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 14, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 16, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 18, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 20, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 23, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 36, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 38, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 40, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 56, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 61, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 64, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 65, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 72, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 73, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 74, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 75, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 80, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 81, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 82, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 83, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 84, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 85, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 87, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 95, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 96, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 98, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 103, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 108, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 111, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-001', 115, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 12, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 14, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 16, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 18, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 20, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 23, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 36, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 38, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 40, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 56, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 61, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 64, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 65, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 72, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 73, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 74, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 75, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 80, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 81, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 82, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 83, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 84, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 85, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 87, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 95, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 96, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 98, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 103, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 108, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 111, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-002', 115, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 12, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 14, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 16, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 18, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 20, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 23, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 36, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 38, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 40, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 56, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 61, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 64, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 65, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 72, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 73, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 74, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 75, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 80, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 81, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 82, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 83, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 84, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 85, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 87, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 95, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 96, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 98, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 103, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 108, CAST(450.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 111, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VIK-003', 115, CAST(400.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 13, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 15, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 17, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 19, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 21, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 22, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 24, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 25, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 31, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 37, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 39, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 41, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 42, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 45, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 48, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 50, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 52, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 59, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 60, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 62, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 86, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 88, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 89, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 94, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 99, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 100, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 103, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 109, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-001', 110, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 13, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 15, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 17, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 19, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 21, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 22, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 24, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 25, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 31, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 37, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 39, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 41, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 42, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 45, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 48, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 50, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 52, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 59, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 60, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 62, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 86, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 88, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 89, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 94, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 99, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 100, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 103, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 109, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ItemMay] ([MS_MAY], [ItemID], [StandardOutput], [MS_DV_TG_Output], [StandardSpeed], [MS_DV_TG_Speed], [DataCollectionCycle], [DownTimeRecord], [WorkingCycle], [NumberPerCyle], [TimeSendMgs]) VALUES (N'CHIE-VOL-002', 110, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-001', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-001', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-001', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-001', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-001', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-001', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-001', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-001', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-002', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-002', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-002', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-002', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-002', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-002', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-002', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-002', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-003', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-003', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-003', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-003', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-003', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-003', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-003', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-003', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-004', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-004', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-004', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-004', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-004', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-004', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-004', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-004', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-005', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-005', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-005', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-005', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-005', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-005', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-005', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-ARA-005', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-001', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-001', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-001', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-001', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-001', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-001', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-001', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-001', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-002', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-002', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-002', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-002', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-002', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-002', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-002', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MED-002', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-001', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-001', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-001', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-001', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-001', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-001', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-001', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-001', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-002', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-002', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-002', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-002', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-002', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-002', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-002', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-002', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-003', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-003', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-003', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-003', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-003', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-003', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-003', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-003', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-004', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-004', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-004', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-004', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-004', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-004', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-004', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MES-004', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MF0-001', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MF0-001', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MF0-001', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MF0-001', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MF0-001', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MF0-001', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MF0-001', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-MF0-001', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-001', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-001', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-001', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-001', 90, 2, 5)
GO
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-001', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-001', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-001', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-001', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-002', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-002', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-002', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-002', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-002', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-002', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-002', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-002', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-003', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-003', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-003', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-003', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-003', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-003', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-003', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-PIL-003', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-001', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-001', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-001', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-001', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-001', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-001', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-001', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-001', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-002', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-002', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-002', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-002', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-002', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-002', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-002', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-002', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-003', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-003', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-003', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-003', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-003', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-003', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-003', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VIK-003', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-001', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-001', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-001', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-001', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-001', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-001', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-001', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-001', 94, 2, 300)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-002', 86, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-002', 87, 2, 15)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-002', 89, 2, 120)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-002', 90, 2, 5)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-002', 91, 2, 3)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-002', 92, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-002', 93, 2, 30)
INSERT [dbo].[MAY_NGUYEN_NHAN] ([MS_MAY], [MS_NGUYEN_NHAN], [DVT], [DINH_MUC]) VALUES (N'CHIE-VOL-002', 94, 2, 300)
GO
SET IDENTITY_INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ON 

INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (86, N'DT01', N'Vệ sinh & ráp máy & khởi động đầu đợt chạy', 0, 0, N'Vệ sinh & ráp máy & khởi động đầu đợt chạy', 1, 2, 6)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (87, N'DT02', N'Chuẩn bị khởi động đầu ca', 0, 0, N'Chuẩn bị khởi động đầu ca', 1, 2, 6)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (89, N'DT03', N'Vệ sinh đổi sản phẩm/ đổi NSX & HSD', 0, 0, N'Vệ sinh đổi sản phẩm/ đổi NSX & HSD', 1, 2, 6)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (90, N'DT04', N'Thay cuộn màng', 0, 0, N'Thay cuộn màng', 1, 2, 6)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (91, N'DT06', N'Vệ sinh ngàm hàn định kỳ/1ca', 0, 0, N'Vệ sinh ngàm hàn định kỳ/1ca', 1, 2, 7)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (92, N'DT08', N'Nghỉ giữa ca, ăn cơm', 0, 0, N'Nghỉ giữa ca, ăn cơm', 1, 2, 8)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (93, N'DT10', N'Vệ sinh sơ bộ cuối ca', 0, 0, N'Vệ sinh sơ bộ cuối ca', 1, 2, 7)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (94, N'DT11', N'Vệ sinh kỹ cuối kỳ chạy, cuối đợt chạy', 0, 0, N'Vệ sinh kỹ cuối kỳ chạy, cuối đợt chạy', 1, 2, 7)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (95, N'DT12', N'Bảo trì máy định kỳ', 0, 0, N'Bảo trì máy định kỳ', 1, 2, 7)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (96, N'DT13', N'Huấn luyện, triển khai sp, qui trình mới', 0, 0, N'Huấn luyện, triển khai sp, qui trình mới', 1, 2, 9)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (97, N'DT14', N'Họp nội bộ sản xuất', 0, 0, N'Họp nội bộ sản xuất', 1, 2, 8)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (98, N'DT15', N'QC kiểm tra theo kế hoạch kiểm soát CL', 0, 0, N'QC kiểm tra theo kế hoạch kiểm soát CL', 1, 2, 10)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (99, N'DT16', N'Thiếu NVL (Kế hoạch)', 0, 0, N'Thiếu NVL (Kế hoạch)', 1, 2, 11)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (100, N'DT17', N'Thiếu Bao bì & Vật tư (Kế hoạch)', 0, 0, N'Thiếu Bao bì & Vật tư (Kế hoạch)', 1, 2, 11)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (101, N'DT18', N'Cúp điện có kế hoạch ', 0, 0, N'Cúp điện có kế hoạch ', 1, 2, 13)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (102, N'EL01', N'CROT-cánh khuấy-hư mô tơ/gãy/kẹt/đứt dây đai', 0, 0, N'CROT-cánh khuấy-hư mô tơ/gãy/kẹt/đứt dây đai', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (103, N'EL04', N'CROT-ống rót-nghẹt bột/cạ', 0, 0, N'CROT-ống rót-nghẹt bột/cạ', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (104, N'EL06', N'CROT-in date không đạt phải chỉnh sửa', 0, 0, N'CROT-in date không đạt phải chỉnh sửa', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (105, N'EL10', N'CROT-sensor máy CR hư, mắt thần không đọc được', 0, 0, N'CROT-sensor máy CR hư, mắt thần không đọc được', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (106, N'EL11', N'CROT-mép-lạng mép, chỉnh mép gói', 0, 0, N'CROT-mép-lạng mép, chỉnh mép gói', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (107, N'EL12', N'CROT-cắt hụt gói/chỉnh đùn gói', 0, 0, N'CROT-cắt hụt gói/chỉnh đùn gói', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (108, N'EL13', N'CROT-dao cắt line-cắt không đứt, chỉnh, thay dao', 0, 0, N'CROT-dao cắt line-cắt không đứt, chỉnh, thay dao', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (109, N'EL15', N'CROT-dao cắt xé-cắt không đứt, chỉnh dao lệch', 0, 1, N'CROT-dao cắt xé-cắt không đứt, chỉnh dao lệch', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (110, N'EL17', N'CROT-thay chỉnh dao cắt dây', 0, 0, N'CROT-thay chỉnh dao cắt dây', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (111, N'EL18', N'CROT-ngàm hàn-cấn bột ngang/gấp mí/xì dọc/cháy', 0, 0, N'CROT-ngàm hàn-cấn bột ngang/gấp mí/xì dọc/cháy', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (112, N'EL20', N'CROT-ngàm hàn hư hay gãy ti phải thay', 0, 0, N'CROT-ngàm hàn hư hay gãy ti phải thay', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (113, N'EL25', N'CROT-ngàm dao cắt ngang-cắt không đứt: mòn,hư,gãy', 0, 0, N'CROT-ngàm dao cắt ngang-cắt không đứt: mòn,hư,gãy', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (114, N'EL29', N'CROT-tay gắp-không mở gói, rớt gói, rớt bột', 0, 0, N'CROT-tay gắp-không mở gói, rớt gói, rớt bột', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (115, N'EL33', N'CROT-khí nén-thiếu áp nguồn/bể bung ống hơi', 0, 0, N'CROT-khí nén-thiếu áp nguồn/bể bung ống hơi', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (116, N'EL35', N'CROT-bể đứt hư xì ống dầu, hết dầu', 0, 0, N'CROT-bể đứt hư xì ống dầu, hết dầu', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (117, N'EL36', N'CROT-bơm chân không-gãy van', 0, 0, N'CROT-bơm chân không-gãy van', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (118, N'EL39', N'CROT-mô tơ chính-báo lỗi/cháy/lệch cam/đứt xích', 0, 0, N'CROT-mô tơ chính-báo lỗi/cháy/lệch cam/đứt xích', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (119, N'EL43', N'MIXE-vít cấp liệu-nghẹt bột/hư mô tơ', 0, 0, N'MIXE-vít cấp liệu-nghẹt bột/hư mô tơ', 1, 1, 12)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (120, N'EL50', N'KHAC-thiếu phải chờ NVL, bao bì (không KH)', 0, 0, N'KHAC-thiếu phải chờ NVL, bao bì (không KH)', 1, 1, 11)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (121, N'EL51', N'KHAC-do bao bì không phù hợp (không KH)', 0, 0, N'KHAC-do bao bì không phù hợp (không KH)', 1, 1, 11)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (122, N'EL52', N'KHAC-do NVL không phù hợp (không KH)', 0, 0, N'KHAC-do NVL không phù hợp (không KH)', 1, 1, 11)
INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] ([MS_NGUYEN_NHAN], [CauseCode], [TEN_NGUYEN_NHAN], [HU_HONG], [BTDK], [TEN_NGUYEN_NHAN_ANH], [MAC_DINH], [Planned], [DownTimeTypeID]) VALUES (123, N'EL53', N'KHAC-cúp điện đột xuất', 0, 0, N'KHAC-cúp điện đột xuất', 1, 1, 13)
SET IDENTITY_INSERT [dbo].[NGUYEN_NHAN_DUNG_MAY] OFF
GO
SET IDENTITY_INSERT [dbo].[Operator] ON 

INSERT [dbo].[Operator] ([ID], [OperatorCode], [OperatorName], [OperatorNameA], [OperatorNameH], [CardID], [Note]) VALUES (2, N'1', N'Chiết rót B', NULL, NULL, N'0', N'')
INSERT [dbo].[Operator] ([ID], [OperatorCode], [OperatorName], [OperatorNameA], [OperatorNameH], [CardID], [Note]) VALUES (3, N'2', N'Chiết rót A', NULL, NULL, N'0', N'')
INSERT [dbo].[Operator] ([ID], [OperatorCode], [OperatorName], [OperatorNameA], [OperatorNameH], [CardID], [Note]) VALUES (4, N'3', N'Chiết rót C', NULL, NULL, N'0', N'')
SET IDENTITY_INSERT [dbo].[Operator] OFF
GO
SET IDENTITY_INSERT [dbo].[PrODetails] ON 

INSERT [dbo].[PrODetails] ([DetailsID], [PrOID], [ItemID], [ItemName], [UOMID], [PlannedQuantity], [PlannedStartTime], [DueDate]) VALUES (105, 10084, 13, N'G7 3in1 Instant coffee - box 10sa (E/C)', 144, CAST(1000.00 AS Decimal(18, 2)), CAST(N'2021-03-09T09:59:08.783' AS DateTime), CAST(N'2021-03-13T10:59:08.783' AS DateTime))
INSERT [dbo].[PrODetails] ([DetailsID], [PrOID], [ItemID], [ItemName], [UOMID], [PlannedQuantity], [PlannedStartTime], [DueDate]) VALUES (107, 10084, 15, N'G7 3in1 Instant coffee - bag 22 sa ( E/C', 146, CAST(500.00 AS Decimal(18, 2)), CAST(N'2021-03-09T09:59:08.783' AS DateTime), CAST(N'2021-03-13T10:59:08.783' AS DateTime))
SET IDENTITY_INSERT [dbo].[PrODetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductionOrder] ON 

INSERT [dbo].[ProductionOrder] ([ID], [PrOrNumber], [OrderDate], [StartDate], [DueDate], [Status], [Note]) VALUES (10084, N'2021-03-09', CAST(N'2021-03-09T09:59:08.783' AS DateTime), CAST(N'2021-03-09T09:59:08.783' AS DateTime), CAST(N'2021-03-13T10:59:08.783' AS DateTime), 1, N'')
SET IDENTITY_INSERT [dbo].[ProductionOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductionRun] ON 

INSERT [dbo].[ProductionRun] ([ID], [Code], [StartTime], [EndTime], [CaSTT], [Note]) VALUES (36, N'PC-2103-0002', CAST(N'2021-03-09T06:01:00.000' AS DateTime), CAST(N'2021-03-09T14:00:00.000' AS DateTime), 1, N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[ProductionRun] ([ID], [Code], [StartTime], [EndTime], [CaSTT], [Note]) VALUES (41, N'PC-2103-0003', CAST(N'2021-03-18T14:00:00.000' AS DateTime), CAST(N'2021-03-18T22:00:00.000' AS DateTime), 3, N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[ProductionRun] ([ID], [Code], [StartTime], [EndTime], [CaSTT], [Note]) VALUES (42, N'PC-2103-0004', CAST(N'2021-03-26T22:00:00.000' AS DateTime), CAST(N'2021-03-27T06:00:00.000' AS DateTime), 2, N'tiến độ sản xuất lần 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
SET IDENTITY_INSERT [dbo].[ProductionRun] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductionRunDetails] ON 

INSERT [dbo].[ProductionRunDetails] ([DetailID], [ProductionRunID], [PrOID], [ItemID], [MS_HE_THONG], [MS_MAY], [OperatorID], [StartTime], [EndTime], [ActualQuantity], [DefectQuantity], [ActualSpeed], [StandardSpeed], [StandardOutput], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (71, 36, 10084, 13, 11, N'CHIE-MES-001', 3, CAST(N'2021-03-09T06:00:00.000' AS DateTime), CAST(N'2021-03-09T14:00:00.000' AS DateTime), CAST(200.00 AS Numeric(18, 2)), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[ProductionRunDetails] ([DetailID], [ProductionRunID], [PrOID], [ItemID], [MS_HE_THONG], [MS_MAY], [OperatorID], [StartTime], [EndTime], [ActualQuantity], [DefectQuantity], [ActualSpeed], [StandardSpeed], [StandardOutput], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (90, 36, 10084, 13, 11, N'CHIE-MES-002', 3, CAST(N'2021-03-09T06:01:00.000' AS DateTime), CAST(N'2021-03-09T14:00:00.000' AS DateTime), CAST(230.00 AS Numeric(18, 2)), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[ProductionRunDetails] ([DetailID], [ProductionRunID], [PrOID], [ItemID], [MS_HE_THONG], [MS_MAY], [OperatorID], [StartTime], [EndTime], [ActualQuantity], [DefectQuantity], [ActualSpeed], [StandardSpeed], [StandardOutput], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (106, 41, 10084, 13, 11, N'CHIE-MES-001', 3, CAST(N'2021-03-18T14:00:00.000' AS DateTime), CAST(N'2021-03-18T22:00:00.000' AS DateTime), CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[ProductionRunDetails] ([DetailID], [ProductionRunID], [PrOID], [ItemID], [MS_HE_THONG], [MS_MAY], [OperatorID], [StartTime], [EndTime], [ActualQuantity], [DefectQuantity], [ActualSpeed], [StandardSpeed], [StandardOutput], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (107, 41, 10084, 15, 11, N'CHIE-MES-002', 3, CAST(N'2021-03-18T14:00:00.000' AS DateTime), CAST(N'2021-03-18T22:00:00.000' AS DateTime), CAST(200.00 AS Numeric(18, 2)), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[ProductionRunDetails] ([DetailID], [ProductionRunID], [PrOID], [ItemID], [MS_HE_THONG], [MS_MAY], [OperatorID], [StartTime], [EndTime], [ActualQuantity], [DefectQuantity], [ActualSpeed], [StandardSpeed], [StandardOutput], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (110, 42, 10084, 13, 11, N'CHIE-VOL-001', 3, CAST(N'2021-03-26T22:00:00.000' AS DateTime), CAST(N'2021-03-27T06:00:00.000' AS DateTime), CAST(200.00 AS Numeric(18, 2)), NULL, NULL, NULL, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[ProductionRunDetails] ([DetailID], [ProductionRunID], [PrOID], [ItemID], [MS_HE_THONG], [MS_MAY], [OperatorID], [StartTime], [EndTime], [ActualQuantity], [DefectQuantity], [ActualSpeed], [StandardSpeed], [StandardOutput], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (111, 42, 10084, 13, 11, N'CHIE-VOL-002', 3, CAST(N'2021-03-26T22:00:00.000' AS DateTime), CAST(N'2021-03-27T06:00:00.000' AS DateTime), CAST(210.00 AS Numeric(18, 2)), NULL, NULL, NULL, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductionRunDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProSchedule] ON 

INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (236, 10084, 105, 11, N'CHIE-MES-001', NULL, NULL, CAST(500.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:00:20.457' AS DateTime), CAST(N'2021-03-11T18:00:20.457' AS DateTime), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (237, 10084, 105, 11, N'CHIE-MES-002', NULL, NULL, CAST(500.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:00:20.457' AS DateTime), CAST(N'2021-03-11T18:00:20.457' AS DateTime), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (238, 10084, 105, 11, N'CHIE-MES-003', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:00:20.457' AS DateTime), CAST(N'2021-03-11T18:00:20.457' AS DateTime), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (239, 10084, 105, 11, N'CHIE-MES-004', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:00:20.457' AS DateTime), CAST(N'2021-03-11T18:00:20.457' AS DateTime), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (240, 10084, 105, 11, N'CHIE-MF0-001', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:00:20.457' AS DateTime), CAST(N'2021-03-11T18:00:20.457' AS DateTime), NULL, NULL, NULL, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (241, 10084, 105, 11, N'CHIE-PIL-001', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:00:20.457' AS DateTime), CAST(N'2021-03-11T18:00:20.457' AS DateTime), NULL, NULL, NULL, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (242, 10084, 105, 11, N'CHIE-PIL-002', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:00:20.457' AS DateTime), CAST(N'2021-03-11T18:00:20.457' AS DateTime), NULL, NULL, NULL, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (243, 10084, 105, 11, N'CHIE-PIL-003', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:00:20.457' AS DateTime), CAST(N'2021-03-11T18:00:20.457' AS DateTime), NULL, NULL, NULL, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (244, 10084, 105, 11, N'CHIE-VOL-001', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:00:20.457' AS DateTime), CAST(N'2021-03-11T18:00:20.457' AS DateTime), NULL, NULL, NULL, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (245, 10084, 105, 11, N'CHIE-VOL-002', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:00:20.457' AS DateTime), CAST(N'2021-03-11T18:00:20.457' AS DateTime), NULL, NULL, NULL, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (255, 10084, 107, 11, N'CHIE-MES-001', NULL, NULL, CAST(200.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:29:31.407' AS DateTime), CAST(N'2021-03-11T18:29:31.407' AS DateTime), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (256, 10084, 107, 11, N'CHIE-MES-002', NULL, NULL, CAST(300.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:29:31.407' AS DateTime), CAST(N'2021-03-11T18:29:31.407' AS DateTime), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (257, 10084, 107, 11, N'CHIE-MES-003', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:29:31.407' AS DateTime), CAST(N'2021-03-11T18:29:31.407' AS DateTime), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (258, 10084, 107, 11, N'CHIE-MES-004', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:29:31.407' AS DateTime), CAST(N'2021-03-11T18:29:31.407' AS DateTime), NULL, NULL, NULL, CAST(240.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (259, 10084, 107, 11, N'CHIE-MF0-001', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:29:31.407' AS DateTime), CAST(N'2021-03-11T18:29:31.407' AS DateTime), NULL, NULL, NULL, CAST(300.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (260, 10084, 107, 11, N'CHIE-PIL-001', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:29:31.407' AS DateTime), CAST(N'2021-03-11T18:29:31.407' AS DateTime), NULL, NULL, NULL, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (261, 10084, 107, 11, N'CHIE-PIL-002', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:29:31.407' AS DateTime), CAST(N'2021-03-11T18:29:31.407' AS DateTime), NULL, NULL, NULL, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (262, 10084, 107, 11, N'CHIE-PIL-003', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:29:31.407' AS DateTime), CAST(N'2021-03-11T18:29:31.407' AS DateTime), NULL, NULL, NULL, CAST(222.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (263, 10084, 107, 11, N'CHIE-VOL-001', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:29:31.407' AS DateTime), CAST(N'2021-03-11T18:29:31.407' AS DateTime), NULL, NULL, NULL, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ProSchedule] ([ScheduleID], [PrOID], [DetailsID], [MS_HE_THONG], [MS_MAY], [CaID], [MS_TO], [PlannedQuantity], [PlannedStartTime], [DueTime], [EndTime], [ActualQty], [StandardSpeed], [StandardOutput], [ActualQuantity], [WorkingCycle], [NumberPerCycle], [DownTimeRecord]) VALUES (264, 10084, 107, 11, N'CHIE-VOL-002', NULL, NULL, CAST(0.00 AS Numeric(18, 2)), CAST(N'2021-03-11T10:29:31.407' AS DateTime), CAST(N'2021-03-11T18:29:31.407' AS DateTime), NULL, NULL, NULL, CAST(220.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProSchedule] OFF
GO
INSERT [dbo].[REPORT_OEE] ([MENU_ID], [MENU_TEXT], [MENU_ENGLISH], [MENU_CHINESE], [MENU_PARENT], [MENU_LINE], [MENU_INDEX], [SHORT_KEY], [DLL_NAME], [CLASS_NAME], [FUNCTION_NAME], [CUSTUMER], [NOTE], [MENU_IMAGE], [PROJECT_NAME], [MENU_NOTE], [MENU_FONT], [MENU_POSITION], [MENU_TYPE], [AN_HIEN]) VALUES (N'mnuBCTinhHinhSanXuat', N'Tình hình sản xuất', N'Tình hình sản xuất', NULL, N'null', 0, CAST(1 AS Numeric(10, 0)), NULL, NULL, N'frmMain', N'LoadBCTinhHinhSanXuat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1)
INSERT [dbo].[REPORT_OEE] ([MENU_ID], [MENU_TEXT], [MENU_ENGLISH], [MENU_CHINESE], [MENU_PARENT], [MENU_LINE], [MENU_INDEX], [SHORT_KEY], [DLL_NAME], [CLASS_NAME], [FUNCTION_NAME], [CUSTUMER], [NOTE], [MENU_IMAGE], [PROJECT_NAME], [MENU_NOTE], [MENU_FONT], [MENU_POSITION], [MENU_TYPE], [AN_HIEN]) VALUES (N'mnuBCTongHopHieuXuat', N'Tổng hợp hiệu xuất', N'Tổng hợp hiệu xuất', NULL, N'null', 0, CAST(2 AS Numeric(10, 0)), NULL, NULL, N'frmMain', N'LoadTongHopHieuXuat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1)
INSERT [dbo].[REPORT_OEE] ([MENU_ID], [MENU_TEXT], [MENU_ENGLISH], [MENU_CHINESE], [MENU_PARENT], [MENU_LINE], [MENU_INDEX], [SHORT_KEY], [DLL_NAME], [CLASS_NAME], [FUNCTION_NAME], [CUSTUMER], [NOTE], [MENU_IMAGE], [PROJECT_NAME], [MENU_NOTE], [MENU_FONT], [MENU_POSITION], [MENU_TYPE], [AN_HIEN]) VALUES (N'mnuPareto', N'Báo cáo Pareto', N'Báo cáo Pareto', NULL, N'null', 0, CAST(3 AS Numeric(10, 0)), NULL, NULL, N'frmMain', N'LoadPareto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1)
GO
INSERT [dbo].[SatusProDuct] ([ID], [NAME_STATUS], [NAME_STATUS_A], [NAME_STATUS_H]) VALUES (1, N'Draft', N'Draft', N'Draft')
INSERT [dbo].[SatusProDuct] ([ID], [NAME_STATUS], [NAME_STATUS_A], [NAME_STATUS_H]) VALUES (2, N'Released', N'Released', N'Released')
INSERT [dbo].[SatusProDuct] ([ID], [NAME_STATUS], [NAME_STATUS_A], [NAME_STATUS_H]) VALUES (3, N'Completed', N'Completed', N'Completed')
INSERT [dbo].[SatusProDuct] ([ID], [NAME_STATUS], [NAME_STATUS_A], [NAME_STATUS_H]) VALUES (4, N'Closed', N'Closed', N'Closed')
GO
INSERT [dbo].[StopType] ([ID], [StopTypeName], [StopTypeNameA], [StopTypeNameH]) VALUES (1, N'Efficiency Loss', N'Efficiency Loss', N'Efficiency Loss')
INSERT [dbo].[StopType] ([ID], [StopTypeName], [StopTypeNameA], [StopTypeNameH]) VALUES (2, N'DownTime ', N'DownTime ', N'DownTime ')
INSERT [dbo].[StopType] ([ID], [StopTypeName], [StopTypeNameA], [StopTypeNameH]) VALUES (3, N'Iddle Hours ', N'Iddle Hours ', N'Iddle Hours ')
GO
INSERT [dbo].[Target] ([Year], [MS_MAY], [OEE], [PE], [EL], [SpeedVar]) VALUES (2020, N'CHIE-MES-001', CAST(91.69 AS Decimal(18, 2)), CAST(100.96 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(0.89 AS Decimal(18, 2)))
INSERT [dbo].[Target] ([Year], [MS_MAY], [OEE], [PE], [EL], [SpeedVar]) VALUES (2020, N'CHIE-MES-002', CAST(100.07 AS Decimal(18, 2)), CAST(93.93 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(-6.53 AS Decimal(18, 2)))
INSERT [dbo].[Target] ([Year], [MS_MAY], [OEE], [PE], [EL], [SpeedVar]) VALUES (2021, N'CHIE-MES-001', CAST(91.69 AS Decimal(18, 2)), CAST(100.96 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.89 AS Decimal(18, 2)))
INSERT [dbo].[Target] ([Year], [MS_MAY], [OEE], [PE], [EL], [SpeedVar]) VALUES (2021, N'CHIE-MES-002', CAST(100.07 AS Decimal(18, 2)), CAST(93.93 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-6.53 AS Decimal(18, 2)))
INSERT [dbo].[Target] ([Year], [MS_MAY], [OEE], [PE], [EL], [SpeedVar]) VALUES (2021, N'CHIE-VOL-001', CAST(90.88 AS Decimal(18, 2)), CAST(90.88 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-10.04 AS Decimal(18, 2)))
INSERT [dbo].[Target] ([Year], [MS_MAY], [OEE], [PE], [EL], [SpeedVar]) VALUES (2021, N'CHIE-VOL-002', CAST(95.50 AS Decimal(18, 2)), CAST(101.87 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.83 AS Decimal(18, 2)))
INSERT [dbo].[Target] ([Year], [MS_MAY], [OEE], [PE], [EL], [SpeedVar]) VALUES (2022, N'CHIE-MES-001', CAST(91.69 AS Decimal(18, 2)), CAST(99.80 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(0.89 AS Decimal(18, 2)))
INSERT [dbo].[Target] ([Year], [MS_MAY], [OEE], [PE], [EL], [SpeedVar]) VALUES (2022, N'CHIE-MES-002', CAST(100.07 AS Decimal(18, 2)), CAST(93.93 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(-6.53 AS Decimal(18, 2)))
GO
INSERT [dbo].[TargetOfYear] ([Year], [OEE], [PE], [EL], [SpeedVar]) VALUES (2020, CAST(95.88 AS Decimal(18, 2)), CAST(97.45 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(-2.82 AS Decimal(18, 2)))
INSERT [dbo].[TargetOfYear] ([Year], [OEE], [PE], [EL], [SpeedVar]) VALUES (2021, CAST(94.54 AS Decimal(18, 2)), CAST(96.91 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-3.46 AS Decimal(18, 2)))
INSERT [dbo].[TargetOfYear] ([Year], [OEE], [PE], [EL], [SpeedVar]) VALUES (2022, CAST(95.88 AS Decimal(18, 2)), CAST(97.45 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(-2.82 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[UOM] ON 

INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (135, N'1', N'gói 16 gr', N'gói 16 gr', N'', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), 0, N'gói')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (136, N'2', N'gói 0.02 kg', N'gói 0.02 kg', N'', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), 0, N'gói')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (137, N'3', N'gói 17 gr', N'gói 17 gr', N'', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), 0, N'gói')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (138, N'4', N'gói 2.5 gr', N'gói 2.5 gr', N'', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), 0, N'gói')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (139, N'5', N'gói 18 gr', N'gói 18 gr', N'', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), 0, N'gói')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (140, N'6', N'gói 0.025 gr', N'gói 0.025 gr', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'gói')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (141, N'7', N'gói 0.002 gr', N'gói 0.002 gr', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'gói')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (142, N'8', N'kg', N'kg', NULL, NULL, NULL, NULL, NULL, NULL, 1, N'kg')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (143, N'5000000', N'Thùng  5000000', N'Carton 5000000', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (144, N'5000001', N'Thùng  5000001', N'Carton 5000001', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (145, N'5000002', N'Thùng  5000002', N'Carton 5000002', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (146, N'5000004', N'Thùng  5000004', N'Carton 5000004', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (147, N'5000005', N'Thùng  5000005', N'Carton 5000005', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (148, N'5000007', N'Thùng  5000007', N'Carton 5000007', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (149, N'5000008', N'Thùng  5000008', N'Carton 5000008', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (150, N'5000009', N'Thùng  5000009', N'Carton 5000009', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (151, N'5000011', N'Thùng  5000011', N'Carton 5000011', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (152, N'5000013', N'Thùng  5000013', N'Carton 5000013', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (153, N'5000015', N'Thùng  5000015', N'Carton 5000015', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (154, N'5000016', N'Thùng  5000016', N'Carton 5000016', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (155, N'5000017', N'Thùng  5000017', N'Carton 5000017', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (156, N'5000021', N'Thùng  5000021', N'Carton 5000021', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (157, N'5000022', N'Thùng  5000022', N'Carton 5000022', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (158, N'5000023', N'Thùng  5000023', N'Carton 5000023', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (159, N'5000024', N'Thùng  5000024', N'Carton 5000024', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (160, N'5000025', N'Thùng  5000025', N'Carton 5000025', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (161, N'5000026', N'Thùng  5000026', N'Carton 5000026', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (162, N'5000028', N'Thùng  5000028', N'Carton 5000028', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (163, N'5000029', N'Thùng  5000029', N'Carton 5000029', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (164, N'5000030', N'Thùng  5000030', N'Carton 5000030', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (165, N'5000031', N'Thùng  5000031', N'Carton 5000031', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (166, N'5000032', N'Thùng  5000032', N'Carton 5000032', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (167, N'5000033', N'Thùng  5000033', N'Carton 5000033', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (168, N'5000034', N'Thùng  5000034', N'Carton 5000034', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (169, N'5000040', N'Thùng  5000040', N'Carton 5000040', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (170, N'5000042', N'Thùng  5000042', N'Carton 5000042', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (171, N'5000043', N'Thùng  5000043', N'Carton 5000043', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (172, N'5000044', N'Thùng  5000044', N'Carton 5000044', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (173, N'5000048', N'Thùng  5000048', N'Carton 5000048', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (174, N'5000053', N'Thùng  5000053', N'Carton 5000053', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (175, N'5000069', N'Thùng  5000069', N'Carton 5000069', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (176, N'5000070', N'Thùng  5000070', N'Carton 5000070', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (177, N'5000199', N'Thùng  5000199', N'Carton 5000199', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (178, N'5000200', N'Thùng  5000200', N'Carton 5000200', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (179, N'5000201', N'Thùng  5000201', N'Carton 5000201', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (180, N'5000278', N'Thùng  5000278', N'Carton 5000278', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (181, N'5000291', N'Thùng  5000291', N'Carton 5000291', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (182, N'5000402', N'Thùng  5000402', N'Carton 5000402', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (183, N'5000403', N'Thùng  5000403', N'Carton 5000403', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (184, N'5000407', N'Thùng  5000407', N'Carton 5000407', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (185, N'5000412', N'Thùng  5000412', N'Carton 5000412', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (186, N'5000414', N'Thùng  5000414', N'Carton 5000414', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (187, N'5000504', N'Thùng  5000504', N'Carton 5000504', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (188, N'5000514', N'Thùng  5000514', N'Carton 5000514', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (189, N'5000515', N'Thùng  5000515', N'Carton 5000515', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (190, N'5000516', N'Thùng  5000516', N'Carton 5000516', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (191, N'5000545', N'Thùng  5000545', N'Carton 5000545', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (192, N'5000546', N'Thùng  5000546', N'Carton 5000546', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (193, N'5000551', N'Thùng  5000551', N'Carton 5000551', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (194, N'5000552', N'Thùng  5000552', N'Carton 5000552', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (195, N'5000562', N'Thùng  5000562', N'Carton 5000562', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (196, N'5000563', N'Thùng  5000563', N'Carton 5000563', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (197, N'5000568', N'Thùng  5000568', N'Carton 5000568', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (198, N'5000569', N'Thùng  5000569', N'Carton 5000569', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (199, N'5000574', N'Thùng  5000574', N'Carton 5000574', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (200, N'5000576', N'Thùng  5000576', N'Carton 5000576', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (201, N'5000577', N'Thùng  5000577', N'Carton 5000577', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (202, N'5000578', N'Thùng  5000578', N'Carton 5000578', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (203, N'5000579', N'Thùng  5000579', N'Carton 5000579', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (204, N'5000580', N'Thùng  5000580', N'Carton 5000580', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (205, N'5000581', N'Thùng  5000581', N'Carton 5000581', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (206, N'5000597', N'Thùng  5000597', N'Carton 5000597', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (207, N'5000600', N'Thùng  5000600', N'Carton 5000600', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (208, N'5000631', N'Thùng  5000631', N'Carton 5000631', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (209, N'5000638', N'Thùng  5000638', N'Carton 5000638', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (210, N'5000639', N'Thùng  5000639', N'Carton 5000639', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (211, N'5000640', N'Thùng  5000640', N'Carton 5000640', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (212, N'5000641', N'Thùng  5000641', N'Carton 5000641', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (213, N'5000642', N'Thùng  5000642', N'Carton 5000642', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (214, N'5000643', N'Thùng  5000643', N'Carton 5000643', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (215, N'5000644', N'Thùng  5000644', N'Carton 5000644', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (216, N'5000648', N'Thùng  5000648', N'Carton 5000648', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (217, N'5000649', N'Thùng  5000649', N'Carton 5000649', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (218, N'5000650', N'Thùng  5000650', N'Carton 5000650', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (219, N'5000651', N'Thùng  5000651', N'Carton 5000651', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (220, N'5000652', N'Thùng  5000652', N'Carton 5000652', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (221, N'5000653', N'Thùng  5000653', N'Carton 5000653', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (222, N'5000654', N'Thùng  5000654', N'Carton 5000654', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (223, N'5000655', N'Thùng  5000655', N'Carton 5000655', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (224, N'5000656', N'Thùng  5000656', N'Carton 5000656', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (225, N'5000659', N'Thùng  5000659', N'Carton 5000659', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (226, N'5000667', N'Thùng  5000667', N'Carton 5000667', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (227, N'5000668', N'Thùng  5000668', N'Carton 5000668', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (228, N'5000689', N'Thùng  5000689', N'Carton 5000689', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (229, N'5000773', N'Thùng  5000773', N'Carton 5000773', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (230, N'5000693', N'Thùng  5000693', N'Carton 5000693', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (231, N'5000389', N'Thùng  5000389', N'Carton 5000389', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (232, N'5000409', N'Thùng  5000409', N'Carton 5000409', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (233, N'5000753', N'Thùng  5000753', N'Carton 5000753', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
GO
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (234, N'5000038', N'Thùng  5000038', N'Carton 5000038', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (235, N'5000729', N'Thùng  5000729', N'Carton 5000729', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (236, N'5000730', N'Thùng  5000730', N'Carton 5000730', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (237, N'5000529', N'Thùng  5000529', N'Carton 5000529', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (238, N'5000647', N'Thùng  5000647', N'Carton 5000647', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (239, N'5000789', N'Thùng  5000789', N'Carton 5000789', N'', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (240, N'5000790', N'Thùng  5000790', N'Carton 5000790', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (241, N'5000599', N'Thùng  5000599', N'Carton 5000599', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (242, N'5000637', N'Thùng  5000637', N'Carton 5000637', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (243, N'5000793', N'Thùng  5000793', N'Carton 5000793', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (244, N'5000794', N'Thùng  5000794', N'Carton 5000794', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (245, N'5000795', N'Thùng  5000795', N'Carton 5000795', N'', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (246, N'5000665', N'Thùng  5000665', N'Carton 5000665', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'thùng')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (247, N'9', N'Bịch 1 kg ', N'', N'', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), 0, N'gói')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (248, N'10', N'Bịch 0.5 kg ', N'', N'', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), 0, N'gói')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (249, N'11', N'Gói 0.1 kg ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'gói')
INSERT [dbo].[UOM] ([ID], [UOMCode], [UOMName], [UOMNameA], [UOMNameH], [Length], [Width], [Height], [Volume], [Weight], [BasedUOM], [UOMNote]) VALUES (250, N'12', N'Gói 0.15 kg ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'gói')
SET IDENTITY_INSERT [dbo].[UOM] OFF
GO
SET IDENTITY_INSERT [dbo].[UOMConversionGroup] ON 

INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (303, N'5000000', 142, NULL, N'5000000', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (304, N'5000001', 142, NULL, N'5000001', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (305, N'5000002', 142, NULL, N'5000002', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (306, N'5000004', 142, NULL, N'5000004', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (307, N'5000005', 142, NULL, N'5000005', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (308, N'5000007', 142, NULL, N'5000007', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (309, N'5000008', 142, NULL, N'5000008', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (310, N'5000009', 142, NULL, N'5000009', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (311, N'5000011', 142, NULL, N'5000011', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (312, N'5000013', 142, NULL, N'5000013', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (313, N'5000015', 142, NULL, N'5000015', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (314, N'5000016', 142, NULL, N'5000016', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (315, N'5000017', 142, NULL, N'5000017', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (316, N'5000021', 142, NULL, N'5000021', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (317, N'5000022', 142, NULL, N'5000022', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (318, N'5000023', 142, NULL, N'5000023', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (319, N'5000024', 142, NULL, N'5000024', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (320, N'5000025', 142, NULL, N'5000025', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (321, N'5000026', 142, NULL, N'5000026', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (322, N'5000028', 142, NULL, N'5000028', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (323, N'5000029', 142, NULL, N'5000029', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (324, N'5000030', 142, NULL, N'5000030', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (325, N'5000031', 142, NULL, N'5000031', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (326, N'5000032', 142, NULL, N'5000032', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (327, N'5000033', 142, NULL, N'5000033', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (328, N'5000034', 142, NULL, N'5000034', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (329, N'5000040', 142, NULL, N'5000040', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (330, N'5000042', 142, NULL, N'5000042', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (331, N'5000043', 142, NULL, N'5000043', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (332, N'5000044', 142, NULL, N'5000044', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (333, N'5000048', 142, NULL, N'5000048', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (334, N'5000053', 142, NULL, N'5000053', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (335, N'5000069', 142, NULL, N'5000069', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (336, N'5000070', 142, NULL, N'5000070', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (337, N'5000199', 142, NULL, N'5000199', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (338, N'5000200', 142, NULL, N'5000200', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (339, N'5000201', 142, NULL, N'5000201', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (340, N'5000278', 142, NULL, N'5000278', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (341, N'5000291', 142, NULL, N'5000291', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (342, N'5000402', 142, NULL, N'5000402', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (343, N'5000403', 142, NULL, N'5000403', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (344, N'5000407', 142, NULL, N'5000407', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (345, N'5000412', 142, NULL, N'5000412', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (346, N'5000414', 142, NULL, N'5000414', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (347, N'5000504', 142, NULL, N'5000504', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (348, N'5000514', 142, NULL, N'5000514', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (349, N'5000515', 142, NULL, N'5000515', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (350, N'5000516', 142, NULL, N'5000516', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (351, N'5000545', 142, NULL, N'5000545', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (352, N'5000546', 142, NULL, N'5000546', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (353, N'5000551', 142, NULL, N'5000551', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (354, N'5000552', 142, NULL, N'5000552', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (355, N'5000562', 142, NULL, N'5000562', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (356, N'5000563', 142, NULL, N'5000563', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (357, N'5000568', 142, NULL, N'5000568', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (358, N'5000569', 142, NULL, N'5000569', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (359, N'5000574', 142, NULL, N'5000574', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (360, N'5000576', 142, NULL, N'5000576', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (361, N'5000577', 142, NULL, N'5000577', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (362, N'5000578', 142, NULL, N'5000578', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (363, N'5000579', 142, NULL, N'5000579', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (364, N'5000580', 142, NULL, N'5000580', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (365, N'5000581', 142, NULL, N'5000581', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (366, N'5000597', 142, NULL, N'5000597', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (368, N'5000631', 142, NULL, N'5000631', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (369, N'5000638', 142, NULL, N'5000638', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (370, N'5000639', 142, NULL, N'5000639', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (371, N'5000640', 142, NULL, N'5000640', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (372, N'5000641', 142, NULL, N'5000641', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (373, N'5000642', 142, NULL, N'5000642', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (374, N'5000643', 142, NULL, N'5000643', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (375, N'5000644', 142, NULL, N'5000644', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (376, N'5000648', 142, NULL, N'5000648', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (377, N'5000649', 142, NULL, N'5000649', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (378, N'5000650', 142, NULL, N'5000650', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (379, N'5000651', 142, NULL, N'5000651', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (380, N'5000652', 142, NULL, N'5000652', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (381, N'5000653', 142, NULL, N'5000653', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (382, N'5000654', 142, NULL, N'5000654', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (383, N'5000655', 142, NULL, N'5000655', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (384, N'5000656', 142, NULL, N'5000656', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (385, N'5000659', 142, NULL, N'5000659', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (386, N'5000667', 142, NULL, N'5000667', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (387, N'5000668', 142, NULL, N'5000668', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (388, N'5000689', 142, NULL, N'5000689', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (389, N'5000773', 142, NULL, N'5000773', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (390, N'5000693', 142, NULL, N'5000693', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (391, N'5000389', 142, NULL, N'5000389', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (392, N'5000409', 142, NULL, N'5000409', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (393, N'5000753', 142, NULL, N'5000753', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (394, N'5000038', 142, NULL, N'5000038', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (395, N'5000729', 142, NULL, N'5000729', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (396, N'5000730', 142, NULL, N'5000730', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (397, N'5000529', 142, NULL, N'5000529', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (399, N'5000789', 142, NULL, N'5000789', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (400, N'5000790', 142, NULL, N'5000790', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (401, N'5000599', 142, NULL, N'5000599', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (402, N'5000637', 142, NULL, N'5000637', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (403, N'5000793', 142, NULL, N'5000793', NULL)
GO
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (404, N'5000794', 142, NULL, N'5000794', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (405, N'5000795', 142, NULL, N'5000795', NULL)
INSERT [dbo].[UOMConversionGroup] ([ID], [GroupName], [BasedUOMID], [Note], [GroupNameA], [GroupNameH]) VALUES (406, N'5000665', 142, NULL, N'5000665', NULL)
SET IDENTITY_INSERT [dbo].[UOMConversionGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[UOMConversionGroupDetails] ON 

INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (34, 304, 144, CAST(1.0000 AS Decimal(18, 4)), CAST(7.6800 AS Decimal(18, 4)), 0, N'480 gói ')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (36, 306, 146, CAST(1.0000 AS Decimal(18, 4)), CAST(8.4500 AS Decimal(18, 4)), 0, N'528 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (37, 307, 147, CAST(1.0000 AS Decimal(18, 4)), CAST(9.2200 AS Decimal(18, 4)), 0, N'576 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (38, 308, 148, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (39, 309, 149, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (40, 310, 150, CAST(1.0000 AS Decimal(18, 4)), CAST(8.4500 AS Decimal(18, 4)), 0, N'528 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (41, 311, 151, CAST(1.0000 AS Decimal(18, 4)), CAST(8.4500 AS Decimal(18, 4)), 0, N'528 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (42, 312, 152, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (43, 313, 153, CAST(1.0000 AS Decimal(18, 4)), CAST(7.6800 AS Decimal(18, 4)), 0, N'480 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (44, 314, 154, CAST(1.0000 AS Decimal(18, 4)), CAST(6.9120 AS Decimal(18, 4)), 0, N'432 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (45, 315, 155, CAST(1.0000 AS Decimal(18, 4)), CAST(7.6800 AS Decimal(18, 4)), 0, N'480 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (46, 316, 156, CAST(1.0000 AS Decimal(18, 4)), CAST(0.7200 AS Decimal(18, 4)), 0, N'360 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (47, 317, 157, CAST(1.0000 AS Decimal(18, 4)), CAST(8.4480 AS Decimal(18, 4)), 0, N'528 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (48, 318, 158, CAST(1.0000 AS Decimal(18, 4)), CAST(5.1840 AS Decimal(18, 4)), 0, N'288 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (49, 319, 159, CAST(1.0000 AS Decimal(18, 4)), CAST(5.1840 AS Decimal(18, 4)), 0, N'288 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (50, 320, 160, CAST(1.0000 AS Decimal(18, 4)), CAST(5.1840 AS Decimal(18, 4)), 0, N'288 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (51, 321, 161, CAST(1.0000 AS Decimal(18, 4)), CAST(5.1840 AS Decimal(18, 4)), 0, N'288 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (52, 322, 162, CAST(1.0000 AS Decimal(18, 4)), CAST(0.7200 AS Decimal(18, 4)), 0, N'360 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (53, 323, 163, CAST(1.0000 AS Decimal(18, 4)), CAST(5.7600 AS Decimal(18, 4)), 0, N'360 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (54, 324, 164, CAST(1.0000 AS Decimal(18, 4)), CAST(5.1840 AS Decimal(18, 4)), 0, N'288 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (55, 325, 165, CAST(1.0000 AS Decimal(18, 4)), CAST(5.1840 AS Decimal(18, 4)), 0, N'288 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (56, 326, 166, CAST(1.0000 AS Decimal(18, 4)), CAST(8.4480 AS Decimal(18, 4)), 0, N'528 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (57, 327, 167, CAST(1.0000 AS Decimal(18, 4)), CAST(6.9120 AS Decimal(18, 4)), 0, N'432 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (58, 328, 168, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0640 AS Decimal(18, 4)), 0, N'504 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (59, 329, 169, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (60, 330, 170, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (61, 331, 171, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (62, 332, 172, CAST(1.0000 AS Decimal(18, 4)), CAST(7.6800 AS Decimal(18, 4)), 0, N'480 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (63, 333, 173, CAST(1.0000 AS Decimal(18, 4)), CAST(0.7200 AS Decimal(18, 4)), 0, N'360 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (64, 334, 174, CAST(1.0000 AS Decimal(18, 4)), CAST(5.7600 AS Decimal(18, 4)), 0, N'360 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (65, 335, 175, CAST(1.0000 AS Decimal(18, 4)), CAST(7.2000 AS Decimal(18, 4)), 0, N'288 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (66, 336, 176, CAST(1.0000 AS Decimal(18, 4)), CAST(7.6800 AS Decimal(18, 4)), 0, N'480 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (67, 337, 177, CAST(1.0000 AS Decimal(18, 4)), CAST(3.0000 AS Decimal(18, 4)), 0, N'6 bịch')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (68, 338, 178, CAST(1.0000 AS Decimal(18, 4)), CAST(3.0000 AS Decimal(18, 4)), 0, N'6 bịch')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (69, 339, 179, CAST(1.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), 0, N'6 túi')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (70, 340, 180, CAST(1.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), 0, N'6 túi')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (71, 341, 181, CAST(1.0000 AS Decimal(18, 4)), CAST(8.1600 AS Decimal(18, 4)), 0, N'510 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (72, 342, 182, CAST(1.0000 AS Decimal(18, 4)), CAST(14.4000 AS Decimal(18, 4)), 0, N'576 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (73, 343, 183, CAST(1.0000 AS Decimal(18, 4)), CAST(4.8000 AS Decimal(18, 4)), 0, N'2400 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (74, 344, 184, CAST(1.0000 AS Decimal(18, 4)), CAST(0.9000 AS Decimal(18, 4)), 0, N'360 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (75, 345, 185, CAST(1.0000 AS Decimal(18, 4)), CAST(8.4000 AS Decimal(18, 4)), 0, N'336 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (76, 346, 186, CAST(1.0000 AS Decimal(18, 4)), CAST(10.8000 AS Decimal(18, 4)), 0, N'432 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (77, 347, 187, CAST(1.0000 AS Decimal(18, 4)), CAST(7.6800 AS Decimal(18, 4)), 0, N'480 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (78, 348, 188, CAST(1.0000 AS Decimal(18, 4)), CAST(3.0000 AS Decimal(18, 4)), 0, N'120 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (79, 349, 189, CAST(1.0000 AS Decimal(18, 4)), CAST(5.4000 AS Decimal(18, 4)), 0, N'216 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (80, 350, 190, CAST(1.0000 AS Decimal(18, 4)), CAST(4.8000 AS Decimal(18, 4)), 0, N'2400 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (81, 351, 191, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (82, 352, 192, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (83, 353, 193, CAST(1.0000 AS Decimal(18, 4)), CAST(1.4400 AS Decimal(18, 4)), 0, N'720 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (84, 354, 194, CAST(1.0000 AS Decimal(18, 4)), CAST(5.7600 AS Decimal(18, 4)), 0, N'360 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (85, 355, 195, CAST(1.0000 AS Decimal(18, 4)), CAST(5.4000 AS Decimal(18, 4)), 0, N'216 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (86, 356, 196, CAST(1.0000 AS Decimal(18, 4)), CAST(3.6000 AS Decimal(18, 4)), 0, N'144 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (87, 357, 197, CAST(1.0000 AS Decimal(18, 4)), CAST(0.9000 AS Decimal(18, 4)), 0, N'360 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (88, 358, 198, CAST(1.0000 AS Decimal(18, 4)), CAST(1.2000 AS Decimal(18, 4)), 0, N'48 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (89, 359, 199, CAST(1.0000 AS Decimal(18, 4)), CAST(4.5000 AS Decimal(18, 4)), 0, N'30 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (90, 360, 200, CAST(1.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), 0, N'6 bịch')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (91, 361, 201, CAST(1.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), 0, N'6 bịch')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (92, 362, 202, CAST(1.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), 0, N'6 bịch')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (93, 363, 203, CAST(1.0000 AS Decimal(18, 4)), CAST(9.7920 AS Decimal(18, 4)), 0, N'576 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (94, 364, 204, CAST(1.0000 AS Decimal(18, 4)), CAST(7.8200 AS Decimal(18, 4)), 0, N'460 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (95, 365, 205, CAST(1.0000 AS Decimal(18, 4)), CAST(4.8960 AS Decimal(18, 4)), 0, N'288 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (96, 366, 206, CAST(1.0000 AS Decimal(18, 4)), CAST(4.6080 AS Decimal(18, 4)), 0, N'288 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (98, 368, 208, CAST(1.0000 AS Decimal(18, 4)), CAST(1.5000 AS Decimal(18, 4)), 0, N'60 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (99, 369, 209, CAST(1.0000 AS Decimal(18, 4)), CAST(3.0000 AS Decimal(18, 4)), 0, N'120 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (100, 370, 210, CAST(1.0000 AS Decimal(18, 4)), CAST(5.4000 AS Decimal(18, 4)), 0, N'216 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (101, 371, 211, CAST(1.0000 AS Decimal(18, 4)), CAST(5.4000 AS Decimal(18, 4)), 0, N'216 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (102, 372, 212, CAST(1.0000 AS Decimal(18, 4)), CAST(3.6000 AS Decimal(18, 4)), 0, N'144 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (103, 373, 213, CAST(1.0000 AS Decimal(18, 4)), CAST(4.8960 AS Decimal(18, 4)), 0, N'288 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (104, 374, 214, CAST(1.0000 AS Decimal(18, 4)), CAST(9.7920 AS Decimal(18, 4)), 0, N'576 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (105, 375, 215, CAST(1.0000 AS Decimal(18, 4)), CAST(7.8200 AS Decimal(18, 4)), 0, N'460 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (106, 376, 216, CAST(1.0000 AS Decimal(18, 4)), CAST(6.9120 AS Decimal(18, 4)), 0, N'432 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (107, 377, 217, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (108, 378, 218, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (109, 379, 219, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), 0, N'500 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (110, 380, 220, CAST(1.0000 AS Decimal(18, 4)), CAST(1.2000 AS Decimal(18, 4)), 0, N'600 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (111, 381, 221, CAST(1.0000 AS Decimal(18, 4)), CAST(1.2960 AS Decimal(18, 4)), 0, N'72 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (112, 382, 222, CAST(1.0000 AS Decimal(18, 4)), CAST(1.2960 AS Decimal(18, 4)), 0, N'72 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (113, 383, 223, CAST(1.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), 0, N'6 bịch')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (114, 384, 224, CAST(1.0000 AS Decimal(18, 4)), CAST(5.3760 AS Decimal(18, 4)), 0, N'336 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (115, 385, 225, CAST(1.0000 AS Decimal(18, 4)), CAST(7.6800 AS Decimal(18, 4)), 0, N'480 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (116, 386, 226, CAST(1.0000 AS Decimal(18, 4)), CAST(1.2000 AS Decimal(18, 4)), 0, N'48 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (117, 387, 227, CAST(1.0000 AS Decimal(18, 4)), CAST(1.2000 AS Decimal(18, 4)), 0, N'48 gói ')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (118, 388, 228, CAST(1.0000 AS Decimal(18, 4)), CAST(1.2960 AS Decimal(18, 4)), 0, N'72 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (119, 389, 229, CAST(1.0000 AS Decimal(18, 4)), CAST(4.2240 AS Decimal(18, 4)), 0, N'264 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (120, 390, 230, CAST(1.0000 AS Decimal(18, 4)), CAST(7.6800 AS Decimal(18, 4)), 0, N'480 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (121, 391, 231, CAST(1.0000 AS Decimal(18, 4)), CAST(7.6800 AS Decimal(18, 4)), 0, N'480 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (122, 392, 232, CAST(1.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), 0, N'6 bịch')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (123, 393, 233, CAST(1.0000 AS Decimal(18, 4)), CAST(5.7600 AS Decimal(18, 4)), 0, N'360 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (124, 394, 234, CAST(1.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), 0, N'6 bịch')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (125, 395, 235, CAST(1.0000 AS Decimal(18, 4)), CAST(3.6000 AS Decimal(18, 4)), 0, N'200 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (126, 396, 236, CAST(1.0000 AS Decimal(18, 4)), CAST(3.6000 AS Decimal(18, 4)), 0, N'200 gói ')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (127, 397, 237, CAST(1.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), 0, N'6 bịch')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (129, 399, 239, CAST(1.0000 AS Decimal(18, 4)), CAST(8.1700 AS Decimal(18, 4)), 0, N'510 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (130, 400, 240, CAST(1.0000 AS Decimal(18, 4)), CAST(8.1700 AS Decimal(18, 4)), 0, N'510 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (131, 401, 241, CAST(1.0000 AS Decimal(18, 4)), CAST(3.6000 AS Decimal(18, 4)), 0, N'1800 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (132, 402, 242, CAST(1.0000 AS Decimal(18, 4)), CAST(5.4000 AS Decimal(18, 4)), 0, N'216 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (133, 403, 243, CAST(1.0000 AS Decimal(18, 4)), CAST(2.5920 AS Decimal(18, 4)), 0, N'144 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (134, 404, 244, CAST(1.0000 AS Decimal(18, 4)), CAST(2.5920 AS Decimal(18, 4)), 0, N'144 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (135, 405, 245, CAST(1.0000 AS Decimal(18, 4)), CAST(2.5920 AS Decimal(18, 4)), 0, N'144 gói')
GO
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (136, 406, 246, CAST(1.0000 AS Decimal(18, 4)), CAST(5.4000 AS Decimal(18, 4)), 0, N'216 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (140, 306, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (141, 307, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (142, 308, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (143, 309, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (144, 310, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (145, 311, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (146, 312, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (147, 313, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (148, 314, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (149, 315, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (150, 316, 141, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0020 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (151, 317, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (152, 318, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (153, 319, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (154, 320, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (155, 321, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (156, 322, 141, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0020 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (157, 323, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (158, 324, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (159, 325, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (160, 326, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (161, 327, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (162, 328, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (163, 329, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (164, 330, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (165, 331, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (166, 332, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (167, 333, 141, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0020 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (168, 334, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (169, 335, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (170, 336, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (171, 337, 248, CAST(1.0000 AS Decimal(18, 4)), CAST(0.5000 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (172, 338, 248, CAST(1.0000 AS Decimal(18, 4)), CAST(0.5000 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (173, 339, 247, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (174, 340, 247, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (175, 341, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (176, 342, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (177, 343, 141, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0020 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (178, 344, 138, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0030 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (179, 345, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (180, 346, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (181, 347, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (182, 348, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (183, 349, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (184, 350, 141, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0020 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (185, 351, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (186, 352, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (187, 353, 141, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0020 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (188, 354, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (189, 355, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (190, 356, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (191, 357, 138, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0030 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (192, 358, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (193, 359, 250, CAST(1.0000 AS Decimal(18, 4)), CAST(0.1500 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (194, 360, 247, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (195, 361, 247, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (196, 362, 247, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (197, 363, 137, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0170 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (198, 364, 137, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0170 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (199, 365, 137, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0170 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (200, 366, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (201, 368, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (202, 369, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (203, 370, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (204, 371, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (205, 372, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (206, 373, 137, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0170 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (207, 374, 137, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0170 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (208, 375, 137, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0170 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (209, 376, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (210, 377, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (211, 378, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (212, 379, 141, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0020 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (213, 380, 141, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0020 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (214, 381, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (215, 382, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (216, 383, 247, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (217, 384, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (218, 385, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (219, 386, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (220, 387, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (221, 388, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (222, 389, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (223, 390, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (224, 391, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (225, 392, 247, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (226, 393, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (227, 394, 247, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (228, 395, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (229, 396, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (230, 397, 247, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (232, 399, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (233, 400, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (234, 401, 141, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0020 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (235, 402, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (236, 403, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (237, 404, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (238, 405, 139, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0180 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (239, 406, 140, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0250 AS Decimal(18, 4)), 1, NULL)
GO
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (240, 303, 143, CAST(1.0000 AS Decimal(18, 4)), CAST(8.0000 AS Decimal(18, 4)), 0, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (241, 304, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (242, 305, 145, CAST(1.0000 AS Decimal(18, 4)), CAST(6.9100 AS Decimal(18, 4)), 0, N'432 gói')
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (243, 305, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
INSERT [dbo].[UOMConversionGroupDetails] ([ID], [UOMConversionGroupID], [UOMID], [UOMQuantity], [BasedUOMQuantity], [CapacityUOM], [Note]) VALUES (246, 303, 135, CAST(1.0000 AS Decimal(18, 4)), CAST(0.0160 AS Decimal(18, 4)), 1, NULL)
SET IDENTITY_INSERT [dbo].[UOMConversionGroupDetails] OFF
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_ItemGroup] FOREIGN KEY([IDItemGroup])
REFERENCES [dbo].[ItemGroup] ([ID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_ItemGroup]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_UOMConversionGroup] FOREIGN KEY([UOMConverionGroupID])
REFERENCES [dbo].[UOMConversionGroup] ([ID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_UOMConversionGroup]
GO
ALTER TABLE [dbo].[ItemMay]  WITH CHECK ADD  CONSTRAINT [FK_ItemMay_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ItemMay] CHECK CONSTRAINT [FK_ItemMay_Item]
GO
ALTER TABLE [dbo].[ItemMay]  WITH CHECK ADD  CONSTRAINT [FK_ItemMay_MAY] FOREIGN KEY([MS_MAY])
REFERENCES [dbo].[MAY] ([MS_MAY])
GO
ALTER TABLE [dbo].[ItemMay] CHECK CONSTRAINT [FK_ItemMay_MAY]
GO
ALTER TABLE [dbo].[MAY_NGUYEN_NHAN]  WITH CHECK ADD  CONSTRAINT [FK_MAY_NGUYEN_NHAN_DON_VI_TINH_GIO] FOREIGN KEY([DVT])
REFERENCES [dbo].[DON_VI_TINH_GIO] ([MS_DVT_GIO])
GO
ALTER TABLE [dbo].[MAY_NGUYEN_NHAN] CHECK CONSTRAINT [FK_MAY_NGUYEN_NHAN_DON_VI_TINH_GIO]
GO
ALTER TABLE [dbo].[MAY_NGUYEN_NHAN]  WITH CHECK ADD  CONSTRAINT [FK_MAY_NGUYEN_NHAN_MAY] FOREIGN KEY([MS_MAY])
REFERENCES [dbo].[MAY] ([MS_MAY])
GO
ALTER TABLE [dbo].[MAY_NGUYEN_NHAN] CHECK CONSTRAINT [FK_MAY_NGUYEN_NHAN_MAY]
GO

ALTER TABLE [dbo].[PrODetails]  WITH CHECK ADD  CONSTRAINT [FK_PrODetails_ProductionOrder] FOREIGN KEY([PrOID])
REFERENCES [dbo].[ProductionOrder] ([ID])
GO
ALTER TABLE [dbo].[PrODetails] CHECK CONSTRAINT [FK_PrODetails_ProductionOrder]
GO
ALTER TABLE [dbo].[PrODetails]  WITH CHECK ADD  CONSTRAINT [FK_PrODetails_UOM] FOREIGN KEY([UOMID])
REFERENCES [dbo].[UOM] ([ID])
GO
ALTER TABLE [dbo].[PrODetails] CHECK CONSTRAINT [FK_PrODetails_UOM]
GO
ALTER TABLE [dbo].[ProductionRun]  WITH CHECK ADD  CONSTRAINT [FK_MachineRun_CA] FOREIGN KEY([CaSTT])
REFERENCES [dbo].[CA] ([STT])
GO
ALTER TABLE [dbo].[ProductionRun] CHECK CONSTRAINT [FK_MachineRun_CA]
GO
ALTER TABLE [dbo].[ProductionRunDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductionRunDetails_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ProductionRunDetails] CHECK CONSTRAINT [FK_ProductionRunDetails_Item]
GO
ALTER TABLE [dbo].[ProductionRunDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductionRunDetails_ProductionOrder] FOREIGN KEY([PrOID])
REFERENCES [dbo].[ProductionOrder] ([ID])
GO
ALTER TABLE [dbo].[ProductionRunDetails] CHECK CONSTRAINT [FK_ProductionRunDetails_ProductionOrder]
GO
ALTER TABLE [dbo].[ProductionRunDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductionRunDetails_ProductionRun] FOREIGN KEY([ProductionRunID])
REFERENCES [dbo].[ProductionRun] ([ID])
GO
ALTER TABLE [dbo].[ProductionRunDetails] CHECK CONSTRAINT [FK_ProductionRunDetails_ProductionRun]
GO
ALTER TABLE [dbo].[ProSchedule]  WITH CHECK ADD  CONSTRAINT [FK_ProSchedule_PrODetails1] FOREIGN KEY([DetailsID])
REFERENCES [dbo].[PrODetails] ([DetailsID])
GO
ALTER TABLE [dbo].[ProSchedule] CHECK CONSTRAINT [FK_ProSchedule_PrODetails1]
GO
ALTER TABLE [dbo].[UOMConversionGroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_UOMConversionGroupDetails_UOM] FOREIGN KEY([UOMID])
REFERENCES [dbo].[UOM] ([ID])
GO
ALTER TABLE [dbo].[UOMConversionGroupDetails] CHECK CONSTRAINT [FK_UOMConversionGroupDetails_UOM]
GO
ALTER TABLE [dbo].[UOMConversionGroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_UOMConversionGroupDetails_UOMConversionGroup] FOREIGN KEY([UOMConversionGroupID])
REFERENCES [dbo].[UOMConversionGroup] ([ID])
GO
ALTER TABLE [dbo].[UOMConversionGroupDetails] CHECK CONSTRAINT [FK_UOMConversionGroupDetails_UOMConversionGroup]
GO
