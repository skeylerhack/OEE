IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'spGetListMay')
   exec('CREATE PROCEDURE spGetListMay AS BEGIN SET NOCOUNT ON; END')
 GO
ALTER PROCEDURE [dbo].[spGetListMay]
 @UserName Nvarchar(50),
 @MsNXuong Nvarchar(50),
 @NHeThong int,
 @MsLoaiMay nvarchar(20),
  @MsNhomMay nvarchar(20),
  @NNGU int
AS
BEGIN
SELECT DISTINCT A.MS_MAY,A.TEN_MAY FROM dbo.MGetMayUserNgay(GETDATE(),@UserName,@MsNXuong,@NHeThong,-1,@MsLoaiMay,@MsNhomMay, '-1',@NNGU)  A
INNER JOIN dbo.ItemMay B ON B.MS_MAY = A.MS_MAY
ORDER BY TEN_MAY 
END
