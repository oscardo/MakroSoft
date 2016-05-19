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

        /// <summary>
        /// Crear Usuario
        /// </summary>
        /// <param name="FKDepartamento">Departamento</param>
        /// <param name="FKMunicipio">Municipio</param>
        /// <param name="FKRol">Rol</param>
        /// <param name="NombreUsuario">Nombre Usuario</param>
        /// <param name="Password">Password</param>
        /// <param name="Telefono1">Telefono1</param>
        /// <param name="Celular">Celular</param>
        /// <param name="Ubicacion">Ubicacion</param>
        /// <param name="Activo">Activo</param>
        /// <param name="CorreoElectronico">CorreoElectronico</param>
        /// <param name="Notas">Notas</param>
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
        /// Crea Mantenimiento
        /// </summary>
        /// <param name="FKEquipo"></param>
        /// <param name="FKTecnico"></param>
        /// <param name="FKEstado"></param>
        /// <param name="Planilla_Mmto"></param>
        /// <param name="Fecha"></param>
        /// <param name="Fecha_Final"></param>
        /// <param name="Notas"></param>
        public static void CrearMantenimiento(
            int FKEquipo 
           , int FKTecnico 
           , int FKEstado 
           , string Planilla_Mmto 
           , string Fecha 
           , string Fecha_Final
           , string Notas 
            )
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearUsuario", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKEquipo", SqlDbType.Int).Value = FKEquipo;
                        cmd.Parameters.Add("@FKTecnico", SqlDbType.Int).Value = FKTecnico;
                        cmd.Parameters.Add("@FKEstado", SqlDbType.Int).Value = FKEstado;
                        cmd.Parameters.Add("@Planilla_Mmto", SqlDbType.NChar,50).Value = Planilla_Mmto;
                        cmd.Parameters.Add("@Fecha", SqlDbType.DateTime).Value = DateTime.Parse(Fecha);
                        cmd.Parameters.Add("@Fecha_Final", SqlDbType.DateTime).Value = DateTime.Parse(Fecha_Final);
                        cmd.Parameters.Add("@Notas", SqlDbType.Text).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Crear Mantenimiento");
            }
        }

        /// <summary>
        /// Crear Ventas
        /// </summary>
        /// <param name="FKVendedor">FKVendedor</param>
        /// <param name="FKTipoDocumento">FKTipoDocumento</param>
        /// <param name="FKDetalleVenta_Remision">FKDetalleVenta_Remision</param>
        /// <param name="NombreReferencia">Nombre Referencia</param>
        /// <param name="Nit">Nit</param>
        /// <param name="Cedula">Cedula</param>
        /// <param name="Telefono1">Telefono1</param>
        /// <param name="Telefono2">Telefono2</param>
        /// <param name="Celular">Celular</param>
        /// <param name="notas">notas</param>
        public static void CrearVentas(
             int FKVendedor 
           , int FKTipoDocumento 
           , int FKDetalleVenta_Remision 
           , string NombreReferencia 
           , string Nit
           , string Cedula 
           , string Telefono1 
           , string Telefono2 
           , string Celular 
           , string notas 
            )
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearVentas", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKVendedor", SqlDbType.Int).Value = FKVendedor;
                        cmd.Parameters.Add("@FKTipoDocumento", SqlDbType.Int).Value = FKTipoDocumento;
                        cmd.Parameters.Add("@FKDetalleVenta_Remision", SqlDbType.Int).Value = FKDetalleVenta_Remision;
                        cmd.Parameters.Add("@NombreReferencia", SqlDbType.NChar, 50).Value = NombreReferencia;
                        cmd.Parameters.Add("@Nit", SqlDbType.NChar,50).Value = Nit;
                        cmd.Parameters.Add("@Cedula", SqlDbType.NChar,15).Value = Cedula;
                        cmd.Parameters.Add("@Telefono1", SqlDbType.NChar,15).Value = Telefono1;
                        cmd.Parameters.Add("@Telefono2", SqlDbType.NChar,15).Value = Telefono2;
                        cmd.Parameters.Add("@Celular", SqlDbType.NChar,15).Value = Celular;
                        cmd.Parameters.Add("@notas", SqlDbType.NChar,200).Value = notas;
                        conn.Open();
                            int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Crear Ventas");
            }
        }

        /// <summary>
        /// Crear Cliente
        /// </summary>
        /// <param name="FKDepartamento">Departamento</param>
        /// <param name="FKMunicipio">Municipio</param>
        /// <param name="NombreCliente">Nombre Cliente</param>
        /// <param name="Nit">Nit</param>
        /// <param name="Telefono1">Telefono1</param>
        /// <param name="Telefono2">Telefono2</param>
        /// <param name="Celular">Celular</param>
        /// <param name="Direccion">Direccion</param>
        /// <param name="NombreRepLegal">Nombre Rep Legal</param>
        /// <param name="Fecha">Fecha</param>
        /// <param name="Correo_Electronico">Correo Electronico</param>
        /// <param name="PaginaWeb">Pagina Web</param>
        /// <param name="Activo">Activo</param>
        /// <param name="Notas">Notas</param>
        public static void CrearCliente(
             string FKDepartamento 
           , string FKMunicipio 
           , string NombreCliente 
           , string Nit 
           , string Telefono1 
           , string Telefono2 
           , string Celular 
           , string Direccion 
           , string NombreRepLegal 
           , string Fecha 
           , string Correo_Electronico 
           , string PaginaWeb 
           , bool Activo 
           , string Notas 
            )
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearCliente", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKDepartamento", SqlDbType.NChar, 10).Value = FKDepartamento;
                        cmd.Parameters.Add("@FKMunicipio", SqlDbType.NChar , 10).Value = FKMunicipio;
                        cmd.Parameters.Add("@NombreCliente", SqlDbType.NChar , 50).Value = NombreCliente;
                        cmd.Parameters.Add("@Nit", SqlDbType.NChar , 15).Value = Nit;
                        cmd.Parameters.Add("@Telefono1", SqlDbType.NChar , 15).Value = Telefono1;
                        cmd.Parameters.Add("@Telefono2", SqlDbType.NChar , 15).Value = Telefono2;
                        cmd.Parameters.Add("@Celular", SqlDbType.NChar , 15).Value = Celular;
                        cmd.Parameters.Add("@Direccion", SqlDbType.NChar , 50).Value = Direccion;
                        cmd.Parameters.Add("@NombreRepLegal", SqlDbType.NChar , 50).Value = NombreRepLegal;
                        if (Fecha == "") Fecha = DateTime.Now.ToString();
                        cmd.Parameters.Add("@Fecha", SqlDbType.DateTime).Value = DateTime.Parse(Fecha);
                        cmd.Parameters.Add("@Correo_Electronico", SqlDbType.NChar , 50).Value = Correo_Electronico;
                        cmd.Parameters.Add("@PaginaWeb", SqlDbType.NChar , 50).Value = PaginaWeb;
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
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Crear Cliente");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="FKCompras"></param>
        /// <param name="FKTipo"></param>
        /// <param name="FKFabricante"></param>
        /// <param name="FKProcesador"></param>
        /// <param name="FKCliente"></param>
        /// <param name="NombreEquipo"></param>
        /// <param name="Sistema_Operativo"></param>
        /// <param name="Descripcion"></param>
        /// <param name="Serial"></param>
        /// <param name="Board"></param>
        /// <param name="RAM"></param>
        /// <param name="DiscoDuro"></param>
        /// <param name="Mouse"></param>
        /// <param name="Clave_Windows"></param>
        /// <param name="Clave_Office"></param>
        /// <param name="Clave_Antivirus"></param>
        /// <param name="Clave_Otros"></param>
        /// <param name="Clave_Otros2"></param>
        /// <param name="Clave_Otros3"></param>
        /// <param name="Cantidad"></param>
        /// <param name="Activo"></param>
        /// <param name="Notas"></param>
        public static void CrearEquipo(
                    int FKCompras
                  , int FKTipo 
                  , int FKFabricante 
                  , int FKProcesador 
                  , int FKCliente 
                  , string NombreEquipo 
                  , string Sistema_Operativo 
                  , string Descripcion 
                  , string Serial 
                  , string Board 
                  , string RAM 
                  , string DiscoDuro 
                  , string Mouse 
                  , string Clave_Windows 
                  , string Clave_Office 
                  , string Clave_Antivirus 
                  , string Clave_Otros 
                  , string Clave_Otros2 
                  , string Clave_Otros3 
                  , int Cantidad 
                  , bool Activo 
                  , string Notas 
            )
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearCliente", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKCompras", SqlDbType.Int).Value = FKCompras;
                        cmd.Parameters.Add("@FKTipo", SqlDbType.Int).Value = FKTipo;
                        cmd.Parameters.Add("@FKFabricante", SqlDbType.Int).Value = FKFabricante;
                        cmd.Parameters.Add("@FKProcesador", SqlDbType.Int).Value = FKProcesador;
                        cmd.Parameters.Add("@FKCliente", SqlDbType.Int).Value = FKCliente;
                        cmd.Parameters.Add("@NombreEquipo", SqlDbType.NChar ,50).Value = NombreEquipo;
                        cmd.Parameters.Add("@Sistema_Operativo", SqlDbType.NChar ,50).Value = Sistema_Operativo;
                        cmd.Parameters.Add("@Descripcion", SqlDbType.NChar ,50).Value = Descripcion;
                        cmd.Parameters.Add("@Serial", SqlDbType.NChar ,50).Value = Serial;
                        cmd.Parameters.Add("@Board", SqlDbType.NChar ,50).Value = Board;
                        cmd.Parameters.Add("@RAM", SqlDbType.NChar ,10).Value = RAM;
                        cmd.Parameters.Add("@DiscoDuro", SqlDbType.NChar ,10).Value = DiscoDuro;
                        cmd.Parameters.Add("@Mouse", SqlDbType.NChar ,10).Value = Mouse;
                        cmd.Parameters.Add("@Clave_Windows", SqlDbType.NChar ,50).Value = Clave_Windows;
                        cmd.Parameters.Add("@Clave_Office", SqlDbType.NChar ,50).Value = Clave_Office;
                        cmd.Parameters.Add("@Clave_Antivirus", SqlDbType.NChar ,50).Value = Clave_Antivirus;
                        cmd.Parameters.Add("@Clave_Otros", SqlDbType.NChar ,50).Value = Clave_Otros;
                        cmd.Parameters.Add("@Clave_Otros2", SqlDbType.NChar ,50).Value = Clave_Otros2;
                        cmd.Parameters.Add("@Clave_Otros3", SqlDbType.NChar ,30).Value = Clave_Otros3;
                        cmd.Parameters.Add("@Cantidad", SqlDbType.Int).Value = Cantidad;
                        cmd.Parameters.Add("@Activo", SqlDbType.Bit).Value = Activo;
                        cmd.Parameters.Add("@Notas", SqlDbType.NChar ,200).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Crear Equipo");
            }
        }

        /// <summary>
        /// Crear Transaccion
        /// </summary>
        /// <param name="Equipo">Nro Equipo</param>
        /// <param name="Remision">Nro Remision</param>
        /// <param name="Ventas">Nro Venta</param>
        /// <param name="Notas">útiles</param>
        public static void CrearTransaccion(string Equipo, string Remision, string Ventas,string Compras, string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearTransaccion", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@FKEquipo", SqlDbType.Int).Value = int.Parse(Equipo);
                        cmd.Parameters.Add("@FKRemision", SqlDbType.Int).Value = int.Parse(Remision);
                        cmd.Parameters.Add("@FKVentas", SqlDbType.Int).Value = int.Parse(Ventas);
                        cmd.Parameters.Add("@FKCompra", SqlDbType.Int).Value = int.Parse(Compras);
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