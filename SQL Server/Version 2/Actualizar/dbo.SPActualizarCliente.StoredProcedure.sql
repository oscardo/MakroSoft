USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarCliente]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarCliente] 
		@FKDepartamento nchar(10) = ''
      ,@FKMunicipio nchar(10) = ''
      ,@NombreCliente nchar(50) = ''
      ,@Nit nchar(15) = ''
      ,@Telefono1 nchar(15) = ''
      ,@Telefono2 nchar(15) = ''
      ,@Celular nchar(15) = ''
      ,@Direccion nchar(50) = ''
      ,@NombreRepLegal nchar(50) = ''
      ,@Fecha datetime = getdate
      ,@Correo_Electronico nchar(50) = ''
      ,@PaginaWeb nchar(50) = ''
      ,@Activo bit = 0
      ,@Notas nchar(200) = ''
	  ,@PKCliente int
AS
BEGIN


UPDATE Cliente
   SET FKDepartamento = @FKDepartamento -- ,nchar(10),>
      ,FKMunicipio = @FKMunicipio -- ,nchar(10),>
      ,NombreCliente = @NombreCliente -- ,nchar(50),>
      ,Nit = @Nit -- ,nchar(15),>
      ,Telefono1 = @Telefono1 -- ,nchar(15),>
      ,Telefono2 = @Telefono2 -- ,nchar(15),>
      ,Celular = @Celular -- ,nchar(15),>
      ,Direccion = @Direccion -- ,nchar(50),>
      ,NombreRepLegal = @NombreRepLegal -- ,nchar(50),>
      ,Fecha = @Fecha -- ,datetime,>
      ,Correo_Electronico = @Correo_Electronico -- ,nchar(50),>
      ,PaginaWeb = @PaginaWeb -- ,nchar(50),>
      ,Activo = @Activo -- ,bit,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKCliente = @PKCliente

END


GO
