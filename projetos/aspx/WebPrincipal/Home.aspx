<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="Stt.css" />
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin /> 
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100&display=swap" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <div class="logo">
                    <img class="imglogo" src="images/logo.png" />
                </div>
                <div class="menu">
                    <div class="writing">
                        <a class="amenu" href="Hospedagem.aspx">Hospedagem</a>
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                        <a class="amenu" href="Loja.aspx">Loja</a>
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                        <a class="amenu" href="Blog.aspx">Blog</a>
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                        <a class="amenu" href="Adote.aspx">Adote</a>
                    </div>
                 </div>
            </div>
            <div class="tbody">
                <div class="banner">
                    <img class="imgbanner" src="images/petcarelarge.png" />
                </div>

                &nbsp;
                <div class="descrip">
                    <div class="dog">
                        <img class="imgdog" src="images/cachorros.png" />
                    </div>
                    <div class="conteudo">
                        <p class="textobody">A plataforma que une cuidadores e tutores em um só lugar! 
                        Além de disponibilizar os melhores produtos e dicas para os seus companheiros!</p>
                    </div>
                </div>
                &nbsp;

                <div class="servicos">
                    <div class="caixa">
                        <div class="grande">
                            <div class="imagemg">
                                <img class="imggrande" src="images/desenhocachorro.png" />
                                <a class="nomeg" href="Hospedagem.aspx">Hospedagem</a>
                            </div>
                            <div class="conteudog">
                                <p class="textog">A hospedagem de animais de estimação oferece um ambiente seguro e acolhedor para os pets enquanto seus donos estão ausentes.</p>
                            </div>
                        </div>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="pequeno">
                            <div class="imagemp">
                                <img class="imgpequeno" src="images/desenhocoelho.png" />
                                <a class="nomep" href="Loja.aspx">Loja</a>
                            </div>
                        </div>
                     </div>
                    &nbsp;
                    <div class="caixa">
                        <div class="pequeno">
                            <div class="imagemp">
                                <img class="imgpequeno" src="images/desenhopeixe.png" />
                                <a class="nomep" style="padding-left:140px;" href="Adote.aspx">Adote</a>
                            </div>
                        </div>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="grande">
                            <div class="imagemg">
                                <img class="imggrande" src="images/desenhopassarinho.png" />
                                <a class="nomeg" style="padding-left: 100px;" href="Blog.aspx">Blog</a>
                            </div>
                            <div class="conteudog">
                                <p class="textog">Os melhores cuidados, dicas, conselhos e histórias inspiradoras para promover o bem-estar e a felicidade de nossos queridos companheiros.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <p class="opniao"> O opnião de quem já conhece! </p>

                <div class="opnioes">
                    <div class="box">
                        <div class="perfil">
                            <img src="images/iconeperfil.png" />
                            <p class="nomel">Pessoa 1</p>
                        </div>
                        <div class="escrito">
                            <p class="textoe">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                        </div>
                        <div class="avaliacao">
                            <img class="imgava" src="images/estrelasavaliacao.png" />
                        </div>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="box">
                        <div class="perfil">
                            <img src="images/iconeperfil.png" />
                            <p class="nomel">Pessoa 1</p>
                        </div>
                        <div class="escrito">
                            <p class="textoe">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                        </div>
                        <div class="avaliacao">
                            <img class="imgava" src="images/estrelasavaliacao.png" />
                        </div>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="box">
                        <div class="perfil">
                            <img src="images/iconeperfil.png" />
                            <p class="nomel">Pessoa 1</p>
                        </div>
                        <div class="escrito">
                            <p class="textoe">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                        </div>
                        <div class="avaliacao">
                            <img class="imgava" src="images/estrelasavaliacao.png" />
                        </div>
                    </div>
                </div>
                &nbsp;

                <div class="footer">
                    <div class="info">
                        <div class="pontos">
                            <img class="imgp" src="images/pinlocalizacao.png" />
                            <p class="textop">Avenida Brigadeiro Faria Lima, 1500 - São Paulo, SP </p>
                        </div>
                        &nbsp;
                        <div class="pontos">
                            <img class="imgp" src="images/iconetelefone.png" />
                            <p class="textop">Capital 0800 7272 | Outras Cidades 0800 4545</p>
                        </div>
                        &nbsp;
                        <div class="pontos">
                            <img class="imgp" src="images/iconeemail.png" />
                            <p class="textop">&nbsp;equipepetcare@gmail.com</p>
                        </div>
                        &nbsp;
                        <div class="pontos">
                            <a href="https://www.instagram.com/equipe.petcare/">
                                <img class="imgp" src="images/iconeinsta.png"/>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="https://twitter.com/explore">
                                <img class="imgp" src="images/iconetwitter.png" />
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="https://www.facebook.com/">
                                <img class="imgp" src="images/iconeface.png" />
                            </a>
                        </div>
                    </div>
                    <div class="maps">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3657.178606639066!2d-46.6578536250622!3d-23.562027961615975!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce59c925263541%3A0x4b30df73fca5a36b!2sAv.%20Paulista%2C%201500%20-%20Bela%20Vista%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2001310-100!5e0!3m2!1sen!2sbr!4v1694374358466!5m2!1sen!2sbr" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
