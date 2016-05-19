USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarVendedor]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarVendedor]
	   @FKDepartamento nchar(10)= ''
      ,@FKMunicipio nchar(10)= ''
      ,@FKTipoDocumento int= 0
      ,@NroDocumento nchar(50) = ''
	  ,@NombrePersona nchar(50)= ''
      ,@Direccion nchar(50)= ''
      ,@Telefono1 nchar(15)= ''
      ,@Telefono2 nchar(15)= ''
      ,@Celular nchar(15)= ''
      ,@Fotografia nchar(256)= ''
      ,@Activo bit= 0
      ,@Notas nchar(200)= ''
	  ,@PKVendedor int
AS
BEGIN


UPDATE Vendedor
   SET FKDepartamento = @FKDepartamento -- ,nchar(10),>
      ,FKMunicipio = @FKMunicipio -- ,nchar(10),>
      ,FKTipoDocumento = @FKTipoDocumento -- ,int,>
      ,NroDocumento = @NroDocumento
	  ,NombrePersona = @NombrePersona -- ,nchar(50),>
	  ,Direccion = @Direccion -- ,nchar(50),>
      ,Telefono1 = @Telefono1 -- ,nchar(15),>
      ,Telefono2 = @Telefono2 -- ,nchar(15),>
      ,Celular = @Celular -- ,nchar(15),>
      ,Fotografia = @Fotografia -- ,nchar(256),>
      ,Activo = @Activo -- ,bit,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKVendedor = @PKVendedor

END


GO
