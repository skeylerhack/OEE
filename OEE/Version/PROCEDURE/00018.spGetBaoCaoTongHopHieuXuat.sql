


ALTER PROCEDURE [dbo].[spGetBaoCaoTongHopHieuXuat]
	@MS_N_XUONG NVARCHAR(50) = '-1',
	@MS_LOAI_MAY NVARCHAR(30) ='-1',
	@TU_NGAY DATETIME = '2021-03-02 14:00:00.000',
	@DEN_NGAY DATETIME = '2022-03-02 14:00:00.000',
	@USERNAME NVARCHAR(250) ='admin',
	@NNgu INT = 0
AS
    BEGIN

	SELECT A.* INTO #MAY FROM dbo.MGetMayUserNgay(GETDATE(),@username,@MS_N_XUONG,-1,-1,@MS_LOAI_MAY,'-1','-1', @NNgu) A
	
	SELECT C.TEN_MAY,
	CONVERT(NUMERIC(18,2),SUM(B.TH)) AS TH,
	CONVERT(NUMERIC(18,2),SUM(B.GPH)) AS GPH,
	CONVERT(NUMERIC(18,2),SUM(B.NPH)) AS NPH, 
	CONVERT(NUMERIC(18,2),SUM(B.EL)) AS EL,
	CONVERT(NUMERIC(18,2),SUM(B.EL) - ( SUM(NPH) - SUM(B.TH) )) AS ELV ,
	CONVERT(NUMERIC(18,2),(SUM( B.TH) / SUM(B.GPH )) * 100) AS OEE,
	CONVERT(NUMERIC(18,2),(SUM(B.TH) /SUM(B.NPH)) * 100) AS PE,
	CONVERT(NUMERIC(18,2),(SUM(B.EL) /SUM(B.NPH)) * 100) AS ELP,
	CONVERT(NUMERIC(18,2),(SUM(B.ELV) /SUM(B.TH)) * 100) AS ELVP,
	D.OEE AS DMOEE,
	D.PE AS DMPE,
	D.EL AS DMEL,
	D.SpeedVar
	FROM dbo.MGetApiOEE(-1,-1,'-1',@TU_NGAY,@DEN_NGAY,@USERNAME, @NNgu) B
	INNER JOIN #MAY C ON C.MS_MAY = B.MS_MAY
	LEFT JOIN dbo.Target D ON D.MS_MAY = B.MS_MAY and D.Year = DATEPART(YEAR,@TU_NGAY) 
	GROUP BY  C.TEN_MAY,D.OEE,D.PE,D.SpeedVar,D.EL
	ORDER BY C.TEN_MAY
	END	
