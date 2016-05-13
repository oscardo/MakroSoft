<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="LeerBodega.aspx.cs" Inherits="WebMakroSoft.Administracion.Inventario.Bodega.LeerBodega" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Leer Bodega</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="50">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Bodega" HeaderText="Bodega" ReadOnly="True" SortExpression="Bodega" />
                <asp:BoundField DataField="Nombre Departamento" HeaderText="Nombre Departamento" ReadOnly="True" SortExpression="Nombre Departamento" />
                <asp:BoundField DataField="Nombre Municipio" HeaderText="Nombre Municipio" ReadOnly="True" SortExpression="Nombre Municipio" />
                <asp:BoundField DataField="Nombre Bodega" HeaderText="Nombre Bodega" ReadOnly="True" SortExpression="Nombre Bodega" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" ReadOnly="True" SortExpression="Direccion" />
                <asp:BoundField DataField="Responsable1" HeaderText="Responsable1" ReadOnly="True" SortExpression="Responsable1" />
                <asp:BoundField DataField="Responsable2" HeaderText="Responsable2" ReadOnly="True" SortExpression="Responsable2" />
                <asp:BoundField DataField="Telefono1" HeaderText="Telefono1" ReadOnly="True" SortExpression="Telefono1" />
                <asp:BoundField DataField="Telefono2" HeaderText="Telefono2" ReadOnly="True" SortExpression="Telefono2" />
                <asp:BoundField DataField="Celular" HeaderText="Celular" ReadOnly="True" SortExpression="Celular" />
                <asp:BoundField DataField="notas" HeaderText="notas" ReadOnly="True" SortExpression="notas" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultaBodega_select" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>
</asp:Content>
