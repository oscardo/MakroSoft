SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearRemisiones
			@FKCliente int
           ,@FKProveedor int
           ,@FKDepartamento nchar(10)
           ,@FKMunicipio nchar(10)
           ,@FKDetalle_Venta_Remision int
           ,@Fecha_Inicio datetime
           ,@Fecha_Fin datetime
           ,@Fecha_Sistema datetime
           ,@Valor_Unidad numeric(18,2)
           ,@IVA_Unidad numeric(18,2)
           ,@Valor_Total numeric(18,2)
           ,@Subtotal numeric(18,2)
           ,@IVA numeric(18,2)
           ,@Total numeric(18,2)
           ,@FVenta nchar(50)
           ,@Cantidad int
           ,@Diferencia numeric(18,2)
           ,@Diferencia_Precio numeric(18,2)
           ,@Notas nchar(200)
AS
BEGIN

INSERT INTO Remisiones
           (FKCliente
           ,FKProveedor
           ,FKDepartamento
           ,FKMunicipio
           ,FKDetalle_Venta_Remision
           ,Fecha_Inicio
           ,Fecha_Fin
           ,Fecha_Sistema
           ,Valor_Unidad
           ,IVA_Unidad
           ,Valor_Total
           ,Subtotal
           ,IVA
           ,Total
           ,FVenta
           ,Cantidad
           ,Diferencia
           ,Diferencia_Precio
           ,Notas)
     VALUES
           (@FKCliente
           ,@FKProveedor
           ,@FKDepartamento
           ,@FKMunicipio
           ,@FKDetalle_Venta_Remision
           ,@Fecha_Inicio
           ,@Fecha_Fin
           ,getdate()
           ,@Valor_Unidad
           ,@IVA_Unidad
           ,@Valor_Total
           ,@Subtotal
           ,@IVA
           ,@Total
           ,@FVenta
           ,@Cantidad
           ,@Diferencia
           ,@Diferencia_Precio
           ,@Notas)

END
GO
