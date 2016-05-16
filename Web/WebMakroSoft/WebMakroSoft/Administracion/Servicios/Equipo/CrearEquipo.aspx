<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearEquipo.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Equipo.CrearEquipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Crear Equipo:</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nro de Compra:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreCompra" DataValueField="PKCompras">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKCompras], [NombreCompra] FROM [Compras]"></asp:SqlDataSource>
                </td>
                <td>Tipo:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="PKTipo">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [Nombre], [PKTipo] FROM [Tipo]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Fabricante:</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Fabricante" DataValueField="PKFabricante">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [Fabricante], [PKFabricante] FROM [Fabricante]"></asp:SqlDataSource>
                </td>
                <td>Procesador:</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="NombreProcesador" DataValueField="PKProcesador">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreProcesador], [PKProcesador] FROM [Procesador]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Cliente:</td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="NombreCliente" DataValueField="PKCliente">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreCliente], [PKCliente] FROM [Cliente]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Nombre Equipo:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Sistema Operativo:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Descripción:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px">Serial:</td>
                <td style="height: 24px">
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td style="height: 24px">Board:</td>
                <td style="height: 24px">
                    <asp:TextBox ID="TextBox5" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>RAM</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Disco Duro</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mouse</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Serial (Windows):</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Serial (Office)</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 24px">Serial (Antivirus)</td>
                <td style="height: 24px">
                    <asp:TextBox ID="TextBox11" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td style="height: 24px">Serial:</td>
                <td style="height: 24px">
                    <asp:TextBox ID="TextBox12" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Serial 2:</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Serial 3:</td>
                <td>
                    <asp:TextBox ID="TextBox14" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Cantidad:</td>
                <td>
                    <asp:TextBox ID="TextBox15" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Activo:</td>
                <td>
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
                    <asp:TextBox ID="TextBox16" runat="server" TextMode="MultiLine" Width="636px"></asp:TextBox>
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
