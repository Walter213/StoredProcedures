USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[CreateAppointment]    Script Date: 2023-02-22 1:44:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateAppointment]
	-- Add the parameters for the stored procedure here
	--BookingID] [int] IDENTITY(1,1) NOT NULL,
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
    -- Insert statements for procedure here
	INSERT INTO Appointment
              (CustomerID, FirstName, LastName, Email, WaiverSigned, [witness],CalenderID,[Status])
       VALUES
              (@CustomerID, @FirstName, @LastName, @Email, @WaiverSigned, @witness,@CalenderID,@Status)
END
GO


