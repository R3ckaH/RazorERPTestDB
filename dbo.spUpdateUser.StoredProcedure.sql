USE [RazorERPTest]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser]    Script Date: 8/29/2024 9:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateUser]
    @Id INT,
    @Username NVARCHAR(100),
    @PasswordHash NVARCHAR(256),
    @Role NVARCHAR(50),
    @CompanyId INT
AS
BEGIN
    UPDATE Users
    SET Username = @Username, PasswordHash = @PasswordHash, Role = @Role
    WHERE Id = @Id AND CompanyId = @CompanyId;
END;
GO
