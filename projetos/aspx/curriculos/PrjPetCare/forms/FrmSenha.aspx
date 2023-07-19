<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmSenha.aspx.cs" Inherits="PrjPetCare.forms.FrmSenha" %>

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
                    <asp:Label ID="LblRedefinir" runat="server" Text="E-mail:"></asp:Label> <br />
                    <asp:TextBox ID="TxtRedefinir" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="BtnRedefinir" runat="server" Text="Enviar" CssClass="BtnEntrar"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>