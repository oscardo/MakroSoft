<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="WebMakroSoft.Administracion.Parametros.Usuario.CrearUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <br />
        Crear Usuarios</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td style="height: 22px">
                    <asp:Label ID="Label1" runat="server" Text="Nombre De Usuario"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtNombreUsuario" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td style="height: 22px">
                    <asp:Label ID="Label4" runat="server" Text="Ubicacion"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtUbicacion" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Departamento"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDDepartamento" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreDepartamento" DataValueField="PKDepartamento" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreDepartamento], [PKDepartamento] FROM [Departamento]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Municipio"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDMunicipio" runat="server" DataSourceID="SqlDataSource2" DataTextField="NombreMunicipio" DataValueField="PKMunicipio">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKMunicipio], [NombreMunicipio] FROM [Municipio]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Clave"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtClave" runat="server" MaxLength="50" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Repite Clave"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRepiteClave" runat="server" MaxLength="50" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 22px">
                    <asp:Label ID="Label7" runat="server" Text="Telefóno:"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtTelefono" runat="server" MaxLength="15"></asp:TextBox>
                </td>
                <td style="height: 22px">
                    <asp:Label ID="Label8" runat="server" Text="Celular:"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtCelular" runat="server" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Correo Electrónico:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCorreoEletronico" runat="server" MaxLength="50" TextMode="Email"></asp:TextBox>
                </td>
                <td>Rol:</td>
                <td>
                    <asp:DropDownList ID="DDRol" runat="server" DataSourceID="SqlDataSource3" DataTextField="Rol" DataValueField="PKRol">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKRol], [Rol] FROM [Roles]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Notas:"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="681px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="txtCrearUsuario" runat="server" Text="Crear Usuario" OnClick="txtCrearUsuario_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="4" style="height: 22px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Te falta nombre de Usuario" ControlToValidate="txtNombreUsuario" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDDepartamento" Display="Dynamic" ErrorMessage="Error en Departamento"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DDMunicipio" Display="Dynamic" ErrorMessage="Error En municipio"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTelefono" Display="Dynamic" ErrorMessage="Error en Telefóno"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtRepiteClave" ControlToValidate="txtClave" Display="Dynamic" ErrorMessage="Error en la Clave"></asp:CompareValidator>
                    <br />
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
            
    </p>
    <p>
        &nbsp;</p>

</asp:Content>
