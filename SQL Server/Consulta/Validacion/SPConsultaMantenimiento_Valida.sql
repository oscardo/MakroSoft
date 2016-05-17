USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaMantenimientos]    Script Date: 12/05/2016 23:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaMantenimiento_valida]
	@Planilla_Mmto nchar(50) = ''
AS
BEGIN

SELECT isnull(M.PKMantenimiento, '') as [Nro Mantenimiento]
      ,isnull(E.Notas, '') as [Notas de Equipo]
	  ,isnull(T.Nombre, '') as [Nombre del Tecnico]
      ,isnull(EE.Estado, '') as [Estado]
      ,isnull(M.Planilla_Mmto, '') as [Planilla Mmto]
      ,isnull(M.Fecha, '') as [Fecha]
      ,isnull(M.Fecha_Sistema, '') as [Fecha Sistema]
      ,isnull(M.Notas, '') as [Notas]
  FROM Mantenimiento M
  left join Equipo E ON E.PKEquipo = M.FKEquipo
  left join Tecnico T ON T.PKTecnico = M.FKTecnico
  left join Estado EE on EE.PKEstado = M.FKEstado
  where Planilla_Mmto = @Planilla_Mmto
END