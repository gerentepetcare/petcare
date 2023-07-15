<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="PrjPetCare.forms.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/styles/Login.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="tela">
            <div id="login">
                <asp:Image ID="logo" runat="server" ImageUrl="~/images/logo.png"/>
                <div id="user">
                    <asp:Label ID="LblUser" runat="server" Text="Usuário:"></asp:Label> <br />
                    <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox><br />
                    <asp:Label ID="LblSenha" runat="server" Text="Senha:"></asp:Label><br />
                    <asp:TextBox ID="TxtSenha" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
