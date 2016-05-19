SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearNavegacion
			@FKRol int
           ,@Navegacion nvarchar(200)
           ,@Pagina nchar(200)
           ,@EsPadre bit
           ,@EsHijo bit
           ,@Numero nchar(10)
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Navegacion
           (FKRol
           ,Navegacion
           ,Pagina
           ,EsPadre
           ,EsHijo
           ,Numero
           ,Notas)
     VALUES
           (@FKRol
           ,@Navegacion
           ,@Pagina
           ,@EsPadre
           ,@EsHijo
           ,@Numero
           ,@Notas)

END
GO


