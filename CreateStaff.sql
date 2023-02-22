USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[CreateStaff]    Script Date: 2023-02-22 1:47:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateStaff] 
	-- Add the parameters for the stored procedure here
	--[StaffID] [int] IDENTITY(1,1),
	@FirstName char(100),
	@LastName char(100),
	@Phone_Number char(10),
	@Email char(350),
	@YearsOfExperience int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	INSERT INTO Staff
              (FirstName, LastName, Phone_Number, Email, YearsOfExperience)
       VALUES
              (@FirstName, @LastName, @Phone_Number, @Email, @YearsOfExperience)
	
END
GO


