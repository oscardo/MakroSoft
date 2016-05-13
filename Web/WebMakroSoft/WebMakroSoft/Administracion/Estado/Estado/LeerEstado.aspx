<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="LeerEstado.aspx.cs" Inherits="WebMakroSoft.Administracion.Estado.Estado.LeerEstado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Leer Estado</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="50">
            <Columns>
                <asp:BoundField DataField="Número de Estado" HeaderText="Número de Estado" ReadOnly="True" SortExpression="Número de Estado" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" ReadOnly="True" SortExpression="Estado" />
                <asp:BoundField DataField="Notas" HeaderText="Notas" ReadOnly="True" SortExpression="Notas" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultaEstado_select" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>

</asp:Content>
