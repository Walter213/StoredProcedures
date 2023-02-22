USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[CreateMembershipRegistration]    Script Date: 2023-02-22 1:45:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateMembershipRegistration]
	-- Add the parameters for the stored procedure here
	@FirstName char(150),
	@LastName char(150),
	@Street char(250),
	@City char(200),
	@Province char(100),
	@PostalCode char(10),
	@DateOfBirth date,
	@Phone_Number char(10),
	@Email varchar(350),
	@Hobbies varchar(350),
	@Occupation varchar(300)
	


AS
BEGIN
	
	SET NOCOUNT ON;
	DECLARE @ReturnStatus INT = 0
    IF @FirstName IS NULL OR @LastName is NULL OR @Street IS NULL OR @City is  NULL OR @Province is NULL OR @DateOfBirth IS NULL OR @Phone_Number IS NULL OR @Email IS NULL

	BEGIN
    SET @ReturnStatus = 0
		RAISERROR('CreateMembershipRegistration - Parameter required', 16,1 )
	END
ELSE
BEGIN
INSERT INTO Customers
              (FirstName, LastName, Street, City, Province, PostalCode, DateOfBirth, Phone_Number, Email, Hobbies, Occupation)
       VALUES
              (@FirstName, @LastName, @Street, @City, @Province, @PostalCode, @DateOfBirth, @Phone_Number, @Email, @Hobbies, @Occupation)
    SET @ReturnStatus = 1
END
       

END
GO


