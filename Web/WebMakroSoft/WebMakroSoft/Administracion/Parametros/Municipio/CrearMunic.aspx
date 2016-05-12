<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearMunic.aspx.cs" Inherits="WebMakroSoft.Administracion.Parametros.Municipio.CrearMunic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Creación de Municipio<br />
    // (@PKMunicipio, nchar(10),&gt; //,@FKDepartamento, nchar(10),&gt; //,@NombreMunicipio, nchar(50),&gt; //,@Notas, nchar(200),&gt;<br />

    <table style="width:100%;">
        <tr>
            <td>Departamento:</td>
            <td>
                <asp:DropDownList ID="DDDepar" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreDepartamento" DataValueField="PKDepartamento">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKDepartamento], [NombreDepartamento] FROM [Departamento]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Nombre de Municipio:</td>
            <td>
                <asp:TextBox ID="txtNombreMunicipio" runat="server" MaxLength="50"></asp:TextBox>
            </td>
            <td>Código de Municipio:</td>
            <td>
                <asp:TextBox ID="TxtCodigoMun" runat="server" MaxLength="10"></asp:TextBox>
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
                <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="691px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="BtnCrearMunicipio" runat="server" OnClick="BtnCrearMunicipio_Click" Text="Crear Municipio" />
            </td>
        </tr>
    </table>

    <br />
    <asp:Label ID="lblError" runat="server"></asp:Label>
    <br />

</asp:Content>
