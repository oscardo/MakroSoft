using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;

namespace WebMakroSoft.Administracion.Servicios.Equipo
{
    public partial class CrearEquipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearEquipo_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaEquipo_Valida", "@NombreEquipo", this.txtNombreEquipo.Text.ToString()) == false)
            {
                BD.CrearEquipo(int.Parse(DDCompra.SelectedValue.ToString())
                    , int.Parse(DDTipo.SelectedValue.ToString())
                    , int.Parse(DDFabricante.SelectedValue.ToString())
                    , int.Parse(DDProcesador.SelectedValue.ToString())
                    , int.Parse(DDCliente.SelectedValue.ToString())
                    , this.txtNombreEquipo.Text.ToString()
                    , this.txtSO.Text.ToString()
                    , this.txtDescripcion.Text.ToString()
                    , this.txtSerial.Text.ToString()
                    , this.txtBoard.Text.ToString()
                    , this.txtRAM.Text.ToString()
                    , this.txtDD.Text.ToString()
                    , this.txtMouse.Text.ToString()
                    , this.txtSerialSO.Text.ToString()
                    , this.txtOffice.Text.ToString()
                    , this.txtSerialAntivirus.Text.ToString()
                    , this.txtSerial1.Text.ToString()
                    , this.txtSerial2.Text.ToString()
                    , this.txtSerial3.Text.ToString()
                    , int.Parse(txtCantidad.Text.ToString())
                    , this.rbActivo.Checked
                    , this.txtNotas.Text.ToString()
                    );
                    this.txtNombreEquipo.Text = String.Empty;
                    this.txtSO.Text = String.Empty;
                    this.txtDescripcion.Text = String.Empty;
                    this.txtSerial.Text = String.Empty;
                    this.txtBoard.Text = String.Empty;
                    this.txtRAM.Text = String.Empty;
                    this.txtDD.Text = String.Empty;
                    this.txtMouse.Text = String.Empty;
                    this.txtSerialSO.Text = String.Empty;
                    this.txtOffice.Text = String.Empty;
                    this.txtSerialAntivirus.Text = String.Empty;
                    this.txtSerial1.Text = String.Empty;
                    this.txtSerial2.Text = String.Empty;
                    this.txtSerial3.Text = String.Empty;
                    this.txtCantidad.Text = String.Empty;
                    this.rbActivo.Checked = false;
                    this.txtNotas.Text = String.Empty;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
            }
            else
            {
                lblError.Text = "La Referencia ya existe";
            }
        }
    }
}