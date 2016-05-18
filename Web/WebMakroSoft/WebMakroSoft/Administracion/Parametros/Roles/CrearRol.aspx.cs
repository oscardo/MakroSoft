using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
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
            if (BD.ValidarInformacion("SPConsultarRol_Valida", "@Rol", this.txtRol.Text.ToString()) == false)
            {
                BD.CrearRol(this.txtRol.Text.ToString(), this.cbActivo.Checked, this.txtNotas.Text.ToString());
                this.txtRol.Text = string.Empty;
                this.cbActivo.Checked = false;
                this.txtNotas.Text = string.Empty;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
            }
            else
            {
                lblError.Text = "La Referencia ya existe";
            }
        }

    }
}