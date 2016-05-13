USE [MakroSoftDB2]
GO

SELECT [PKAuditoria]
      ,[Accion]
      ,[Notas]
  FROM [dbo].[Auditoria]
GO

USE [MakroSoftDB2]
GO

SELECT [PKBodega]
      ,[FKDepartamento]
      ,[FKMunicipio]
      ,[NombreBodega]
      ,[Direccion]
      ,[Responsable1]
      ,[Responsable2]
      ,[Telefono1]
      ,[Telefono2]
      ,[Celular]
      ,[Notas]
  FROM [dbo].[Bodega]
GO

USE [MakroSoftDB2]
GO

SELECT [PKCliente]
      ,[FKDepartamento]
      ,[FKMunicipio]
      ,[NombreCliente]
      ,[Nit]
      ,[Telefono1]
      ,[Telefono2]
      ,[Celular]
      ,[Direccion]
      ,[NombreRepLegal]
      ,[Fecha]
      ,[Correo_Electronico]
      ,[PaginaWeb]
      ,[Activo]
      ,[Notas]
  FROM [dbo].[Cliente]
GO

USE [MakroSoftDB2]
GO

SELECT [PKCompras]
      ,[FKProveedor]
      ,[FKDepartamento]
      ,[FKMunicipio]
      ,[Fecha_Compra]
      ,[Observaciones]
      ,[Garantia]
      ,[Exterdida_Garantia]
      ,[Factura_Compra]
      ,[Ruta_Fotografia]
      ,[Cantidad]
      ,[Valor_Unidad]
      ,[SubTotal]
      ,[IVA]
      ,[Total]
      ,[Cantidad_Recibida]
      ,[Saldo]
      ,[Descuento]
      ,[Activo]
      ,[Notas]
  FROM [dbo].[Compras]
GO

USE [MakroSoftDB2]
GO
--hizo falta este
INSERT INTO [dbo].[Departamento]
           ([PKDepartamento]
           ,[NombreDepartamento]
           ,[Notas])
     VALUES
           (<PKDepartamento, nchar(10),>
           ,<NombreDepartamento, nchar(50),>
           ,<Notas, nchar(200),>)
GO

USE [MakroSoftDB2]
GO

SELECT [PKEquipo]
      ,[FKCompras]
      ,[FKTipo]
      ,[FKFabricante]
      ,[FKProcesador]
      ,[FKCliente]
      ,[Sistema_Operativo]
      ,[Descripcion]
      ,[Serial]
      ,[Board]
      ,[RAM]
      ,[DiscoDuro]
      ,[Mouse]
      ,[Clave_Windows]
      ,[Clave_Office]
      ,[Clave_Antivirus]
      ,[Clave_Otros]
      ,[Clave_Otros2]
      ,[Clave_Otros3]
      ,[Cantidad]
      ,[Activo]
      ,[Notas]
  FROM [dbo].[Equipo]
GO

USE [MakroSoftDB2]
GO

SELECT [PKEstado]
      ,[Estado]
      ,[Notas]
  FROM [dbo].[Estado]
GO

USE [MakroSoftDB2]
GO

INSERT INTO [dbo].[Fabricante]
           ([Fabricante]
           ,[Notas])
     VALUES
           (<Fabricante, nchar(50),>
           ,<Notas, nchar(200),>)
GO

USE [MakroSoftDB2]
GO

SELECT [PKInventario]
      ,[FKTransaccion]
      ,[FKProveedor]
      ,[FKBodega]
      ,[FKDetalle_VentaRemision]
      ,[FKEquipo]
      ,[Factura_Compra]
      ,[Ruta_Fotografia]
      ,[Fecha_Factura]
      ,[Fecha_Sistema]
      ,[Cantidad]
      ,[Valor_Unidad]
      ,[Subtotal]
      ,[IVA]
      ,[Total]
      ,[Observaciones]
      ,[Cantidad_Recibida]
      ,[Fecha_Mmto]
      ,[Planilla_Mmto]
      ,[Actvo]
      ,[Notas]
  FROM [dbo].[Inventario]
GO

USE [MakroSoftDB2]
GO

SELECT [PKMantenimiento]
      ,[FKEquipo]
      ,[FKTecnico]
      ,[FKEstado]
      ,[Planilla_Mmto]
      ,[Fecha]
      ,[Fecha_Sistema]
      ,[Notas]
  FROM [dbo].[Mantenimiento]
GO

USE [MakroSoftDB2]
GO
--ya la hice
SELECT [PKMunicipio]
      ,[FKDepartamento]
      ,[NombreMunicipio]
      ,[Notas]
  FROM [dbo].[Municipio]
GO

USE [MakroSoftDB2]
GO
--no la voy a meter
SELECT [PKNavegacion]
      ,[FKRol]
      ,[Navegacion]
      ,[Pagina]
      ,[EsPadre]
      ,[EsHijo]
      ,[Numero]
      ,[Notas]
  FROM [dbo].[Navegacion]
GO

USE [MakroSoftDB2]
GO

SELECT [PKProcesador]
      ,[NombreProcesador]
      ,[Notas]
  FROM [dbo].[Procesador]
GO

USE [MakroSoftDB2]
GO

SELECT [PKProveedor]
      ,[FKDepartamento]
      ,[FKMunicipio]
      ,[NombreProveedor]
      ,[Nit]
      ,[Telefono1]
      ,[Telefono2]
      ,[Celular]
      ,[NombreContacto]
      ,[NombreContacto2]
      ,[Servicios]
      ,[CorreoElectronico]
      ,[Paginaweb]
      ,[Activo]
      ,[Notas]
  FROM [dbo].[Proveedor]
GO

USE [MakroSoftDB2]
GO

SELECT [PKRemisiones]
      ,[FKCliente]
      ,[FKProveedor]
      ,[FKDepartamento]
      ,[FKMunicipio]
      ,[FKDetalle_Venta_Remision]
      ,[Fecha_Inicio]
      ,[Fecha_Fin]
      ,[Fecha_Sistema]
      ,[Valor_Unidad]
      ,[IVA_Unidad]
      ,[Valor_Total]
      ,[Subtotal]
      ,[IVA]
      ,[Total]
      ,[FVenta]
      ,[Cantidad]
      ,[Diferencia]
      ,[Diferencia_Precio]
      ,[Notas]
  FROM [dbo].[Remisiones]
GO

USE [MakroSoftDB2]
GO

--ya la tengo o eso creo
SELECT [PKRol]
      ,[Rol]
      ,[Activo]
      ,[Notas]
  FROM [dbo].[Roles]
GO

USE [MakroSoftDB2]
GO

SELECT [PKTecnico]
      ,[Nombre]
      ,[Activo]
      ,[Notas]
  FROM [dbo].[Tecnico]
GO

USE [MakroSoftDB2]
GO

SELECT [PKTipo]
      ,[Nombre]
      ,[Notas]
  FROM [dbo].[Tipo]
GO

USE [MakroSoftDB2]
GO

SELECT [PKTipoDocumento]
      ,[TipoDocumento]
      ,[Notas]
  FROM [dbo].[TipoDocumento]
GO

USE [MakroSoftDB2]
GO

SELECT [PKTransaccion]
      ,[FKEquipo]
      ,[FKRemision]
      ,[FKVentas]
      ,[Notas]
  FROM [dbo].[Transaccion]
GO

USE [MakroSoftDB2]
GO
--ya las tengo, revisar servidor
SELECT [PKUsuario]
      ,[FKDepartamento]
      ,[FKMunicipio]
      ,[FKRol]
      ,[NombreUsuario]
      ,[Password]
      ,[Telefono1]
      ,[Celular]
      ,[Ubicacion]
      ,[Activo]
      ,[CorreoElectronico]
      ,[Notas]
  FROM [dbo].[Usuario]
GO


USE [MakroSoftDB2]
GO

SELECT [PKVendedor]
      ,[FKDepartamento]
      ,[FKMunicipio]
      ,[FKTipoDocumento]
      ,[NombrePersona]
      ,[Direccion]
      ,[Telefono1]
      ,[Telefono2]
      ,[Celular]
      ,[Fotografia]
      ,[Activo]
      ,[Notas]
  FROM [dbo].[Vendedor]
GO

USE [MakroSoftDB2]
GO

SELECT [PKVentas]
      ,[FKVendedor]
      ,[FKTipoDocumento]
      ,[FKDetalleVenta_Remision]
      ,[NombreReferencia]
      ,[Nit]
      ,[Cedula]
      ,[Telefono1]
      ,[Telefono2]
      ,[Celular]
  FROM [dbo].[Ventas]
GO

