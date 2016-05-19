USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaTipo_valida]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaTipo_valida]
	@Nombre nchar(50) = ''
AS
BEGIN
if exists(
SELECT isnull(PKTipo, '') as [Nro Tipo]
      ,isnull(Nombre, '') as [Nombre]
      ,isnull(Notas, '') as [Notas]
  FROM Tipo
  where Nombre = @Nombre)
    select 1
  else 
    select 0
END
GO
