USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[CreateMOYOIntakeForm]    Script Date: 2023-02-22 1:46:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateMOYOIntakeForm] 
	-- Add the parameters for the stored procedure here
	--[IntakeFormID] [int] IDENTITY(1,1) NOT NULL,
	@CustomerID int ,
	@BookingID int ,
	@Injuries char(350) ,
	@HealthConcerns char(350),
	@Goals text ,
	@YogaInterests text ,
	@RatePhysicalActivity int ,
	@RateStress int,
	@Comfortable_Self_Assessment int ,
	@Practice_Self_Assessment int ,
	@Health_conditions_Recently_Past text ,
	@Concerns_Hopes_Goals_Anticipations text 
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO IntakeForm
              (CustomerID, BookingID, Injuries, HealthConcerns, Goals, YogaInterests,RatePhysicalActivity,RateStress,Comfortable_Self_Assessment,Practice_Self_Assessment,Health_conditions_Recently_Past,Concerns_Hopes_Goals_Anticipations)
       VALUES
              (@CustomerID, @BookingID, @Injuries, @HealthConcerns, @Goals, @YogaInterests,@RatePhysicalActivity,@RateStress,@Comfortable_Self_Assessment,@Practice_Self_Assessment,@Health_conditions_Recently_Past,@Concerns_Hopes_Goals_Anticipations)
END
GO


