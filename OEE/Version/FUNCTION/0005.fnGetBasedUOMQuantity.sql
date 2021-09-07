SELECT [dbo].[fnGetBasedUOMQuantity](344)
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnGetBasedUOMQuantity]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fnGetBasedUOMQuantity]
GO
CREATE FUNCTION [dbo].[fnGetBasedUOMQuantity]
    (
      @UOMConversionGroupID BIGINT
    )
RETURNS DECIMAL(18, 4)
AS
    BEGIN
        DECLARE @QuaBase DECIMAL(18, 4) = 20
        SET @QuaBase = (SELECT TOP 1 BasedUOMQuantity FROM UOMConversionGroupDetails WHERE UOMConversionGroupID = @UOMConversionGroupID AND CapacityUOM = 1)
        RETURN @QuaBase
	
    END
GO


