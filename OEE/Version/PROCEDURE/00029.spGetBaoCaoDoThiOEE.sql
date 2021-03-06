

ALTER PROCEDURE [dbo].[spGetBaoCaoDoThiOEE]
    @NAM NVARCHAR(5) = 2021 ,
	@MS_N_XUONG NVARCHAR(50) = '-1',
	@MS_LOAI_MAY NVARCHAR(30) ='-1',
	@SbtMay NVARCHAR(200) ='sBTMayadmin',
	@USERNAME NVARCHAR(250) ='admin',
	@NNgu INT = 0
AS
    BEGIN
		DECLARE @tNgay AS NVARCHAR(15) = '01/01/' + @NAM
        DECLARE @dNgay AS NVARCHAR(15) = '12/31/' + @NAM

	CREATE TABLE #TEMPT_MAY (
[MS_MAY] [NVARCHAR] (30) ,
[TEN_MAY] [NVARCHAR] (250)
) ON [PRIMARY]
DECLARE @sSql NVARCHAR(4000)
SET @sSql = 'INSERT INTO #TEMPT_MAY(MS_MAY,TEN_MAY) SELECT [MS_MAY],[TEN_MAY] FROM ' + @SbtMay
EXEC (@sSql)
SET @sSql = 'DROP TABLE ' + @SbtMay
EXEC (@sSql)
	     SELECT pvt.*
INTO	#TMP	
FROM (
	SELECT 'OEE' AS TEN_MAY,
	CONVERT(NVARCHAR(5), MONTH(B.StartTime)) AS THANG,
	CONVERT(NUMERIC(18,2),(SUM( B.TH) / SUM(B.GPH )) * 100) AS OEE
	FROM dbo.MGetApiOEE(-1,-1,'-1',@tNgay,@dNgay,@USERNAME, @NNgu) B
	INNER JOIN #TEMPT_MAY C ON C.MS_MAY = B.MS_MAY
	GROUP BY MONTH(B.StartTime)

	)A PIVOT
( sum(A.OEE) FOR A.THANG IN ( [1], [2], [3], [4], [5], [6],
                                               [7], [8], [9], [10], [11], [12] ))AS pvt	

SELECT * FROM #TMP
	END	
