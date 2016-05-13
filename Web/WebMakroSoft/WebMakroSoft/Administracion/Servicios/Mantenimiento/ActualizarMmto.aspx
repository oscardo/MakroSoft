<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="ActualizarMmto.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Mantenimiento.ActualizarMmto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Actualizar Mantenimiento</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="50">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Nro Mantenimiento" HeaderText="Nro Mantenimiento" ReadOnly="True" SortExpression="Nro Mantenimiento" />
                <asp:BoundField DataField="Notas de Equipo" HeaderText="Notas de Equipo" ReadOnly="True" SortExpression="Notas de Equipo" />
                <asp:BoundField DataField="Nombre del Tecnico" HeaderText="Nombre del Tecnico" ReadOnly="True" SortExpression="Nombre del Tecnico" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" ReadOnly="True" SortExpression="Estado" />
                <asp:BoundField DataField="Planilla Mmto" HeaderText="Planilla Mmto" ReadOnly="True" SortExpression="Planilla Mmto" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" SortExpression="Fecha" />
                <asp:BoundField DataField="Fecha Sistema" HeaderText="Fecha Sistema" ReadOnly="True" SortExpression="Fecha Sistema" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultaMantenimientos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>
</asp:Content>
