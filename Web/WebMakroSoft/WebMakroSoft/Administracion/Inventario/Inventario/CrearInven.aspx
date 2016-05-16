<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearInven.aspx.cs" Inherits="WebMakroSoft.Administracion.Inventario.Inventario.CrearInven" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Crear Inventario</p>
    <p>
        <asp:Wizard ID="wzInventario" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" FinishCompleteButtonText="Finalizar" FinishPreviousButtonText="Previo" StartNextButtonText="Siguiente">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Inventario">
                    <table style="width:100%;">
                        <tr>
                            <td style="height: 47px">Proveedor:</td>
                            <td style="height: 47px">
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreProveedor" DataValueField="PKProveedor">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreProveedor], [PKProveedor] FROM [Proveedor]"></asp:SqlDataSource>
                            </td>
                            <td style="height: 47px">Bodega:</td>
                            <td style="height: 47px">
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="NombreBodega" DataValueField="PKBodega">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreBodega], [PKBodega] FROM [Bodega]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>Equipo:</td>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="NombreEquipo" DataValueField="PKEquipo">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreEquipo], [PKEquipo] FROM [Equipo]"></asp:SqlDataSource>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Factura:</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td>Fotografia:</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Fecha Factura</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="DateTime"></asp:TextBox>
                            </td>
                            <td>cantidad:</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Valor Unidad:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 13px">SubTotal:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">IVA:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 13px">Total:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Observaciones:</td>
                            <td colspan="3" style="height: 13px">
                                <asp:TextBox ID="TextBox9" runat="server" Width="321px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Cantidad Recibida:</td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </td>
                            <td>Fecha Mmto:</td>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Planilla Mmto:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 13px">Activo:</td>
                            <td style="height: 13px">
                                <asp:RadioButton ID="RadioButton1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>Notas:</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:TextBox ID="TextBox13" runat="server" MaxLength="190" TextMode="MultiLine" Width="407px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Referencia">
                    
                    <table style="width:100%;">
                        <tr>
                            <td>Dependecia:</td>
                            <td>
                                <asp:TextBox ID="TextBox14" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Contactar:</td>
                            <td>
                                <asp:TextBox ID="TextBox15" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Fecha Entrada:</td>
                            <td>
                                <asp:TextBox ID="TextBox16" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Dirección:</td>
                            <td>
                                <asp:TextBox ID="TextBox17" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Piso:</td>
                            <td>
                                <asp:TextBox ID="TextBox18" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Teléfono:</td>
                            <td>
                                <asp:TextBox ID="TextBox19" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Fecha Salida:</td>
                            <td>
                                <asp:TextBox ID="TextBox20" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>CPU</td>
                            <td>
                                <asp:RadioButton ID="RadioButton2" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre CPU</td>
                            <td>
                                <asp:TextBox ID="TextBox21" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Monitor</td>
                            <td>
                                <asp:RadioButton ID="RadioButton3" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Monitor:</td>
                            <td>
                                <asp:TextBox ID="TextBox22" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Impresora:</td>
                            <td>
                                <asp:RadioButton ID="RadioButton4" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Impresora:</td>
                            <td>
                                <asp:TextBox ID="TextBox23" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>DVD</td>
                            <td>
                                <asp:RadioButton ID="RadioButton5" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre DVD:</td>
                            <td>
                                <asp:TextBox ID="TextBox24" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Disco Duro:</td>
                            <td>
                                <asp:RadioButton ID="RadioButton6" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre DD:</td>
                            <td>
                                <asp:TextBox ID="TextBox25" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Teclado:</td>
                            <td>
                                <asp:RadioButton ID="RadioButton7" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre de Teclado:</td>
                            <td>
                                <asp:TextBox ID="TextBox26" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Mouse:</td>
                            <td>
                                <asp:RadioButton ID="RadioButton8" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Mouse:</td>
                            <td>
                                <asp:TextBox ID="TextBox27" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Scanner:</td>
                            <td>
                                <asp:RadioButton ID="RadioButton9" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Scanner:</td>
                            <td>
                                <asp:TextBox ID="TextBox28" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px"></td>
                            <td style="height: 13px">Nombre Office:<asp:RadioButton ID="RadioButton10" runat="server" />
                            </td>
                            <td style="height: 13px; width: 90px">Office:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox29" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Serial Office:</td>
                            <td>
                                <asp:TextBox ID="TextBox30" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Memoria:</td>
                            <td style="height: 13px">
                                <asp:RadioButton ID="RadioButton11" runat="server" />
                            </td>
                            <td style="height: 13px; width: 90px">Nombre Memoria:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox31" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Sistema Operativo:</td>
                            <td>
                                <asp:RadioButton ID="RadioButton12" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre SO:</td>
                            <td>
                                <asp:TextBox ID="TextBox32" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Serial SO:</td>
                            <td>
                                <asp:TextBox ID="TextBox33" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Correo Electrónico:</td>
                            <td>
                                <asp:RadioButton ID="RadioButton13" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Correo:</td>
                            <td>
                                <asp:TextBox ID="TextBox34" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Antivirus:</td>
                            <td>
                                <asp:RadioButton ID="RadioButton14" runat="server" />
                            </td>
                            <td style="width: 90px">Nombre Antivirus:</td>
                            <td>
                                <asp:TextBox ID="TextBox35" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Serial Antivirus:</td>
                            <td>
                                <asp:TextBox ID="TextBox36" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Conexión de Red</td>
                            <td>
                                <asp:RadioButton ID="RadioButton15" runat="server" />
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Otro:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox37" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 13px; width: 90px;">Otro No referenciado:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox38" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Nombre Reporta:</td>
                            <td>
                                <asp:TextBox ID="TextBox39" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Descripción:</td>
                            <td>
                                <asp:TextBox ID="TextBox40" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Descripción Detallada:</td>
                            <td>
                                <asp:TextBox ID="TextBox41" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Preventivo:</td>
                            <td>
                                <asp:RadioButton ID="RadioButton16" runat="server" />
                            </td>
                            <td style="width: 90px">Correctivo:</td>
                            <td>
                                <asp:RadioButton ID="RadioButton17" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Observaciones:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox42" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 13px; width: 90px;"></td>
                            <td style="height: 13px"></td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Valor Unidad:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox43" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 13px; width: 90px;">IVA Unidad:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox44" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 13px">Retención Unidad:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox45" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px; height: 13px">Valor Total:</td>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox46" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>IVA Total:</td>
                            <td>
                                <asp:TextBox ID="TextBox47" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">IVA Total:</td>
                            <td>
                                <asp:TextBox ID="TextBox48" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Sibtotal Total:</td>
                            <td>
                                <asp:TextBox ID="TextBox49" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 90px">Retención Total:</td>
                            <td>
                                <asp:TextBox ID="TextBox50" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Notas:</td>
                            <td>&nbsp;</td>
                            <td style="width: 90px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 13px">
                                <asp:TextBox ID="TextBox51" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="height: 13px"></td>
                            <td style="height: 13px; width: 90px;"></td>
                            <td style="height: 13px"></td>
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

</asp:Content>
