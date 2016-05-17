﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearRemis.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Remisiones.CrearRemis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Crear Remisión</p>
    <p>
        <asp:Wizard ID="wzInventario" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" FinishCompleteButtonText="Finalizar" FinishPreviousButtonText="Previo" StartNextButtonText="Siguiente">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Remisión">
                    <table style="width:100%;">
                        <tr>
                            <td style="height: 47px">Cliente:</td>
                            <td style="height: 47px">
                                <asp:DropDownList ID="DDCliente" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreCliente" DataValueField="PKCliente">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKCliente], [NombreCliente] FROM [Cliente]"></asp:SqlDataSource>
                            </td>
                            <td style="height: 47px">Proveedor:</td>
                            <td style="height: 47px">
                                <asp:DropDownList ID="DDProveedor" runat="server" DataSourceID="SqlDataSource2" DataTextField="NombreProveedor" DataValueField="PKProveedor">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKProveedor], [NombreProveedor] FROM [Proveedor]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>Departamento:</td>
                            <td>
                                <asp:DropDownList ID="DDDepartamento" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="NombreDepartamento" DataValueField="PKDepartamento">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreDepartamento], [PKDepartamento] FROM [Departamento]"></asp:SqlDataSource>
                            </td>
                            <td>Municipio:</td>
                            <td>
                                <asp:DropDownList ID="DDMunicipio" runat="server" DataSourceID="SqlDataSource4" DataTextField="NombreMunicipio" DataValueField="NombreMunicipio">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreMunicipio], [PKMunicipio] FROM [Municipio] WHERE ([FKDepartamento] = @FKDepartamento)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DDDepartamento" DefaultValue="01" Name="FKDepartamento" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>Fecha Inicio:</td>
                            <td>
                                <asp:TextBox ID="txtFechaInicio" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                            </td>
                            <td>Fecha Fin:</td>
                            <td>
                                <asp:TextBox ID="txtFechaFinal" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Valor Unidad:</td>
                            <td>
                                <asp:TextBox ID="txtValorUnidad" runat="server"></asp:TextBox>
                            </td>
                            <td>IVA Unidad:</td>
                            <td>
                                <asp:TextBox ID="txtIVAUnidad" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Valor Total:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtValorTotal" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 13px">SubTotal:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtSubtotal" runat="server"></asp:TextBox>
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
                            <td style="height: 13px">Cantidad:</td>
                            <td colspan="3" style="height: 13px">
                                <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Diferencia:</td>
                            <td>
                                <asp:TextBox ID="txtDiferencia" runat="server"></asp:TextBox>
                            </td>
                            <td>Diferencia Precio:</td>
                            <td>
                                <asp:TextBox ID="txtDiferenciaPrecio" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Notas</td>
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
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Referencia">
                    
                    <table style="width:100%;">
                        <tr>
                            <td>Dependecia:</td>
                            <td>
                                <asp:TextBox ID="txtDVDependencia" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Contactar:</td>
                            <td>
                                <asp:TextBox ID="txtDVContactar" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
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
                        </tr>
                        <tr>
                            <td>Fecha Salida:</td>
                            <td>
                                <asp:TextBox ID="txtDVFechaSalida" runat="server" MaxLength="50" TextMode="Date"></asp:TextBox>
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>CPU</td>
                            <td>
                                <asp:RadioButton ID="rbDVCPU" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre CPU</td>
                            <td>
                                <asp:TextBox ID="txtDVCPU" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Monitor</td>
                            <td>
                                <asp:RadioButton ID="rbDVMonitor" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Monitor:</td>
                            <td>
                                <asp:TextBox ID="txtDVMonitor" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Impresora:</td>
                            <td>
                                <asp:RadioButton ID="rbDVImpresora" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Impresora:</td>
                            <td>
                                <asp:TextBox ID="txtDVImpresora" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>DVD</td>
                            <td>
                                <asp:RadioButton ID="rbDVDVD" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre DVD:</td>
                            <td>
                                <asp:TextBox ID="txtDVDVD" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Disco Duro:</td>
                            <td>
                                <asp:RadioButton ID="rbDVDD" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre DD:</td>
                            <td>
                                <asp:TextBox ID="txtDVDD" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Teclado:</td>
                            <td>
                                <asp:RadioButton ID="rbDVTeclado" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre de Teclado:</td>
                            <td>
                                <asp:TextBox ID="txtDVTeclado" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Mouse:</td>
                            <td>
                                <asp:RadioButton ID="rbDVMouse" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Mouse:</td>
                            <td>
                                <asp:TextBox ID="txtDVMouse" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Scanner:</td>
                            <td>
                                <asp:RadioButton ID="rbDVScanner" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Scanner:</td>
                            <td>
                                <asp:TextBox ID="txtDVScanner" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Office:</td>
                            <td style="height: 13px"><asp:RadioButton ID="rbDVOffice" runat="server" />
                            </td>
                            <td style="height: 13px; width: 90px">Office:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVOffice" runat="server" MaxLength="50" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Serial Office:</td>
                            <td>
                                <asp:TextBox ID="txtDVSerialOffice" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Memoria:</td>
                            <td style="height: 13px">
                                <asp:RadioButton ID="rbDVMemoria" runat="server" />
                            </td>
                            <td style="height: 13px; width: 90px">Nombre Memoria:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVMemoria" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Sistema Operativo:</td>
                            <td>
                                <asp:RadioButton ID="rbDVSO" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre SO:</td>
                            <td>
                                <asp:TextBox ID="txtDVSO" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Serial SO:</td>
                            <td>
                                <asp:TextBox ID="txtDVSerialSO" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Correo Electrónico:</td>
                            <td>
                                <asp:RadioButton ID="rbDVCorreo" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Correo:</td>
                            <td>
                                <asp:TextBox ID="txtDVCorreo" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Antivirus:</td>
                            <td>
                                <asp:RadioButton ID="rbDVAntivirus" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Antivirus:</td>
                            <td>
                                <asp:TextBox ID="txtDVAntivirus" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Serial Antivirus:</td>
                            <td>
                                <asp:TextBox ID="txtDVSerialAntivirus" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Conexión de Red</td>
                            <td>
                                <asp:RadioButton ID="rbDVConexionRed" runat="server" />
                            </td>
                            <td style="width: 90px">&nbsp;</td>
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
                        </tr>
                        <tr>
                            <td style="height: 18px">Descripción Detallada:</td>
                            <td style="height: 18px">
                                <asp:TextBox ID="txtDVDescripcionDet" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px; height: 18px;"></td>
                            <td style="height: 18px"></td>
                        </tr>
                        <tr>
                            <td>Preventivo:</td>
                            <td>
                                <asp:RadioButton ID="rbDVPreventivo" runat="server" />
                            </td>
                            <td style="width: 90px">Correctivo:</td>
                            <td>
                                <asp:RadioButton ID="rbDVCorrectivo" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Observaciones:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="txtDVObservaciones" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 13px; width: 90px;"></td>
                            <td style="height: 13px"></td>
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
                        </tr>
                        <tr>
                            <td>Sibtotal Total:</td>
                            <td>
                                <asp:TextBox ID="txtDVSubtotal" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Retención Total:</td>
                            <td>
                                <asp:TextBox ID="txtDVRetencionTotal" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Notas:</td>
                            <td>&nbsp;</td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px" colspan="4">
                                <asp:TextBox ID="txtDVNotas" runat="server" MaxLength="190" Width="375px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </p>
    <p>
        &nbsp;</p>

</asp:Content>
