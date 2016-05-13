<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="Remisiones.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Remisiones.Remisiones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Remisiones</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="50">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Nro Remision" HeaderText="Nro Remision" ReadOnly="True" SortExpression="Nro Remision" />
                <asp:BoundField DataField="Nombre Cliente" HeaderText="Nombre Cliente" ReadOnly="True" SortExpression="Nombre Cliente" />
                <asp:BoundField DataField="Nombre Proveedor" HeaderText="Nombre Proveedor" ReadOnly="True" SortExpression="Nombre Proveedor" />
                <asp:BoundField DataField="Nombre Departamento" HeaderText="Nombre Departamento" ReadOnly="True" SortExpression="Nombre Departamento" />
                <asp:BoundField DataField="Nombre Municipio" HeaderText="Nombre Municipio" ReadOnly="True" SortExpression="Nombre Municipio" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ReadOnly="True" SortExpression="Descripcion" />
                <asp:BoundField DataField="Fecha Inicio" HeaderText="Fecha Inicio" ReadOnly="True" SortExpression="Fecha Inicio" />
                <asp:BoundField DataField="Fecha Fin" HeaderText="Fecha Fin" ReadOnly="True" SortExpression="Fecha Fin" />
                <asp:BoundField DataField="Fecha Sistema" HeaderText="Fecha Sistema" ReadOnly="True" SortExpression="Fecha Sistema" />
                <asp:BoundField DataField="Valor Unidad" HeaderText="Valor Unidad" ReadOnly="True" SortExpression="Valor Unidad" />
                <asp:BoundField DataField="IVA Unidad" HeaderText="IVA Unidad" ReadOnly="True" SortExpression="IVA Unidad" />
                <asp:BoundField DataField="Valor Total" HeaderText="Valor Total" ReadOnly="True" SortExpression="Valor Total" />
                <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" ReadOnly="True" SortExpression="Subtotal" />
                <asp:BoundField DataField="IVA" HeaderText="IVA" ReadOnly="True" SortExpression="IVA" />
                <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
                <asp:BoundField DataField="Venta" HeaderText="Venta" ReadOnly="True" SortExpression="Venta" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" ReadOnly="True" SortExpression="Cantidad" />
                <asp:BoundField DataField="Diferencia" HeaderText="Diferencia" ReadOnly="True" SortExpression="Diferencia" />
                <asp:BoundField DataField="Diferencia Precio" HeaderText="Diferencia Precio" ReadOnly="True" SortExpression="Diferencia Precio" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultaRemisiones" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>

</asp:Content>
