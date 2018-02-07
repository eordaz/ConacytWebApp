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
                <%@include file="navmenu.html" %>   
                
        
       
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
                    <h1 class="page-header">Carga de Proyecto</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
                <!-- /.panel-heading -->
            <div class="panel-body">
                    <!-- Nav tabs -->
                <ul class="nav nav-tabs" id="TabProy">
                    <li class="active" id="tab1"><a  href="#datos_gral" data-toggle="tab">Datos Generales</a>
                    </li>
                </ul>

                            <!-- Tab panes -->
                <form name="fvalida" role="form" id="frmProyTab1">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="datos_gral">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <br/><label>Clave de Proyecto</label> 
                                            <input class="form-control"    maxlength="8" name="clave_proyecto"  id="clave_proyecto" value="" required title="" />
                                             <span class="help-block"> </span>
					</div>
                                    </div>
                    		</div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Nombre del Proyecto</label>
                                            <input class="form-control"   name="nombre_proyecto"  id="nombre_proyecto" required/>
                                            <div class="help-block"></div>
                                        </div>
                                    </div>
                        	</div>
                        	<div class="row">	
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Fondo</label>
                                                <select class="form-control" name="cat_fondos" id="cat_fondos">
                                                    <!--input type="text" name="valoreninput" id="valoreninput" value="" /-->
		                                </select>
	                                    </div>
                                        </div>
                                    </div>
                                </div>
                        	<div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Fecha Inicio</label>
                                            <input class="form-control" TYPE="date" name="fecha_inicio"  id="fecha_inicio" />
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Fecha Fin</label>
                                            <input class="form-control" type="date" name="fecha_fin" id="fecha_fin"/>
                            		</div>
                                    </div>
                        	</div>
                        	<div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Importe Total</label>
                                            <input class="form-control"   onkeypress="return validarDigitos(event);" onblur="validarDigitosCopiar(this.id);"    maxlength="12" name="importe" id="importe" title="Solo dígitos" />
                                             <div class="help-block"></div>
                                        </div>
                                    </div>
                        	</div>
                        	<div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Moneda</label>
                                            <select class="form-control" name="cat_moneda" id="cat_moneda">
                                            </select>

                                        </div>
                                    </div>
                        	</div>
                        	<div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <div class="form-group">
                                            <label>Dependencia</label>
                                            <select class="form-control" name="cat_dependencias" id="cat_dependencias" onchange="mostrarDependencia(this.value)" required>
                                            </select>
                                            </div>
                                        </div>
                                    </div>
                        	</div>
                        	<div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>SubDependencia</label>
                                            <select class="form-control" name="cat_subdependencias" id="cat_subdependencias" required>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            <!-- #messages is where the messages are placed inside -->
                            <div class="form-group">
                                <div class="col-md-9 col-md-offset-3">
                                    <div id="messages"></div>
                                </div>
                            </div>
                                
                            </div><!--  body-->
                        </div>
								
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <br/><label>Proyecto</label>
                                            <input type="file" id ="pdf_comprobante"  onchange="archivo_tipo(this.value, 'pdf_comprobante');" name="pdf_comprobante" style="width:300px"></input>
                                            <input type="hidden" name="extension" id="extension" value="" readonly="readonly" />
                                            <input type="hidden" name="nombre_archivo" id="nombre_archivo" value="" readonly="readonly" />
                                            <span class="help-block"> </span>
                                        </div>
                                    </div>
				</div>
                                <div class="row">
                                <div class="col-lg-6" align="right">
                                    <div class="form-group">
                                        <button type="button" id="btn_guardar"  class="btn btn-primary">Guardar</button>
			                <button type="reset" class="btn btn-default">Limpiar</button>
                                    </div>
                                </div>
                            </div>
                            </div>      
                            
                    </div>
                        <!-- /.panel-body -->
                
                    <!-- /.panel -->
                </form>		<!------------------------------------------------------------------------------------------->	
            </div>	
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