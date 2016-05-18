using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Inventario.Bodega
{
    public partial class CrearBodega : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearBodega_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaBodega_Valida", "@NombreBodega", this.txtNombreBodega.Text.ToString()) == false)
            {
                BD.CrearBodega(this.DDDepartamento.SelectedValue.ToString(), this.DDMunicipio.SelectedValue.ToString(), txtNombreBodega.Text.ToString(), this.txtDireccion.Text.ToString(), this.txtResponsable1.Text.ToString(), this.txtResponsable2.Text.ToString(), this.txtTelefono1.Text.ToString(), this.txtTelefono2.Text.ToString(), this.txtCelular.Text.ToString(), this.txtNotas.Text.ToString());
                this.txtCelular.Text = string.Empty;
                this.txtDireccion.Text = string.Empty;
                this.txtNombreBodega.Text = string.Empty;
                this.txtNotas.Text = string.Empty;
                this.txtResponsable1.Text = string.Empty;
                this.txtResponsable2.Text = string.Empty;
                this.txtTelefono1.Text = string.Empty;
                this.txtTelefono2.Text = string.Empty;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
            }
            else
            {
                lblError.Text = "La Referencia ya existe";
            }
        }
    }
}