
ALTER PROCEDURE [dbo].[spGetProDuctionOEE]
	@ProductionRunID BIGINT = 156,
	@CAID INT = 4,
	@Ngay DATETIME ='2021-07-13 22:00:00.000',
	@USERNAME NVARCHAR(250) ='admin',
	@NNgu INT = 0
AS
    BEGIN
	SELECT A.* INTO #MAY FROM dbo.MGetMayUserNgay(GETDATE(),@username,'-1',-1,-1,'-1','-1','-1', @NNgu) A
        SELECT T.MS_MAY,T.CaSTT,
		CONVERT(NUMERIC(18,2),
		CONVERT(NUMERIC(18,2),SUM(T.TH))) AS TH, 
		CONVERT(NUMERIC(18,2),SUM(T.NPH))AS NPH ,
		CONVERT(NUMERIC(18,2),SUM(T.GPH)) AS GPH ,
		CONVERT(NUMERIC(18,2),SUM(T.DT)) AS DT,       
		CONVERT(NUMERIC(18,2),(SUM(T.TH) / SUM(T.NPH)) * 100) AS PE,
		CONVERT(NUMERIC(18,2),(SUM(T.TH) /SUM(T.GPH )) * 100) AS OEE,
		--CONVERT(NUMERIC(18,2),( SUM(T.DT) / SUM(T.GPH) ) * 100) AS DTP,
        CONVERT(NUMERIC(18,2),SUM(T.EL)) AS EL,
		CONVERT(NUMERIC(18,2),(SUM(T.EL) /SUM(T.NPH)) * 100) AS ELP,
		CONVERT(NUMERIC(18,2),SUM(T.EL) - ( SUM(NPH) - SUM(T.TH))) AS ELV,
		CONVERT(NUMERIC(18,2),((SUM(T.EL) - (SUM(NPH) - SUM(T.TH)))/SUM(T.NPH)) * 100) AS ELVP
		INTO #TMP
        FROM    ( SELECT  A.MS_MAY,B.CaSTT, [dbo].[fnGetQuantityCapacity](ItemID,
                                                          ActualQuantity)/(A.StandardOutput * CONVERT(DECIMAL,60)) AS TH,
                          NULLIF( ( ( DATEDIFF(MINUTE, A.StartTime, A.EndTime)
                                - ISNULL(( SELECT   SUM(B.THOI_GIAN_SUA_CHUA)
                                           FROM     dbo.THOI_GIAN_NGUNG_MAY B
                                           INNER JOIN  dbo.NGUYEN_NHAN_DUNG_MAY C ON C.MS_NGUYEN_NHAN = B.MS_NGUYEN_NHAN
										   WHERE     B.ProductionRunDetailsID = A.DetailID AND C.Planned = 2 
                                         ), 0) ) / CONVERT(DECIMAL,60)),0) AS NPH,
                            DATEDIFF(MINUTE, A.StartTime, A.EndTime)/CONVERT(DECIMAL,60) AS GPH,
                            ISNULL(( SELECT SUM(B.THOI_GIAN_SUA_CHUA)
                                     FROM   dbo.THOI_GIAN_NGUNG_MAY B
                                            INNER JOIN dbo.NGUYEN_NHAN_DUNG_MAY C ON C.MS_NGUYEN_NHAN = B.MS_NGUYEN_NHAN
                                     WHERE  B.ProductionRunDetailsID = A.DetailID AND   C.Planned = 2
                                   ), 0) / CONVERT(DECIMAL,60) AS DT,
                            ISNULL(( SELECT SUM(B.THOI_GIAN_SUA_CHUA)
                                     FROM   dbo.THOI_GIAN_NGUNG_MAY B
                                            INNER JOIN dbo.NGUYEN_NHAN_DUNG_MAY C ON C.MS_NGUYEN_NHAN = B.MS_NGUYEN_NHAN
                                     WHERE   B.ProductionRunDetailsID = A.DetailID
                                            AND C.Planned = 1
                                   ), 0) / CONVERT(DECIMAL,60) AS EL
                  FROM      dbo.ProductionRunDetails A
				  INNER JOIN dbo.ProductionRun B ON B.ID = A.ProductionRunID 
				  WHERE /*CONVERT(DATE, A.StartTime) = CONVERT(DATE, @Ngay) AND */(B.ID = @ProductionRunID OR @ProductionRunID =-1)
                ) AS T WHERE T.CaSTT =@CAID  GROUP BY T.MS_MAY,T.CaSTT   ORDER BY T.MS_MAY
				SELECT A.MS_MAY,B.TEN_MAY,CaSTT,TH,NPH,GPH,DT,PE,OEE,EL,A.ELP,ELV,A.ELVP FROM #TMP A INNER JOIN  dbo.MAY B ON B.MS_MAY = A.MS_MAY ORDER BY B.TEN_MAY

			

	END	
	

	