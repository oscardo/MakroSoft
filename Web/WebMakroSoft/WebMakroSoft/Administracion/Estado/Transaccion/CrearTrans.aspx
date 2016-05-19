<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearTrans.aspx.cs" Inherits="WebMakroSoft.Administracion.Estado.Transaccion.CrearTrans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Crear Transacciones</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td style="height: 22px">Nro Equipo:</td>
                <td style="height: 22px">
                    <asp:DropDownList ID="DDEquipo" runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="PKEquipo">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKEquipo], [Descripcion] FROM [Equipo]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Nro Remisión:</td>
                <td>
                    <asp:DropDownList ID="DDRemision" runat="server" DataSourceID="SqlDataSource2" DataTextField="Notas" DataValueField="PKRemisiones">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKRemisiones], [Notas] FROM [Remisiones]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="height: 62px">Nro Ventas:</td>
                <td style="height: 62px">
                    <asp:DropDownList ID="DDVentas" runat="server" DataSourceID="SqlDataSource3" DataTextField="NombreReferencia" DataValueField="PKVentas">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKVentas], [NombreReferencia] FROM [Ventas]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="height: 62px">Nro Compras:</td>
                <td style="height: 62px">
                    <asp:DropDownList ID="DDCompra" runat="server" DataSourceID="SqlDataSource4" DataTextField="FKCompra" DataValueField="PKTransaccion">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [FKCompra], [PKTransaccion] FROM [Transaccion]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Notas:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="445px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>

    <br />
    <asp:Button ID="BtnCrearTransaccion" runat="server" OnClick="BtnCrearTransaccion_Click" Text="Crear Transacción" />
    <br />
    <asp:Label ID="lblError" runat="server"></asp:Label>

</asp:Content>
