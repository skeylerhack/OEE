           
IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'spGetListProSchedule')
   exec('CREATE PROCEDURE spGetListProSchedule AS BEGIN SET NOCOUNT ON; END')
 GO
ALTER PROCEDURE [dbo].[spGetListProSchedule]
	@ItemID BIGINT =60,
    @PrOID BIGINT = 10089,
    @DetailsID BIGINT = 119,
    @UserName NVARCHAR(50) = 'admin',
    @NNgu INT = 0
AS
BEGIN
    SELECT A.*
    INTO #MAY
    FROM dbo.MGetMayUserNgay(GETDATE(), @UserName, '-1', -1, -1, '-1', '-1', '-1', @NNgu) A;
    SELECT  ScheduleID,
           A.PrOID,
           A.DetailsID,
           MS_TO,
           A.MS_HE_THONG,
           A.MS_MAY,
           A.PlannedQuantity,
           B.UOMID,
           A.PlannedStartTime,
		   CaID,
           DueTime,
		   A.CaIDKT,
           (
               SELECT DISTINCT SUM(ActualQuantity - ISNULL(T.DefectQuantity, 0))
               FROM dbo.ProductionRunDetails T
               WHERE T.PrOID = A.PrOID
                     AND T.ItemID = B.ItemID
                     AND T.MS_MAY = A.MS_MAY
           ) AS ActualQuantity,
           A.StandardOutput,
           C.MS_DV_TG_Output,
           A.StandardSpeed,
           C.MS_DV_TG_Speed,
           A.WorkingCycle,
           A.NumberPerCycle,
           A.DownTimeRecord,
           [dbo].[fnGetSumStandardOutput](B.ItemID, DATEDIFF(MINUTE, A.PlannedStartTime, A.DueTime) * A.StandardOutput) AS SumStandardOutput,
           [dbo].[fnGetDVTCongSuat](B.ItemID)AS CapacityUOM,A.BOMVersion,A.SoCaSX
    FROM dbo.ProSchedule A
        INNER JOIN dbo.PrODetails B
            ON B.DetailsID = A.DetailsID
        INNER JOIN dbo.ItemMay C
            ON C.ItemID = B.ItemID
               AND C.MS_MAY = A.MS_MAY
        INNER JOIN #MAY E
            ON E.MS_MAY = A.MS_MAY
    WHERE A.PrOID = @PrOID
          AND A.DetailsID = @DetailsID
		  ORDER BY A.PlannedQuantity DESC, E.TEN_MAY
END;



