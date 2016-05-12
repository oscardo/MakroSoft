<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="WebMakroSoft.Administracion.Parametros.Usuario.Usuario" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    Usuarios Registrados en la Aplicación<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="Departamento" HeaderText="Departamento" ReadOnly="True" SortExpression="Departamento" />
        <asp:BoundField DataField="Municipio" HeaderText="Municipio" ReadOnly="True" SortExpression="Municipio" />
        <asp:BoundField DataField="Rol" HeaderText="Rol" ReadOnly="True" SortExpression="Rol" />
        <asp:BoundField DataField="Nombre Usuario" HeaderText="Nombre Usuario" ReadOnly="True" SortExpression="Nombre Usuario" />
        <asp:BoundField DataField="Celular" HeaderText="Celular" ReadOnly="True" SortExpression="Celular" />
        <asp:BoundField DataField="Correo Electrónico" HeaderText="Correo Electrónico" ReadOnly="True" SortExpression="Correo Electrónico" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="select isnull(D.NombreDepartamento, '') Departamento, 
isnull(M.NombreMunicipio, '') Municipio, 
isnull(R.Rol, '') Rol, isnull(U.NombreUsuario, '') [Nombre Usuario], 
Isnull(U.Celular, '') Celular, 
Isnull(U.CorreoElectronico, '') [Correo Electrónico] 
from usuario U
left join Departamento D on U.FKDepartamento = D.PKDepartamento
left join Municipio M on U.FKMunicipio = M.NombreMunicipio
Left join Roles R on R.PKRol = U.FKRol
"></asp:SqlDataSource>
</asp:Content>

