<%@ Page Title="Besturing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Besturing.aspx.cs" Inherits="web_gedeelte.Besturing" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
        <ContentTemplate>
    <h3>Besturingspagina</h3>
    <p>Op deze pagina staat de besturing simpel weergegeven en kan ook worden getest.</p>
<body>
        <asp:Button ID="btn_woonkamperlamp" runat="server" Text="Woonkamer lamp aan/uit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_keukenlamp" runat="server" Text="Keuken lamp aan/uit" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btw_slaapkamerlamp_links" runat="server" Text="Slaapkamer links lamp aan/uit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_slaapkamerlamp_rechts" runat="server" Text="Slaapkamer rechts lamp aan/uit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_zolderlamp" runat="server" Text="Zolder lamp aan/uit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <br />
    <br />
    <asp:Button ID="btn_links" runat="server" Text="Linker gordijn omlaag/omhoog" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btwn_rechts" runat="server" Text="Rechter gordijn omlaag/omhoog" />
        <br />
        <br />
        <asp:Button ID="btn_kachel_omhoog" runat="server" Text="Kachel temp. omhoog" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_kachel_omlaag" runat="server" Text="Kachel temp. omlaag" OnClick="btn_kachel_omlaag_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<p>
            <asp:Label ID="Label1" runat="server" Text="Voer in hoe hoog de temperatuur van de kachel moet zijn:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_kachel" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="De kachel kan niet lager zijn dan 12 en niet hoger dan 35 graden!!" MaximumValue="35" MinimumValue="12" ControlToValidate="txt_kachel"></asp:RangeValidator>
        </p>
    
        </ContentTemplate>
    </asp:UpdatePanel>
</body>
</asp:Content>
