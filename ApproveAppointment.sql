USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[ApproveAppointment]    Script Date: 2023-02-22 1:37:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApproveAppointment]  
	-- Add the parameters for the stored procedure here
	@BookingID int
AS
BEGIN
	SET NOCOUNT ON;
    -- update appointment status statements for procedure here
	update appointment set [Status]='Approved' where BookingID=@BookingID
END
GO


