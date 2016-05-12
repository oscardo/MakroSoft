using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebMakroSoft.Administracion.Parametros.Usuario
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        private string NombreUsuario = string.Empty;
        private string Clave = string.Empty;
        private string Departamento = string.Empty;
        private string Municipio = string.Empty;
        private string Rol = string.Empty;
        private string Telefono = string.Empty;
        private string Celular = string.Empty;
        private string Correo = string.Empty;
        private string Notas = string.Empty;
        private string Ubicacion = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtCrearUsuario_Click(object sender, EventArgs e)
        {
            if (Comprobar(this.txtNombreUsuario.Text.ToString().ToLower(), this.txtClave.Text.ToString()) == 1)
            {
                Label11.Text = "Error al crear el usuario, ya existe o debe revisar la base de datos!";
            }
            else {
                Label11.Text = "Ya se ha creado correctamente, puede crear otro?";
                CreacionUsuario();
                this.txtNombreUsuario.Text = string.Empty;
                this.txtClave.Text = string.Empty;
                this.txtTelefono.Text = string.Empty;
                this.txtUbicacion.Text = string.Empty;
                this.txtCorreoEletronico.Text = string.Empty;
                this.txtNotas.Text = string.Empty;
                this.txtUbicacion.Text = string.Empty;

                NombreUsuario = string.Empty;
                Clave = string.Empty;
                Departamento = string.Empty;
                Municipio = string.Empty;
                Rol = string.Empty;
                Telefono = string.Empty;
                Celular = string.Empty;
                Correo = string.Empty;
                Notas = string.Empty;
                Ubicacion = string.Empty;
            }
        }

        private int CreacionUsuario()
        {
            int Valor = 0;
            NombreUsuario = this.txtNombreUsuario.Text;
            Clave = this.txtClave.Text;
            Departamento = this.DDDepartamento.SelectedValue.ToString();
            Municipio = this.DDMunicipio.SelectedValue.ToString();
            Rol = this.DDRol.SelectedValue.ToString();
            Telefono = this.txtTelefono.Text;
            Celular = this.txtUbicacion.Text;
            Correo = this.txtCorreoEletronico.Text;
            Notas = this.txtNotas.Text;
            Ubicacion = this.txtUbicacion.Text;
            using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
            {
                using (SqlCommand cmd = new SqlCommand("SPCrearUsuario", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@FKDepartamento", SqlDbType.NChar, 10).Value = Departamento;
                    cmd.Parameters.Add("@FKMunicipio", SqlDbType.NChar, 10).Value = Municipio;
                    cmd.Parameters.Add("@FKRol", SqlDbType.Int).Value = int.Parse(Rol);
                    cmd.Parameters.Add("@NombreUsuario", SqlDbType.NChar, 20).Value = NombreUsuario;
                    cmd.Parameters.Add("@Password", SqlDbType.NChar, 15).Value = Clave;
                    cmd.Parameters.Add("@Telefono1", SqlDbType.NChar, 15).Value = Telefono;
                    cmd.Parameters.Add("@Celular", SqlDbType.NChar, 15).Value = Celular;
                    cmd.Parameters.Add("@Ubicacion", SqlDbType.NChar, 50).Value = Ubicacion;
                    cmd.Parameters.Add("@Activo", SqlDbType.Bit).Value = true;
                    cmd.Parameters.Add("@CorreoElectronico", SqlDbType.NChar, 50).Value = Correo;
                    cmd.Parameters.Add("@Notas", SqlDbType.NChar, 200).Value = Notas;
                    conn.Open();
                    int result = (int)cmd.ExecuteNonQuery();
                    Valor = result;
                    conn.Close();
                }
            }
            return Valor;
        }


        private int Comprobar(string Usuario, string Clave)
        {
            int Valor = 0;
            using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion)) { 
            using (SqlCommand cmd = new SqlCommand("SPConsultaUsuario", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@NombreUsuario", SqlDbType.NVarChar, 50).Value = Usuario;
                cmd.Parameters.Add("@Password", SqlDbType.NVarChar, 15).Value = Clave;
                conn.Open();
                 int result = (int)cmd.ExecuteScalar();
                 Valor = result; 
                conn.Close();
            }
        }
            return Valor; 
        }
    }
}