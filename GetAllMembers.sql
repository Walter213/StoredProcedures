USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[GetAllMembers]    Script Date: 2023-02-22 1:50:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllMembers] 
	
AS
BEGIN	
	SET NOCOUNT ON;
    -- select statements for procedure here
	SELECT * from Customers
END
GO


