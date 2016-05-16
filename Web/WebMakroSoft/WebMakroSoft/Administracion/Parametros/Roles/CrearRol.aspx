<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearRol.aspx.cs" Inherits="WebMakroSoft.Administracion.Parametros.Roles.CrearRol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
    Crear Rol</p>
<p>
    <table style="width:100%;">
        <tr>
            <td>Nombre de Rol:</td>
            <td>
                <asp:TextBox ID="txtRol" runat="server" MaxLength="50"></asp:TextBox>
            </td>
            <td>Activo:</td>
            <td>
                <asp:CheckBox ID="cbActivo" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="height: 22px">Notas:</td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="677px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="btnCrearRol" runat="server" OnClick="btnCrearRol_Click" Text="Crear Rol" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>

</asp:Content>
