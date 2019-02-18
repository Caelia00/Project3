<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web_gedeelte._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Welkom op onze pagina!</h3>
    <p>
        Deze website bevat knoppen om naar verschillende onderwerpen te gaan. Om naar de onderwerpen te gaan moet er gewoon
        op de knoppen worden geklikt. Elk onderwerp heeft zijn eigen uitleg.
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </ContentTemplate>
    </asp:UpdatePanel>
    <p>Veel plezier!</p>

    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
        <ContentTemplate>
            <label class="switch">
                <asp:CheckBox ID="checkbox1" runat="server"
                    AutoPostBack="True"
                    OnCheckedChanged="click" />
                <span class="slider round"></span>
            </label>
        </ContentTemplate>
    </asp:UpdatePanel>
    </body>
</asp:Content>
