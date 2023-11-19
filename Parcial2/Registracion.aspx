<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registracion.aspx.cs" Inherits="Parcial2.Registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Registración</h3>
    <div id="formularioRegistracion">

<p>
    Email:
    <asp:TextBox ID="TextBox1" runat="server" Width="366px" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Debe ser formato mail" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Username:
    <asp:TextBox ID="TextBox2" runat="server" Width="208px"></asp:TextBox>
</p>
<p>
    Edad:
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Debe ser mayor de 15 años" ForeColor="Red" MaximumValue="99" MinimumValue="15" Type="Integer"></asp:RangeValidator>
</p>
<p>
    Contraseña:
    <asp:TextBox ID="TextBox4" runat="server" Width="291px" TextMode="Password"></asp:TextBox>
</p>
<p>
    Repetir contraseña:
    <asp:TextBox ID="TextBox5" runat="server" Width="291px" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red"></asp:CompareValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Registrarme" Width="264px" OnClick="Button1_Click" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</p>
    </div>

</asp:Content>
