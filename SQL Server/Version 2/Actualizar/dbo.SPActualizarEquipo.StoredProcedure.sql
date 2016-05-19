USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarEquipo]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarEquipo] 
	   @FKCompras int = 0
      ,@FKTipo int = 0
      ,@FKFabricante int = 0
      ,@FKProcesador int = 0
      ,@FKCliente int = 0
      ,@Nombreequipo Nchar(50) = ''
	  ,@Sistema_Operativo nchar(50) = ''
      ,@Descripcion nchar(50) = ''
      ,@Serial nchar(50) = ''
      ,@Board nchar(50) = ''
      ,@RAM nchar(10) = ''
      ,@DiscoDuro nchar(10) = ''
      ,@Mouse nchar(10) = ''
      ,@Clave_Windows nchar(50) = ''
      ,@Clave_Office nchar(50) = ''
      ,@Clave_Antivirus nchar(50) = ''
      ,@Clave_Otros nchar(50) = ''
      ,@Clave_Otros2 nchar(50) = ''
      ,@Clave_Otros3 nchar(30) = ''
      ,@Cantidad int = 0
      ,@Activo bit = 0
      ,@Notas nchar(200) = ''
	  ,@PKEquipo int
AS
BEGIN

UPDATE Equipo
   SET FKCompras = @FKCompras -- ,int,>
      ,FKTipo = @FKTipo -- ,int,>
      ,FKFabricante = @FKFabricante -- ,int,>
      ,FKProcesador = @FKProcesador -- ,int,>
      ,FKCliente = @FKCliente -- ,int,>
      ,Nombreequipo = @Nombreequipo -- ,nchar(50),>
	  ,Sistema_Operativo = @Sistema_Operativo -- ,nchar(50),>
      ,Descripcion = @Descripcion -- ,nchar(50),>
      ,Serial = @Serial -- ,nchar(50),>
      ,Board = @Board -- ,nchar(50),>
      ,RAM = @RAM -- ,nchar(10),>
      ,DiscoDuro = @DiscoDuro -- ,nchar(10),>
      ,Mouse = @Mouse -- ,nchar(10),>
      ,Clave_Windows = @Clave_Windows -- ,nchar(50),>
      ,Clave_Office = @Clave_Office -- ,nchar(50),>
      ,Clave_Antivirus = @Clave_Antivirus -- ,nchar(50),>
      ,Clave_Otros = @Clave_Otros -- ,nchar(50),>
      ,Clave_Otros2 = @Clave_Otros2 -- ,nchar(50),>
      ,Clave_Otros3 = @Clave_Otros3 -- ,nchar(30),>
      ,Cantidad = @Cantidad -- ,int,>
      ,Activo = @Activo -- ,bit,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKEquipo = @PKEquipo

END


GO
