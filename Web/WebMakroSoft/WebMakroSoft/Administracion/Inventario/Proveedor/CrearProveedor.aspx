<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearProveedor.aspx.cs" Inherits="WebMakroSoft.Administracion.Inventario.Proveedor.CrearProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Crear Proveedor</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nombre Proveedor:</td>
                <td>
                    <asp:TextBox ID="txtNombreProveedor" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Nit:</td>
                <td>
                    <asp:TextBox ID="txtNit" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Departamento:</td>
                <td>
                    <asp:DropDownList ID="DDDepartamento" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NombreDepartamento" DataValueField="PKDepartamento">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKDepartamento], [NombreDepartamento] FROM [Departamento]"></asp:SqlDataSource>
                </td>
                <td>Municipio:</td>
                <td>
                    <asp:DropDownList ID="DDMunicipio" runat="server" DataSourceID="SqlDataSource2" DataTextField="NombreMunicipio" DataValueField="PKMunicipio">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKMunicipio], [NombreMunicipio] FROM [Municipio] WHERE ([FKDepartamento] = @FKDepartamento)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DDDepartamento" DefaultValue="01" Name="FKDepartamento" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Teléfono Habitual:</td>
                <td>
                    <asp:TextBox ID="txtTelefono1" runat="server" MaxLength="15"></asp:TextBox>
                </td>
                <td>Teléfono Secundario:</td>
                <td>
                    <asp:TextBox ID="txtAuxiliar" runat="server" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Celular:</td>
                <td>
                    <asp:TextBox ID="txtCelular" runat="server" MaxLength="15"></asp:TextBox>
                </td>
                <td>Página Web:</td>
                <td>
                    <asp:TextBox ID="txtPaginaWeb" runat="server" MaxLength="50" TextMode="Url"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Correo Electrónico:</td>
                <td>
                    <asp:TextBox ID="txtCorreoEletronico" runat="server" MaxLength="50" TextMode="Email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Nombre Contacto 1:</td>
                <td>
                    <asp:TextBox ID="txtContacto1" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Nombre Contrato 2:</td>
                <td>
                    <asp:TextBox ID="txtContacto2" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Servicio:</td>
                <td>
                    <asp:TextBox ID="txtServicio" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Activo:</td>
                <td>
                    <asp:RadioButton ID="rbActivo" runat="server" />
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
                    <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" Width="562px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <br />
    <asp:Button ID="BtnCrearProveedor" runat="server" OnClick="BtnCrearProveedor_Click" Text="Crear Proveedor" />
    <br />
    <asp:Label ID="lblError" runat="server"></asp:Label>
    <br />
    <br />
</asp:Content>
