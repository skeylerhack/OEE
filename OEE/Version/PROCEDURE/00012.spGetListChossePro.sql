IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'spGetListChossePro')
   exec('CREATE PROCEDURE spGetListChossePro AS BEGIN SET NOCOUNT ON; END')
 GO
ALTER PROCEDURE [dbo].[spGetListChossePro]
	@STT_CA INT = -1,
	@MsHeThong INT = -1,
	@MsLoaiMay NVARCHAR(20) ='-1',
	@TNgay DATE = '03/01/2021',
	@DNgay DATE ='07/30/2021',
	@CoAll BIT	 = 0,
	@Username NVARCHAR(100) ='admin',
	@NNgu INT = 0,
	@SBT NVARCHAR(50) = 'TMPProMayChooseAdmin'
AS 
BEGIN

CREATE TABLE #PROOD
(
[DetailID] [bigint] NULL,
[PrOID] [bigint] NULL,
[ItemID] [bigint] NULL,
[MS_HE_THONG] [int] NULL,
[MS_MAY] [nvarchar] (30)  NULL,
[ActualQuantity] DECIMAL(18,2),
[DefectQuantity] DECIMAL(18,2)
) ON [PRIMARY]
DECLARE @sSql nvarchar(4000)
set @sSql = 'INSERT INTO #PROOD (DetailID, PrOID, ItemID, MS_HE_THONG,
                                        MS_MAY,ActualQuantity,DefectQuantity) SELECT DetailID, PrOID, ItemID, MS_HE_THONG,
                                        MS_MAY,ActualQuantity,DefectQuantity FROM ' + @SBT 
EXEC (@sSql)

SELECT MS_MAY,TEN_MAY INTO #TMP FROM dbo.MGetMayUserNgay(@DNgay,@username,-1,@MsHeThong,-1,@MsLoaiMay,'-1','-1', @NNgu)	

SELECT CONVERT(BIT,0)AS CHON,
A.ID AS PrOID,
A.PrOrNumber,
B.ItemID,
E.ItemCode,
B.ItemName,
C.MS_MAY,
D.TEN_MAY,
B.PlannedStartTime,
C.DueTime,
C.PlannedQuantity ,
ISNULL(C.PlannedQuantity,0) - 
(ISNULL((SELECT TOP 1 ISNULL(ActualQuantity,0) - ISNULL(DefectQuantity,0) FROM dbo.ProductionRunDetails WHERE PrOID = B.PrOID AND ItemID = B.ItemID  AND MS_MAY = C.MS_MAY AND NOT EXISTS (SELECT * FROM #PROOD WHERE ProductionRunDetails.DetailID = #PROOD.DetailID)  ),0) + 
(SELECT ISNULL(SUM(ActualQuantity),0) - ISNULL(SUM(DefectQuantity),0) FROM #PROOD WHERE PrOID = B.PrOID AND ItemID = B.ItemID  AND MS_MAY = C.MS_MAY /*and DetailID =-1*/)) AS SL_CHUA_SX INTO #TMPCHON  
FROM dbo.ProductionOrder A
INNER JOIN dbo.PrODetails B ON B.PrOID = A.ID
INNER JOIN dbo.ProSchedule C ON C.DetailsID = B.DetailsID
INNER JOIN #TMP D ON D.MS_MAY = C.MS_MAY
INNER JOIN dbo.Item E ON B.ItemID = E.ID
WHERE CONVERT(DATE,C.PlannedStartTime) BETWEEN @TNgay AND @DNgay AND A.Status IN (1,2) AND (C.CaID = @STT_CA OR @STT_CA = -1)
ORDER BY A.PrOrNumber,B.ItemName,C.MS_MAY
SELECT * FROM #TMPCHON WHERE  SL_CHUA_SX > 0 OR @CoAll = 1
END	


