USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[GetSchedulebyID]    Script Date: 2023-02-22 1:54:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSchedulebyID] 
	-- Add the parameters for the stored procedure here
	@CalenderID int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * from Schedule where CalenderID=@CalenderID
END
GO


