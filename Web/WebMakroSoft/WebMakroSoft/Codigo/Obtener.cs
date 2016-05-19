using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebMakroSoft.Codigo
{
    /// <summary>
    /// solo saca los datos de las tablas q se necesitan
    /// </summary>
    public static class Obtener
    {
        /// <summary>
        /// Obtiene el Valor almacenado en esa tabla
        /// </summary>
        /// <returns></returns>
        public static int ObtenerDetalleVenta_Remision()
        {
            int Valor = 0;
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("spObtenerDetalleVenta_Remision", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        conn.Open();
                        int result = (int)cmd.ExecuteScalar();
                        Valor = result;
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Obtener DetalleVenta_Remision");
            }
            return Valor;
        }
        /// <summary>
        /// obtiene el último número generado
        /// </summary>
        /// <returns></returns>
        public static int ObtenerCompras()
        {
            int Valor = 0;
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("spObtenerCompra", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        conn.Open();
                        int result = (int)cmd.ExecuteScalar();
                        Valor = result;
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Obtener Compras");
            }
            return Valor;
        }

        /// <summary>
        /// obtiene el último número generado
        /// </summary>
        /// <returns></returns>
        public static int ObtenerTransaccion()
        {
            int Valor = 0;
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("spObtenerTransaccion", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        conn.Open();
                        int result = (int)cmd.ExecuteScalar();
                        Valor = result;
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Obtener Transacción");
            }
            return Valor;
        }

        ///// <summary>
        ///// Obtiene el Valor almacenado en esa tabla
        ///// </summary>
        ///// <returns></returns>
        //public static int ObtenerTransaccion()
        //{
        //    int Valor = 0;
        //    try
        //    {
        //        using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
        //        {
        //            using (SqlCommand cmd = new SqlCommand("spObtenerTransaccion", conn))
        //            {
        //                cmd.CommandType = CommandType.StoredProcedure;
        //                conn.Open();
        //                int result = (int)cmd.ExecuteScalar();
        //                Valor = result;
        //                conn.Close();
        //            }
        //        }
        //    }
        //    catch (Exception e)
        //    {
        //        BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Obtener Transaccion");
        //    }
        //    return Valor;
        //}

    }
}