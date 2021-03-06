IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'spKiemTraGioHopLeRun')
   exec('CREATE PROCEDURE spKiemTraGioHopLeRun AS BEGIN SET NOCOUNT ON; END')
 GO
	ALTER PROCEDURE [dbo].[spKiemTraGioHopLeRun]
		@ProductionRunID BIGINT = -1,
		@MS_MAY NVARCHAR(30) = 'CHIE-VOL-001',
		@DetailID BIGINT = '-1',
		@PrOID BIGINT = '10111',
		@TuNgay DATETIME = '2021-05-03 06:00:00.000',
		@DenNgay DATETIME = '2021-05-03 14:00:00.000',
		@sBTam NVARCHAR(200) ='TMPPRORUNadmin'
	AS 
	BEGIN
	--- kiểm tra 3 trường hợp
	--1 từ ngày không nằm trong dữ liệu
	--2 đến ngày không nằm trong dữ liệu
	--3 dữ liệu hông nằm trong từ đến
	CREATE TABLE #BTTG (
	[PrOID] BIGINT NULL,
	[DetailID] BIGINT NULL,
	[ItemID] BIGINT NULL,
	[MS_MAY] NVARCHAR(30) NULL,
	[StartTime] DATETIME NULL,
	[EndTime] DATETIME NULL
) 

DECLARE @sSql nvarchar(4000)
set @sSql = 'INSERT INTO #BTTG (PrOID,DetailID,ItemID, MS_MAY, StartTime, EndTime )  SELECT  PrOID,DetailID,ItemID, MS_MAY, StartTime, EndTime FROM ' + @sBTam
EXEC (@sSql)
set @sSql = 'DROP TABLE ' + @sBTam
EXEC (@sSql)


	 SELECT DetailID, MS_MAY,ItemID, StartTime, EndTime,   ROW_NUMBER() OVER(ORDER BY MS_MAY ASC) AS TT INTO #TMP FROM #BTTG
	 WHERE MS_MAY = @MS_MAY
	 union
	SELECT  DetailID, MS_MAY,ItemID, StartTime, EndTime,ROW_NUMBER() OVER(ORDER BY MS_MAY ASC) AS TTT  FROM dbo.ProductionRunDetails WHERE MS_MAY = @MS_MAY AND ProductionRunID != @ProductionRunID


	SELECT COUNT(*) FROM #TMP 
	WHERE ( @TuNgay >  StartTime AND @TuNgay < EndTime) OR (@DenNgay > StartTime AND @DenNgay < EndTime) OR (StartTime > @TuNgay AND StartTime < @DenNgay) OR @TuNgay =StartTime


	--- kiểm tra trong một lênh sản xuất của một pro không tồn tại 2 máy
--SELECT PrOID,ItemID,MS_MAY,COUNT(MS_MAY) 
-- FROM (
--	SELECT DetailID,PrOID,ItemID,MS_MAY FROM #BTTG 
--	UNION
--	SELECT A.DetailID,PrOID,ItemID,MS_MAY FROM dbo.ProductionRunDetails A WHERE EXISTS  (SELECT * FROM #BTTG B WHERE A.PrOID = B.PrOID AND A.ItemID = B.ItemID AND A.MS_MAY =B.MS_MAY  AND A.ProductionRunID != @ProductionRunID))T
--	GROUP BY PrOID,ItemID,MS_MAY
--	HAVING COUNT(MS_MAY) >1
	
	END



