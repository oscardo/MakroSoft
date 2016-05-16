-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarMantenimiento 
	   @FKEquipo int = 0
      ,@FKTecnico int = 0 
      ,@FKEstado int = 0
      ,@Planilla_Mmto nchar(50) = ''
      ,@Fecha datetime = getdate
      ,@Fecha_Sistema datetime = getdate
      ,@Notas nchar(200) = ''
	  ,@PKMantenimiento int
AS
BEGIN

UPDATE Mantenimiento
   SET FKEquipo = @FKEquipo-- ,int,>
      ,FKTecnico = @FKTecnico-- ,int,>
      ,FKEstado = @FKEstado-- ,int,>
      ,Planilla_Mmto = @Planilla_Mmto-- ,nchar(50),>
      ,Fecha = @Fecha-- ,datetime,>
      ,Fecha_Sistema = @Fecha_Sistema-- ,datetime,>
      ,Notas = @Notas-- ,nchar(200),>
 WHERE PKMantenimiento = @PKMantenimiento

END

GO


