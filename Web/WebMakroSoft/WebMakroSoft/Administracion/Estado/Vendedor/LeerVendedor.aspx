<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="LeerVendedor.aspx.cs" Inherits="WebMakroSoft.Administracion.Estado.Vendedor.LeerVendedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Leer Vendedor</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="50">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Nro Vendedor" HeaderText="Nro Vendedor" ReadOnly="True" SortExpression="Nro Vendedor" />
                <asp:BoundField DataField="Nombre Departamento" HeaderText="Nombre Departamento" ReadOnly="True" SortExpression="Nombre Departamento" />
                <asp:BoundField DataField="Nombre Municipio" HeaderText="Nombre Municipio" ReadOnly="True" SortExpression="Nombre Municipio" />
                <asp:BoundField DataField="Tipo Documento" HeaderText="Tipo Documento" ReadOnly="True" SortExpression="Tipo Documento" />
                <asp:BoundField DataField="Nombre Persona" HeaderText="Nombre Persona" ReadOnly="True" SortExpression="Nombre Persona" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" ReadOnly="True" SortExpression="Direccion" />
                <asp:BoundField DataField="Telefono 1" HeaderText="Telefono 1" ReadOnly="True" SortExpression="Telefono 1" />
                <asp:BoundField DataField="Telefono 2" HeaderText="Telefono 2" ReadOnly="True" SortExpression="Telefono 2" />
                <asp:BoundField DataField="Celular" HeaderText="Celular" ReadOnly="True" SortExpression="Celular" />
                <asp:BoundField DataField="Fotografia" HeaderText="Fotografia" ReadOnly="True" SortExpression="Fotografia" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultaVendedor_select" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>
</asp:Content>
