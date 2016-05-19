USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaProcesador_valida]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaProcesador_valida]
	@NombreProcesador char(50) = ''
AS
BEGIN
if exists(
  SELECT isnull(PKProcesador, '') as [Nro Procesador]
      ,isnull(NombreProcesador, '') as [Nombre Procesador]
      ,isnull(Notas, '') as [Notas]
  FROM Procesador 
  where NombreProcesador like @NombreProcesador)
   select 1
  else 
    select 0

END
GO
