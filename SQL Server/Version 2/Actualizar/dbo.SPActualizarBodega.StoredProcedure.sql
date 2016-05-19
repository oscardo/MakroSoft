USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarBodega]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarBodega] 
	   @FKDepartamento nchar(10) = ''
      ,@FKMunicipio nchar(10) = ''
      ,@NombreBodega nchar(50) = ''
      ,@Direccion nchar(50) = ''
      ,@Responsable1 nchar(50) = ''
      ,@Responsable2 nchar(50) = ''
      ,@Telefono1 nchar(15) = ''
      ,@Telefono2 nchar(15) = ''
      ,@Celular nchar(15) = ''
      ,@Notas nchar(200) = ''
	  ,@pkbodega int
AS
BEGIN


UPDATE Bodega
   SET FKDepartamento = @FKDepartamento -- ,nchar(10),>
      ,FKMunicipio = @FKMunicipio -- ,nchar(10),>
      ,NombreBodega = @NombreBodega -- ,nchar(50),>
      ,Direccion = @Direccion -- ,nchar(50),>
      ,Responsable1 = @Responsable1 -- ,nchar(50),>
      ,Responsable2 = @Responsable2 -- ,nchar(50),>
      ,Telefono1 = @Telefono1 -- ,nchar(15),>
      ,Telefono2 = @Telefono2 -- ,nchar(15),>
      ,Celular = @Celular -- ,nchar(15),>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE pkbodega = @pkbodega

END


GO
