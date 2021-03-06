
IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'spChossePro')
   exec('CREATE PROCEDURE spChossePro AS BEGIN SET NOCOUNT ON; END')
 GO
ALTER PROCEDURE [dbo].[spChossePro]
@SBTLuoi NVARCHAR(200) = 'TMPChonLuoiadmin',
@SBT NVARCHAR(200) = 'TMPProMayChooseAdmin',
@TN DATETIME ='2020-08-24 00:00:00.000',
@DN DATETIME = '2020-08-24 00:00:00.000'
AS 
BEGIN
CREATE TABLE #CHONLUOI
(
[CHON] [bit] NULL,
[PrOID] [bigint] NULL,
[PrOrNumber] [nvarchar] (20) NULL,
[ItemID] [bigint] NULL,
[ItemName] [nvarchar] (50)  NULL,
[MS_MAY] [nvarchar] (30) NULL,
[TEN_MAY] [nvarchar] (50) NULL,
[PlannedStartTime] [datetime] NULL,
[DueTime] [datetime] NULL,
[PlannedQuantity] DECIMAL(18,2) NULL,
[SL_CHUA_SX] DECIMAL(18,2) NULL
) ON [PRIMARY]

DECLARE @sSql nvarchar(4000)
set @sSql = 'INSERT INTO #CHONLUOI  ( CHON, PrOID, PrOrNumber, ItemID, ItemName, MS_MAY,
                         TEN_MAY, PlannedStartTime, DueTime, PlannedQuantity,
                         SL_CHUA_SX ) SELECT  CHON, PrOID, PrOrNumber, ItemID, ItemName, MS_MAY,
                         TEN_MAY, PlannedStartTime, DueTime, PlannedQuantity,
                         SL_CHUA_SX  FROM ' + @SBTLuoi
EXEC (@sSql)
set @sSql = 'DROP TABLE ' + @SBTLuoi
EXEC (@sSql)

CREATE TABLE #PROOD
(
[DetailID] [bigint] NULL,
[PrOID] [bigint] NULL,
[ItemID] [bigint] NULL,
[MS_HE_THONG] [int] NULL,
[MS_MAY] [nvarchar] (30) NULL,
[TEN_MAY] [nvarchar] (30) NULL,
[OperatorID] [bigint] NULL,
[StartTime] [datetime] NULL,
[EndTime] [datetime] NULL,
[SumMinute] [int] NULL,
[ActualQuantity] NUMERIC(18,2) NULL,
[UOM] [bigint] NULL,
[ConvertQuantity] NVARCHAR(50),
[DefectQuantity] NUMERIC(18,2) NULL,
[ActualSpeed] NUMERIC(18,2) NULL,
[StandardSpeed] NUMERIC(18,2) NULL,
[StandardOutput] NUMERIC(18,2) NULL,
[WorkingCycle] [int] NULL,
[NumberPerCycle] NUMERIC(18,2) NULL
) ON [PRIMARY]

set @sSql = 'INSERT INTO #PROOD (DetailID, PrOID, ItemID, MS_HE_THONG,
                                        MS_MAY,TEN_MAY, OperatorID,StartTime,EndTime,
                                        SumMinute, ActualQuantity, UOM,
                                        ConvertQuantity, DefectQuantity,
                                        ActualSpeed, StandardSpeed,
                                        StandardOutput, WorkingCycle,
                                        NumberPerCycle) SELECT DetailID, PrOID, ItemID, MS_HE_THONG,
                                        MS_MAY,TEN_MAY, OperatorID,StartTime,EndTime,
                                        SumMinute, ActualQuantity, UOM,
                                        ConvertQuantity, DefectQuantity,
                                        ActualSpeed, StandardSpeed,
                                        StandardOutput, WorkingCycle,
                                        NumberPerCycle FROM ' + @SBT
UPDATE #PROOD SET StartTime = @TN ,EndTime = @DN

EXEC (@sSql)

--DELETE A	
--FROM #PROOD A 
--INNER JOIN  #CHONLUOI B ON A.PrOID = B.PrOID AND A.ItemID = B.ItemID AND A.MS_MAY =B.MS_MAY
--WHERE CHON = 0

--  set @sSql = 'DELETE A	
--FROM '+ @SBT +' A 
--INNER JOIN  #CHONLUOI B ON A.PrOID = B.PrOID AND A.ItemID = B.ItemID AND A.MS_MAY =B.MS_MAY
--WHERE CHON = 0'

--EXEC (@sSql)

INSERT INTO #PROOD (DetailID, PrOID, ItemID, MS_HE_THONG, MS_MAY,TEN_MAY, OperatorID,
                      StartTime, EndTime, SumMinute, ActualQuantity, UOM,
                      ConvertQuantity, DefectQuantity, ActualSpeed,
                      StandardSpeed, StandardOutput, WorkingCycle,
                      NumberPerCycle)

SELECT -1,C.PrOID,C.ItemID,D.MS_HE_THONG,D.MS_MAY,E.TEN_MAY,NULL,@TN,@DN,DATEDIFF(MINUTE,C.PlannedStartTime,D.DueTime),E.SL_CHUA_SX,B.UOMID, [dbo].[fnGetConvertQuantity](E.ItemID,E.SL_CHUA_SX)
,NULL,NULL,D.StandardSpeed,D.StandardOutput,D.WorkingCycle,D.NumberPerCycle
  FROM dbo.Item A 
  INNER JOIN dbo.UOMConversionGroupDetails B ON A.UOM = b.ID
  INNER JOIN dbo.PrODetails C ON  C.ItemID = A.ID
  INNER JOIN dbo.ProSchedule D ON D.DetailsID = C.DetailsID
  INNER JOIN  #CHONLUOI E ON E.MS_MAY = D.MS_MAY AND E.ItemID = C.ItemID AND E.PrOID = C.PrOID AND E.CHON = 1
  --AND NOT EXISTS (SELECT * FROM #PROOD F WHERE E.PrOID = F.PrOID AND E.ItemID =F.ItemID AND E.MS_MAY =F.MS_MAY)
set @sSql = 'delete  '+ @SBT
EXEC (@sSql)
set @sSql = 'INSERT INTO  '+ @SBT +'( DetailID, PrOID, ItemID,ItemCode,MS_HE_THONG,
                                        MS_MAY,TEN_MAY, OperatorID,StartTime,EndTime,
                                        SumMinute, ActualQuantity, UOM,
                                        ConvertQuantity, DefectQuantity,
                                        ActualSpeed, StandardSpeed,
                                        StandardOutput, WorkingCycle,
                                        NumberPerCycle) SELECT DetailID, PrOID, ItemID,(SELECT ItemCode FROM dbo.Item WHERE ID = ItemID) AS ItemCode, MS_HE_THONG,
                                        MS_MAY,MS_MAY, OperatorID,StartTime,EndTime,
                                        DATEDIFF(MINUTE,StartTime,EndTime), ActualQuantity, UOM,
                                        ConvertQuantity, DefectQuantity,
                                        ActualSpeed, StandardSpeed,
                                        StandardOutput, WorkingCycle,
                                        NumberPerCycle FROM #PROOD'
EXEC (@sSql)

END	





