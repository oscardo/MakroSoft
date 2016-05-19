using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace WebMakroSoft.Codigo
{
    public static class Cabecera
    {
        /// <summary>
        /// Crear Compras
        /// </summary>
        /// <param name="FKProveedor"></param>
        /// <param name="FKDepartamento"></param>
        /// <param name="FKMunicipio"></param>
        /// <param name="FKDetalleVenta_Remision"></param>
        /// <param name="FKTransaccion"></param>
        /// <param name="NombreCompra"></param>
        /// <param name="Fecha_Compra"></param>
        /// <param name="Observaciones"></param>
        /// <param name="Garantia"></param>
        /// <param name="Exterdida_Garantia"></param>
        /// <param name="Factura_Compra"></param>
        /// <param name="Ruta_Fotografia"></param>
        /// <param name="Cantidad"></param>
        /// <param name="Valor_Unidad"></param>
        /// <param name="SubTotal"></param>
        /// <param name="IVA"></param>
        /// <param name="Total"></param>
        /// <param name="Cantidad_Recibida"></param>
        /// <param name="Saldo"></param>
        /// <param name="Descuento"></param>
        /// <param name="Activo"></param>
        /// <param name="Notas"></param>
        public static void CrearCompras(
                    int FKProveedor
                  , string FKDepartamento
                  , string FKMunicipio
                  , int FKDetalleVenta_Remision
                  , int FKTransaccion
                  , string NombreCompra
                  , string Fecha_Compra
                  , string Observaciones
                  , string Garantia
                  , string Exterdida_Garantia
                  , string Factura_Compra
                  , string Ruta_Fotografia
                  , int Cantidad
                  , float Valor_Unidad
                  , float SubTotal
                  , float IVA
                  , float Total
                  , int Cantidad_Recibida
                  , float Saldo
                  , float Descuento
                  , bool Activo
                  , string Notas
            )
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearCompras", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKProveedor", SqlDbType.Int).Value = FKProveedor;
                        cmd.Parameters.Add("@FKDepartamento", SqlDbType.NChar, 10).Value = FKDepartamento;
                        cmd.Parameters.Add("@FKMunicipio", SqlDbType.NChar, 10).Value = FKMunicipio;
                        cmd.Parameters.Add("@FKDetalleVenta_Remision", SqlDbType.Int).Value = FKDetalleVenta_Remision;
                        cmd.Parameters.Add("@FKTransaccion", SqlDbType.Int).Value = FKTransaccion;
                        cmd.Parameters.Add("@NombreCompra", SqlDbType.NChar, 50).Value = NombreCompra;
                        cmd.Parameters.Add("@Fecha_Compra", SqlDbType.DateTime).Value = DateTime.Parse(Fecha_Compra);
                        cmd.Parameters.Add("@Observaciones", SqlDbType.NChar, 200).Value = Observaciones;
                        cmd.Parameters.Add("@Garantia", SqlDbType.NChar, 50).Value = Garantia;
                        cmd.Parameters.Add("@Exterdida_Garantia", SqlDbType.NChar, 50).Value = Exterdida_Garantia;
                        cmd.Parameters.Add("@Factura_Compra", SqlDbType.NChar, 50).Value = Factura_Compra;
                        cmd.Parameters.Add("@Ruta_Fotografia", SqlDbType.NChar, 256).Value = Ruta_Fotografia;
                        cmd.Parameters.Add("@Cantidad", SqlDbType.Int).Value = Cantidad;
                        cmd.Parameters.Add("@Valor_Unidad", SqlDbType.Float, 18).Value = Valor_Unidad;
                        cmd.Parameters.Add("@SubTotal", SqlDbType.Float, 18).Value = SubTotal;
                        cmd.Parameters.Add("@IVA", SqlDbType.Float, 18).Value = IVA;
                        cmd.Parameters.Add("@Total", SqlDbType.Float, 18).Value = Total;
                        cmd.Parameters.Add("@Cantidad_Recibida", SqlDbType.Int).Value = Cantidad_Recibida;
                        cmd.Parameters.Add("@Saldo", SqlDbType.Float, 18).Value = Saldo;
                        cmd.Parameters.Add("@Descuento", SqlDbType.Float, 18).Value = Descuento;
                        cmd.Parameters.Add("@Activo", SqlDbType.Bit).Value = Activo;
                        cmd.Parameters.Add("@Notas", SqlDbType.Text).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Crear Compras");
            }
        }
    }
}