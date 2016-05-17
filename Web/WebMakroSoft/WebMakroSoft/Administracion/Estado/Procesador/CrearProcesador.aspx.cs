using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Estado.Procesador
{
    public partial class CrearProcesador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearProcesador_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaProcesador_Valida", "@NombreProcesador", this.txtNombreProcesador.Text.ToString()) == false)
            {
                BD.CrearProcesador(this.txtNombreProcesador.Text.ToString(), this.txtNotas.Text.ToString());
                this.txtNombreProcesador.Text = string.Empty;
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