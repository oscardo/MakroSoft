USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaProcesador_select]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaProcesador_select]
	
AS
BEGIN

  SELECT isnull(PKProcesador, '') as [Nro Procesador]
      ,isnull(NombreProcesador, '') as [Nombre Procesador]
      ,isnull(Notas, '') as [Notas]
  FROM Procesador 


END
GO
