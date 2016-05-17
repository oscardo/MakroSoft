<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearProcesador.aspx.cs" Inherits="WebMakroSoft.Administracion.Estado.Procesador.CrearProcesador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Creación de Procesadores</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nombre Procesador:</td>
                <td>
                    <asp:TextBox ID="txtNombreProcesador" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 22px">Notas:</td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="488px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <asp:Button ID="BtnCrearProcesador" runat="server" OnClick="BtnCrearProcesador_Click" Text="Crear Procesador" />
    <br />
    <asp:Label ID="lblError" runat="server"></asp:Label>
    <br />

</asp:Content>
