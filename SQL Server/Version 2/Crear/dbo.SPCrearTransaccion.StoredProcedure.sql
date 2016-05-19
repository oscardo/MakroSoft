USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearTransaccion]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearTransaccion]
			@FKEquipo int
           ,@FKRemision int
           ,@FKVentas int
		   ,@FKCompra int
           ,@Notas nchar(200)
AS
BEGIN

INSERT INTO Transaccion
           (FKEquipo
           ,FKRemision
           ,FKVentas
		   ,FKCompra
           ,Notas)
     VALUES
           (@FKEquipo
           ,@FKRemision
           ,@FKVentas
		   ,@FKCompra
           ,@Notas)



END

GO
