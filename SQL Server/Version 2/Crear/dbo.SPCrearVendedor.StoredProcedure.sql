USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearVendedor]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearVendedor]
			@FKDepartamento nchar(10)
           ,@FKMunicipio nchar(10)
           ,@FKTipoDocumento int
		   ,@NroDocumento char(50) 
           ,@NombrePersona nchar(50)
           ,@Direccion nchar(50)
           ,@Telefono1 nchar(15)
           ,@Telefono2 nchar(15)
           ,@Celular nchar(15)
           ,@Fotografia nchar(256)
           ,@Activo bit
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Vendedor
           (FKDepartamento
           ,FKMunicipio
           ,FKTipoDocumento
           ,NroDocumento
		   ,NombrePersona
           ,Direccion
           ,Telefono1
           ,Telefono2
           ,Celular
           ,Fotografia
           ,Activo
           ,Notas)
     VALUES
           (@FKDepartamento
           ,@FKMunicipio
           ,@FKTipoDocumento
		   ,@NroDocumento
           ,@NombrePersona
           ,@Direccion
           ,@Telefono1
           ,@Telefono2
           ,@Celular
           ,@Fotografia
           ,@Activo
           ,@Notas)



END

GO
