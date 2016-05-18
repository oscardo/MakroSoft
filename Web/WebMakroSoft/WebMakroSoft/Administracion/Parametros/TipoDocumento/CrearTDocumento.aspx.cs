using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Parametros.TipoDocumento
{
    public partial class CrearTDocumento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearDocumento_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaTipoDocumento_Valida", "@TipoDocumento", this.txtTipoDocumento.Text.ToString()) == false)
            {
                BD.CrearTipoDocumento(this.txtTipoDocumento.Text.ToString(), this.txtNotas.Text.ToString());
                this.txtTipoDocumento.Text = string.Empty;
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