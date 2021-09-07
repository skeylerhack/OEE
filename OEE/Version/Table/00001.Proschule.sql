if not exists(select * from sys.columns 
            where Name = N'BOMVersion' and Object_ID = Object_ID(N'ProSchedule'))
BEGIN
    ALTER TABLE dbo.ProSchedule ADD BOMVersion INT
END   

if not exists(select * from sys.columns 
            where Name = N'SoCaSX' and Object_ID = Object_ID(N'ProSchedule'))
BEGIN
    ALTER TABLE dbo.ProSchedule ADD SoCaSX DECIMAL(18,2) 
END   

if not exists(select * from sys.columns 
            where Name = N'CaIDKT' and Object_ID = Object_ID(N'ProSchedule'))
BEGIN
    ALTER TABLE dbo.ProSchedule ADD CaIDKT INT
END

