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
                    <asp:Label ID="LblTipoUser" runat="server" Text="Entrar como:"></asp:Label>
                    <asp:DropDownList ID="DdlTipo" runat="server">
                        <asp:ListItem Selected="True">Administrador</asp:ListItem>
                        <asp:ListItem>RH</asp:ListItem>
                    </asp:DropDownList> <br />
                    <asp:Label ID="LblUser" runat="server" Text="Usuário:"></asp:Label> <br />
                    <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox> <br />
                    <asp:Label ID="LblSenha" runat="server" Text="Senha:"></asp:Label> <br />
                    <asp:TextBox ID="TxtSenha" runat="server" TextMode="Password"></asp:TextBox><br />
                    <a id="LblEsqSenha" href="FrmSenha.aspx">Esqueci minha senha</a><br />
                    <asp:Button ID="BtnEntrar" runat="server" Text="Entrar" CssClass="BtnEntrar" OnClick="BtnEntrar_Click"/>
                </div>
            </div>
        </div>

        <!-- Scripts - Bootstrap - Modal Popup-->
        <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
        <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
        <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css' media="screen" />
        <script type="text/javascript">
            function ShowPopup(title, body) {
                $("#MyPopup .modal-title").html(title);
                $("#MyPopup .modal-body").html(body);
                $("#MyPopup").modal("show");
            }
        </script>

        <!-- Bootstrap - Modal Popup-->
        <div id="MyPopup" class="modal t-modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                        <h4 class="modal-title">
                        </h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn t-modal btn-danger" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
