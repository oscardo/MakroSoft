using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Estado.Vendedor
{
    public partial class CrearVendedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearVendedor_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaVendedor_Valida", "@NombrePersona", this.txtVendedor.Text.ToString()) == false)
            {
                BD.CrearVendedor(this.DDDepartamento.SelectedValue.ToString(), this.DDMunicipio.SelectedValue.ToString(), this.DDTipoDocumento.SelectedValue.ToString(), txtNroDocumento.Text.ToString() , txtVendedor.Text, txtDireccion.Text, txtTelefono1.Text, txtTelefono2.Text, txtCelular.Text, "", rbActivo.Checked, txtNotas.Text);
                this.DDDepartamento.SelectedIndex = 1;
                this.DDTipoDocumento.SelectedIndex = 1;
                this.txtNroDocumento.Text = string.Empty;
                this.txtVendedor.Text = string.Empty;
                this.txtTelefono2.Text = string.Empty;
                this.txtTelefono1.Text = string.Empty;
                this.txtNotas.Text = string.Empty;
                this.txtDireccion.Text = string.Empty;
                this.txtCelular.Text = string.Empty;
                this.rbActivo.Checked = false;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
            }
            else
            {
                lblError.Text = "La Referencia ya existe";
            }
        }
    }
}