<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="Equipo.aspx.cs" Inherits="WebMakroSoft.Administracion.Servicios.Equipo.Equipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Equipos</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="50">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Número Equipo" HeaderText="Número Equipo" ReadOnly="True" SortExpression="Número Equipo" />
                <asp:BoundField DataField="Cantidad Recibida" HeaderText="Cantidad Recibida" ReadOnly="True" SortExpression="Cantidad Recibida" />
                <asp:BoundField DataField="Nombre Tipo" HeaderText="Nombre Tipo" ReadOnly="True" SortExpression="Nombre Tipo" />
                <asp:BoundField DataField="Nombre Fabricante" HeaderText="Nombre Fabricante" ReadOnly="True" SortExpression="Nombre Fabricante" />
                <asp:BoundField DataField="Nombre Procesador" HeaderText="Nombre Procesador" ReadOnly="True" SortExpression="Nombre Procesador" />
                <asp:BoundField DataField="Nombre Cliente" HeaderText="Nombre Cliente" ReadOnly="True" SortExpression="Nombre Cliente" />
                <asp:BoundField DataField="Nombre Equipo" HeaderText="Nombre Equipo" ReadOnly="True" SortExpression="Nombre Equipo" />
                <asp:BoundField DataField="Sistema Operativo" HeaderText="Sistema Operativo" ReadOnly="True" SortExpression="Sistema Operativo" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ReadOnly="True" SortExpression="Descripcion" />
                <asp:BoundField DataField="Serial" HeaderText="Serial" ReadOnly="True" SortExpression="Serial" />
                <asp:BoundField DataField="Board" HeaderText="Board" ReadOnly="True" SortExpression="Board" />
                <asp:BoundField DataField="RAM" HeaderText="RAM" ReadOnly="True" SortExpression="RAM" />
                <asp:BoundField DataField="Disco Duro" HeaderText="Disco Duro" ReadOnly="True" SortExpression="Disco Duro" />
                <asp:BoundField DataField="Mouse" HeaderText="Mouse" ReadOnly="True" SortExpression="Mouse" />
                <asp:BoundField DataField="Clave Windows" HeaderText="Clave Windows" ReadOnly="True" SortExpression="Clave Windows" />
                <asp:BoundField DataField="Clave Office" HeaderText="Clave Office" ReadOnly="True" SortExpression="Clave Office" />
                <asp:BoundField DataField="Clave Antivirus" HeaderText="Clave Antivirus" ReadOnly="True" SortExpression="Clave Antivirus" />
                <asp:BoundField DataField="Clave Otros" HeaderText="Clave Otros" ReadOnly="True" SortExpression="Clave Otros" />
                <asp:BoundField DataField="Clave Otros 2" HeaderText="Clave Otros 2" ReadOnly="True" SortExpression="Clave Otros 2" />
                <asp:BoundField DataField="Clave Otros 3" HeaderText="Clave Otros 3" ReadOnly="True" SortExpression="Clave Otros 3" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" ReadOnly="True" SortExpression="Cantidad" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultaEquipos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>

</asp:Content>
