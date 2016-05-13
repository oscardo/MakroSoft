<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="EliminarVentas.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Ventas.EliminarVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>
        Eliminar Ventas</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="50">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Nro Ventas" HeaderText="Nro Ventas" ReadOnly="True" SortExpression="Nro Ventas" />
                <asp:BoundField DataField="Nombre Persona" HeaderText="Nombre Persona" ReadOnly="True" SortExpression="Nombre Persona" />
                <asp:BoundField DataField="Tipo Documento" HeaderText="Tipo Documento" ReadOnly="True" SortExpression="Tipo Documento" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ReadOnly="True" SortExpression="Descripcion" />
                <asp:BoundField DataField="Nombre Referencia" HeaderText="Nombre Referencia" ReadOnly="True" SortExpression="Nombre Referencia" />
                <asp:BoundField DataField="Nit" HeaderText="Nit" ReadOnly="True" SortExpression="Nit" />
                <asp:BoundField DataField="Cedula" HeaderText="Cedula" ReadOnly="True" SortExpression="Cedula" />
                <asp:BoundField DataField="Telefono 1" HeaderText="Telefono 1" ReadOnly="True" SortExpression="Telefono 1" />
                <asp:BoundField DataField="Telefono 2" HeaderText="Telefono 2" ReadOnly="True" SortExpression="Telefono 2" />
                <asp:BoundField DataField="Celular" HeaderText="Celular" ReadOnly="True" SortExpression="Celular" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultaVentas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>

</asp:Content>
