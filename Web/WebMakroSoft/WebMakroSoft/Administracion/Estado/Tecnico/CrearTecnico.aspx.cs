using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Estado.Tecnico
{
    public partial class CrearTecnico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearTecnico_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaTecnico_Valida", "@Nombre", this.txtNombreTecnico.Text.ToString()) == false)
            {
                BD.CrearTecnico(this.txtNombreTecnico.Text.ToString(), this.RbActivo.Checked, this.txtNotas.Text.ToString());
                this.txtNombreTecnico.Text = string.Empty;
                this.RbActivo.Checked = false;
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