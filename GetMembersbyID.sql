USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[GetMembersbyID]    Script Date: 2023-02-22 1:53:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetMembersbyID]
	-- Add the parameters for the stored procedure here
	@CustomerID int
AS
BEGIN	
	SET NOCOUNT ON;
    -- Select statements for procedure here
	SELECT * from Customers where CustomerID=@CustomerID
END
GO


