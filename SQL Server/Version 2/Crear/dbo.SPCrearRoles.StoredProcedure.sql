USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearRoles]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearRoles]
		   @Rol nchar(15)
           ,@Activo bit
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Roles
           (Rol
           ,Activo
           ,Notas)
     VALUES
           (@Rol
           ,@Activo
           ,@Notas)



END

GO
