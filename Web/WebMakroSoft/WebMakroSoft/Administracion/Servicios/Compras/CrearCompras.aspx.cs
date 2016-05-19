using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Servicios.Compras
{
    public partial class CrearCompras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnCrearCompra_Click(object sender, EventArgs e)
        {
            //if (BD.ValidarInformacion("SPConsultaEstado_Valida", "@Estado", this.txtEstado.Text.ToString()) == false)
            //{
            Cabecera.CrearCompras(
                int.Parse(DDProveedor.SelectedValue.ToString())
                , DDDepartamento.SelectedValue.ToString()
                , DDMunicipio.SelectedValue.ToString()
                , ObtenerDetalleVenta_Remision()
                , ObtenerTransaccion()
                , txtNombreCompra.Text
                , txtFechaCompra.Text.ToString()
                , txtObservaciones.Text
                , txtGarantia.Text
                , txtGarantiaExt.Text
                , txtFacturaCompra.Text
                , ""
                , int.Parse(this.txtCantidad.Text)
                , float.Parse(txtValorUnidad.Text)
                , float.Parse(txtSubTotal.Text)
                , float.Parse(txtIVA.Text)
                , float.Parse(txtTotal.Text)
                , int.Parse(txtCantidadRecibida.Text)
                , float.Parse(txtSaldo.Text)
                , float.Parse(txtDescuento.Text)
                , rbActivo.Checked
                , txtNotas.Text);

                this.txtNombreCompra.Text = string.Empty;
                this.txtFechaCompra.Text = string.Empty;
                this.txtObservaciones.Text = string.Empty;
                this.txtGarantia.Text = string.Empty;
                this.txtGarantiaExt.Text = string.Empty;
                this.txtFacturaCompra.Text = string.Empty;
                this.txtCantidad.Text = string.Empty;
                this.txtValorUnidad.Text = string.Empty;
                this.txtSubTotal.Text = string.Empty;
                this.txtIVA.Text = string.Empty;
                this.txtTotal.Text = string.Empty;
                this.txtCantidadRecibida.Text = string.Empty;
                this.txtSaldo.Text = string.Empty;
                this.txtDescuento.Text = string.Empty;
                this.rbActivo.Checked = false;
                this.txtNotas.Text = string.Empty;


            this.txtTransaccion.Text = ObtenerCompras().ToString();
            this.lblErrorCompra.Text = "La referencia se ha creado satisfactoriamente";
        }

        private int ObtenerTransaccion()
        {
            return Obtener.ObtenerTransaccion() + 1;
        }

        private int ObtenerDetalleVenta_Remision()
        {
            return Obtener.ObtenerDetalleVenta_Remision() + 1;
        }

        private int ObtenerCompras()
        {
            return Obtener.ObtenerCompras();
        }

        protected void cbCPU_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbCPU.Checked == true)
            {
                this.txtDVCPU.Enabled = true;
                this.txtSerieCPU.Enabled = true;
                this.txtPlacaCPU.Enabled = true;
            }
            else
            {
                this.txtDVCPU.Text = string.Empty;
                this.txtSerieCPU.Text = string.Empty;
                this.txtPlacaCPU.Text = string.Empty;

                this.txtDVCPU.Enabled = false;
                this.txtSerieCPU.Enabled = false;
                this.txtPlacaCPU.Enabled = false;
            }
        }

        protected void cbMonitor_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbMonitor.Checked == true)
            {
                this.txtDVMonitor.Enabled = true;
                this.txtSerieMonitor.Enabled = true;
                this.txtPlacaMonitor.Enabled = true;
            }
            else
            {
                this.txtDVMonitor.Text = string.Empty;
                this.txtSerieMonitor.Text = string.Empty;
                this.txtPlacaMonitor.Text = string.Empty;

                this.txtDVMonitor.Enabled = false;
                this.txtSerieMonitor.Enabled = false;
                this.txtPlacaMonitor.Enabled = false;
            }
        }

        protected void cbImpresora_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbImpresora.Checked == true)
            {
                this.txtDVImpresora.Enabled = true;
                this.txtSerieImpresora.Enabled = true;
                this.txtPlacaImpresora.Enabled = true;
            }
            else
            {
                this.txtDVImpresora.Text = string.Empty;
                this.txtSerieImpresora.Text = string.Empty;
                this.txtPlacaImpresora.Text = string.Empty;

                this.txtDVImpresora.Enabled = false;
                this.txtSerieImpresora.Enabled = false;
                this.txtPlacaImpresora.Enabled = false;
            }
        }

        protected void cbDD_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbDD.Checked == true)
            {
                this.txtDVDD.Enabled = true;
                this.txtSerieDD.Enabled = true;
                this.txtPlacaDD.Enabled = true;
            }
            else
            {
                this.txtDVDD.Text = string.Empty;
                this.txtSerieDD.Text = string.Empty;
                this.txtPlacaDD.Text = string.Empty;

                this.txtDVDD.Enabled = false;
                this.txtSerieDD.Enabled = false;
                this.txtPlacaDD.Enabled = false;
            }
        }

        protected void cbScanner_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbScanner.Checked == true)
            {
                this.txtDVScanner.Enabled = true;
                this.txtSerieScanner.Enabled = true;
                this.txtPlacaScanner.Enabled = true;
            }
            else
            {
                this.txtDVScanner.Text = string.Empty;
                this.txtSerieScanner.Text = string.Empty;
                this.txtPlacaScanner.Text = string.Empty;

                this.txtDVScanner.Enabled = false;
                this.txtSerieScanner.Enabled = false;
                this.txtPlacaScanner.Enabled = false;
            }
        }

        protected void cbMemoria_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbMemoria.Checked == true)
            {
                this.txtDVMemoria.Enabled = true;
                this.txtSerieMemoria.Enabled = true;
                this.txtPlacaMemoria.Enabled = true;
            }
            else
            {
                this.txtDVMemoria.Text = string.Empty;
                this.txtSerieMemoria.Text = string.Empty;
                this.txtPlacaMemoria.Text = string.Empty;

                this.txtDVMemoria.Enabled = false;
                this.txtSerieMemoria.Enabled = false;
                this.txtPlacaMemoria.Enabled = false;
            }
        }

        protected void cbTeclado_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbTeclado.Checked == true)
            {
                this.txtDVTeclado.Enabled = true;
            }
            else
            {
                this.txtDVTeclado.Text = string.Empty;
                this.txtDVTeclado.Enabled = false;
            }
        }

        protected void cbMouse_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbMouse.Checked == true)
            {
                this.txtDVMouse.Enabled = true;
            }
            else
            {
                this.txtDVMouse.Text = string.Empty;
                this.txtDVMouse.Enabled = false;
            }
        }

        protected void cbOffice_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbOffice.Checked == true)
            {
                this.txtDVOffice.Enabled = true;
                this.txtDVSerialOffice.Enabled = true;
            }
            else
            {
                this.txtDVSerialOffice.Text = string.Empty;
                this.txtDVSerialOffice.Enabled = false;

                this.txtDVOffice.Text = string.Empty;
                this.txtDVOffice.Enabled = false;
            }
        }

        protected void cbSO_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbSO.Checked == true)
            {
                this.txtDVSO.Enabled = true;
                this.txtDVSerialSO.Enabled = true;
            }
            else
            {
                this.txtDVSO.Text = string.Empty;
                this.txtDVSO.Enabled = false;

                this.txtDVSerialSO.Text = string.Empty;
                this.txtDVSerialSO.Enabled = false;
            }
        }

        protected void cbCorreo_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbCorreo.Checked == true)
            {
                this.txtDVCorreo.Enabled = true;
            }
            else
            {
                this.txtDVCorreo.Text = string.Empty;
                this.txtDVCorreo.Enabled = false;
            }
        }

        protected void cbAntivirus_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbAntivirus.Checked == true)
            {
                this.txtDVAntivirus.Enabled = true;
                this.txtDVSerialAntivirus.Enabled = true;
            }
            else
            {
                this.txtDVAntivirus.Text = string.Empty;
                this.txtDVAntivirus.Enabled = false;

                this.txtDVSerialAntivirus.Text = string.Empty;
                this.txtDVSerialAntivirus.Enabled = false;
            }
        }

        protected void cbDVD_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cbDVD.Checked == true)
            {
                this.txtDVDVD.Enabled = true;
                this.txtSeriaDVD.Enabled = true;
                this.txtPlacaDVD.Enabled = true;
            }
            else
            {
                this.txtDVDVD.Enabled = false;
                this.txtSeriaDVD.Enabled = false;
                this.txtPlacaDVD.Enabled = false;

                this.txtDVDVD.Text = string.Empty;
                this.txtSeriaDVD.Text = string.Empty;
                this.txtPlacaDVD.Text = string.Empty;
            }
        }

        protected void BtnCrearDetalle_Click(object sender, EventArgs e)
        {
            // @FKTransaccion
            //,@Dependencia
            //,@Contactar
            //,@Fecha_Entrada
            //,@Direccion
            //,@Piso
            //,@Telefono
            //,@Fecha_Salida
            //,@CPU
            //,@NCPU
            //,@SerieCPU
            //,@PlacaCPU
            //,@Monitor
            //,@NMonitor
            //,@SerieMonitor
            //,@PlacaMonitor
            //,@Impresora
            //,@NImpresora
            //,@SerieImpresora
            //,@PlacaImpresora
            //,@DVD
            //,@NDVD
            //,@SerieDVD
            //,@PlacaDVD
            //,@DiscoDuro
            //,@NDiscoDuro
            //,@SerieDD
            //,@PlacaDD
            //,@Teclado
            //,@NTeclado
            //,@Mouse
            //,@NMouse
            //,@Scanner
            //,@NScanner
            //,@SerieScanner
            //,@PlacaScanner
            //,@Office
            //,@NOffice
            //,@Clave_Office
            //,@Memoria
            //,@NMemoria
            //,@Sistema_Operativo
            //,@NSistema_Operativo
            //,@Clave_SO
            //,@Correo
            //,@Correo_Electronico
            //,@Antivirus
            //,@NVAntivirus
            //,@Clave_Antivirus
            //,@Conexion_Red
            //,@Otro
            //,@Otros_NoReferenciado
            //,@Nombre_Reporta
            //,@Descripcion
            //,@Descripcion_Detallada
            //,@Preventivo
            //,@Correctivo
            //,@Observaciones
            //,@Fecha_Sistema
            //,@Valor_Unidad
            //,@IVA_Unidad
            //,@Retencion_Unidad
            //,@Valor_Total
            //,@IVA_Total
            //,@SubTotal
            //,@Retencion_Total
            //,@Notas
            DateTime FechaSistema = DateTime.Now;
            Detalle.CrearDetalleVenta_Remision(
                   int.Parse(txtTransaccion.Text)
                 , txtDVDependencia.Text
                 , txtDVContactar.Text
                 , DateTime.Parse(txtDVFechaEntrada.Text)
                 , txtDVDireccion.Text
                 , txtDVPiso.Text
                 , txtDVTelefono.Text
                 , DateTime.Parse(txtDVFechaSalida.Text)
                 , cbCPU.Checked
                 , txtDVCPU.Text
                 , txtSerieCPU.Text
                 , txtPlacaCPU.Text
                 , cbMonitor.Checked
                 , txtDVMonitor.Text
                 , txtSerieMonitor.Text
                 , txtPlacaMonitor.Text
                 , cbImpresora.Checked
                 , txtDVImpresora.Text
                 , txtSerieImpresora.Text
                 , txtPlacaImpresora.Text
                 , cbDVD.Checked
                 , this.txtDVDVD.Text
                 , txtSeriaDVD.Text
                 , txtPlacaDVD.Text
                 , cbDD.Checked
                 , txtDVDD.Text
                 , txtSerieDD.Text
                 , txtPlacaDD.Text
                 , cbTeclado.Checked
                 , txtDVTeclado.Text
                 , cbMouse.Checked
                 , txtDVMouse.Text
                 , cbScanner.Checked
                 , txtDVScanner.Text
                 , txtSerieScanner.Text
                 , txtPlacaScanner.Text
                 , cbOffice.Checked
                 , txtDVOffice.Text
                 , txtDVSerialOffice.Text
                 , cbMemoria.Checked
                 , txtDVMemoria.Text
                 , cbSO.Checked
                 , txtDVSO.Text
                 , txtDVSerialSO.Text
                 , cbCorreo.Checked
                 , txtDVCorreo.Text
                 , cbAntivirus.Checked
                 , txtDVAntivirus.Text
                 , txtDVSerialAntivirus.Text
                 , cbConexionRed.Checked
                 , txtDVOtros.Text
                 , txtDVOtro2.Text
                 , txtDVNombreReporta.Text
                 , txtDVDescripcion.Text
                 , txtDVDescripcionDet1.Text
                 , cbPreventivo.Checked
                 , cbCorrectivo.Checked
                 , txtDVObservaciones.Text
                 , FechaSistema
                 , float.Parse(txtDVValorUnidad.Text)
                 , float.Parse(txtDVIVAUnidad.Text)
                 , float.Parse(txtDVRetencionUnidad.Text)
                 , float.Parse(txtDVValorTotal.Text)
                 , float.Parse(txtDVIVATotal.Text)
                 , float.Parse(txtDVSubtotal.Text)
                 , float.Parse(txtDVRetencionTotal.Text)
                 , txtDVNotas.Text
                );




                 txtTransaccion.Text = string.Empty;
                 txtDVDependencia.Text = string.Empty;
                 txtDVContactar.Text = string.Empty;
                 txtDVFechaEntrada.Text = string.Empty;
                 txtDVDireccion.Text = string.Empty;
                 txtDVPiso.Text = string.Empty;
                 txtDVTelefono.Text = string.Empty;
                 txtDVFechaSalida.Text = string.Empty;
                 cbCPU.Checked = false;
                 txtDVCPU.Text = string.Empty;
                 txtSerieCPU.Text = string.Empty;
                 txtPlacaCPU.Text = string.Empty;
                 cbMonitor.Checked = false;
                 txtDVMonitor.Text = string.Empty;
                 txtSerieMonitor.Text = string.Empty;
                 txtPlacaMonitor.Text = string.Empty;
                 cbImpresora.Checked = false;
                 txtDVImpresora.Text = string.Empty;
                 txtSerieImpresora.Text = string.Empty;
                 txtPlacaImpresora.Text = string.Empty;
                 cbDVD.Checked = false;
                 this.txtDVDVD.Text = string.Empty;
                 txtSeriaDVD.Text = string.Empty;
                 txtPlacaDVD.Text = string.Empty;
                 cbDD.Checked = false;
                 txtDVDD.Text = string.Empty;
                 txtSerieDD.Text = string.Empty;
                 txtPlacaDD.Text = string.Empty;
                 cbTeclado.Checked = false;
                 txtDVTeclado.Text = string.Empty;
                 cbMouse.Checked = false;
                 txtDVMouse.Text = string.Empty;
                 cbScanner.Checked = false;
                 txtDVScanner.Text = string.Empty;
                 txtSerieScanner.Text = string.Empty;
                 txtPlacaScanner.Text = string.Empty;
                 cbOffice.Checked = false;
                 txtDVOffice.Text = string.Empty;
                 txtDVSerialOffice.Text = string.Empty;
                 cbMemoria.Checked = false;
                 txtDVMemoria.Text = string.Empty;
                 cbSO.Checked = false;
                 txtDVSO.Text = string.Empty;
                 txtDVSerialSO.Text = string.Empty;
                 cbCorreo.Checked = false;
                 txtDVCorreo.Text = string.Empty;
                 cbAntivirus.Checked = false;
                 txtDVAntivirus.Text = string.Empty;
                 txtDVSerialAntivirus.Text = string.Empty;
                 cbConexionRed.Checked = false;
                 txtDVOtros.Text = string.Empty;
                 txtDVOtro2.Text = string.Empty;
                 txtDVNombreReporta.Text = string.Empty;
                 txtDVDescripcion.Text = string.Empty;
                 txtDVDescripcionDet1.Text = string.Empty;
                 cbPreventivo.Checked = false;
                 cbCorrectivo.Checked = false;
                 txtDVObservaciones.Text = string.Empty;
                 txtDVValorUnidad.Text = string.Empty;
                 txtDVIVAUnidad.Text = string.Empty;
                 txtDVRetencionUnidad.Text = string.Empty;
                 txtDVValorTotal.Text = string.Empty;
                 txtDVIVATotal.Text = string.Empty;
                 txtDVSubtotal.Text = string.Empty;
                 txtDVRetencionTotal.Text = string.Empty;
                 txtDVNotas.Text = string.Empty;

            int intCompras = Obtener.ObtenerCompras();
            BD.CrearTransaccion("0", "0", "0", intCompras.ToString(), "Compras");
            int stTransaccion = Obtener.ObtenerTransaccion();
        }
    }
}