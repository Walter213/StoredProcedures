USE [MOYO_DB]
GO

/****** Object:  StoredProcedure [dbo].[MemberLogin]    Script Date: 2023-02-22 1:54:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MemberLogin]
	-- Add the parameters for the stored procedure here
	@Email varchar(250),
	@Password varchar(250)
	
AS
BEGIN	
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	INSERT INTO [LogIn]
              (Email, [Password], CreatedDate,LastModifiedDate)
       VALUES
              (@Email, @Password, GETDATE(),getdate())
END
GO


