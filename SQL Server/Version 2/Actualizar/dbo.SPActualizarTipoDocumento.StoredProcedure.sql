USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTipoDocumento]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarTipoDocumento] 
	   @TipoDocumento nchar(20) = ''
      ,@Notas nchar(200) = ''
	  ,@PKTipoDocumento int
AS
BEGIN

UPDATE TipoDocumento
   SET TipoDocumento = @TipoDocumento -- ,nchar(20),>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKTipoDocumento = @PKTipoDocumento

END


GO
