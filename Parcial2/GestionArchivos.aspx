<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GestionArchivos.aspx.cs" Inherits="Parcial2.GestionArchivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>Cargar archivo
        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar archivo/s" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:ButtonField AccessibleHeaderText="Descargar" ButtonType="Button" CommandName="Descargar" Text="DESCARGAR" />
            </Columns>
        </asp:GridView>
    </p>

</asp:Content>
