
/****** Object:  UserDefinedFunction [dbo].[AUTO_CREATE_SO_TDSX]    Script Date: 29/03/2021 09:18:43 ******/
DROP FUNCTION [dbo].[AUTO_CREATE_SO_TDSX]
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetConvertQuantity]    Script Date: 29/03/2021 09:18:43 ******/
DROP FUNCTION [dbo].[fnGetConvertQuantity]
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetDVTCongSuat]    Script Date: 29/03/2021 09:18:43 ******/
DROP FUNCTION [dbo].[fnGetDVTCongSuat]
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetDVTCongSuatByGroup]    Script Date: 29/03/2021 09:18:43 ******/
DROP FUNCTION [dbo].[fnGetDVTCongSuatByGroup]
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetQuantityCapacity]    Script Date: 29/03/2021 09:18:43 ******/
DROP FUNCTION [dbo].[fnGetQuantityCapacity]
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetSumStandardOutput]    Script Date: 29/03/2021 09:18:43 ******/
DROP FUNCTION [dbo].[fnGetSumStandardOutput]
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetSumStandardOutput]    Script Date: 29/03/2021 09:18:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--SELECT [dbo].[fnGetSumStandardOutput](17,166320)
CREATE FUNCTION [dbo].[fnGetSumStandardOutput]
    (
      @ItemID BIGINT = 12 ,
      @Input DECIMAL(18, 2) = 166320
    )
RETURNS DECIMAL(18, 4)
AS
BEGIN

DECLARE @QuaCapacity DECIMAL(18, 4) = 20;
DECLARE @Resulst DECIMAL(18, 4) = 20

--tính số luọng của đơn vị tính 
SET @QuaCapacity = (SELECT CONVERT(DECIMAL(18, 4), ( @Input
                                                          * BasedUOMQuantity )
                                / UOMQuantity)
                         FROM   UOMConversionGroupDetails
                         WHERE  UOMConversionGroupID = ( SELECT   UOMConverionGroupID
                                       FROM     dbo.Item
                                       WHERE    ID = @ItemID and CapacityUOM = 1
                                     )
                       )
					

		
		--lấy số lượng của đơn vị tính item
      

IF(SELECT B.CapacityUOM FROM dbo.Item A
INNER JOIN dbo.UOMConversionGroupDetails B ON A.UOM = B.ID
 WHERE A.ID =@ItemID)= 0 
      BEGIN
         SET @Resulst = (SELECT CONVERT(DECIMAL(18, 4), ( @QuaCapacity
                                                         * UOMQuantity)
                                / BasedUOMQuantity )
                         FROM   UOMConversionGroupDetails
                         WHERE  ID = ( SELECT   UOM
                                       FROM     dbo.Item
                                       WHERE    ID = @ItemID 
                                     )
                       )
END 
ELSE
BEGIN
SET @Resulst = @QuaCapacity
END
RETURN @Resulst
END
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetQuantityCapacity]    Script Date: 29/03/2021 09:18:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[fnGetQuantityCapacity]
    (
      @ItemID BIGINT = 17 ,
      @Input DECIMAL(18, 2) = 219.7
    )
RETURNS DECIMAL(18, 4)
AS
BEGIN

DECLARE @QuaBase DECIMAL(18, 4) = 20;
DECLARE @Resulst DECIMAL(18, 4) = 20

        SET @QuaBase = (SELECT CONVERT(DECIMAL(18, 4), ( @Input
                                                          * BasedUOMQuantity )
                                / UOMQuantity)
                         FROM   UOMConversionGroupDetails
                         WHERE  ID = ( SELECT   UOM
                                       FROM     dbo.Item
                                       WHERE    ID = @ItemID
                                     )
                       )

IF(SELECT B.CapacityUOM FROM dbo.Item A
INNER JOIN dbo.UOMConversionGroupDetails B ON A.UOM = B.ID
 WHERE A.ID =@ItemID)= 0 
  --      SET @BASEUOM = ( SELECT UOMID
  --                       FROM   UOMConversionGroupDetails
  --                       WHERE  ID = ( SELECT   UOM
  --                                     FROM     dbo.Item
  --                                     WHERE    ID = @ItemID
  --                                   )
  --                     )
		--        SET @BaseConvert = (SELECT CONVERT(NVARCHAR(20),@QuaBase) +' ' + UOMNote FROM dbo.UOM WHERE BasedUOM = 1)
      BEGIN
       SET @Resulst =   (SELECT  CONVERT(NVARCHAR(50), CONVERT(DECIMAL(18, 4), @QuaBase
                    / A.BasedUOMQuantity))  ConvertQuantity
            FROM    dbo.UOMConversionGroupDetails A
                    INNER JOIN dbo.UOMConversionGroup B ON B.ID = A.UOMConversionGroupID
            WHERE   UOMConversionGroupID = ( SELECT UOMConverionGroupID
                                             FROM   dbo.Item
                                             WHERE  ID = @ItemID
                                           )
                    AND A.CapacityUOM = 1)
END 
ELSE
BEGIN
SET @Resulst =@QuaBase
END
RETURN @Resulst
END
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetDVTCongSuatByGroup]    Script Date: 29/03/2021 09:18:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[fnGetDVTCongSuatByGroup]
    (
      @UOMConverionGroupID BIGINT = 8
    )
RETURNS NVARCHAR(50)
AS
    BEGIN
        DECLARE @ViTri NVARCHAR(50)
		
		SELECT @ViTri = UOMName FROM dbo.UOM WHERE  ID =(
SELECT  UOMID
FROM    dbo.UOMConversionGroupDetails
WHERE   UOMConversionGroupID = ( SELECT ID
                                 FROM   dbo.UOMConversionGroup
                                 WHERE  ID = @UOMConverionGroupID
                               )
        AND CapacityUOM = CONVERT(BIT, 1))

        RETURN @ViTri 
	
    END
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetDVTCongSuat]    Script Date: 29/03/2021 09:18:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[fnGetDVTCongSuat]
    (
      @ItemID BIGINT = 8
    )
RETURNS NVARCHAR(50)
AS
    BEGIN
        DECLARE @ViTri NVARCHAR(50)
		
		SELECT @ViTri = UOMName FROM dbo.UOM WHERE  ID =(
SELECT  UOMID
FROM    dbo.UOMConversionGroupDetails
WHERE   UOMConversionGroupID = ( SELECT ID
                                 FROM   dbo.UOMConversionGroup
                                 WHERE  ID = ( SELECT   UOMConverionGroupID
                                               FROM     dbo.Item
                                               WHERE    ID = @ItemID
                                             )
                               )
        AND CapacityUOM = CONVERT(BIT, 1))

        RETURN @ViTri 
	
    END
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetConvertQuantity]    Script Date: 29/03/2021 09:18:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[fnGetConvertQuantity]
    (
      @ItemID BIGINT = 12 ,
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

        RETURN @VTri + ' - ' + @BaseConvert
	
    END
GO

/****** Object:  UserDefinedFunction [dbo].[AUTO_CREATE_SO_TDSX]    Script Date: 29/03/2021 09:18:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[AUTO_CREATE_SO_TDSX] (
	@DATE DATETIME )
	RETURNS NVARCHAR(12)
AS 
BEGIN

DECLARE @STTMAX INT 
SELECT @STTMAX = MAX(CONVERT(INT,RIGHT (Code,4)))  
FROM dbo.ProductionRun
WHERE  LEFT(Code,2) = 'PC' AND SUBSTRING(Code,4,4) = CONVERT(NVARCHAR(4) , @DATE , 12)

DECLARE @STT_NEXT NVARCHAR(10)
SET @STT_NEXT =  '0000' + CONVERT(NVARCHAR(4),ISNULL(@STTMAX,0) +1)

--SELECT @STT_NEXT 

DECLARE @ID NVARCHAR(12)
SET @ID = 'PC-' +  CONVERT(NVARCHAR(4) , @DATE , 12)  + '-' +  RIGHT (@STT_NEXT,4)
RETURN @ID
END

GO


