using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace WebMakroSoft.Codigo
{
    public static class BD
    {
        /// <summary>
        /// ValidarInformacion
        /// </summary>
        /// <param name="ProcedimientoAlmacenado">a Validar</param>
        /// <param name="NombreParam">Nombre Parametro @Nombre</param>
        /// <param name="ValorParam">Valor Parametro 'Maria'</param>
        /// <returns>si hay alguna devuelve true, de lo contrario devuelve false</returns>
        public static bool ValidarInformacion(string ProcedimientoAlmacenado, string NombreParam, string ValorParam) {
            bool Valor = false;
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand(ProcedimientoAlmacenado, conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add(NombreParam, SqlDbType.NChar, 50).Value = ValorParam;
                        conn.Open();
                        int result = (int)cmd.ExecuteScalar();
                        if (result >= 1)
                            Valor = true;
                        else
                            Valor = false;
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), ProcedimientoAlmacenado);
            }
            return Valor;
        }




        /// <summary>
        /// crea Auditoria 
        /// </summary>
        /// <param name="Error">e.Data</param>
        /// <param name="Comentarios">e.Message</param>
        /// <param name="Linea">e.Source</param>
        /// <param name="Notas">Donde Sucede el error</param>
        public static void Auditoria(string Error, string Comentarios, string Linea, string Notas)
        {
            string Valor = "Error: " + Error.ToString() + " Comentarios: " + Comentarios.ToString() + " Línea: " + Linea.ToString();
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearAuditoria", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Accion", SqlDbType.Text).Value = Valor;
                        cmd.Parameters.Add("@Notas", SqlDbType.Text).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Auditoria");
            }
        }

        /// <summary>
        /// Creacion de Estado
        /// </summary>
        /// <param name="Estado">Nombre del estado</param>
        /// <param name="Notas">Parametro</param>
        public static void CrearEstado(string Estado, string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearEstado", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Estado", SqlDbType.Text).Value = Estado;
                        cmd.Parameters.Add("@Notas", SqlDbType.Text).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Estado");
            }
        }

        /// <summary>
        /// crea fabricante
        /// </summary>
        /// <param name="Fabricante"></param>
        /// <param name="Notas"></param>
        public static void CrearFabricante(string Fabricante, string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearFabricante", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Fabricante", SqlDbType.Text).Value = Fabricante;
                        cmd.Parameters.Add("@Notas", SqlDbType.Text).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Fabricante");
            }
        }
        
        /// <summary>
        /// Procesador
        /// </summary>
        /// <param name="NombreProcesador">Nombre del procesador</param>
        /// <param name="Notas">notas útiles</param>
        public static void CrearProcesador(string NombreProcesador, string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearProcesador", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@NombreProcesador", SqlDbType.Text).Value = NombreProcesador;
                        cmd.Parameters.Add("@Notas", SqlDbType.Text).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Procesador");
            }
        }

        /// <summary>
        /// Crea Técnico
        /// </summary>
        /// <param name="NombreTecnico">Nombre Tecnico</param>
        /// <param name="Activo">Activo o no</param>
        /// <param name="Notas">útiles</param>
        public static void CrearTecnico(string NombreTecnico,bool Activo, string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearTecnico", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Nombre", SqlDbType.NChar, 50).Value = NombreTecnico;
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
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Técnico");
            }
        }

        /// <summary>
        /// Crear Tipo
        /// </summary>
        /// <param name="NombreTipo">Definido</param>
        /// <param name="Notas">útiles</param>
        public static void CrearTipo(string NombreTipo, string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearTipo", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Nombre", SqlDbType.NChar, 50).Value = NombreTipo;
                        cmd.Parameters.Add("@Notas", SqlDbType.Text).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Tipo");
            }
        }


        /// <summary>
        /// Crear Transaccion
        /// </summary>
        /// <param name="Equipo">Nro Equipo</param>
        /// <param name="Remision">Nro Remision</param>
        /// <param name="Ventas">Nro Venta</param>
        /// <param name="Notas">útiles</param>
        public static void CrearTransaccion(string Equipo, string Remision, string Ventas, string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearTransaccion", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKEquipo", SqlDbType.Int).Value = Equipo;
                        cmd.Parameters.Add("@FKRemision", SqlDbType.Int).Value = Remision;
                        cmd.Parameters.Add("@FKVentas", SqlDbType.Int).Value = Ventas;
                        cmd.Parameters.Add("@Notas", SqlDbType.NChar, 200).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "CrearTransaccion");
            }
        }

    }
}