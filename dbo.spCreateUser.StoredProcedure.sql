USE [RazorERPTest]
GO
/****** Object:  StoredProcedure [dbo].[spCreateUser]    Script Date: 8/29/2024 9:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCreateUser]
    @Username NVARCHAR(100),
    @PasswordHash NVARCHAR(256),
    @Role NVARCHAR(50),
    @CompanyId INT
AS
BEGIN
    INSERT INTO Users (Username, PasswordHash, Role, CompanyId, IsActive)
    VALUES (@Username, @PasswordHash, @Role, @CompanyId, 1);

    SELECT CAST(SCOPE_IDENTITY() AS INT);
END;
GO
