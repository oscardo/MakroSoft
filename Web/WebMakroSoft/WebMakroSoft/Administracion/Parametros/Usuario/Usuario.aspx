<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="WebMakroSoft.Administracion.Parametros.Usuario.Usuario" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1">
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server">
    </asp:EntityDataSource>
</asp:Content>

