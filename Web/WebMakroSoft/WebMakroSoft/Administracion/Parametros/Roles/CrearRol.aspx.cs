using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebMakroSoft.Administracion.Parametros.Roles
{
    public partial class CrearRol : System.Web.UI.Page
    {
        private string PKRol = string.Empty;
        private string Rol = string.Empty;
        private string Activo = string.Empty;
        private string Notas = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearRol_Click(object sender, EventArgs e)
        {
            if (Comprobar(this.txtRol.Text.ToString()) == 1)
            {
                lblError.Text = "Error al crear el usuario, ya existe o debe revisar la base de datos!";
            }
            else
            {
                if (Creacion() == -1)
                {
                    PKRol = string.Empty;
                    Rol = string.Empty;
                    Activo = string.Empty;
                    Notas = string.Empty;

                    this.txtNotas.Text = string.Empty;
                    this.txtRol.Text = string.Empty;
                    
                    lblError.Text = "Ya se ha creado correctamente, puede crear otro?";
                }
                else
                {
                    lblError.Text = "Error en la creación del departamento";
                }
            }
        }

        private int Creacion()
        {
            int Valor = 0;
            try
            {
                Rol = this.txtRol.Text;
                Activo = this.cbActivo.Text;
                Notas = this.txtNotas.Text.ToString();
                
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearMunicipios", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Rol", SqlDbType.NChar, 10).Value = Rol;
                        cmd.Parameters.Add("@Activo", SqlDbType.NChar, 10).Value = Activo;
                        cmd.Parameters.Add("@Notas", SqlDbType.NChar, 50).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        Valor = result;
                        conn.Close();
                    }
                }
            }//fin try
            catch (Exception E)
            {
                lblError.Text = "Error: " + E.Message.ToString() + " Datos: " + E.Data.ToString();
            }
            return Valor;
        }

        private int Comprobar(string NRol)
        {
            int Valor = 0;
            try
            {
            using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
            {
                using (SqlCommand cmd = new SqlCommand("SPConsultaRol", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Rol", SqlDbType.NVarChar, 50).Value = NRol;
                    conn.Open();
                    int result = (int)cmd.ExecuteScalar();
                    Valor = result;
                    conn.Close();
                }
            }
            }//fin de try
            catch (Exception E)
            {
                lblError.Text = "Error en la creación del departamento";
            }
            return Valor;
        }
    }
}