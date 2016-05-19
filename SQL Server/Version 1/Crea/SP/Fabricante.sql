SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearFabricante
			@Fabricante nchar(50)
           ,@Notas nchar(200)
AS
BEGIN


INSERT INTO Fabricante
           (Fabricante
           ,Notas)
     VALUES
           (@Fabricante
           ,@Notas)
END
GO


