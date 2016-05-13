SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearCliente
			@FKDepartamento nchar(10)
           ,@FKMunicipio nchar(10)
           ,@NombreCliente nchar(50)
           ,@Nit nchar(15)
           ,@Telefono1 nchar(15)
           ,@Telefono2 nchar(15)
           ,@Celular nchar(15)
           ,@Direccion nchar(50)
           ,@NombreRepLegal nchar(50)
           ,@Fecha datetime
           ,@Correo_Electronico nchar(50)
           ,@PaginaWeb nchar(50)
           ,@Activo bit
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Cliente
           (FKDepartamento
           ,FKMunicipio
           ,NombreCliente
           ,Nit
           ,Telefono1
           ,Telefono2
           ,Celular
           ,Direccion
           ,NombreRepLegal
           ,Fecha
           ,Correo_Electronico
           ,PaginaWeb
           ,Activo
           ,Notas)
     VALUES
           (@FKDepartamento
           ,@FKMunicipio
           ,@NombreCliente
           ,@Nit
           ,@Telefono1
           ,@Telefono2
           ,@Celular
           ,@Direccion
           ,@NombreRepLegal
           ,@Fecha
           ,@Correo_Electronico
           ,@PaginaWeb
           ,@Activo
           ,@Notas)


END
GO

