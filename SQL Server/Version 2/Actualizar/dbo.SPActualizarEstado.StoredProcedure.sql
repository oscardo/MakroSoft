USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarEstado]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarEstado] 
	   @Estado nchar(50)=''
      ,@Notas nchar(200)=''
	  ,@pkestado int
AS
BEGIN


UPDATE Estado
   SET Estado = @Estado -- ,nchar(50),>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE pkestado = @pkestado

END


GO
