<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearInven.aspx.cs" Inherits="WebMakroSoft.Administracion.Inventario.Inventario.CrearInven" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Crear Inventario</p>
    <p>
        <asp:Wizard ID="wzInventario" runat="server" ActiveStepIndex="1" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
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
                    
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </p>

</asp:Content>
