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
    <link rel="shortcut icon" href="favicon.ico">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script> 
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/catalogos/catalogos.js"></script>
</head>

<body>

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
                        <li><a href="#profile" data-toggle="tab">Datos Presupuestales</a>
                        </li>
                        <li><a href="#messages" data-toggle="tab">Responsables</a>
                        </li>
                        <li><a href="#settings" data-toggle="tab">Anexos</a>
                        </li>
                    </ul>

                            <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="datos_gral">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <br/><label>No. de Proyecto</label>
                                                <input class="form-control" name="clave_proyecto">
					</div>
                                    </div>
                    		</div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Nombre del Proyecto</label>
                                            <input class="form-control" name="nombre_proyecto">
                                        </div>
                                    </div>
                        	</div>
                        	<div class="row">	
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Fondo</label>
                                                <select class="form-control" name="cat_fondos" id="cat_fondos" onchange="mostrarValor(this.value);">
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
                                            <input class="form-control" TYPE="date" name="fecha_inicio">
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Fecha Fin</label>
                                            <input class="form-control" type="date" name="fecha_fin">
                            		</div>
                                    </div>
                        	</div>
                        	<div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Importe Total</label>
                                            <input class="form-control" name="importe">
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
                                            <select class="form-control" name="cat_dependencias" id="cat_dependencias">
                                            </select>
                                            </div>
                                        </div>
                                    </div>
                        	</div>
                        	<div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>SubDependencia</label>
                                            <select class="form-control" name="id_cat_subdependencia" id="cat_subdependencias">
                                            </select>
                                        </div>
                                    </div>
                                </div>
                        	<div class="row">
                                    <div class="col-lg-6" align="right">
                                        <div class="form-group">
                                            <button type="button" class="btn btn-primary">Siguiente</button>
                                            <button type="reset" class="btn btn-default">Limpiar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                                  
			<div class="tab-pane fade" id="profile">
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
                                                            <input class="form-control" id="importe"  name="importe_asignado" placeholder="importe"></input>
				                    </div>
				                </div>

                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <label style="height:40px"></label>
                                                            <button type="button" onclick="addColumnPriceV()" class="btn btn-primary btn-add-price" name="lastPrice" id="boton">Agregar Importe</button>
                                                            <button type="button" onclick="javascript:remover(this.id)" class="btn btn-primary btn-add-price" id="quitar">Quitar</button>
                                                    </div>
                                                </div>
								                                 		           			

            										
            										</div>

													
            										
														<div class="row">
                                                                                                    <script> 
                                                                                                    function addColumnPriceV() {
                                                                                                                                                            /*stageId =  stageId+ 1;
                                                                                                                                newID =  newID+ 1;
                                                                                                                                console.log("valor debe ser 1 de stageId " + stageId);
                                                                                                                                newClone = $('#row_'+ stageId).last().clone(true);
                                                                                                        newClone.attr("id",'row_'+newID);
                                                                                                        newClone.insertAfter($('#row_'+stageId));
                                                                                                        console.log(' antes del find valor del newID ' +  newID);
                                                                                                        newClone.find($('#tipoGasto').attr('id','tipoGasto'+stageId));
                                                                                                        newClone.find($('#importe').attr('id','importe'+stageId));
                                                                                                        newClone.find($('#quitar_1').attr('id','quitar_'+stageId));*/

                                                                                                        stageId =  stageId+ 1;

                                                                                                        newClone = $('#row_1').last().clone(true);
                                                                                                        newClone.insertAfter($('#row_1'));
                                                                                                        console.log("valor del stageId:" +stageId);
                                                                                                        newClone.find($('#tipoGasto').attr('id','tipoGasto'+stageId));
                                                                                                        newClone.find($('#importe').attr('id','importe'+stageId));

                                                                                                            }

                                                                                                                                                /* function addColumnPrice() {
                                                                                                                                                stageId =  stageId+ 1;

                                                                                                                                                console.log("valor debe ser 1 " + stageId);
                                                                                                                                                //var lastPrice = $('#divStage_'+stageId).find('.col-price').last();
                                                                                                                                            //console.log('last- price', lastPrice);

                                                                                                                                            //$('#row_1').clone().attr('id','row_' + (stageId + 1)).appendTo('#row_'+stageId);
                                                                                                                                            //alert($('#row_'+stageId).attr('id'));



                                                                                                                                            $('#tipoGasto').clone().attr( 'id', 'tipoGasto' + stageId ).appendTo('#row_1');
                                                                                                            $('#tipoGasto_' +stageId ).val('');

                                                                                                            //document.getByelementId('tipoGasto').style="width:200px";

                                                                                                            //var e = document.getElementById("tipoGasto");
                                                                                                            //e.id = 'tipoGasto' + stageId;
                                                                                                            $('#divImporte').clone().attr( 'id', 'importe_asignado' + stageId ).appendTo('#row_1');
                                                                                                            $('#divImporte_' +stageId ).val('');
                                                                                                            //var o = document.getElementById("importe_asignado");
                                                                                                            //o.id = 'importe_asignado' + stageId;
                                                                                                            //$('#divTipoGasto').clone(lastPrice);

                                                                                                            //$("</br>").insertAfter('#importe_' +stageId);

                                                                                                            //$newClone = $('#divStage_'+stageId).find('tipoGasto').last().clone(false);
                                                                                                            //$newClone.insertAfter(lastTipo);
                                                                                                            // inserta el elemento clonado despuï¿½s de la ï¿½ltima columna de "importe"
                                                                                                            //$newClone = $('#divStage_'+stageId).find('importe'+stageId).last().clone(false);
                                                                                                            //$newClone.insertAfter(lastPrice);
                                                                                                            //console.log("despues del after " + stageId);

                                                                                                    } */

                                                                                        // Funciï¿½n para agregar nueva etapa

                                                                                                        </script>    
														 				  <script>
														 				 	function remover(id) {
                                                                                                                                                                                //console.log("valor de quitar "  +  id);
                                                                                                                                                                                //$(this).(('#quitar').remove());

                                                                                                                                                                                /*var valor = id.split('_')[1];
                                                                                                                                                                                console.log("mi valor del  id " +  valor);
                                                                                                                                                                                $("#row_"+valor).remove();*/
                                                                                                                                                                                //$('table tr').find('td:eq(n),th:eq(n)').remove();
                                                                                                                                                                                $('#row_1').remove();
                                                                                                                                                                                console.log("valor del stageId" +stageId);
                                                                                                                                                                              }
														 				  </script>
				                                 		
									                                 		<div class="col-lg-4 col-price">
									    	        							<div class="form-group">
									                                     		 	<label></label>
									                                 			</div>
									                                 		</div>
									                                 		
																			<div class="col-lg-2 col-price">
									    	        							<div class="form-group">
									                                     		 	<label>Total de Etapa</label>
									                                     		  	<input class="form-control" id="importe_etapa"  name="importe_autorizado" disabled></input>
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
			                                <button type="button" class="btn btn-primary" onclick="addStage()">Agregar Nueva Etapa</button>
                                                        <button type="submit" class="btn btn-primary">Siguiente</button>
			                                								<script>
			                                								function addStage() 
                                                                                                                            {
                                                                                                                              // Obtengo el id del último elemento de "etapa"
                                                                                                                              var lastStageId = parseInt($('.panel-stage').last().attr('id').split('_')[1]);
                                                                                                                              var newId = lastStageId+1;

                                                                                                                              // Clono e inserto el último elemento de "etapa"
                                                                                                                              $newClone = $('.panel-stage').last().clone(true);
                                                                                                                              $newClone.attr("id",'divStage_'+newId);

                                                                                                                              // coloco nuevo título "etapa 1, 2, 3..."
                                                                                                                              $newClone.children('.panel-heading').html('<i class="fa fa-fw"></i> <span class="stage-title">Etapa '+newId+'</span>');

                                                                                                                              // Actualizo función "addColumnPrice" del nuevo elemento
                                                                                                                              $newClone.find('.btn-add-price').removeAttr("onclick"); // quito onclick del elemento clonado
                                                                                                                              $newClone.find('.btn-add-price').unbind('click'); // quito onclick del elemento clonado
                                                                                                                              $newClone.find('.btn-add-price').on("click", function(){ addColumnPrice(newId); });

                                                                                                                              // inserto nuevo elemento
                                                                                                                              $newClone.insertAfter($('#divStage_'+lastStageId));
                                                                                                                            }
			                                								</script>
						                                 			  </div>
						                                 			</div>

						            												</div>

        			</div>
                            </div>
                        </div>

						<!-- --------------------           RESPONSABLES                     -->				
								
                                <div class="tab-pane fade" id="messages">
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
                                           			 <input class="form-control" name="rfc">
                                       			</div>
												</div>
												</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Nombre</label>
                                           			 <input class="form-control" name="nombre">
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido Paterno</label>
                                           			 <input class="form-control" name="apellido_paterno">
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido materno</label>
                                           			 <input class="form-control" name="apellido_materno">
                                       			</div>
												</div>
											</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Correo electr&oacute;nico</label>
                                           			 <input class="form-control" name="correo">
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Tel&eacute;fono</label>
                                           			 <input class="form-control" name="telefono">
                                       			</div>
												</div>
												</div>
<!-- 								<div class="row">
									<div class="col-lg-12" align="right">
									<div class="form-group">
									<button type="submit" class="btn btn-primary">Guardar</button>
            			            <button type="reset" class="btn btn-default">Limpiar</button>

									</div></div></div>    -->
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
                                           			 <input class="form-control" name="rfc">
                                       			</div>
												</div>
												</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Nombre</label>
                                           			 <input class="form-control" name="nombre">
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido Paterno</label>
                                           			 <input class="form-control" name="apellido_paterno">
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido materno</label>
                                           			 <input class="form-control" name="apellido_materno">
                                       			</div>
												</div>
											</div>
												<div class="row">
													<div class="col-lg-4">
													<div class="form-group">
	                                           		 	<label>Correo electr&oacute;nico</label>
	                                           			 <input class="form-control" name="correo">
	                                       			</div>
													</div>
														<div class="col-lg-4">
														<div class="form-group">
	                                           		 	<label>Tel&eacute;fono</label>
	                                           			 <input class="form-control" name="telefono">
	                                       			</div>
													</div>
												</div>
<!-- 								<div class="row">
									<div class="col-lg-12" align="right">
									<div class="form-group">
									<button type="submit" class="btn btn-primary">Guardar</button>
            			            <button type="reset" class="btn btn-default">Limpiar</button>

									</div></div></div>   -->	
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
                                           			 <input class="form-control" name="rfc">
                                       			</div>
												</div>
												</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Nombre</label>
                                           			 <input class="form-control" name="nombre">
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido Paterno</label>
                                           			 <input class="form-control" name="apellido_paterno">
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido materno</label>
                                           			 <input class="form-control" name="apellido_materno">
                                       			</div>
												</div>
											</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Correo electr&oacute;nico</label>
                                           			 <input class="form-control" name="correo">
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Tel&eacute;fono</label>
                                           			 <input class="form-control" name="telefono">
                                       			</div>
												</div>
												</div>
	 								<div class="row">
									<div class="col-lg-12" align="right">
									<div class="form-group">
									<button type="button" class="btn btn-primary">Siguiente</button>
            			            <button type="reset" class="btn btn-default">Limpiar</button>

									</div></div></div>    
								</div>
								</div>
								</div>
								</div>
						
						
							</div>
							</div>
							
						

<!-- ---------------------------------------------------ANEXO ---------------------- -->								
								
                          <div class="tab-pane fade" id="settings">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <br/><label>Proyecto</label>
                                            <input type="file" name="uploadfile" style="width:300px"></input>
                                        </div>
                                    </div>
				</div>
									<!-- -	<div class="row">
										<div class="col-lg-2">
										<div class="form-group">
			                                            <label>Otros</label>
			                                            <input type= "file" name="clave_documento"></input>
			                                            
			                                        </div>
											</div>
				</div>      --->
				<div class="row">
                                    <div class="col-lg-3" align="right">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary">Guardar</button>
			                    <button type="reset" class="btn btn-default">Limpiar</button>
					</div>
                                    </div>
				</div>
                            </div>
                         </div>
                        <!-- /.panel-body -->
                
                    <!-- /.panel -->
                	
				<!------------------------------------------------------------------------------------------->	
                    </div>	
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