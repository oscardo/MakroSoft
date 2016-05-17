<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearEstado.aspx.cs" Inherits="WebMakroSoft.Administracion.Estado.Estado.CrearEstado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Creación de Estado</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nombre Estado:</td>
                <td>
                    <asp:TextBox ID="txtEstado" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Notas:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="height: 22px">
                    <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="567px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnCrearEstado" runat="server" OnClick="BtnCrearEstado_Click" Text="Crear Estado" />
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
    <br />

</asp:Content>
