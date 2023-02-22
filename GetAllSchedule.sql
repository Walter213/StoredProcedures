USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[GetAllSchedule]    Script Date: 2023-02-22 1:51:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllSchedule] 

AS
BEGIN	
	SET NOCOUNT ON;
    -- Select statements for procedure here
	SELECT * from Schedule
END
GO


