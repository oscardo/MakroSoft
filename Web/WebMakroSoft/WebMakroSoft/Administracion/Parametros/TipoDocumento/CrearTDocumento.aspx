﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Interno.Master" AutoEventWireup="true" CodeBehind="CrearTDocumento.aspx.cs" Inherits="WebMakroSoft.Administracion.Parametros.TipoDocumento.CrearTDocumento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Crear Tipo de Documento:</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Tipo de Documento:</td>
                <td>
                    <asp:TextBox ID="TextBox22" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Notas:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="TextBox21" runat="server" MaxLength="190" TextMode="MultiLine" Width="390px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>

</asp:Content>
