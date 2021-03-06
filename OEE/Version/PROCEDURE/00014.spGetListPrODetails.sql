IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'spGetListPrODetails')
   exec('CREATE PROCEDURE spGetListPrODetails AS BEGIN SET NOCOUNT ON; END')
 GO
ALTER PROCEDURE [dbo].[spGetListPrODetails]
    @PrOID BIGINT = 10079 ,
    @USERNAME NVARCHAR(250) = 'admin' ,
    @NNgu INT = 0
AS
    BEGIN
         SELECT   A.DetailsID, A.PrOID, A.ItemID, ItemName, UOMID,
                A.PlannedStartTime, DueDate, A.PlannedQuantity, SUM(C.PlannedQuantity) AS ModerQuantity,
             (
               SELECT DISTINCT TOP 1 SUM(ISNULL(T.ActualQuantity, 0) - ISNULL(T.DefectQuantity, 0))
               FROM dbo.ProductionRunDetails T
               WHERE T.PrOID = A.PrOID
                     AND T.ItemID = A.ItemID
           ) AS AllocatedQuantity
        FROM    dbo.PrODetails A
				LEFT JOIN dbo.ProSchedule C ON C.DetailsID = A.DetailsID
                LEFT JOIN dbo.ProductionRunDetails B ON B.PrOID = B.PrOID AND C.MS_MAY =B.MS_MAY AND B.ItemID = A.ItemID

        WHERE   A.PrOID = @PrOID
        GROUP BY A.DetailsID, A.PrOID, A.ItemID, ItemName, UOMID,
                A.PlannedStartTime, DueDate, A.PlannedQuantity
        ORDER BY A.ItemName ASC,A.PlannedStartTime
    END	






	
