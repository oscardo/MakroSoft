<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearBodega.aspx.cs" Inherits="WebMakroSoft.Administracion.Inventario.Bodega.CrearBodega" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Creación de Bodega</p>
    <p>
        &nbsp;</p>
    <table style="width:100%;">
            <tr>
                <td>Nombre del Bodega:</td>
                <td>
                    <asp:TextBox ID="txtNombreBodega" runat="server" MaxLength="50"></asp:TextBox>
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
                <td style="height: 22px">Dirección:</td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtDireccion" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 22px">Nombre Responsable Principal:</td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtResponsable1" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Nombre Responsable Segundario:</td>
                <td>
                    <asp:TextBox ID="txtResponsable2" runat="server" MaxLength="50"></asp:TextBox>
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
                <td>Notas:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtNotas" runat="server" MaxLength="190" TextMode="MultiLine" Width="453px"></asp:TextBox>
                </td>
            </tr>
        </table>
    <asp:Button ID="BtnCrearBodega" runat="server" OnClick="BtnCrearBodega_Click" Text="Crear Bodega" />
    </p>
    <p>
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </p>
</asp:Content>
