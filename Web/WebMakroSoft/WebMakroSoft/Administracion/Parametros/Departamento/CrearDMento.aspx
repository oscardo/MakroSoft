<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearDMento.aspx.cs" Inherits="WebMakroSoft.Administracion.Parametros.Departamento.CrearDMento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <td>Creación de Departamento:<br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Codigo de Departamento:</td>
            <td>
                <asp:TextBox ID="txtCodigo" runat="server" MaxLength="10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Nombre Departamento</td>
            <td>
                <asp:TextBox ID="txtNombreDep" runat="server" MaxLength="49"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">Notas:</td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 22px">
                <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="494px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 22px">
                <asp:Button ID="btnCreacion" runat="server" OnClick="btnCreacion_Click" Text="Creación de Departamento" />
                <br />
                <br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
