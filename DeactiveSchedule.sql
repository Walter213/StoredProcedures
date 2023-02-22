USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[DeactiveSchedule]    Script Date: 2023-02-22 1:49:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeactiveSchedule] 
	-- Add the parameters for the stored procedure here
	@CalenderID int
AS
BEGIN	
	SET NOCOUNT ON;
    -- Update statements for procedure here
	Update Schedule set [Status]=0 where CalenderID=@CalenderID
END
GO


