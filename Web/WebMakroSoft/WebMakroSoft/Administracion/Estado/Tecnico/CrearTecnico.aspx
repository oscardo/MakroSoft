<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearTecnico.aspx.cs" Inherits="WebMakroSoft.Administracion.Estado.Tecnico.CrearTecnico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Creación de Técnicos</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nombre Técnico:</td>
                <td>
                    <asp:TextBox ID="txtNombreTecnico" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Activo:</td>
                <td>
                    <asp:RadioButton ID="RbActivo" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Notas:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="366px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
