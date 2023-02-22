USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[CreateSchedule]    Script Date: 2023-02-22 1:47:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateSchedule] 
	-- Add the parameters for the stored procedure here
	--@CalenderID [int] IDENTITY(1,1) NOT NULL,
	@AppointmentDate date,
	@AppointmentStartDate time(7), 
	@AppointmentEndDate time(7),
	@StaffID int,
	@TotalNumberOfParticipants int,
	@Status bit
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	INSERT INTO Schedule
              (AppointmentDate, AppointmentStartDate, AppointmentEndDate, StaffID, TotalNumberOfParticipants, [Status])
       VALUES
              (@AppointmentDate, @AppointmentStartDate, @AppointmentEndDate, @StaffID, @TotalNumberOfParticipants, @Status)
END
GO


