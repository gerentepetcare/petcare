<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="PrjPetCare.forms.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/styles/StlLogin.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Tela">
            <div id="Login">
                <asp:Image ID="Logo" runat="server" ImageUrl="~/images/logo.png"/>
                <div id="Entrar">
                    <asp:Label ID="LblUser" runat="server" Text="Usuário:"></asp:Label> <br />
                    <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox> <br />
                    <asp:Label ID="LblSenha" runat="server" Text="Senha:"></asp:Label> <br />
                    <asp:TextBox ID="TxtSenha" runat="server"></asp:TextBox><br />
                    <a id="LblEsqSenha" href="FrmSenha.aspx">Esqueci minha senha</a><br />
                    <asp:Button ID="BtnEntrar" runat="server" Text="Entrar" CssClass="BtnEntrar"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
