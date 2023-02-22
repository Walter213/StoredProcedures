USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[CreateConcernsbyBookingID]    Script Date: 2023-02-22 1:44:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateConcernsbyBookingID]
	-- Add the parameters for the stored procedure here
	@BookingID int ,
	@Arms bit ,
	@Chest bit ,
	@Feet bit ,
	@Head bit,
	@Hip bit,
	@Knees bit ,
	@Legs bit,
	@Neck bit
AS
BEGIN	
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	INSERT INTO Areas_Of_Concern
              (BookingID, Arms, Chest, Feet, Head, Hip,Knees,Legs,Neck)
       VALUES
              (@BookingID, @Arms, @Chest, @Feet, @Head, @Hip,@Knees,@Legs,@Neck)
END
GO


