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
                    this.TxtCodigoMun.Text = string.Empty;
                    this.txtNombreMunicipio.Text = string.Empty;
                    this.txtNotas.Text = string.Empty;

                    PKMunicipio = string.Empty;
                    FKDepartamento = string.Empty;
                    NombreMunicipio = string.Empty;
                    Notas = string.Empty;

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
                PKMunicipio = this.TxtCodigoMun.Text.ToString();
                FKDepartamento = this.DDDepar.SelectedValue.ToString();
                NombreMunicipio = this.txtNombreMunicipio.Text.ToString();
                Notas = this.txtNotas.Text.ToString();
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearMunicipios", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@PKMunicipio", SqlDbType.NChar, 10).Value = PKMunicipio;
                        cmd.Parameters.Add("@FKDepartamento", SqlDbType.NChar, 10).Value = FKDepartamento;
                        cmd.Parameters.Add("@NombreMunicipio", SqlDbType.NChar, 50).Value = NombreMunicipio;
                        cmd.Parameters.Add("@Notas", SqlDbType.NChar, 200).Value = Notas;
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