USE [RazorERPTest]
GO
/****** Object:  StoredProcedure [dbo].[spGetNonAdminUsersByCompany]    Script Date: 8/29/2024 9:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetNonAdminUsersByCompany]
    @CompanyId INT
AS
BEGIN
    SELECT * FROM Users WHERE IsActive = 1 AND CompanyId = @CompanyId AND Role != 'Admin';
END;
GO
