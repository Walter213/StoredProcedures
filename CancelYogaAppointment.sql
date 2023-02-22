USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[CancelYogaAppointment]    Script Date: 2023-02-22 1:43:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CancelYogaAppointment]
	-- Add the parameters for the stored procedure here
	@BookingID int
AS
BEGIN	
	SET NOCOUNT ON;

    -- update appointment status statements for procedure here
	update appointment set [Status]='Cancel' where BookingID=@BookingID
END
GO


