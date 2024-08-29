USE [RazorERPTest]
GO
/****** Object:  StoredProcedure [dbo].[spGetUsersByCompany]    Script Date: 8/29/2024 9:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetUsersByCompany]
    @CompanyId INT
AS
BEGIN
    SELECT * FROM Users WHERE CompanyId = @CompanyId AND IsActive = 1;
END;
GO
