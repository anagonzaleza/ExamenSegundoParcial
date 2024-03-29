<%-- 
    Document   : consulta
    Created on : 20/10/2018, 09:35:21 AM
    Author     : Sara
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mx.edu.ipn.cecyt9.CentaurSoft.model.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="Registro" scope="page" class="mx.edu.ipn.cecyt9.CentaurSoft.model.Registro" />
<!DOCTYPE HTML>
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
                        <li class="colorlib-active"><a href="${pageContext.request.contextPath}/index.jsp">Inicio</a></li>
                        <li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>
                        <li><a href="${pageContext.request.contextPath}/about.html">A cerca de</a></li>
                        <li><a href="registro.jsp">Registros</a></li>
                        <li><a href="consulta.jsp">Consulta</a></li>
                        <li><a href="${pageContext.request.contextPath}/contact.html">Contacto</a></li>
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
                <div class="colorlib-services">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                                <span class="heading-meta">Registros</span>
                                <h2 class="colorlib-heading">Estos son los registros existentes</h2>
                            </div>
                        </div>
                        <div class="row row-bottom-padded-md">
                            <div class="tbl-content">

                                <%
                                    try {
                                        Connection c = null;
                                        Statement s = null;
                                        ResultSet res = null;
                                        Class.forName("com.mysql.jdbc.Driver");
                                        c = DriverManager.getConnection("jdbc:mysql://localhost/examen", "root", "n0m3l0");
                                        s = c.createStatement();
                                        res = s.executeQuery("select * from informacion");
                                        while (res.next()) {
                                %>
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft">
                                                <div class="colorlib-icon">
                                                    <img src="../img/usuario.png" alt="usuario" width="50px">
                                                </div>
                                                <div class="colorlib-text">
                                                    <h3><%=res.getString(2)%></h3>
                                                    <p><b>Nombre: </b> <%=res.getString(2)%></p>
                                                    <p><b>Apellido paterno: </b><%=res.getString(3)%></p>
                                                    <p><b>Apellido materno: </b><%=res.getString(4)%></p>
                                                    <p><b>Escuela: </b> <%=res.getString(5)%></p>
                                                    <p><b>Materia favorito: </b><%=res.getString(6)%></p>
                                                    <p><b>Deporte favorito: </b><%=res.getString(7)%></p>
                                                    <p>
                                                        <a href="eliminar.jsp?oc=<%=res.getString(1)%>"><img src="../img/eliminar.png" alt="eliminar" width="50px"></a>
                                                        <a href="cambiar.jsp?oc=<%=res.getString(1)%>"><img src="../img/modificar.png" alt="modificar" width="50px"></a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                        }

                                        System.out.println("Si jurula");
                                    } catch (SQLException e) {
                                        System.out.println("No jurula");
                                        out.print("<meta http-equiv='refresh' content='index.html'>");
                                    }


                                %>

                                <div class="row">
                                    <div class="col-md-4">
                                        <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                                            <div class="services-img" style="background-image: url(../images/services-1.jpg)"></div>
                                            <div class="desc">
                                                <h3>Design &amp; Build</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-4">
                                        <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                                            <div class="services-img" style="background-image: url(../images/services-2.jpg)"></div>
                                            <div class="desc">
                                                <h3>House Remodeling</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-4">
                                        <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                                            <div class="services-img" style="background-image: url(../images/services-3.jpg)"></div>
                                            <div class="desc">
                                                <h3>Construction Management</h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                                            <div class="services-img" style="background-image: url(../images/services-4.jpg)"></div>
                                            <div class="desc">
                                                <h3>Painting &amp; Tiling</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-4">
                                        <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                                            <div class="services-img" style="background-image: url(../images/services-5.jpg)"></div>
                                            <div class="desc">
                                                <h3>Kitchen Remodeling</h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

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


                <!-- MAIN JS -->
                <script src="../js/main_1.js"></script>

                </body>
                </html>
