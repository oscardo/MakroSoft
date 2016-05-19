USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearTecnico]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearTecnico]
			@Nombre nchar(50)
           ,@Activo bit
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Tecnico
           (Nombre
           ,Activo
           ,Notas)
     VALUES
           (@Nombre
           ,@Activo
           ,@Notas)



END

GO
