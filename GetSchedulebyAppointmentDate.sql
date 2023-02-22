USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[GetSchedulebyAppointmentDate]    Script Date: 2023-02-22 1:53:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSchedulebyAppointmentDate] 
	-- Add the parameters for the stored procedure here
	@AppointmentDate date
AS
BEGIN	
	SET NOCOUNT ON;
    -- Select statements for procedure here
	SELECT * from Schedule where AppointmentDate=@AppointmentDate
END
GO


