USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaEstado_valida]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaEstado_valida]
	@Estado nchar(50) = ''
AS
BEGIN
if exists(
SELECT isnull(PKEstado, '') as [Número de Estado]
      ,isnull(Estado, '') as [Estado]
      ,isnull(Notas, '') as [Notas]
  FROM Estado
  where Estado Like @Estado
  ) 
    select 1
  else 
    select 0
END

GO
