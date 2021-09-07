IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'spGetKeHoachSanXuat')
   exec('CREATE PROCEDURE spGetKeHoachSanXuat AS BEGIN SET NOCOUNT ON; END')
 GO
ALTER PROCEDURE [dbo].[spGetKeHoachSanXuat]
@PrOrNumber NVARCHAR(50) ='50987',
@SBT NVARCHAR(100) ='sBTKHSXadmin'
AS
BEGIN
CREATE TABLE #TEMPT_KHSX (
[PrOrNumber] [nvarchar] (50),
[MS_MAY] [nvarchar] (30),
[ItemCode] [nvarchar] (50)  ,
[BOMVersion] DECIMAL(18,2)  NULL,
[PlannedQuantity] DECIMAL(18,2) NULL,
[SoCaSX]  DECIMAL(18,2) NULL,
[PlannedStartTime] DATETIME  NULL,
[CABD] [NVARCHAR](50)  NULL,
[DueTime] DATETIME  NULL,
[CAKT] [NVARCHAR](50)  NULL
) ON [PRIMARY]
DECLARE @sSql nvarchar(4000)
set @sSql = 'INSERT INTO #TEMPT_KHSX(PrOrNumber,MS_MAY,ItemCode,BOMVersion,PlannedQuantity,SoCaSX,PlannedStartTime,CABD,DueTime,CAKT) SELECT PrOrNumber,MS_MAY,ItemCode,BOMVersion,PlannedQuantity,SoCaSX,CONVERT(DATETIME,PlannedStartTime, 105),CABD,CONVERT(DATETIME,DueTime, 105),CAKT FROM '+@SBT
EXEC (@sSql)

DECLARE @PlannedStartTime DATETIME = (SELECT MIN(PlannedStartTime) FROM #TEMPT_KHSX WHERE PrOrNumber = @PrOrNumber)
DECLARE @DueTime DATETIME = (SELECT MAX(DueTime) FROM #TEMPT_KHSX WHERE PrOrNumber = @PrOrNumber)
INSERT INTO dbo.ProductionOrder(PrOrNumber,OrderDate,StartDate,DueDate,Status,Note) 
SELECT DISTINCT @PrOrNumber,
@PlannedStartTime,
@PlannedStartTime,
@DueTime,
1,''
FROM  #TEMPT_KHSX WHERE PrOrNumber = @PrOrNumber
DECLARE @PrOID BIGINT = SCOPE_IDENTITY()

INSERT INTO dbo.PrODetails(PrOID,ItemID,ItemName,UOMID,PlannedQuantity,PlannedStartTime,DueDate)
SELECT DISTINCT @PrOID,
B.ID,
B.ItemName,
C.UOMID,
SUM(A.PlannedQuantity),
@PlannedStartTime,
@DueTime  
FROM  #TEMPT_KHSX A
INNER JOIN  dbo.Item B ON B.ItemCode = A.ItemCode
INNER JOIN UOMConversionGroupDetails C ON B.UOM = C.ID
WHERE PrOrNumber = @PrOrNumber
GROUP BY B.ID,
B.ItemName,
C.UOMID
INSERT INTO dbo.ProSchedule(PrOID,DetailsID,MS_HE_THONG,MS_MAY,CaID,MS_TO,PlannedQuantity,PlannedStartTime,DueTime,EndTime,ActualQty,StandardSpeed,StandardOutput,ActualQuantity,WorkingCycle,
NumberPerCycle,DownTimeRecord,BOMVersion,SoCaSX,CaIDKT)
SELECT DISTINCT @PrOID,(SELECT A.DetailsID FROM dbo.PrODetails A WHERE A.PrOID = @PrOID AND A.ItemID = C.ID),
(SELECT TOP 1 MS_HE_THONG FROM dbo.MAY_HE_THONG WHERE MS_MAY = B.MS_MAY),B.MS_MAY,(SELECT STT FROM dbo.CA WHERE CA = B.CABD),NULL,B.PlannedQuantity,B.PlannedStartTime,B.DueTime,B.DueTime,NULL,D.StandardSpeed,
D.StandardOutput,NULL,D.WorkingCycle,D.NumberPerCyle,D.DownTimeRecord,B.BOMVersion,B.SoCaSX,(SELECT STT FROM dbo.CA WHERE CA = B.CAKT)
FROM #TEMPT_KHSX B
INNER JOIN dbo.Item C ON C.ItemCode = B.ItemCode
INNER JOIN  dbo.ItemMay D ON D.ItemID = C.ID AND D.MS_MAY = B.MS_MAY
END

