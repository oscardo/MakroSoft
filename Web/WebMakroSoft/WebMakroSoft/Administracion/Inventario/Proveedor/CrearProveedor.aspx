<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearProveedor.aspx.cs" Inherits="WebMakroSoft.Administracion.Inventario.Proveedor.CrearProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Crear Proveedor</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nombre Proveedor:</td>
                <td>
                    <asp:TextBox ID="TextBox21" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Nit:</td>
                <td>
                    <asp:TextBox ID="TextBox22" runat="server" MaxLength="50"></asp:TextBox>
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
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="NombreMunicipio" DataValueField="PKMunicipio">
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
                    <asp:TextBox ID="TextBox23" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Teléfono Secundario:</td>
                <td>
                    <asp:TextBox ID="TextBox24" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Celular:</td>
                <td>
                    <asp:TextBox ID="TextBox25" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Página Web:</td>
                <td>
                    <asp:TextBox ID="TextBox26" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Correo Electrónico:</td>
                <td>
                    <asp:TextBox ID="TextBox27" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Nombre Contacto 1:</td>
                <td>
                    <asp:TextBox ID="TextBox28" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Nombre Contrato 2:</td>
                <td>
                    <asp:TextBox ID="TextBox29" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Servicio:</td>
                <td>
                    <asp:TextBox ID="TextBox30" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Activo:</td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" />
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
                    <asp:TextBox ID="TextBox31" runat="server" MaxLength="50" Width="562px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <br />
</asp:Content>
