<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearEquipo.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Equipo.CrearEquipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Crear Equipo:</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nro de Compra:</td>
                <td>
                    <asp:DropDownList ID="DDCompra" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreCompra" DataValueField="PKCompras">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKCompras], [NombreCompra] FROM [Compras]"></asp:SqlDataSource>
                </td>
                <td>Tipo:</td>
                <td>
                    <asp:DropDownList ID="DDTipo" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="PKTipo">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [Nombre], [PKTipo] FROM [Tipo]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Fabricante:</td>
                <td>
                    <asp:DropDownList ID="DDFabricante" runat="server" DataSourceID="SqlDataSource3" DataTextField="Fabricante" DataValueField="PKFabricante">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [Fabricante], [PKFabricante] FROM [Fabricante]"></asp:SqlDataSource>
                </td>
                <td>Procesador:</td>
                <td>
                    <asp:DropDownList ID="DDProcesador" runat="server" DataSourceID="SqlDataSource4" DataTextField="NombreProcesador" DataValueField="PKProcesador">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreProcesador], [PKProcesador] FROM [Procesador]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Cliente:</td>
                <td>
                    <asp:DropDownList ID="DDCliente" runat="server" DataSourceID="SqlDataSource5" DataTextField="NombreCliente" DataValueField="PKCliente">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreCliente], [PKCliente] FROM [Cliente]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Nombre Equipo:</td>
                <td>
                    <asp:TextBox ID="txtNombreEquipo" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Sistema Operativo:</td>
                <td>
                    <asp:TextBox ID="txtSO" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Descripción:</td>
                <td>
                    <asp:TextBox ID="txtDescripcion" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px">Serial:</td>
                <td style="height: 24px">
                    <asp:TextBox ID="txtSerial" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td style="height: 24px">Board:</td>
                <td style="height: 24px">
                    <asp:TextBox ID="txtBoard" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>RAM</td>
                <td>
                    <asp:TextBox ID="txtRAM" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Disco Duro</td>
                <td>
                    <asp:TextBox ID="txtDD" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mouse</td>
                <td>
                    <asp:TextBox ID="txtMouse" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Serial (Windows):</td>
                <td>
                    <asp:TextBox ID="txtSerialSO" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Serial (Office)</td>
                <td>
                    <asp:TextBox ID="txtOffice" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 24px">Serial (Antivirus)</td>
                <td style="height: 24px">
                    <asp:TextBox ID="txtSerialAntivirus" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td style="height: 24px">Serial:</td>
                <td style="height: 24px">
                    <asp:TextBox ID="txtSerial1" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Serial 2:</td>
                <td>
                    <asp:TextBox ID="txtSerial2" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Serial 3:</td>
                <td>
                    <asp:TextBox ID="txtSerial3" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Cantidad:</td>
                <td>
                    <asp:TextBox ID="txtCantidad" runat="server" MaxLength="50" TextMode="Number"></asp:TextBox>
                </td>
                <td>Activo:</td>
                <td>
                    <asp:RadioButton ID="rbActivo" runat="server" />
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
                    <asp:TextBox ID="txtNotas" runat="server" TextMode="MultiLine" Width="636px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>

</asp:Content>
