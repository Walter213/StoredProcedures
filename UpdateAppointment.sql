USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[UpdateAppointment]    Script Date: 2023-02-22 1:55:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateAppointment] 
	-- Add the parameters for the stored procedure here
	@BookingID int,
	@CustomerID int,
	@FirstName char(150),
	@LastName char(150),
	@Email char(350),
	@WaiverSigned bit,
	@witness char(300),
	@CalenderID int,
	@Status char(50)
AS
BEGIN	
	SET NOCOUNT ON;
    -- Update statements for procedure here
	update  Appointment set CustomerID=@CustomerID, FirstName=@FirstName, LastName=@LastName, Email=@Email, WaiverSigned=@WaiverSigned, [witness]=@witness,CalenderID=@CalenderID,[Status]=@Status where BookingID=@BookingID
              
END
GO


