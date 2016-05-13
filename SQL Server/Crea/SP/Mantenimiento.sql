SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearMantenimiento
			@FKEquipo int
           ,@FKTecnico int
           ,@FKEstado int
           ,@Planilla_Mmto nchar(50)
           ,@Fecha datetime
           ,@Fecha_Sistema datetime
           ,@Notas nchar(200)
AS
BEGIN

INSERT INTO Mantenimiento
           (FKEquipo
           ,FKTecnico
           ,FKEstado
           ,Planilla_Mmto
           ,Fecha
           ,Fecha_Sistema
           ,Notas)
     VALUES
           (@FKEquipo
           ,@FKTecnico
           ,@FKEstado
           ,@Planilla_Mmto
           ,@Fecha
           ,@Fecha_Sistema
           ,@Notas)
END
GO



