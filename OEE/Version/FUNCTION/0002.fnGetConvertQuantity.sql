
ALTER FUNCTION [dbo].[fnGetConvertQuantity]
    (
      @ItemID BIGINT = 39 ,
      @Input DECIMAL(18, 2) = 20 
    )
RETURNS NVARCHAR(4000)
AS
    BEGIN
        DECLARE @VTri NVARCHAR(4000)
        DECLARE @ViTri NVARCHAR(100)
		DECLARE @BaseConvert NVARCHAR(100)
        DECLARE @BASEUOM BIGINT = 0
        DECLARE @QuaBase DECIMAL(18, 2) = 20

        SET @QuaBase = ( SELECT CONVERT(DECIMAL(18, 2), ( @Input * BasedUOMQuantity )
                                / UOMQuantity)
                         FROM   UOMConversionGroupDetails
                         WHERE  ID = ( SELECT   UOM
                                       FROM     dbo.Item
                                       WHERE    ID = @ItemID
                                     )
                       )
        SET @BASEUOM = ( SELECT UOMID
                         FROM   UOMConversionGroupDetails
                         WHERE  ID = ( SELECT   UOM
                                       FROM     dbo.Item
                                       WHERE    ID = @ItemID
                                     )
                       )
					   
		        SET @BaseConvert = (SELECT CONVERT(NVARCHAR(20), format(@QuaBase, 'N2') ) +' ' + UOMNote FROM dbo.UOM WHERE BasedUOM = 1)

        DECLARE TTChuoi CURSOR
        FOR
            SELECT  CONVERT(NVARCHAR(50), format(CONVERT(DECIMAL(18, 2), @QuaBase
                    / A.BasedUOMQuantity),(CASE (SELECT UOMNote
                                                     FROM   dbo.UOM
                                                     WHERE  ID = A.UOMID) WHEN N'gói' THEN	 'N0' ELSE 'N2' END	)) ) + ' ' + ( SELECT UOMNote
                                                     FROM   dbo.UOM
                                                     WHERE  ID = A.UOMID
                                                   ) AS ConvertQuantity
            FROM    dbo.UOMConversionGroupDetails A
                    INNER JOIN dbo.UOMConversionGroup B ON B.ID = A.UOMConversionGroupID
            WHERE   UOMConversionGroupID = ( SELECT UOMConverionGroupID
                                             FROM   dbo.Item
                                             WHERE  ID = @ItemID
                                           )
                    AND A.UOMID <> @BASEUOM

        OPEN TTChuoi
        SET @VTri = ''
        FETCH NEXT FROM TTChuoi
	INTO @ViTri
        WHILE @@Fetch_Status = 0
            BEGIN
		
                IF @VTri = ''
                    SET @VTri = ISNULL(@ViTri, '')
                ELSE
                    SET @VTri = ISNULL(@VTri, '') + ' - ' + ISNULL(@ViTri, '')
                FETCH NEXT FROM TTChuoi
		INTO @ViTri

            END
        CLOSE TTChuoi
        DEALLOCATE TTChuoi	
        RETURN REPLACE(REPLACE(REPLACE(REPLACE( @VTri + ' - ' + @BaseConvert,',','+'),'.','*'),'+','.'),'*',',')
	
    END
GO

