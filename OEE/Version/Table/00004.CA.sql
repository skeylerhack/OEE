if not exists(select * from sys.columns 
            where Name = N'ACTIVE' and Object_ID = Object_ID(N'CA'))
BEGIN
    ALTER TABLE dbo.CA ADD ACTIVE BIT	
END


