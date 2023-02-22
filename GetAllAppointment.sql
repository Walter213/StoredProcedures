USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[GetAllAppointment]    Script Date: 2023-02-22 1:49:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllAppointment]
	
AS
BEGIN	
	SET NOCOUNT ON;
    -- Select statements for procedure here
	SELECT * from Appointment
END
GO


