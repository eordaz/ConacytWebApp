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
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script> 
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/catalogos/catalogos.js"></script>
    
    <script src="js/jquery.funciones.proyectos.js"></script>
    
    <script  src="dist/js/bootbox.min.js"></script>
    
    
    
</head>

<body>
<%session.setAttribute("mivalirable",10);%> 
<%Object valor=session.getAttribute("mivalirable");%> 

    <div id="wrapper">

        <!-- Navigation -->
       		<!--   jsp:include page="navmenu.html" -->
                <%@include file="navmenu.html" %>   
        
        
       
            <!-- /.row -->
            <!-- /.row -->
<!-------------------------------------------------------------------------------------------------------------------> 

	<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Datos del Proyecto</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
                <!-- /.panel-heading -->
            <div class="panel-body">
                    <!-- Nav tabs -->
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#datos_gral" data-toggle="tab">Datos Generales</a>
                    </li>
                    <li><a href="#datos_pres" data-toggle="tab">Datos Presupuestales</a>
                    </li>
                    <li><a href="#resp" data-toggle="tab">Responsables</a>
                    </li>
                    <li><a href="#anexos" data-toggle="tab">Anexos</a>
                    </li>
                </ul>

                            <!-- Tab panes -->
                <form name="fvalida">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="datos_gral">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <br/><label>No. de Proyecto</label> 
                                            <input class="form-control" maxlength="8" name="clave_proyecto"id="clave_proyecto" value="CY"/>
                                             <span class="help-block"> </span>
					</div>
                                    </div>
                    		</div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Nombre del Proyecto</label>
                                            <input class="form-control" name="nombre_proyecto" id="nombre_proyecto"/>
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
                                            <input class="form-control" TYPE="date" name="fecha_inicio" id="fecha_inicio"/>
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
                                            <input class="form-control" maxlength="12" name="importe" id="importe"/>
                                             <span class="help-block"> </span>
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
                                            <select class="form-control" name="cat_dependencias" id="cat_dependencias" onchange="mostrarDependencia(this.value)">
                                            </select>
                                            </div>
                                        </div>
                                    </div>
                        	</div>
                        	<div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>SubDependencia</label>
                                            <select class="form-control" name="cat_subdependencias" id="cat_subdependencias">
                                            </select>
                                        </div>
                                    </div>
                                </div>
                        	<div class="row">
                                    <div class="col-lg-6" align="right">
                                        <div class="form-group">
                                            <button name="Sig" id="Sig" type="button" class="btn btn-primary" onclick="datos_pres">Siguiente</button>
                                            <button type="reset" class="btn btn-default">Limpiar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                      
                        
			<div class="tab-pane fade" id="datos_pres">
                            <div class="panel-body">
                                <div class="row">
				
				    <div class="col-lg-12">
				
                                        <div class="panel panel-primary panel-stage" id="divStage_1">
                                            <div class="panel-heading">
                                                <i class="fa fa-fw"></i> <span class="stage-title">Etapa 1</span>
				            </div>
                                        <div class="panel-body panel-medio" id="cuerpo_1">
                                            <script>var stageId=0;
                                                    newID=1;
				            </script>
                                                <div class="row" id="row_1">
                                                    <div class="col-lg-4 col-tipo"  id="divTipoGasto">
                                                        <div class="form-group">
                                                            <label>Tipo de Gasto</label>
                                                                <select class="form-control" name="tipoGasto" id="tipoGasto">
                                                                </select>
				                        </div>
				    	            </div>
                                                    <div class="col-lg-2 col-price" id="divImporte">
                                                        <div class="form-group">
                                                            <label>Importe</label>
                                                                <input class="form-control" id="importe_asignado"  name="importe_asignado" placeholder="importe"></input>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label style="height:40px"></label>
                                                                <!--<button type="button" onclick="addColumnPriceV()" class="btn btn-primary btn-add-price" name="lastPrice" id="boton">Agregar Importe</button>
                                                                <button type="button" onclick="javascript:remover(this.id)" class="btn btn-primary btn-add-price" id="quitar">Quitar</button>-->
                                                        </div>
                                                    </div>				
            					</div>
                                                <div class="row" id="row_2">
                                                    <div class="col-lg-4 col-tipo"  id="divTipoGasto2">
                                                        <div class="form-group">
                                                            <label>Tipo de Gasto</label>
                                                                <select class="form-control" name="tipoGasto2" id="tipoGasto2">
                                                                </select>
				                        </div>
				    	            </div>
                                                    <div class="col-lg-2 col-price" id="divImporte">
                                                        <div class="form-group">
                                                            <label>Importe</label>
                                                                <input class="form-control" id="importe_asignado2"  name="importe_asignado2" placeholder="importe"></input>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label style="height:40px"></label>
                                                                <!--<button type="button" onclick="addColumnPriceV()" class="btn btn-primary btn-add-price" name="lastPrice" id="boton">Agregar Importe</button>
                                                                <button type="button" onclick="javascript:remover(this.id)" class="btn btn-primary btn-add-price" id="quitar">Quitar</button>-->
                                                        </div>
                                                    </div>				
            					</div>
													
            										
                                                <div class="row">

                                                        <div class="col-lg-4 col-price">
                                                                                <div class="form-group">
                                                                <label></label>
                                                                </div>
                                                        </div>

                                                        <div class="col-lg-2 col-price">
                                                               <div class="form-group">
                                                               <!-- <label>Total de Etapa</label>
                                                                <input class="form-control" id="importe_autorizado"  name="importe_autorizado" disabled></input>-->
                                                                </div>
                                                        </div>
                                                </div>
									
                                    <div class="row">
                                      <div class="col-lg-8" align="right">
                                        <div class="form-group">
                                          <button type="reset" class="btn btn-default">Limpiar</button>
                                        </div>
                                      </div>
                                    </div>

            			</div>
                                <!--/ panel-body -->

			                            </div> <!--/ panel  (finish etapa) -->
			
			                            <div class="col-lg-4" align="left">
			                            <div class="form-group">
			                                <button type="button" class="btn btn-primary" onclick="agrega_etapa()">Agregar Nueva Etapa</button>
                                                        <button type="submit" class="btn btn-primary">Siguiente</button>
                                                        <input type="text" class="" name="num" id="num" value="1" readonly="readonly" hidden="hidden" />
                                                    </div>
						</div>
						            												</div>

        			</div><!-- etapa 2--->
                                <div class="row" id="etapa2"  style="display:none;">
				
				    <div class="col-lg-12">
				
                                        <div class="panel panel-primary panel-stage" id="divStage_1">
                                            <div class="panel-heading">
                                                <i class="fa fa-fw"></i> <span class="stage-title">Etapa 2</span>
				            </div>
                                        <div class="panel-body panel-medio" id="cuerpo_1">
                                           
                                                <div class="row" id="row_3">
                                                    <div class="col-lg-4 col-tipo"  id="divTipoGasto">
                                                        <div class="form-group">
                                                            <label>Tipo de Gasto</label>
                                                                <select class="form-control" name="tipoGasto3" id="tipoGasto3">
                                                                </select>
				                        </div>
				    	            </div>
                                                <div class="col-lg-2 col-price" id="divImporte">
                                                    <div class="form-group">
                                                        <label>Importe</label>
                                                            <input class="form-control" id="importe_asignado3"  name="importe_asignado3" placeholder="importe"></input>
				                    </div>
				                </div>

                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <label style="height:40px"></label>
                                                            <!--<button type="button" onclick="addColumnPriceV()" class="btn btn-primary btn-add-price" name="lastPrice" id="boton">Agregar Importe</button>
                                                            <button type="button" onclick="javascript:remover(this.id)" class="btn btn-primary btn-add-price" id="quitar">Quitar</button>-->
                                                    </div>
                                                </div>
						</div>
                                                <div class="row" id="row_4">
                                                    <div class="col-lg-4 col-tipo"  id="divTipoGasto">
                                                        <div class="form-group">
                                                            <label>Tipo de Gasto</label>
                                                                <select class="form-control" name="tipoGasto4" id="tipoGasto4">
                                                                </select>
				                        </div>
				    	            </div>
                                                <div class="col-lg-2 col-price" id="divImporte">
                                                    <div class="form-group">
                                                        <label>Importe</label>
                                                            <input class="form-control" id="importe_asignado4"  name="importe_asignado4" placeholder="importe"></input>
				                    </div>
				                </div>

                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <label style="height:40px"></label>
                                                            <!--<button type="button" onclick="addColumnPriceV()" class="btn btn-primary btn-add-price" name="lastPrice" id="boton">Agregar Importe</button>
                                                            <button type="button" onclick="javascript:remover(this.id)" class="btn btn-primary btn-add-price" id="quitar">Quitar</button>-->
                                                    </div>
                                                </div>
						</div>
													
            										
                                                <div class="row">

                                                        <div class="col-lg-4 col-price">
                                                                                <div class="form-group">
                                                                <label></label>
                                                                </div>
                                                        </div>

                                                        <div class="col-lg-2 col-price">
                                                                                <div class="form-group">
                                                             <!--   <label>Total de Etapa</label>
                                                                <input class="form-control" id="importe_etapa"  name="importe_autorizado" disabled></input>-->
                                                                </div>
                                                        </div>
                                                </div>
									
                                    <div class="row">
                                      <div class="col-lg-8" align="right">
                                        <div class="form-group">
                                         <button type="reset" class="btn btn-default">Limpiar</button>
                                        </div>
                                      </div>
                                    </div>

            										</div>
                                <!--/ panel-body -->

			                            </div> <!--/ panel  (finish etapa) -->
			
			                            <div class="col-lg-4" align="left">
			                            <div class="form-group">
			                          <!--      <button type="button" class="btn btn-primary" onclick="addStage()">Agregar Nueva Etapa</button>
                                                        <button type="submit" class="btn btn-primary">Siguiente</button>-->
                                                    </div>
						</div>
						            												</div>

        			</div><!--row2-->
                                
                                
                            </div>
                        </div>

						<!-- --------------------           RESPONSABLES                     -->				
								
                        <div class="tab-pane fade" id="resp">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <i class="fa fa-fw" name="id_cat_tipo_responsable" value="2"></i> Responsable T&eacute;cnico
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>RFC</label>
                                                                <input class="form-control" id="RT_rfc" name="RT_rfc">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4" hidden="hidden">
                                                        <div class="form-group">
                                                            <label>RFC</label>
                                                                 <input class="form-control"  id ="RT_tipo_responsable" name="RT_tipo_responsable" value="207">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Nombre</label>
                                                                <input class="form-control" id ="RT_nombre" name="RT_nombre">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Apellido Paterno</label>
                                                               <input class="form-control" id="RT_apellido_paterno"  name="RT_apellido_paterno">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Apellido materno</label>                                                                
                                           			 <input class="form-control" id="RT_apellido_materno" name="RT_apellido_materno">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Correo electr&oacute;nico</label>
                                                                <input class="form-control" id="RT_correo"  name="RT_correo">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Tel&eacute;fono</label>                                                               
                                           			 <input class="form-control" id="RT_telefono" name="RT_telefono">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <i class="fa fa-fw" name="id_cat_tipo_responsable" value="1"></i> Responsable Administrativo
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>RFC</label>
                                                                 <input class="form-control"  id ="RA_rfc" name="RA_rfc">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4" hidden="hidden">
                                                        <div class="form-group">
                                                            <label></label>
                                                                 <input class="form-control"  id ="RA_tipo_responsable" name="RA_tipo_responsable" value="208">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Nombre</label>
                                                                <input class="form-control" id="RA_nombre" name="RA_nombre">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Apellido Paterno</label>
                                                                <input class="form-control" id="RA_apellido_paterno" name="RA_apellido_paterno">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Apellido materno</label>
                                                               <input class="form-control" id="RA_apellido_materno" name="RA_apellido_materno">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Correo electr&oacute;nico</label>
                                                                <input class="form-control" id="RA_correo" name="RA_correo">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Tel&eacute;fono</label>
                                                                <input class="form-control" id="RA_telefono" name="RA_telefono">
                                                        </div>
                                                    </div>
                                                </div>	
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <i class="fa fa-fw" name="id_cat_tipo_responsable" value="3"></i> Responsable Legal
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>RFC</label>
                                                                <input class="form-control" id="RL_rfc" name="RL_rfc">
                                                        </div>
                                                    </div>
                                                     <div class="col-lg-4" hidden="hidden">
                                                        <div class="form-group">
                                                            <label></label>
                                                                <input class="form-control"  id ="RL_tipo_responsable" name="RL_tipo_responsable" value="209">
                                                        </div>
                                                    </div>
                                                 </div>   
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Nombre</label>
                                                                <input class="form-control"  id="RL_nombre" name="RL_nombre">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Apellido Paterno</label>
                                                              <input class="form-control" id="RL_apellido_paterno" name="RL_apellido_paterno">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Apellido materno</label>
                                                               <input class="form-control" id="RL_apellido_materno" name="RL_apellido_materno">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Correo electr&oacute;nico</label>
                                                                <input class="form-control" id="RL_correo" name="RL_correo">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label>Tel&eacute;fono</label>
                                                                <input class="form-control" id="RL_telefono" name="RL_telefono">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-12" align="right">
                                                        <div class="form-group">
                                                            <button type="button" class="btn btn-primary">Siguiente</button>
                                                            <button type="reset" class="btn btn-default">Limpiar</button>
                                                        </div>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
							
						

<!-- ---------------------------------------------------ANEXO ---------------------- -->								
								
                        <div class="tab-pane fade" id="anexos">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <br/><label>Proyecto</label>
                                            <input type="file" id ="uploadfile"  name="uploadfile" style="width:300px"></input>
                                        </div>
                                    </div>
				</div>
                            </div>      
                            <div class="row">
                                <div class="col-lg-3" align="right">
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