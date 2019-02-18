<%@ Page Title="Registreer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registreer.aspx.cs" Inherits="web_gedeelte.Registreer" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Registreerpagina</h3>
    <p>Wat leuk dat je je wilt registreren! Om te registreren vul je hieronder je email-adres en je wachtwoord in.<asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
        </asp:CreateUserWizard>
    </p>
<body>
    
</body>
    </asp:Content>