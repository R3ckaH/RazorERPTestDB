USE [RazorERPTest]
GO
/****** Object:  StoredProcedure [dbo].[spGetUserById]    Script Date: 8/29/2024 9:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetUserById]
    @Id INT
AS
BEGIN
    SELECT * 
	FROM Users WHERE Id = @Id;
END;
GO
