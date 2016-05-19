USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarProcesador]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarProcesador] 
	   @NombreProcesador nchar(50) = ''
      ,@Notas nchar(200) = ''
	  ,@PKProcesador int
AS
BEGIN

UPDATE Procesador
   SET NombreProcesador = @NombreProcesador -- nchar(50) -->
       ,Notas = @Notas -- nchar(200) -->
 WHERE PKProcesador = @PKProcesador
 
END


GO
