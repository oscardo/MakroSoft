USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaTecnico_valida]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaTecnico_valida]
		@nombre nchar(50) = ''
AS
BEGIN
if exists(
SELECT isnull(PKTecnico, '') as [Nro Tecnico]
      ,isnull(Nombre, '') as [Nombres]
      ,isnull(Activo, '') as [Activo]
      ,isnull(Notas, '') as [Notas]
  FROM Tecnico
  where nombre like @nombre
    ) 
    select 1
  else 
    select 0
END
GO
