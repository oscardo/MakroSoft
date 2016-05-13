﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="EliminarRol.aspx.cs" Inherits="WebMakroSoft.Administracion.Parametros.Roles.EliminarRol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Eliminar Roles</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="50">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Código Rol" HeaderText="Código Rol" ReadOnly="True" SortExpression="Código Rol" />
            <asp:BoundField DataField="Rol" HeaderText="Rol" ReadOnly="True" SortExpression="Rol" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultarRoles" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
