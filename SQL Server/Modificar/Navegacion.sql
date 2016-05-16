-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarNavegacion 
		@FKRol int=0
      ,@Navegacion nvarchar(200)=''
      ,@Pagina nchar(200)=''
      ,@EsPadre bit=0
      ,@EsHijo bit=0
      ,@Numero nchar(10)=''
      ,@Notas nchar(200)=''
	  ,@PKNavegacion int
AS
BEGIN


UPDATE Navegacion
   SET FKRol = @FKRol-- ,int,>
      ,Navegacion = @Navegacion-- ,nvarchar(200),>
      ,Pagina = @Pagina-- ,nchar(200),>
      ,EsPadre = @EsPadre-- ,bit,>
      ,EsHijo = @EsHijo-- ,bit,>
      ,Numero = @Numero-- ,nchar(10),>
      ,Notas = @Notas-- ,nchar(200),>
 WHERE PKNavegacion = @PKNavegacion

END

GO


