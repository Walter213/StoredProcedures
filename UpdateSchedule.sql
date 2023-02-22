USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[UpdateSchedule]    Script Date: 2023-02-22 1:56:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateSchedule] 
	-- Add the parameters for the stored procedure here
	@CalenderID int,
	@AppointmentDate date,
	@AppointmentStartDate time(7), 
	@AppointmentEndDate time(7),
	@StaffID int,
	@TotalNumberOfParticipants int,
	@Status bit
AS
BEGIN
	SET NOCOUNT ON;
    -- update statements for procedure here
	update Schedule set AppointmentDate=@AppointmentDate, AppointmentStartDate=@AppointmentStartDate, AppointmentEndDate=@AppointmentEndDate, StaffID=@StaffID, TotalNumberOfParticipants=@TotalNumberOfParticipants, [Status]=@Status where CalenderID=@CalenderID
END
GO


