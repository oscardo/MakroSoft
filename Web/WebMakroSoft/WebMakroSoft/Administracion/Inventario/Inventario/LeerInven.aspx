<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="LeerInven.aspx.cs" Inherits="WebMakroSoft.Administracion.Inventario.Inventario.LeerInven" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Leer Inventario</p>
    <p>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" >
            <WizardSteps>
                <asp:WizardStep runat="server" title="Inventario">

                    <asp:GridView ID="gvInventario" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="20" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Nro. Inventario" HeaderText="Nro. Inventario" ReadOnly="True" SortExpression="Nro. Inventario" />
                <asp:BoundField DataField="Nombre Proveedor" HeaderText="Nombre Proveedor" ReadOnly="True" SortExpression="Nombre Proveedor" />
                <asp:BoundField DataField="Nombre Bodega" HeaderText="Nombre Bodega" ReadOnly="True" SortExpression="Nombre Bodega" />
                <asp:BoundField DataField="Nombre Quien Reporta" HeaderText="Nombre Quien Reporta" ReadOnly="True" SortExpression="Nombre Quien Reporta" />
                <asp:BoundField DataField="Descripción" HeaderText="Descripción" ReadOnly="True" SortExpression="Descripción" />
                <asp:BoundField DataField="Factura Compra" HeaderText="Factura Compra" ReadOnly="True" SortExpression="Factura Compra" />
                <asp:BoundField DataField="Ruta Fotografia" HeaderText="Ruta Fotografia" ReadOnly="True" SortExpression="Ruta Fotografia" Visible="False" />
                <asp:BoundField DataField="Fecha Factura" HeaderText="Fecha Factura" ReadOnly="True" SortExpression="Fecha Factura" Visible="False" />
                <asp:BoundField DataField="Fecha Sistema" HeaderText="Fecha Sistema" ReadOnly="True" SortExpression="Fecha Sistema" Visible="False" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" ReadOnly="True" SortExpression="Cantidad" />
                <asp:BoundField DataField="Valor Unidad" HeaderText="Valor Unidad" ReadOnly="True" SortExpression="Valor Unidad" Visible="False" />
                <asp:BoundField DataField="IVA" HeaderText="IVA" ReadOnly="True" SortExpression="IVA" Visible="False" />
                <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" Visible="False" />
                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" ReadOnly="True" SortExpression="Observaciones" Visible="False" />
                <asp:BoundField DataField="Cantidad Recibida" HeaderText="Cantidad Recibida" ReadOnly="True" SortExpression="Cantidad Recibida" Visible="False" />
                <asp:BoundField DataField="Fecha Mmto" HeaderText="Fecha Mmto" ReadOnly="True" SortExpression="Fecha Mmto" Visible="False" />
                <asp:BoundField DataField="Planilla Mmto" HeaderText="Planilla Mmto" ReadOnly="True" SortExpression="Planilla Mmto" Visible="False" />
                <asp:CheckBoxField DataField="Activo" HeaderText="Activo" ReadOnly="True" SortExpression="Activo" Visible="False" />
                <asp:BoundField DataField="Notas Operación" HeaderText="Notas Operación" ReadOnly="True" SortExpression="Notas Operación" Visible="False" />
                <asp:BoundField DataField="Notas Transacción" HeaderText="Notas Transacción" ReadOnly="True" SortExpression="Notas Transacción" Visible="False" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultaInventario_select" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Detalle">
                    <asp:GridView ID="gvDetalle" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Nro de Detalle" HeaderText="Nro de Detalle" ReadOnly="True" SortExpression="Nro de Detalle" />
                            <asp:BoundField DataField="Dependencia" HeaderText="Dependencia" ReadOnly="True" SortExpression="Dependencia" />
                            <asp:BoundField DataField="Contactar" HeaderText="Contactar" ReadOnly="True" SortExpression="Contactar" />
                            <asp:BoundField DataField="Fecha Entrada" HeaderText="Fecha Entrada" ReadOnly="True" SortExpression="Fecha Entrada" />
                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" ReadOnly="True" SortExpression="Direccion" />
                            <asp:BoundField DataField="Piso" HeaderText="Piso" ReadOnly="True" SortExpression="Piso" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" ReadOnly="True" SortExpression="Telefono" />
                            <asp:BoundField DataField="Fecha Salida" HeaderText="Fecha Salida" ReadOnly="True" SortExpression="Fecha Salida" />
                            <asp:CheckBoxField DataField="CPU" HeaderText="CPU" ReadOnly="True" SortExpression="CPU" />
                            <asp:BoundField DataField="Nombre CPU" HeaderText="Nombre CPU" ReadOnly="True" SortExpression="Nombre CPU" />
                            <asp:CheckBoxField DataField="Monitor" HeaderText="Monitor" ReadOnly="True" SortExpression="Monitor" />
                            <asp:BoundField DataField="Nombre Monitor" HeaderText="Nombre Monitor" ReadOnly="True" SortExpression="Nombre Monitor" />
                            <asp:CheckBoxField DataField="Impresora" HeaderText="Impresora" ReadOnly="True" SortExpression="Impresora" />
                            <asp:BoundField DataField="Nombre Impresora" HeaderText="Nombre Impresora" ReadOnly="True" SortExpression="Nombre Impresora" />
                            <asp:CheckBoxField DataField="DVD" HeaderText="DVD" ReadOnly="True" SortExpression="DVD" />
                            <asp:BoundField DataField="Nombre DVD" HeaderText="Nombre DVD" ReadOnly="True" SortExpression="Nombre DVD" />
                            <asp:CheckBoxField DataField="DiscoDuro" HeaderText="DiscoDuro" ReadOnly="True" SortExpression="DiscoDuro" />
                            <asp:BoundField DataField="Nombre DiscoDuro" HeaderText="Nombre DiscoDuro" ReadOnly="True" SortExpression="Nombre DiscoDuro" />
                            <asp:CheckBoxField DataField="Teclado" HeaderText="Teclado" ReadOnly="True" SortExpression="Teclado" />
                            <asp:BoundField DataField="Nombre Teclado" HeaderText="Nombre Teclado" ReadOnly="True" SortExpression="Nombre Teclado" />
                            <asp:CheckBoxField DataField="Mouse" HeaderText="Mouse" ReadOnly="True" SortExpression="Mouse" />
                            <asp:BoundField DataField="Nombre Mouse" HeaderText="Nombre Mouse" ReadOnly="True" SortExpression="Nombre Mouse" />
                            <asp:CheckBoxField DataField="Scanner" HeaderText="Scanner" ReadOnly="True" SortExpression="Scanner" />
                            <asp:BoundField DataField="Nombre Scanner" HeaderText="Nombre Scanner" ReadOnly="True" SortExpression="Nombre Scanner" />
                            <asp:CheckBoxField DataField="Office" HeaderText="Office" ReadOnly="True" SortExpression="Office" />
                            <asp:BoundField DataField="Nombre Office" HeaderText="Nombre Office" ReadOnly="True" SortExpression="Nombre Office" />
                            <asp:BoundField DataField="Clave Office" HeaderText="Clave Office" ReadOnly="True" SortExpression="Clave Office" />
                            <asp:CheckBoxField DataField="Memoria" HeaderText="Memoria" ReadOnly="True" SortExpression="Memoria" />
                            <asp:BoundField DataField="Nombre Memoria" HeaderText="Nombre Memoria" ReadOnly="True" SortExpression="Nombre Memoria" />
                            <asp:CheckBoxField DataField="SOperativo" HeaderText="SOperativo" ReadOnly="True" SortExpression="SOperativo" />
                            <asp:BoundField DataField="Sistema Operativo" HeaderText="Sistema Operativo" ReadOnly="True" SortExpression="Sistema Operativo" />
                            <asp:BoundField DataField="Clave SO" HeaderText="Clave SO" ReadOnly="True" SortExpression="Clave SO" />
                            <asp:CheckBoxField DataField="Correo" HeaderText="Correo" ReadOnly="True" SortExpression="Correo" />
                            <asp:BoundField DataField="Correo Electronico" HeaderText="Correo Electronico" ReadOnly="True" SortExpression="Correo Electronico" />
                            <asp:CheckBoxField DataField="Antivirus" HeaderText="Antivirus" ReadOnly="True" SortExpression="Antivirus" />
                            <asp:BoundField DataField="Nombre Antivirus" HeaderText="Nombre Antivirus" ReadOnly="True" SortExpression="Nombre Antivirus" />
                            <asp:BoundField DataField="Clave Antivirus" HeaderText="Clave Antivirus" ReadOnly="True" SortExpression="Clave Antivirus" />
                            <asp:CheckBoxField DataField="Conexion Red" HeaderText="Conexion Red" ReadOnly="True" SortExpression="Conexion Red" />
                            <asp:CheckBoxField DataField="Otro" HeaderText="Otro" ReadOnly="True" SortExpression="Otro" />
                            <asp:BoundField DataField="Otro No Referenciado" HeaderText="Otro No Referenciado" ReadOnly="True" SortExpression="Otro No Referenciado" />
                            <asp:BoundField DataField="Nombre Reporta" HeaderText="Nombre Reporta" ReadOnly="True" SortExpression="Nombre Reporta" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ReadOnly="True" SortExpression="Descripcion" />
                            <asp:BoundField DataField="Descripcion Detallada" HeaderText="Descripcion Detallada" ReadOnly="True" SortExpression="Descripcion Detallada" />
                            <asp:CheckBoxField DataField="Preventivo" HeaderText="Preventivo" ReadOnly="True" SortExpression="Preventivo" />
                            <asp:CheckBoxField DataField="Correctivo" HeaderText="Correctivo" ReadOnly="True" SortExpression="Correctivo" />
                            <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" ReadOnly="True" SortExpression="Observaciones" />
                            <asp:BoundField DataField="Fecha Sistema" HeaderText="Fecha Sistema" ReadOnly="True" SortExpression="Fecha Sistema" />
                            <asp:BoundField DataField="Valor Unidad" HeaderText="Valor Unidad" ReadOnly="True" SortExpression="Valor Unidad" />
                            <asp:BoundField DataField="IVA Unidad" HeaderText="IVA Unidad" ReadOnly="True" SortExpression="IVA Unidad" />
                            <asp:BoundField DataField="Retencion Unidad" HeaderText="Retencion Unidad" ReadOnly="True" SortExpression="Retencion Unidad" />
                            <asp:BoundField DataField="Valor Total" HeaderText="Valor Total" ReadOnly="True" SortExpression="Valor Total" />
                            <asp:BoundField DataField="IVA Total" HeaderText="IVA Total" ReadOnly="True" SortExpression="IVA Total" />
                            <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" ReadOnly="True" SortExpression="SubTotal" />
                            <asp:BoundField DataField="Retencion Total" HeaderText="Retencion Total" ReadOnly="True" SortExpression="Retencion Total" />
                            <asp:BoundField DataField="Notas" HeaderText="Notas" ReadOnly="True" SortExpression="Notas" />
                            <asp:CheckBoxField DataField="Activo Inventario" HeaderText="Activo Inventario" ReadOnly="True" SortExpression="Activo Inventario" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MakroSoftDB2ConnectionString %>" SelectCommand="SPConsultarDetalleVenta_Remision_Select" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:CookieParameter CookieName="CKDetalle_Venta" DefaultValue="01" Name="Detalle_VentaRemision" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </p>
    <p>
        
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
