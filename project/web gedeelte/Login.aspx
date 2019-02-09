<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="web_gedeelte.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Loginpagina</h3>
    <p>Om in te loggen, voer hieronder a.u.b. uw gebruiktersnaam en wachtwoord in.</p>


<body>
        <p>&nbsp;</p>
    <p>
        <asp:Login ID="Login1" runat="server">
        </asp:Login>    

    </p>
</body>
    </asp:Content>