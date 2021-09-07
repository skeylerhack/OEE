CREATE TABLE #temptable ( [MENU_ID] nvarchar(255), [MENU_TEXT] nvarchar(255), [MENU_ENGLISH] nvarchar(255), [MENU_CHINESE] nvarchar(255), [MENU_PARENT] varchar(64), [MENU_LINE] bit, [MENU_INDEX] decimal(10,0), [SHORT_KEY] nvarchar(150), [DLL_NAME] varchar(64), [CLASS_NAME] varchar(64), [FUNCTION_NAME] varchar(64), [CUSTUMER] nvarchar(512), [NOTE] nvarchar(512), [MENU_IMAGE] image, [PROJECT_NAME] nvarchar(128), [MENU_NOTE] nvarchar(255), [MENU_FONT] varchar(150), [MENU_POSITION] int, [MENU_TYPE] int, [AN_HIEN] bit, [LOAI_MENU] bit )
INSERT INTO #temptable
VALUES
( N'mnuUOM', N'10.01 Đơn vị tính SX', N'10.01 Production UOM', NULL, 'mnuOEE', 0, 1, NULL, NULL, 'frmMain', 'LoadDonViTinhOEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuUOMConversionGroup', N'10.02 Quy đổi ĐVT', N'10.02 UOM conversion ', NULL, 'mnuOEE', 0, 2, NULL, NULL, 'frmMain', 'LoadNhomQuyDoiOEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuDowntimeType', N'10.03 Loại nguyên nhân ngừng máy', N'10.03 Downtime Cause Type', NULL, 'mnuOEE', 1, 3, NULL, NULL, 'frmMain', 'ShowLoaiNgungMay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuDowntimeCause', N'10.04 Nguyên nhân ngừng máy', N'10.04 Downtime Cause', NULL, 'mnuOEE', 0, 4, NULL, NULL, 'frmMain', 'ShowNguyenNhanNgungMay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuDevicesCause', N'10.05 Định mức thời gian ngừng máy', N'10.05 Down Time Norm', NULL, 'mnuOEE', 0, 5, NULL, NULL, 'frmMain', 'LoadDinhMucNgungMay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuItemGroup', N'10.06 Nhóm mặt hàng ', N'10.06 Item Groups', NULL, 'mnuOEE', 1, 6, NULL, NULL, 'frmMain', 'LoadNhomMatHangOEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuOpreator', N'10.07 Nhóm sản xuất ', N'10.07 Production Group ', NULL, 'mnuOEE', 0, 7, NULL, NULL, 'frmMain', 'LoadNhaDieuHanhOEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuItemDevices', N'10.08 Mặt hàng', N'10.08 Item Master Data', NULL, 'mnuOEE', 0, 8, NULL, NULL, 'frmMain', 'ShowItemMay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuTarget', N'10.09 Hiệu xuất theo năm', N'10.09 Hiệu xuất theo năm', NULL, 'mnuOEE', 0, 9, NULL, NULL, 'frmMain', 'ShowHieuXuatTheoNam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuProductionOrder', N'10.10 Lệnh sản xuất ', N'10.10 Production Order', NULL, 'mnuOEE', 1, 10, NULL, NULL, 'frmMain', 'ShowLenhSanXuatTheoMay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuOEE', N'10. Quản lý SX và OEE', N'10. Production and OEE', NULL, NULL, 0, 10, NULL, NULL, 'frmMain', 'ShowOEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0 ), 
( N'mnuProductionRun', N'10.11 Tiến độ sản xuất ', N'10.11 Production Progress', NULL, 'mnuOEE', 0, 11, NULL, NULL, 'frmMain', 'ShowLenhSanXuatThucTe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 ), 
( N'mnuBaoCaoOEE', N'10.12 Báo cáo OEE', N'10.12 Báo cáo OEE', NULL, 'mnuOEE', 1, 12, NULL, NULL, 'frmMain', 'ShowBaoCaoOEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 0 )

INSERT INTO dbo.MENU
(
    MENU_ID,
    MENU_TEXT,
    MENU_ENGLISH,
    MENU_CHINESE,
    MENU_PARENT,
    MENU_LINE,
    MENU_INDEX,
    SHORT_KEY,
    DLL_NAME,
    CLASS_NAME,
    FUNCTION_NAME,
    CUSTUMER,
    NOTE,
    MENU_IMAGE,
    PROJECT_NAME,
    MENU_NOTE,
    MENU_FONT,
    MENU_POSITION,
    MENU_TYPE,
    AN_HIEN,
    LOAI_MENU
)
SELECT * FROM #temptable
DROP TABLE #temptable

IF(SELECT COUNT(*) FROM dbo.LIC_MENU WHERE MENU_ID =N'ΞΠή͎͎͢' )= 0
BEGIN	
INSERT INTO	 dbo.LIC_MENU
(
    TYPE_LIC,
    MENU_ID
)
VALUES
(   N'̦', -- TYPE_LIC - nvarchar(50)
    N'ΞΠή͎͎͢'  -- MENU_ID - nvarchar(1000)
    )
END


