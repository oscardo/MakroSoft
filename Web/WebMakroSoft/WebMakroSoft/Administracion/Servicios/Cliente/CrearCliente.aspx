<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearCliente.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Cliente.CrearCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Crear Cliente</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nombre Cliente:</td>
                <td>
                    <asp:TextBox ID="TextBox22" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>NIT o Documento:</td>
                <td>
                    <asp:TextBox ID="TextBox23" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Departamento:</td>
                <td>
                    <asp:DropDownList ID="DDDepartamento" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NombreDepartamento" DataValueField="PKDepartamento">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreDepartamento], [PKDepartamento] FROM [Departamento]"></asp:SqlDataSource>
                </td>
                <td>Municipio:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="NombreMunicipio" DataValueField="PKMunicipio">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SELECT [NombreMunicipio], [PKMunicipio] FROM [Municipio] WHERE ([FKDepartamento] = @FKDepartamento)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DDDepartamento" DefaultValue="01" Name="FKDepartamento" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Teléfono Habitual (*): </td>
                <td>
                    <asp:TextBox ID="TextBox24" runat="server" MaxLength="15"></asp:TextBox>
                </td>
                <td>Teléfono Auxiliar:</td>
                <td>
                    <asp:TextBox ID="TextBox25" runat="server" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Celular:</td>
                <td>
                    <asp:TextBox ID="TextBox26" runat="server" MaxLength="15"></asp:TextBox>
                </td>
                <td>Dirección:</td>
                <td>
                    <asp:TextBox ID="TextBox27" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Nombre Representante Legal:</td>
                <td>
                    <asp:TextBox ID="TextBox28" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>Fecha:</td>
                <td>
                    <asp:TextBox ID="TextBox29" runat="server" MaxLength="50" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Correo Electrónico:</td>
                <td>
                    <asp:TextBox ID="TextBox30" runat="server" MaxLength="50" TextMode="Email"></asp:TextBox>
                </td>
                <td>Página web:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Activo:</td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Notas:</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:TextBox ID="TextBox31" runat="server" MaxLength="190" TextMode="MultiLine" Width="750px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>

</asp:Content>
