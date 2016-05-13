<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="EliminarProveedor.aspx.cs" Inherits="WebMakroSoft.Administracion.Inventario.Proveedor.EliminarProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Eliminar Proveedor</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="50">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Nro Proveedor" HeaderText="Nro Proveedor" ReadOnly="True" SortExpression="Nro Proveedor" />
                <asp:BoundField DataField="Nombre Departamento" HeaderText="Nombre Departamento" ReadOnly="True" SortExpression="Nombre Departamento" />
                <asp:BoundField DataField="Nombre Municipio" HeaderText="Nombre Municipio" ReadOnly="True" SortExpression="Nombre Municipio" />
                <asp:BoundField DataField="Nombre Proveedor" HeaderText="Nombre Proveedor" ReadOnly="True" SortExpression="Nombre Proveedor" />
                <asp:BoundField DataField="Nit" HeaderText="Nit" ReadOnly="True" SortExpression="Nit" />
                <asp:BoundField DataField="Telefono1" HeaderText="Telefono1" ReadOnly="True" SortExpression="Telefono1" />
                <asp:BoundField DataField="Telefono2" HeaderText="Telefono2" ReadOnly="True" SortExpression="Telefono2" />
                <asp:BoundField DataField="Celular" HeaderText="Celular" ReadOnly="True" SortExpression="Celular" />
                <asp:BoundField DataField="Nombre Contacto" HeaderText="Nombre Contacto" ReadOnly="True" SortExpression="Nombre Contacto" />
                <asp:BoundField DataField="Nombre Contacto 2" HeaderText="Nombre Contacto 2" ReadOnly="True" SortExpression="Nombre Contacto 2" />
                <asp:BoundField DataField="Servicios" HeaderText="Servicios" ReadOnly="True" SortExpression="Servicios" />
                <asp:BoundField DataField="Correo Electrónico" HeaderText="Correo Electrónico" ReadOnly="True" SortExpression="Correo Electrónico" />
                <asp:BoundField DataField="Pagina Web" HeaderText="Pagina Web" ReadOnly="True" SortExpression="Pagina Web" />
                <asp:CheckBoxField DataField="Activo" HeaderText="Activo" ReadOnly="True" SortExpression="Activo" />
                <asp:BoundField DataField="Notas" HeaderText="Notas" ReadOnly="True" SortExpression="Notas" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultaProveedores" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>
</asp:Content>
