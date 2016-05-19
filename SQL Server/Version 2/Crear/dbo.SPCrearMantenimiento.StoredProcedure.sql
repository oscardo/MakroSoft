USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearMantenimiento]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearMantenimiento]
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
		   ,cantidad
           ,Notas)
     VALUES
           (@FKEquipo
           ,@FKTecnico
           ,@FKEstado
           ,@Planilla_Mmto
           ,@Fecha
           ,@Fecha_Sistema
		   ,1
           ,@Notas)
END

GO
