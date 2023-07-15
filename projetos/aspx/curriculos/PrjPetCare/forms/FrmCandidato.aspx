<%@ Page Language="C#" MasterPageFile="~/MstMenu.Master" AutoEventWireup="true" CodeBehind="FrmCandidato.aspx.cs" Inherits="PrjPetCare.forms.FrmCandidato" %>

<asp:Content id="FrmCandidato" ContentPlaceholderID="Corpo_Principal" runat="server">
    <div id="DivIdem">
        <asp:Image ID="ImgCandidato" runat="server" ImageUrl="~/images/Candidato.png" CssClass="ImgCandidato" />
        <asp:Button ID="BtnAceitar" runat="server" Text="ACEITAR" CssClass="BtnAceitar" />
        <asp:Button ID="BtnRejeitar" runat="server" Text="REJEITAR" CssClass="BtnRejeitar"/>
    </div>
    <div id="DivDados">
        <div id="DivNome" class="DivDados">
            <asp:Label ID="LblNome" runat="server" Text="Nome:" CssClass="LblDados"></asp:Label> <br />
            <asp:Label ID="LblData" runat="server" Text="Data de Nascimento:" CssClass="LblDados"></asp:Label> <br />
            <asp:Label ID="LblCPF" runat="server" Text="CPF:" CssClass="LblDados"></asp:Label> <br />
            <asp:Label ID="LblCelular" runat="server" Text="Celular:" CssClass="LblCelular"></asp:Label>
            <asp:Label ID="LblEmail" runat="server" Text="Email:" CssClass="LblDados"></asp:Label>
        </div>
    </div>
</asp:Content>