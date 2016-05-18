using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
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
            if (BD.ValidarInformacion("SPConsultaUsuario_Valida", "@NombreUsuario", this.txtNombreUsuario.Text.ToString()) == false)
            {
                BD.CrearUsuario(DDDepartamento.SelectedValue.ToString(), DDMunicipio.SelectedValue.ToString(), DDRol.SelectedValue.ToString(), txtNombreUsuario.Text, txtClave.Text, txtTelefono.Text, txtCelular.Text, txtUbicacion.Text, true, txtCorreoEletronico.Text, txtNotas.Text);
                this.txtNombreUsuario.Text = string.Empty;
                this.txtClave.Text = string.Empty;
                this.txtTelefono.Text = string.Empty;
                this.txtUbicacion.Text = string.Empty;
                this.txtCorreoEletronico.Text = string.Empty;
                this.txtNotas.Text = string.Empty;
                this.txtUbicacion.Text = string.Empty;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
            }
            else
            {
                lblError.Text = "La Referencia ya existe";
            }
        }


    }
}