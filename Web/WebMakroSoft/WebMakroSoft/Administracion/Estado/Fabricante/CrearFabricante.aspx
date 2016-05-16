<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearFabricante.aspx.cs" Inherits="WebMakroSoft.Administracion.Estado.Fabricante.CrearFabricante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Creación Fabricante</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nombre Fabricante:</td>
                <td>
                    <asp:TextBox ID="txtFabricante" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Notas:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="432px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>
