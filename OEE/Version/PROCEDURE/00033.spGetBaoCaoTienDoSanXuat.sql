
ALTER PROCEDURE [dbo].[spGetBaoCaoTienDoSanXuat]
	@MS_N_XUONG NVARCHAR(50) = '-1',
	@MS_LOAI_MAY NVARCHAR(30) ='-1',
	@TU_NGAY DATETIME = '2021-07-01 14:00:00.000',
	@DEN_NGAY DATETIME = '2021-07-30 14:00:00.000',
	@USERNAME NVARCHAR(250) ='admin',
	@NNgu INT = 0
AS
    BEGIN
	SELECT A.* INTO #MAY FROM dbo.MGetMayUserNgay(GETDATE(),@username,@MS_N_XUONG,-1,-1,@MS_LOAI_MAY,'-1','-1', @NNgu) A
	SELECT DISTINCT
	E.TEN_HE_THONG,
	E.TEN_MAY,
	C.ItemCode,
	B.ItemName,
	CASE ISNULL(A.Note,'') WHEN '' THEN A.PrOrNumber else A.PrOrNumber +' - '+ A.Note end AS PrOrNumber,
	--G.Code,
	D.StandardOutput,
	H.BasedUOMQuantity,
	D.PlannedQuantity AS PlannedQuantity,
	CONVERT(DECIMAL(18,2),D.PlannedQuantity * H.BasedUOMQuantity) AS KLQD, 
	ISNULL(SUM(F.ActualQuantity),0) AS ActualQuantity,
	ISNULL(CONVERT(DECIMAL(18,2),(SUM(F.ActualQuantity)/D.PlannedQuantity)*100),0) AS PTTH,
	D.PlannedQuantity - ISNULL(SUM(F.ActualQuantity),0) AS SLCSX,
	CONVERT(DECIMAL(18,2),(D.PlannedQuantity - ISNULL(SUM(F.ActualQuantity),0)) * H.BasedUOMQuantity) AS SLGCSX,

	CONVERT(DECIMAL(18,2),((D.PlannedQuantity - ISNULL(SUM(F.ActualQuantity),0)) * H.BasedUOMQuantity)/(8 * D.StandardOutput  * 60 * dbo.fnGetBasedUOMQuantity(H.UOMConversionGroupID))) AS SoCaSX
	FROM dbo.ProductionOrder A
	INNER JOIN dbo.PrODetails B ON B.PrOID = A.ID
	INNER JOIN dbo.Item C ON C.ID = B.ItemID
	INNER JOIN dbo.ProSchedule D ON D.DetailsID = B.DetailsID AND D.PrOID = B.PrOID
	INNER JOIN #MAY E ON E.MS_MAY = D.MS_MAY AND E.MS_HE_THONG = D.MS_HE_THONG
	LEFT JOIN dbo.ProductionRunDetails F ON F.PrOID = A.ID AND F.ItemID = B.ItemID AND F.MS_MAY = D.MS_MAY
	LEFT JOIN dbo.ProductionRun G ON G.ID = F.ProductionRunID
	INNER JOIN dbo.UOMConversionGroupDetails H ON C.UOM = H.ID
	WHERE CONVERT(DATE,B.PlannedStartTime) BETWEEN CONVERT(DATE,@TU_NGAY) AND CONVERT(DATE,@DEN_NGAY)
	GROUP BY  E.TEN_HE_THONG,E.TEN_MAY,C.ItemCode,B.ItemName,A.PrOrNumber,A.Note,D.StandardOutput,H.BasedUOMQuantity,D.SoCaSX, B.ItemID,H.UOMConversionGroupID,D.StandardOutput,D.PlannedQuantity
	ORDER BY  E.TEN_HE_THONG,E.TEN_MAY
END



