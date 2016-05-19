<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearCompras.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Compras.CrearCompras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Crear Compras</p>
    <p>
        <asp:Wizard ID="wzInventario" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" FinishCompleteButtonText="Finalizar" FinishPreviousButtonText="Previo" StartNextButtonText="Siguiente">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Compras">
                    <table style="width:100%;">
                        <tr>
                            <td style="height: 47px">Proveedor:</td>
                            <td style="height: 47px">
                                <asp:DropDownList ID="DDProveedor" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreProveedor" DataValueField="PKProveedor">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreProveedor], [PKProveedor] FROM [Proveedor]"></asp:SqlDataSource>
                            </td>
                            <td style="height: 47px">&nbsp;</td>
                            <td style="height: 47px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Departamento:</td>
                            <td style="height: 13px">
                                <asp:DropDownList ID="DDDepartamento" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NombreDepartamento" DataValueField="PKDepartamento">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreDepartamento], [PKDepartamento] FROM [Departamento]"></asp:SqlDataSource>
                            </td>
                            <td style="height: 13px">Municipio:</td>
                            <td style="height: 13px">
                                <asp:DropDownList ID="DDMunicipio" runat="server" DataSourceID="SqlDataSource3" DataTextField="NombreMunicipio" DataValueField="PKMunicipio">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreMunicipio], [PKMunicipio] FROM [Municipio] WHERE ([FKDepartamento] = @FKDepartamento)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DDDepartamento" DefaultValue="01" Name="FKDepartamento" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>Nombre Compra:</td>
                            <td>
                                <asp:TextBox ID="txtNombreCompra" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>Factura Compra:</td>
                            <td>
                                <asp:TextBox ID="txtFacturaCompra" runat="server"></asp:TextBox>
                            </td>
                            <td>Fecha Compra:</td>
                            <td>
                                <asp:TextBox ID="txtFechaCompra" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 18px">Garantia:</td>
                            <td style="height: 18px">
                                <asp:TextBox ID="txtGarantia" runat="server" TextMode="DateTime"></asp:TextBox>
                            </td>
                            <td style="height: 18px">Cantidad:</td>
                            <td style="height: 18px">
                                <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Garantia expendida:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtGarantiaExt" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 13px">Fotografia:</td>
                            <td style="height: 13px">
                                <asp:FileUpload ID="FUFoto" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Valor Unidad:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtValorUnidad" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 13px">SubTotal:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtSubTotal" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Valor IVA:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtValorIVA" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 13px">Total:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Cantidad Recibida:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtCantidadRecibida" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                            <td style="height: 13px">Saldo:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtSaldo" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Descuento:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDescuento" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 13px">SubTotal:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtSubTotal1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Valor Unidad:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtValorUnidad2" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 13px">SubTotal:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtSubTotal3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">IVA:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtIVA" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 13px">Total:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Observaciones:</td>
                            <td colspan="3" style="height: 13px">
                                <asp:TextBox ID="txtObservaciones" runat="server" Width="328px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">
                                Activo:</td>
                            <td style="height: 13px"><asp:RadioButton ID="rbActivo" runat="server" Checked="True" />
                            </td>
                            <td style="height: 13px; ">&nbsp;</td>
                            <td style="height: 13px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>Notas:</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="407px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="BtnCrearCompra" runat="server" OnClick="BtnCrearCompra_Click" Text="Crear Compra" />
                    <br />
                    <asp:Label ID="lblErrorCompra" runat="server"></asp:Label>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Detalle">
                    
                    <table style="width:100%;">
                        <tr>
                            <td style="height: 13px">Compra:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtTransaccion" runat="server" MaxLength="50" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 90px; height: 13px;"></td>
                            <td style="height: 13px">
                            </td>
                            <td style="height: 13px"></td>
                            <td style="height: 13px"></td>
                            <td style="height: 13px"></td>
                            <td style="height: 13px"></td>
                        </tr>
                        <tr>
                            <td>Dependecia:</td>
                            <td>
                                <asp:TextBox ID="txtDVDependencia" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Contactar:</td>
                            <td>
                                <asp:TextBox ID="txtDVContactar" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Fecha Entrada:</td>
                            <td>
                                <asp:TextBox ID="txtDVFechaEntrada" runat="server" MaxLength="50" TextMode="Date"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Dirección:</td>
                            <td>
                                <asp:TextBox ID="txtDVDireccion" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Piso:</td>
                            <td>
                                <asp:TextBox ID="txtDVPiso" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Teléfono:</td>
                            <td>
                                <asp:TextBox ID="txtDVTelefono" runat="server" MaxLength="15"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 18px">Fecha Salida:</td>
                            <td style="height: 18px">
                                <asp:TextBox ID="txtDVFechaSalida" runat="server" MaxLength="50" TextMode="Date"></asp:TextBox>
                            </td>
                            <td style="width: 90px; height: 18px;"></td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px"></td>
                        </tr>
                        <tr>
                            <td style="height: 22px">CPU</td>
                            <td style="height: 22px">
                                <asp:CheckBox ID="cbCPU" runat="server" AutoPostBack="True" OnCheckedChanged="cbCPU_CheckedChanged" />
                            </td>
                            <td style="width: 90px; height: 22px;">Nombre CPU</td>
                            <td style="height: 22px">
                                <asp:TextBox ID="txtDVCPU" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 22px">Serie:</td>
                            <td style="height: 22px">
                                <asp:TextBox ID="txtSerieCPU" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 22px">Placa:</td>
                            <td style="height: 22px">
                                <asp:TextBox ID="txtPlacaCPU" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Monitor</td>
                            <td>
                                <asp:CheckBox ID="cbMonitor" runat="server" AutoPostBack="True" OnCheckedChanged="cbMonitor_CheckedChanged" />
                            </td>
                            <td style="width: 90px">Nombre Monitor:</td>
                            <td>
                                <asp:TextBox ID="txtDVMonitor" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td>Serie:</td>
                            <td>
                                <asp:TextBox ID="txtSerieMonitor" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td>Placa:</td>
                            <td>
                                <asp:TextBox ID="txtPlacaMonitor" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Impresora:</td>
                            <td>
                                <asp:CheckBox ID="cbImpresora" runat="server" AutoPostBack="True" OnCheckedChanged="cbImpresora_CheckedChanged" />
                            </td>
                            <td style="width: 90px">Nombre Impresora:</td>
                            <td>
                                <asp:TextBox ID="txtDVImpresora" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td>Serie:</td>
                            <td>
                                <asp:TextBox ID="txtSerieImpresora" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td>Placa:</td>
                            <td>
                                <asp:TextBox ID="txtPlacaImpresora" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>DVD</td>
                            <td>
                                <asp:CheckBox ID="cbDVD" runat="server" AutoPostBack="True" OnCheckedChanged="cbDVD_CheckedChanged" />
                            </td>
                            <td style="width: 90px">Nombre DVD:</td>
                            <td>
                                <asp:TextBox ID="txtDVDVD" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td>Serie:</td>
                            <td>
                                <asp:TextBox ID="txtSeriaDVD" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td>Placa:</td>
                            <td>
                                <asp:TextBox ID="txtPlacaDVD" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 22px">Disco Duro:</td>
                            <td style="height: 22px">
                                <asp:CheckBox ID="cbDD" runat="server" AutoPostBack="True" OnCheckedChanged="cbDD_CheckedChanged" />
                            </td>
                            <td style="width: 90px; height: 22px;">Nombre DD:</td>
                            <td style="height: 22px">
                                <asp:TextBox ID="txtDVDD" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 22px">Serie:</td>
                            <td style="height: 22px">
                                <asp:TextBox ID="txtSerieDD" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 22px">Placa:</td>
                            <td style="height: 22px">
                                <asp:TextBox ID="txtPlacaDD" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Scanner:</td>
                            <td>
                                <asp:CheckBox ID="cbScanner" runat="server" AutoPostBack="True" OnCheckedChanged="cbScanner_CheckedChanged" />
                            </td>
                            <td style="width: 90px">Nombre Scanner:</td>
                            <td>
                                <asp:TextBox ID="txtDVScanner" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td>Serie:</td>
                            <td>
                                <asp:TextBox ID="txtSerieScanner" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td>Placa:</td>
                            <td>
                                <asp:TextBox ID="txtPlacaScanner" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Memoria:</td>
                            <td style="height: 13px">
                                <asp:CheckBox ID="cbMemoria" runat="server" AutoPostBack="True" OnCheckedChanged="cbMemoria_CheckedChanged" />
                            </td>
                            <td style="height: 13px; width: 90px">Nombre Memoria:</td>
                            <td style="height: 13px"><asp:TextBox ID="txtDVMemoria" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 13px">Serie:</td>
                            <td style="height: 13px"><asp:TextBox ID="txtSerieMemoria" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 13px">Placa:</td>
                            <td style="height: 13px"><asp:TextBox ID="txtPlacaMemoria" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 22px">Teclado:</td>
                            <td style="height: 22px">
                                <asp:CheckBox ID="cbTeclado" runat="server" AutoPostBack="True" OnCheckedChanged="cbTeclado_CheckedChanged" />
                            </td>
                            <td style="width: 90px; height: 22px;">Nombre de Teclado:</td>
                            <td style="height: 22px">
                                <asp:TextBox ID="txtDVTeclado" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 22px"></td>
                            <td style="height: 22px"></td>
                            <td style="height: 22px"></td>
                            <td style="height: 22px"></td>
                        </tr>
                        <tr>
                            <td>Mouse:</td>
                            <td>
                                <asp:CheckBox ID="cbMouse" runat="server" AutoPostBack="True" OnCheckedChanged="cbMouse_CheckedChanged" />
                            </td>
                            <td style="width: 90px">Nombre Mouse:</td>
                            <td>
                                <asp:TextBox ID="txtDVMouse" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Office:</td>
                            <td style="height: 13px">
                                <asp:CheckBox ID="cbOffice" runat="server" AutoPostBack="True" OnCheckedChanged="cbOffice_CheckedChanged" />
                            </td>
                            <td style="height: 13px; width: 90px">Office:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVOffice" runat="server" MaxLength="50" Enabled="False" ></asp:TextBox>
                            </td>
                            <td>Serial Office:</td>
                            <td>
                                <asp:TextBox ID="txtDVSerialOffice" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Sistema Operativo:</td>
                            <td>
                                <asp:CheckBox ID="cbSO" runat="server" AutoPostBack="True" OnCheckedChanged="cbSO_CheckedChanged" />
                            </td>
                            <td style="width: 90px">Nombre SO:</td>
                            <td>
                                <asp:TextBox ID="txtDVSO" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td><br />SO Serial:</td>
                            <td><asp:TextBox ID="txtDVSerialSO" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 18px">Correo Electrónico:</td>
                            <td style="height: 18px">
                                <asp:CheckBox ID="cbCorreo" runat="server" AutoPostBack="True" OnCheckedChanged="cbCorreo_CheckedChanged" />
                            </td>
                            <td style="width: 90px; height: 18px;">Nombre Correo:</td>
                            <td style="height: 18px">
                                <asp:TextBox ID="txtDVCorreo" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px"></td>
                        </tr>
                        <tr>
                            <td style="height: 24px">Antivirus:</td>
                            <td style="height: 24px">
                                <asp:CheckBox ID="cbAntivirus" runat="server" AutoPostBack="True" OnCheckedChanged="cbAntivirus_CheckedChanged" />
                            </td>
                            <td style="width: 90px; height: 24px;">Nombre Antivirus:</td>
                            <td style="height: 24px">
                                <asp:TextBox ID="txtDVAntivirus" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 24px"><br />Antivirus Serial:</td>
                            <td style="height: 24px"><asp:TextBox ID="txtDVSerialAntivirus" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="height: 24px"></td>
                            <td style="height: 24px"></td>
                        </tr>
                        <tr>
                            <td>Conexión de Red</td>
                            <td>
                                <asp:CheckBox ID="cbConexionRed" runat="server" AutoPostBack="True" OnCheckedChanged="cbAntivirus_CheckedChanged" />
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Otro:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVOtros" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 13px; width: 90px;">Otro No referenciado:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVOtro2" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px">&nbsp;&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Nombre Reporta:</td>
                            <td>
                                <asp:TextBox ID="txtDVNombreReporta" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Descripción:</td>
                            <td>
                                <asp:TextBox ID="txtDVDescripcion" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 18px"><br />Detallada Descripción:</td>
                            <td style="height: 18px"><asp:TextBox ID="txtDVDescripcionDet1" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Preventivo:</td>
                            <td>
                                <asp:CheckBox ID="cbPreventivo" runat="server" />
                            </td>
                            <td style="width: 90px">Correctivo:</td>
                            <td>
                                <asp:CheckBox ID="cbCorrectivo" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Observaciones:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVObservaciones" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 13px; width: 90px;"></td>
                            <td style="height: 13px"></td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Valor Unidad:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVValorUnidad" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 13px; width: 90px;">IVA Unidad:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVIVAUnidad" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Retención Unidad:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVRetencionUnidad" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px; height: 13px">Valor Total:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVValorTotal" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                            <td style="height: 13px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>IVA Total:</td>
                            <td>
                                <asp:TextBox ID="txtDVIVATotal" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">IVA Total:</td>
                            <td>
                                <asp:TextBox ID="txtDVIVATOTAL2" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 18px">Sibtotal Total:</td>
                            <td style="height: 18px">
                                <asp:TextBox ID="txtDVSubtotal" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px; height: 18px;">Retención Total:</td>
                            <td style="height: 18px">
                                <asp:TextBox ID="txtDVRetencionTotal" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px"></td>
                            <td style="height: 18px"></td>
                        </tr>
                        <tr>
                            <td>Notas:</td>
                            <td>&nbsp;</td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px" colspan="4">
                                <asp:TextBox ID="txtDVNotas" runat="server" MaxLength="190" Width="375px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td style="height: 13px"></td>
                            <td style="height: 13px"></td>
                            <td style="height: 13px"></td>
                            <td style="height: 13px"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="BtnCrearDetalle" runat="server" OnClick="BtnCrearDetalle_Click" Text="Crear Detalle" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>


                    <br />
                    <asp:Label ID="lblErrorDetalle" runat="server"></asp:Label>


                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </p>
</asp:Content>
