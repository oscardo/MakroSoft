using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Inventario.Proveedor
{
    public partial class CrearProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearProveedor_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaProveedor_Valida", "@NombreProveedor", this.txtNombreProveedor.Text.ToString()) == false)
            {
                BD.CrearProveedor(this.DDDepartamento.SelectedValue.ToString(), this.DDMunicipio.SelectedValue.ToString(), this.txtNombreProveedor.Text, txtNit.Text, txtTelefono1.Text, txtAuxiliar.Text, txtCelular.Text, txtContacto1.Text, txtContacto2.Text, txtServicio.Text, txtCorreoEletronico.Text, txtPaginaWeb.Text, rbActivo.Checked, txtNotas.Text);
                this.txtNombreProveedor.Text = string.Empty;
                txtNit.Text = string.Empty;
                txtTelefono1.Text = string.Empty;
                txtAuxiliar.Text = string.Empty;
                txtCelular.Text = string.Empty;
                txtContacto1.Text = string.Empty;
                txtContacto2.Text = string.Empty;
                txtServicio.Text = string.Empty;
                txtCorreoEletronico.Text = string.Empty;
                txtPaginaWeb.Text = string.Empty;
                rbActivo.Checked = false;
                txtNotas.Text = string.Empty;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
            }
            else
            {
                lblError.Text = "La Referencia ya existe";
            }

        }
    }
}