<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearMmto.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Mantenimiento.CrearMmto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Crear Mantenimiento</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Equipo:</td>
                <td>
                    <asp:DropDownList ID="DDEquipo" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreEquipo" DataValueField="PKEquipo">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKEquipo], [NombreEquipo] FROM [Equipo]"></asp:SqlDataSource>
                </td>
                <td>Técnico:</td>
                <td>
                    <asp:DropDownList ID="DDTecnico" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="PKTecnico">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [Nombre], [PKTecnico] FROM [Tecnico] WHERE ([Activo] = @Activo)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Estado:</td>
                <td>
                    <asp:DropDownList ID="DDEstado" runat="server" DataSourceID="SqlDataSource3" DataTextField="Estado" DataValueField="PKEstado">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [Estado], [PKEstado] FROM [Estado]"></asp:SqlDataSource>
                </td>
                <td>Planilla Mantenimiento:</td>
                <td>
                    <asp:TextBox ID="txtPlanillaMtto" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 22px">Fecha:</td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtFecha_Inicio" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                </td>
                <td style="height: 22px">Fecha de Finalización:</td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtFechaFinal" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
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
                    <asp:TextBox ID="txtNotas" runat="server" TextMode="MultiLine" Width="546px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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
