USE [RazorERPTest]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUser]    Script Date: 8/29/2024 9:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteUser]
    @Id INT
AS
BEGIN
    UPDATE Users SET IsActive = 0 WHERE Id = @Id;
END;
GO
