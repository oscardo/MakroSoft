-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 
	   FKEquipo = <FKEquipo, int,>
      ,FKTecnico = <FKTecnico, int,>
      ,FKEstado = <FKEstado, int,>
      ,Planilla_Mmto = <Planilla_Mmto, nchar(50),>
      ,Fecha = <Fecha, datetime,>
      ,Fecha_Sistema = <Fecha_Sistema, datetime,>
      ,Notas = <Notas, nchar(200),>

AS
BEGIN


UPDATE Mantenimiento
   SET FKEquipo = <FKEquipo, int,>
      ,FKTecnico = <FKTecnico, int,>
      ,FKEstado = <FKEstado, int,>
      ,Planilla_Mmto = <Planilla_Mmto, nchar(50),>
      ,Fecha = <Fecha, datetime,>
      ,Fecha_Sistema = <Fecha_Sistema, datetime,>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


