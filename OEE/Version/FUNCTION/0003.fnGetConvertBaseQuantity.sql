
CREATE FUNCTION [dbo].[fnGetConvertBaseQuantity]
    (
      @ItemID BIGINT = 39 ,
      @Input DECIMAL(18, 2) = 20 
    )
RETURNS DECIMAL(18, 2)
AS
    BEGIN
        DECLARE @QuaBase DECIMAL(18, 2) = 20
        SET @QuaBase = ( SELECT CONVERT(DECIMAL(18, 2), ( @Input * BasedUOMQuantity )
                                / UOMQuantity)
                         FROM   UOMConversionGroupDetails
                         WHERE  ID = ( SELECT   UOM
                                       FROM     dbo.Item
                                       WHERE    ID = @ItemID
                                     ))
        RETURN @QuaBase
	
    END
GO

