<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearVentas.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Ventas.CrearVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Crear Ventas</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td style="height: 22px">Vendedor:</td>
                <td style="height: 22px">
                    <asp:DropDownList ID="DDVendedor" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombrePersona" DataValueField="PKVendedor">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombrePersona], [PKVendedor] FROM [Vendedor]"></asp:SqlDataSource>
                </td>
                <td style="height: 22px">Detalle Venta:</td>
                <td style="height: 22px">
                    <asp:DropDownList ID="DDDetalleVenta" runat="server" DataSourceID="SqlDataSource2" DataTextField="Descripcion" DataValueField="PKDetalleVenta_Remision">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKDetalleVenta_Remision], [Descripcion] FROM [DetalleVenta_Remision]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Nombre Referencia:</td>
                <td>
                    <asp:TextBox ID="txtNombreReferencia" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Nit:</td>
                <td>
                    <asp:TextBox ID="txtNit" runat="server" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 22px">Cedula:</td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtNumero" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td style="height: 22px">Tipo de Documento:</td>
                <td style="height: 22px">
                    <asp:DropDownList ID="DDTipo" runat="server" DataSourceID="SqlDataSource3" DataTextField="TipoDocumento" DataValueField="PKTipoDocumento">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [TipoDocumento], [PKTipoDocumento] FROM [TipoDocumento]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Teléfono Habitual:</td>
                <td>
                    <asp:TextBox ID="txtTelefono1" runat="server" MaxLength="15"></asp:TextBox>
                </td>
                <td>Teléfono Auxiliar:</td>
                <td>
                    <asp:TextBox ID="txtTelefono2" runat="server" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Celular:</td>
                <td>
                    <asp:TextBox ID="txtCelular" runat="server" MaxLength="15"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Notas:</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:TextBox ID="txtNotas" runat="server" TextMode="MultiLine" Width="547px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>

    <br />
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Crear XXXX" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
