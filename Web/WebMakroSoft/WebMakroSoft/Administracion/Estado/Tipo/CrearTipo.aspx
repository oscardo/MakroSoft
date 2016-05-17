<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearTipo.aspx.cs" Inherits="WebMakroSoft.Administracion.Estado.Tipo.CrearTipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Creación Tipo</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td style="height: 22px">Nombre Tipo:</td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtNombreTipo" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Notas:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtNotas" runat="server" TextMode="MultiLine" Width="334px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <asp:Button ID="BtnCrear" runat="server" OnClick="BtnCrear_Click" Text="Crear Tipo" />
    </p>
    <p>
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </p>
</asp:Content>
