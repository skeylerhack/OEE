
ALTER FUNCTION [dbo].[MGetApiOEE]
(
	@CAID INT =3,
	@ID_TO BIGINT = -1,
	@MS_MAY NVARCHAR(30) = '-1',
	@TU_NGAY DATETIME = '2020-03-02 14:00:00.000',
	@DEN_NGAY DATETIME = '2022-03-02 14:00:00.000',
	@USERNAME NVARCHAR(250) ='admin',
	@NNgu INT = 0
)
returns  TABLE 
as 

return
( SELECT T.OperatorID,T.ItemID,T.MS_MAY,T.StartTime,StandardOutput,T.CaSTT,T.ActualQuantity,
		CONVERT(NUMERIC(18,2),
		CONVERT(NUMERIC(18,2),T.TH)) AS TH, 
		CONVERT(NUMERIC(18,2),T.NPH)AS NPH ,
		CONVERT(NUMERIC(18,2),T.GPH) AS GPH ,
		CONVERT(NUMERIC(18,2),T.DT) AS DT,       
		--CONVERT(NUMERIC(18,2), ( T.TH / T.NPH ) * 100) AS PE,
		--CONVERT(NUMERIC(18,2),( T.TH / T.GPH ) * 100) AS OEE,
		--CONVERT(NUMERIC(18,2),( T.DT / T.GPH ) * 100) AS DTP,
        CONVERT(NUMERIC(18,2),T.EL) AS EL,
		CONVERT(NUMERIC(18,2),CONVERT(NUMERIC(18,2),T.EL - ( NPH - T.TH ))) AS ELV 
        FROM    (
SELECT  A.OperatorID,A.MS_MAY,CONVERT(DATE,A.StartTime) AS StartTime,A.ActualQuantity,A.StandardOutput,A.ItemID,B.CaSTT, [dbo].[fnGetQuantityCapacity](ItemID,
                                                          ActualQuantity)/(A.StandardOutput * 60) AS TH,
                            ( ( DATEDIFF(MINUTE, A.StartTime, A.EndTime)
                                - ISNULL(( SELECT   SUM(B.THOI_GIAN_SUA_CHUA)
                                           FROM     dbo.THOI_GIAN_NGUNG_MAY B
                                           INNER JOIN  dbo.NGUYEN_NHAN_DUNG_MAY C ON C.MS_NGUYEN_NHAN = B.MS_NGUYEN_NHAN
										   WHERE     B.ProductionRunDetailsID = A.DetailID AND C.Planned =1 
										   
                                         ), 0) ) / 60 ) AS NPH,
                            DATEDIFF(MINUTE, A.StartTime, A.EndTime)/60 AS GPH,
                            ISNULL(( SELECT SUM(B.THOI_GIAN_SUA_CHUA)
                                     FROM   dbo.THOI_GIAN_NGUNG_MAY B
                                            INNER JOIN dbo.NGUYEN_NHAN_DUNG_MAY C ON C.MS_NGUYEN_NHAN = B.MS_NGUYEN_NHAN
                                     WHERE  B.ProductionRunDetailsID = A.DetailID AND   C.Planned = 1
                                   ), 0) / 60 AS DT,
                            ISNULL(( SELECT SUM(B.THOI_GIAN_SUA_CHUA)
                                     FROM   dbo.THOI_GIAN_NGUNG_MAY B
                                            INNER JOIN dbo.NGUYEN_NHAN_DUNG_MAY C ON C.MS_NGUYEN_NHAN = B.MS_NGUYEN_NHAN
                                     WHERE   B.ProductionRunDetailsID = A.DetailID
                                            AND C.Planned = 0
                                   ), 0) / 60 AS EL
                  FROM      dbo.ProductionRunDetails A
				  INNER JOIN dbo.ProductionRun B ON B.ID = A.ProductionRunID
				  WHERE (B.CaSTT = @CAID OR @CAID = -1) AND (B.CaSTT = @CAID OR @CAID = -1) AND (A.OperatorID = @ID_TO OR @ID_TO = -1) AND (A.MS_MAY = @MS_MAY OR @MS_MAY ='-1') AND (CONVERT(DATE, A.StartTime) BETWEEN CONVERT(DATE,  @TU_NGAY) AND CONVERT(DATE,   @DEN_NGAY) )
				) AS T)

GO

