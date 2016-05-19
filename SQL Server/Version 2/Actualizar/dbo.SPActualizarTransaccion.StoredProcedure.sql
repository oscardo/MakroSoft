USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTransaccion]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarTransaccion] 
	   @FKEquipo int = 0
      ,@FKRemision int = 0
      ,@FKVentas int = 0
	  ,@FKCompra int = 0
      ,@Notas nchar(200) = ''
	  ,@PKTransaccion int
AS
BEGIN


UPDATE Transaccion
   SET FKEquipo = @FKEquipo -- ,int,>
      ,FKRemision = @FKRemision -- ,int,>
      ,FKVentas = @FKVentas -- ,int,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKTransaccion = @PKTransaccion

END


GO
