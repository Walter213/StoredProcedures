USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[DeactiveMemberAccount]    Script Date: 2023-02-22 1:48:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeactiveMemberAccount]
	-- Add the parameters for the stored procedure here
	@CustomerID int
AS
BEGIN	
	SET NOCOUNT ON;
    -- Update statements for procedure here
	Update Customers set [Status] =0 where CustomerID=@CustomerID
END
GO


