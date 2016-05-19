SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearTransaccion
			@FKEquipo int
           ,@FKRemision int
           ,@FKVentas int
           ,@Notas nchar(200)
AS
BEGIN

INSERT INTO Transaccion
           (FKEquipo
           ,FKRemision
           ,FKVentas
           ,Notas)
     VALUES
           (@FKEquipo
           ,@FKRemision
           ,@FKVentas
           ,@Notas)



END
GO
