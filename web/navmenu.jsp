<%-- 
    Document   : navmenu
    Created on : 06-feb-2018, 13:37:48
    Author     : sesparza
--%>

<%@page language="java" import="java.util.*" %>
<%@page errorPage="error.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Conacyt</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="favicon.ico"/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!--<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script> 
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>-->
    
    <script src="vendor/jquery/jquery-1.11.3.min.js"></script>
  
  
    <script src="js/catalogos/catalogos.js"></script>
    <script src="js/funciones.generales.js"></script>
    <script src="js/jquery.funciones.proyectos.js"></script>
    <script src="js/login/login.js"></script>
    
</head>
<style type="text/css">
  
    .disabledTab {
        cursor: not-allowed;
    }
   
    li.disabledTab > a[data-toggle="tab"] {
        pointer-events: none;
        filter: alpha(opacity=65);
        -webkit-box-shadow: none;
        box-shadow: none;
        opacity: .65;
    }
</style>

<body>
<!--% sessionStorage.getItem("usuario"); %-->

    <div id="wrapper">

        <!-- Navigation -->
       		<!--   jsp:include page="navmenu.html" -->
                

<script>
    var user = sessionStorage.getItem("usuario");
    var idUser = sessionStorage.getItem("idUsuario");
    var rolUser = sessionStorage.getItem("idRol");
    console.log(user);
    console.log(idUser);
    console.log(rolUser);
    
    //document.getElementById(user);
</script>

    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <img src="img/unam.png" class="img-responsive" width="40" align="left">
            <img src="img/patronatotxt.gif" class="img-responsive" align="left">
            <a class="navbar-brand" href="navmenu.jsp">Modulo de Administraci&oacute;n de Recursos CONACYT</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">

            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-home fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><i class="fa fa-user fa-fw"><input type="text" disabled id="usuarioIndex"/></i>
                    </li>                            
                    <li class="divider"></li>
                    <li><a href="index.jsp"><i class="fa fa-sign-out fa-fw"></i> Salir</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                   
                    <li id="carga_proy" style="display: none">
                        <a href="carga_prov.jsp"><i class="fa fa-file-text-o fa-fw"></i> Carga de Proyectos</a>
                    </li>    
                    <li id="inicio" style="display: none">
                        <a href="inicio.jsp"><i class="fa fa-file-text-o fa-fw" ></i> Registro de Proyectos</a>
                    </li>
                    <li id="auditoria" style="display: none">
                        <a href="auditoria.jsp"><i class="fa fa-table fa-fw" ></i> Consulta de Proyectos</a>
                    </li>
                    <li id="deposConsen" style="display: none">
                        <a href="depositosConcentradora.jsp"><i class="fa fa-credit-card"></i> Dep&oacute;sitos Concentradora<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="depositosConcentradora.jsp" id="depositos">B&uacute;squeda</a>
                            </li>
                            <li>
                                <a href="asignarImporte.jsp" id="asignar">Asignaci&oacute;n Importe</a>
                            </li>
                         </ul>
                    </li>
                    <li id="ministracion" style="display: none">
                        <a href="ministraciones.jsp"><i class="fa fa-list-alt"></i> Ministraciones</a>
                    </li>
                    <li id="solicitud" style="display: none">
                        <a href="solicitudBancaria.jsp"><i class="fa fa-building-o fa-fw" ></i> Apertura Cuenta Bancaria<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="solicitudBancaria.jsp" id="solicitudBan">Solicitud</a>
                            </li>
                            <li>
                                <a href="registroBancario.jsp" id="registro">Registro</a>
                            </li>
                            <!-- -
                                                            <li>
                                <a href="#">Autorizacion</a>
                            </li>--->
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li id="cfdi" style="display: none">
                        <a href="cfdi.jsp"><i class="fa fa-edit fa-fw" ></i> CFDI <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="cfdi.jsp" id="generar">Generar</a>
                            </li>
                            <li>
                                <a href="cfdiConsulta.jsp" id="cfdiconsulta">Consulta</a>
                            </li>
                        </ul>
                    </li>
                    <li id="comprobacion" style="display: none">
                        <a href="comprobacion.jsp"><i class="fa fa-usd fa-fw" ></i> Comprobacion de Gastos <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="comprobacion.jsp" id="registrocomprob">Registro</a>
                            </li>
                            <li>
                                <a href="comprobacionConsulta.jsp" id="consultacomprob">Consultas</a>
                            </li>
                        </ul>    
                    </li>
                    <li id="tablero" style="display: none">
                        <a href="tablero.jsp"><i class="fa fa-dashboard fa-fw" ></i>Dashboard</a>


                    </li>
                                    <!-- <li>
                                <a href="login.jsp">Login</a>
                       </li>--->

                    <script>
                        var accesoUser = rolUser;                
                        switch(accesoUser){
                            case "2":
                                
                                $('#carga_proy').show();
                                $('#inicio').show();
                                $('#auditoria').show();
                                $('#deposConsen').show();
                                $('#ministracion').show();
                                $('#solicitud').show();
                                $('#cfdi').show();
                                $('#comprobacion').show();
                                $('#tablero').show();
                            
                            break;
                            case "3":
                                
                                $('#inicio').show();
                                $('#auditoria').show();
                                $('#deposConsen').show();
                                $('#cfdi').show();
                                $('#comprobacion').show();
                                $('#tablero').show();
                            
                            break;
                            case "4":
                               
                                $('#auditoria').show();
                            
                            break;
                            case "5":
                            
                                $('#carga_proy').show();
                                $('#auditoria').show();
                                $('#cfdi').show();
                                $('#comprobacion').show();

                            break;
                            case "6":
                                $('#auditoria').show();
                                $('#deposConsen').show();
                                $('#cfdi').show();
                            break;
                            case "7":
                                $('#auditoria').show();
                                $('#comprobacion').show();
                            break;
                            case "8":
                                $('#inicio').show();
                                $('#auditoria').show();
                                $('#cfdi').show();
                                $('#comprobacion').show();
                            break;
                        default:
                            console.log(accesoUser);
                            alert("Rol invalido");

                        }

                    </script>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>   
                
        
       
            <!-- /.row -->
            <!-- /.row -->
<!-------------------------------------------------------------------------------------------------------------------> 
        
	<div id="page-wrapper">
            <script>
                    var user = sessionStorage.getItem("usuario");
                    var idUser = sessionStorage.getItem("idUsuario");
                    var rolUser = sessionStorage.getItem("idRol");
                    console.log(user);
                    console.log(idUser);
                    console.log(rolUser);
                    $("#usuarioIndex").val(user); // define username variable
                    //document.getElementById(user);
                </script>
            
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Bienvenido al Modulo de Administracion de Recursos Conacyt</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-3">
                        <h3 align="left" ><img src="img/unam.jpg" width="300" /></h3>
                    </div>
                    <div class="col-lg-3">
                        <h3 align="left"><img src="img/conacyt.jpg" width="300" /></h3>
                    </div>
                </div>
            </div>
                <!-- /.panel-heading -->
        </div>
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
 
    <script  src="dist/js/bootbox.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="vendor/raphael/raphael.min.js"></script>
    <!--<script src="vendor/morrisjs/morris.min.js"></script>
    <script src="data/morris-data.js"></script> --->

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
	 
	
</body>

</html>