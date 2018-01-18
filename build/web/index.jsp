<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
     <!-- jQuery -->
     <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src=vendor/bootstrap/js/bootstrap.min.js></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
    
    <!-- JavaScript -->
    <script src=js/Login.js></script>
    

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 align="center" class="panel-title"><img src="img/patronato.png" width="230" ></h3>
                        <h3 class="panel-title">&nbsp;</h3>
                        <h3 align="center" class="panel-title">Modulo de Administración de Recursos CONACYT </h3>
                        <p align="center" class="panel-title">&nbsp;</p>
                  </div>
                    <div class="panel-body">
                       <FORM name="registro" method="POST" action="Login.js">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="usuario" name="usuario" id="usuario">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" placeholder="contrase&ntilde;a" name="password" id="password">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Recordar">Recordar
                                    </label>
                                </div>
                            	</fieldset>    
                                
                                <input type="submit" class="btn btn-lg btn-success btn-block" value="Accesar" onclick="Login()">
                                
                          <!-- <input type="submit" class="btn btn-lg btn-success btn-block">-->
                       </form>
                                <!--<input type="button" class="btn btn-lg btn-success btn-block">Login</input> -->
                                
                        
                        
                      <!--   <FORM ACTION="parametros.jsp" method="POST">  
						Usuario:<BR>  
						<INPUT name=usuario_id ><BR>  
						Fecha:<BR>  
						<INPUT name=fecha_registro><BR>  
						<INPUT type="submit">  
						</FORM>       --->  
                    </div>
                </div>
            </div>
        </div>
    </div>

   
</body>

</html>