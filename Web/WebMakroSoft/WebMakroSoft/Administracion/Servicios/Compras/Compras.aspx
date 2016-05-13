<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Compras.Compras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Compras</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="50">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Compras" HeaderText="Compras" ReadOnly="True" SortExpression="Compras" />
                <asp:BoundField DataField="Nombre Proveedor" HeaderText="Nombre Proveedor" ReadOnly="True" SortExpression="Nombre Proveedor" />
                <asp:BoundField DataField="Nombre Departamento" HeaderText="Nombre Departamento" ReadOnly="True" SortExpression="Nombre Departamento" />
                <asp:BoundField DataField="Nombre Municipio" HeaderText="Nombre Municipio" ReadOnly="True" SortExpression="Nombre Municipio" />
                <asp:BoundField DataField="Fecha Compra" HeaderText="Fecha Compra" ReadOnly="True" SortExpression="Fecha Compra" />
                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" ReadOnly="True" SortExpression="Observaciones" />
                <asp:BoundField DataField="Garantia" HeaderText="Garantia" ReadOnly="True" SortExpression="Garantia" />
                <asp:BoundField DataField="Exterdida Garantia" HeaderText="Exterdida Garantia" ReadOnly="True" SortExpression="Exterdida Garantia" />
                <asp:BoundField DataField="Factura Compra" HeaderText="Factura Compra" ReadOnly="True" SortExpression="Factura Compra" />
                <asp:BoundField DataField="Ruta Fotografia" HeaderText="Ruta Fotografia" ReadOnly="True" SortExpression="Ruta Fotografia" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" ReadOnly="True" SortExpression="Cantidad" />
                <asp:BoundField DataField="Valor Unidad" HeaderText="Valor Unidad" ReadOnly="True" SortExpression="Valor Unidad" />
                <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" ReadOnly="True" SortExpression="SubTotal" />
                <asp:BoundField DataField="IVA" HeaderText="IVA" ReadOnly="True" SortExpression="IVA" />
                <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
                <asp:BoundField DataField="Cantidad Recibida" HeaderText="Cantidad Recibida" ReadOnly="True" SortExpression="Cantidad Recibida" />
                <asp:BoundField DataField="Saldo" HeaderText="Saldo" ReadOnly="True" SortExpression="Saldo" />
                <asp:BoundField DataField="Descuento" HeaderText="Descuento" ReadOnly="True" SortExpression="Descuento" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultaCompras" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>

</asp:Content>
