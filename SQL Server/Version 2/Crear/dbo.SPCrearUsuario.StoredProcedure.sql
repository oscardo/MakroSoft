USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearUsuario]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Creacion de Usuarios
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearUsuario]
	-- Add the parameters for the stored procedure here
		    @FKDepartamento nchar(10)
           ,@FKMunicipio nchar(10)
           ,@FKRol int
           ,@NombreUsuario  nchar(20)
           ,@Password  nchar(15)
           ,@Telefono1 nchar(15)
           ,@Celular nchar(15)
           ,@Ubicacion nchar(50)
           ,@Activo bit
           ,@CorreoElectronico nchar(50)
           ,@Notas nchar(200)
AS
BEGIN
	SET NOCOUNT ON;

INSERT INTO [dbo].[Usuario]
           ([FKDepartamento]
           ,[FKMunicipio]
           ,[FKRol]
           ,[NombreUsuario]
           ,[Password]
           ,[Telefono1]
           ,[Celular]
           ,[Ubicacion]
           ,[Activo]
           ,[CorreoElectronico]
           ,[Notas])
     VALUES
           (@FKDepartamento
           ,@FKMunicipio
           ,@FKRol
           ,@NombreUsuario
           ,@Password
           ,@Telefono1
           ,@Celular
           ,@Ubicacion
           ,@Activo
           ,@CorreoElectronico
           ,@Notas)

END

GO
