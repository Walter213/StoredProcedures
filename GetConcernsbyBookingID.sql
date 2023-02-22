USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[GetConcernsbyBookingID]    Script Date: 2023-02-22 1:52:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetConcernsbyBookingID] 
	-- Add the parameters for the stored procedure here
	@BookingID int
AS
BEGIN	
	SET NOCOUNT ON;
    -- Select statements for procedure here
	SELECT * from Areas_Of_Concern where BookingID=@BookingID
END
GO


