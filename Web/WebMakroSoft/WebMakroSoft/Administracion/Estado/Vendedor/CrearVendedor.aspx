<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearVendedor.aspx.cs" Inherits="WebMakroSoft.Administracion.Estado.Vendedor.CrearVendedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Crear Vendedor</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nombre del Vendedor:</td>
                <td>
                    <asp:TextBox ID="txtVendedor" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Departamento:</td>
                <td>
                    <asp:DropDownList ID="DDDepartamento" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NombreDepartamento" DataValueField="PKDepartamento">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [PKDepartamento], [NombreDepartamento] FROM [Departamento]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
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
                <td>Dirección:</td>
                <td>
                    <asp:TextBox ID="txtDireccion" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Teléfono Habitual:</td>
                <td>
                    <asp:TextBox ID="txtTelefono1" runat="server" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Teléfono:</td>
                <td>
                    <asp:TextBox ID="txtTelefono2" runat="server" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Celular:</td>
                <td>
                    <asp:TextBox ID="txtCelular" runat="server" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Fotografia:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" MaxLength="256"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Activo:</td>
                <td>
                    <asp:RadioButton ID="rbActivo" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Notas:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtNotas" runat="server" MaxLength="190"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
