USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[UpdateMembershipRegistration]    Script Date: 2023-02-22 1:56:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateMembershipRegistration]
	-- Add the parameters for the stored procedure here	
	@CustomerID int,
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
BEGIn
	SET NOCOUNT ON;
    -- Update statements for procedure here
	update Customers set FirstName=@FirstName, LastName=@LastName, Street=@Street, City=@City, Province=@Province, PostalCode=@PostalCode, DateOfBirth=@DateOfBirth, Phone_Number=@Phone_Number, Email=@Email, Hobbies=@Hobbies, Occupation=@Occupation where CustomerID=@CustomerID
            
END
GO


