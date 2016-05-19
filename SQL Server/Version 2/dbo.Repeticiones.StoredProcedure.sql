USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[Repeticiones]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Repeticiones] 
	@Tabla nchar(50), 
	@NumRepeticiones int
AS
BEGIN
	Declare @I int
	Declare @NumTablas int
	declare @TipoDatos as nvarchar(3800)
	SET @I = 1

	--SELECT @NumTablas = count(table_name)  FROM INFORMATION_SCHEMA.TABLES where table_name <> 'sysdiagrams'
	--print @NumTablas

	SELECT distinct @TipoDatos = DATA_TYPE 
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE table_name <> 'sysdiagrams'
	and table_name = @Tabla
	ORDER BY DATA_TYPE

	print 'Valor: ' + @TipoDatos

WHILE @I < @NumRepeticiones
BEGIN
  print @I    
   SET @I = @I + 1;
END;

END

--exec Repeticiones 'Bodega', 20 

--SELECT distinct DATA_TYPE 
--	FROM INFORMATION_SCHEMA.COLUMNS
--	WHERE table_name <> 'sysdiagrams'
--	and table_name = 'Bodega'
--	ORDER BY DATA_TYPE

GO
