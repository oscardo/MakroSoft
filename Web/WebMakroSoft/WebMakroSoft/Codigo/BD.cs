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
        /// Crear Rol
        /// </summary>
        /// <param name="Rol">Rol</param>
        /// <param name="Activo">Activo</param>
        /// <param name="Notas">Notas</param>
        public static void CrearRol(string Rol,bool Activo, string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearRoles", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Rol", SqlDbType.NChar, 50).Value = Rol;
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
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Tipo");
            }
        }


           
        public static void CrearUsuario(
            string FKDepartamento 
           ,string FKMunicipio 
           ,string FKRol 
           ,string NombreUsuario 
           ,string Password 
           ,string Telefono1 
           ,string Celular 
           ,string Ubicacion 
           ,bool Activo 
           ,string CorreoElectronico 
           ,string Notas 
            )
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearUsuario", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKDepartamento", SqlDbType.NChar, 10).Value = FKDepartamento;
                        cmd.Parameters.Add("@FKMunicipio", SqlDbType.NChar, 10).Value = FKMunicipio;
                        cmd.Parameters.Add("@FKRol", SqlDbType.Int).Value = FKRol;
                        cmd.Parameters.Add("@NombreUsuario", SqlDbType.NChar, 20).Value = NombreUsuario;
                        cmd.Parameters.Add("@Password", SqlDbType.NChar, 15).Value = Password;
                        cmd.Parameters.Add("@Telefono1", SqlDbType.NChar, 15).Value = Telefono1;
                        cmd.Parameters.Add("@Celular", SqlDbType.NChar, 15).Value = Celular;
                        cmd.Parameters.Add("@Ubicacion", SqlDbType.NChar, 50).Value = Ubicacion;
                        cmd.Parameters.Add("@Activo", SqlDbType.Bit).Value = Activo;
                        cmd.Parameters.Add("@CorreoElectronico", SqlDbType.NChar, 50).Value = CorreoElectronico;
                        cmd.Parameters.Add("@Notas", SqlDbType.NChar, 200).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Crear Usuario");
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


        /// <summary>
        /// Crear Vendedor
        /// </summary>
        /// <param name="FKDepartamento">Departamento</param>
        /// <param name="FKMunicipio">Municipio</param>
        /// <param name="FKTipoDocumento">Tipo Documento</param>
        /// <param name="NroDocumento">Nro Documento</param>
        /// <param name="NombrePersona">Nombre Persona</param>
        /// <param name="Direccion">Direccion</param>
        /// <param name="Telefono1">Telefono</param>
        /// <param name="Telefono2">Telefono</param>
        /// <param name="Celular">Celular</param>
        /// <param name="Fotografia">Fotografia</param>
        /// <param name="Activo">Activo</param>
        /// <param name="Notas">Notas</param>
        public static void CrearVendedor(string FKDepartamento , string FKMunicipio , string FKTipoDocumento , string NroDocumento, string NombrePersona , string Direccion , string Telefono1 , string Telefono2 , string Celular , string Fotografia , bool Activo , string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearVendedor", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKDepartamento", SqlDbType.NChar, 10).Value = FKDepartamento;
                        cmd.Parameters.Add("@fkmunicipio", SqlDbType.NChar, 10).Value = FKMunicipio;
                        cmd.Parameters.Add("@fktipodocumento", SqlDbType.Int).Value = FKTipoDocumento;
                        cmd.Parameters.Add("@NroDocumento", SqlDbType.NChar, 50).Value = NroDocumento;
                        cmd.Parameters.Add("@nombrepersona", SqlDbType.NChar, 50).Value = NombrePersona;
                        cmd.Parameters.Add("@direccion", SqlDbType.NChar, 50).Value = Direccion;
                        cmd.Parameters.Add("@telefono1", SqlDbType.NChar, 15).Value = Telefono1;
                        cmd.Parameters.Add("@telefono2", SqlDbType.NChar, 15).Value = Telefono2;
                        cmd.Parameters.Add("@celular", SqlDbType.NChar, 15).Value = Celular;
                        cmd.Parameters.Add("@fotografia", SqlDbType.NChar, 256).Value = Fotografia;
                        cmd.Parameters.Add("@activo", SqlDbType.Bit).Value = Activo;
                        cmd.Parameters.Add("@notas", SqlDbType.NChar, 200).Value = Notas;
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
        /// Crear Bodega
        /// </summary>
        /// <param name="FKDepartamento">Departamento</param>
        /// <param name="FKMunicipio">Municipio</param>
        /// <param name="NombreBodega">Nombre Bodega</param>
        /// <param name="Direccion">Direccion</param>
        /// <param name="Responsable1">Responsable1</param>
        /// <param name="Responsable2">Responsable2</param>
        /// <param name="Telefono1">Telefono1</param>
        /// <param name="Telefono2">Telefono2</param>
        /// <param name="Celular">Celular</param>
        /// <param name="Notas">Notas</param>
        public static void CrearBodega(
             string FKDepartamento 
           , string FKMunicipio 
           , string NombreBodega 
           , string Direccion 
           , string Responsable1 
           , string Responsable2 
           , string Telefono1 
           , string Telefono2 
           , string Celular 
           , string Notas 
            )
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearBodega", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKDepartamento", SqlDbType.NChar, 10).Value = FKDepartamento;
                        cmd.Parameters.Add("@FKMunicipio", SqlDbType.NChar,10).Value = FKMunicipio;
                        cmd.Parameters.Add("@NombreBodega", SqlDbType.NChar,50).Value = NombreBodega;
                        cmd.Parameters.Add("@Direccion", SqlDbType.NChar,50).Value = Direccion;
                        cmd.Parameters.Add("@Responsable1", SqlDbType.NChar,50).Value = Responsable1;
                        cmd.Parameters.Add("@Responsable2", SqlDbType.NChar,50).Value = Responsable2;
                        cmd.Parameters.Add("@Telefono1", SqlDbType.NChar,15).Value = Telefono1;
                        cmd.Parameters.Add("@Telefono2", SqlDbType.NChar,15).Value = Telefono2;
                        cmd.Parameters.Add("@Celular", SqlDbType.NChar,15).Value = Celular;
                        cmd.Parameters.Add("@Notas", SqlDbType.NChar,200).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "CrearBodega");
            }
        }

        /// <summary>
        /// Crear Proveedor
        /// </summary>
        /// <param name="FKDepartamento">Departamento</param>
        /// <param name="FKMunicipio">Municipio</param>
        /// <param name="NombreProveedor">Nombre Proveedor</param>
        /// <param name="Nit">nit</param>
        /// <param name="Telefono1">Telefono 1</param>
        /// <param name="Telefono2">Telefono 2</param>
        /// <param name="Celular">Celular</param>
        /// <param name="NombreContacto">Nombre Contacto</param>
        /// <param name="NombreContacto2">Nombre Contacto</param>
        /// <param name="Servicios">Servicios</param>
        /// <param name="CorreoElectronico">Correo Electronico</param>
        /// <param name="Paginaweb">Pagina web</param>
        /// <param name="Activo">Activo</param>
        /// <param name="Notas">Notas</param>
        public static void CrearProveedor(
             string FKDepartamento 
           , string FKMunicipio 
           , string NombreProveedor 
           , string Nit 
           , string Telefono1 
           , string Telefono2 
           , string Celular 
           , string NombreContacto 
           , string NombreContacto2 
           , string Servicios 
           , string CorreoElectronico 
           , string Paginaweb 
           , bool Activo 
           , string Notas 
            )
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearProveedor", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKDepartamento", SqlDbType.NChar, 10).Value = FKDepartamento;
                        cmd.Parameters.Add("@FKMunicipio", SqlDbType.NChar, 10).Value = FKMunicipio;
                        cmd.Parameters.Add("@NombreProveedor", SqlDbType.NChar, 50).Value = NombreProveedor;
                        cmd.Parameters.Add("@Nit", SqlDbType.NChar, 15).Value = Nit;
                        cmd.Parameters.Add("@Telefono1", SqlDbType.NChar, 15).Value = Telefono1;
                        cmd.Parameters.Add("@Telefono2", SqlDbType.NChar, 15).Value = Telefono2;
                        cmd.Parameters.Add("@Celular", SqlDbType.NChar, 15).Value = Celular;
                        cmd.Parameters.Add("@NombreContacto", SqlDbType.NChar, 50).Value = NombreContacto;
                        cmd.Parameters.Add("@NombreContacto2", SqlDbType.NChar, 50).Value = NombreContacto2;
                        cmd.Parameters.Add("@Servicios", SqlDbType.NChar, 200).Value = Servicios;
                        cmd.Parameters.Add("@CorreoElectronico", SqlDbType.NChar, 50).Value = CorreoElectronico;
                        cmd.Parameters.Add("@Paginaweb", SqlDbType.NChar, 50).Value = Paginaweb;
                        cmd.Parameters.Add("@Activo", SqlDbType.Bit).Value = Activo;
                        cmd.Parameters.Add("@Notas", SqlDbType.NChar, 200).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "CrearProveedor");
            }
        }

        /// <summary>
        /// Crear Tipo Documento
        /// </summary>
        /// <param name="TipoDocumento">Tipo Documento</param>
        /// <param name="Notas">Notas</param>
        public static void CrearTipoDocumento(string TipoDocumento, string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearTipoDocumento", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@TipoDocumento", SqlDbType.NChar, 50).Value = TipoDocumento;
                        cmd.Parameters.Add("@Notas", SqlDbType.Text).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Crear TipoDocumento");
            }
        }

    }
}