<%-- 
    Document   : registro
    Created on : 20/10/2018, 02:34:02 PM
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Balay Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="" />

        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico">

        <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">

        <!-- Animate.css -->
        <link rel="stylesheet" href="../css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="../css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="../css/bootstrap.css">
        <!-- Flexslider  -->
        <link rel="stylesheet" href="../css/flexslider.css">
        <!-- Flaticons  -->
        <link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="../css/owl.carousel.min.css">
        <link rel="stylesheet" href="../css/owl.theme.default.min.css">
        <!-- Theme style  -->
        <link rel="stylesheet" href="../css/style.css">

        <!-- Modernizr JS -->
        <script src="../js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>
        <div id="colorlib-page">
            <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
            <aside id="colorlib-aside" role="complementary" class="border js-fullheight">
                <h1 id="colorlib-logo"><a href="index.html">Examen Segundo Parcial</a></h1>
                <nav id="colorlib-main-menu" role="navigation">
                    <ul>
                        <li class="colorlib-active"><a href="../index.jsp">Inicio</a></li>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="../about.html">A cerca de</a></li>
                        <li><a href="registro.jsp">Registros</a></li>
                        <li><a href="consulta.jsp">Consulta</a></li>
                        <li><a href="../contact.html">Contacto</a></li>
                    </ul>
                </nav>

                <div class="colorlib-footer">
                    <ul>
                        <li><a href="#"><i class="icon-facebook2"></i></a></li>
                        <li><a href="#"><i class="icon-twitter2"></i></a></li>
                        <li><a href="#"><i class="icon-instagram"></i></a></li>
                        <li><a href="#"><i class="icon-linkedin2"></i></a></li>
                    </ul>
                </div>
            </aside>

            <div id="colorlib-main">

                <div class="colorlib-contact">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
                                <span class="heading-meta">Registra tus datos</span>
                                <h2 class="colorlib-heading">Primero necesitamos saber un poco más de ti...</h2>
                            </div>
                        </div>
                        <div class="row">
                            <form action="../RegistroServlet" method="post" data-validate="Tienes que llenar este campo">
                                <div class="col-md-5">
                                    <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                                        <div class="colorlib-icon">
                                            <img src="../img/usuario.png" alt="usuario" width="50px">
                                        </div>
                                        <div class="colorlib-text">
                                            <p><a href="#">info@domain.com</a></p>
                                        </div>
                                    </div>

                                    <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                                        <div class="colorlib-icon">
                                            <img src="../img/mapa.png" alt="ubicacion" width="50px">
                                        </div>
                                        <div class="colorlib-text">
                                            <label class="label-input100" for="ubicacion">Ubicación</label>
                                            <input type="text" class="form-control" name="ubi" placeholder="Ciudad y país...">
                                        </div>
                                    </div>

                                    <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                                        <div class="colorlib-icon">
                                            <img src="../img/telefono.png" alt="telefono" width="50px">
                                        </div>
                                        <div class="colorlib-text">
                                            <label class="label-input100" for="telefono">Telefono</label>
                                            <input type="tel" class="form-control" name="telefono" placeholder="Número de telefono...">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 col-md-push-1">
                                    <div class="row">
                                        <div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box" data-animate-effect="fadeInLeft">
                                            <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                                                <div class="colorlib-icon">
                                                    <img src="../img/usuarios.png" alt="usuarios" width="50px">
                                                </div>
                                                <div class="colorlib-text">
                                                    <label class="label-input100" for="nombre">Nombre</label>
                                                    <input type="text" class="form-control" name="nombre" placeholder="Nombre...">
                                                </div>
                                                <div class="colorlib-text">
                                                    <label class="label-input100" for="apellidop">Apellido Paterno</label>
                                                    <input type="text" class="form-control" name="apellidop" placeholder="Apellido paterno...">
                                                </div>
                                                <div class="colorlib-text">
                                                    <label class="label-input100" for="apellidom">Apellido Materno</label>
                                                    <input type="text" class="form-control" name="apellidom" placeholder="Apellido Materno...">
                                                </div>
                                            </div>

                                            <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                                                <div class="colorlib-icon">
                                                    <img src="../img/pizarra.png" alt="pizarra" width="50px">
                                                </div>
                                                <div class="colorlib-text">
                                                    <label class="label-input100" for="escuela">Escuela</label>
                                                    <input type="text" class="form-control" name="escuela" placeholder="Nombre de tu escuela...">
                                                </div>
                                            </div>

                                            <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                                                <div class="colorlib-icon">
                                                    <img src="../img/materia.png" alt="materia" width="50px">
                                                </div>
                                                <div class="colorlib-text">
                                                    <label class="label-input100" for="materiafav">¿Cuál es tu materia favorita?</label>
                                                    <input type="text" class="form-control" name="materiafav" placeholder="Materia favorita...">
                                                </div>
                                            </div>

                                            <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                                                <div class="colorlib-icon">
                                                    <img src="../img/deporte.png" alt="deporte" width="50px">
                                                </div>
                                                <div class="colorlib-text">
                                                    <label class="label-input100" for="deportefav">¿Cuál es tu deporte favorito?</label>
                                                    <input type="text" class="form-control" name="deportefav" placeholder="Deporte favorito...">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <input type="submit" class="btn btn-primary btn-send-message" value="Resgistrar Información">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!--<div id="map"></div>-->	

                <div id="get-in-touch" class="colorlib-bg-color">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                                <h2>Get in Touch!</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                                <p class="colorlib-lead">Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                <p><a href="#" class="btn btn-primary btn-learn">Contact me!</a></p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="../js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="../js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="../js/jquery.waypoints.min.js"></script>
        <!-- Flexslider -->
        <script src="../js/jquery.flexslider-min.js"></script>
        <!-- Sticky Kit -->
        <script src="../js/sticky-kit.min.js"></script>
        <!-- Owl carousel -->
        <script src="../js/owl.carousel.min.js"></script>
        <!-- Counters -->
        <script src="../js/jquery.countTo.js"></script>
        <!-- Google Map -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
        <script src="../js/google_map.js"></script>


        <!-- MAIN JS -->
        <script src="../js/main_1.js"></script>

    </body>
</html>

