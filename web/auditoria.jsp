<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <!--   jsp:include page="navmenu.html" -->
                <%@include file="navmenu.html" %>  

           <!------------------------------------------------------------------------------------------------->
		   
		   <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Consulta de Proyecto</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
                        <!-- /.panel-heading -->
                       <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">Datos Generales</a>
                                </li>
                                <li><a href="#profile" data-toggle="tab">Datos Presupuestales</a>
                                </li>
                                <li><a href="#messages" data-toggle="tab">Responsables</a>
                                </li>
                                <li><a href="#settings" data-toggle="tab">Anexos</a>
                                </li>
								<!--li><a href="#autoriza" data-toggle="tab">Autorizaci&oacute;n</a>
                                </li-->
                            </ul>

                            <!-- Tab panes -->
                             <div class="tab-content">
                                <div class="tab-pane fade in active" id="home">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                   </br> <label>No. de Proyecto</label>
                                                        <input class="form-control" id="txtNoProyecto" type="text">
                                                        </div>
                                                        </div>
                                                        <div class="col-lg-3">
                                                         <div class="form-group">
                                                                  </br><label style="color:#ffffff">consultar</label>
                                                  </br><input type="button" id="btnConsultar"  class="btn btn-primary"  value="Consultar"/>
                                                          </div>	
                                                        </div>
                                        </div>
											<div class="row">
											<div class="col-lg-6">
											<div class="form-group">
                                	            <label>Nombre del Proyecto</label>
                                    	        <input class="form-control" id="nomProyConsul" type="text" value="" disabled>
                                        	</div>
											</div>
											</div>
						 		            <div class="row">	
												<div class="col-lg-3">
												<div class="form-group">
    	                                        <div class="form-group">
        	        	                            <label>Fondo</label>
            	        	                        <input class="form-control" id="fondoConsul" type="text" disabled>
                                    	        	</input>
	                                    	    </div>
    	                                    	</div>
												</div>
											</div>
											<div class="row">
												<div class="col-lg-3">
												<div class="form-group">
        	                                    	<label>Fecha Inicio</label>
            	                                		<input class="form-control" id="fechIniConsul" type="text" disabled>
                	                        	</div>
												</div>
												<div class="col-lg-3">
												<div class="form-group">
                    		                        <label>Fecha Fin</label>
                            			                <input class="form-control" id="fechfinConsul" type="text" disabled>
												</div>
												</div>
											</div>
											<div class="row">
												<div class="col-lg-3">
												<div class="form-group">
                    		                        <label>Importe Total</label>
                            			                <input class="form-control" id="imporConsul" type="text" disabled>
                                        		</div>
												</div>
											</div>
											<div class="row">
												<div class="col-lg-3">
												<div class="form-group">
                    		                        <label>Moneda</label>
                            			                <input class="form-control" id="monedaConsul" type="text" disabled>
                                                                </input>

                                        	</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-6">
											<div class="form-group">
                                        	    <label>Dependencia</label>
	                                            <input class="form-control" id="dependConsul" type="text" disabled>
                        	                    </input>
                            			 	 </div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-6">
											<div class="form-group">
                    	                        <label>SubDependencia</label>
                        		                    <input class="form-control" id="subdependConsul" type="text" disabled>
                                        		    </input>
                                        </div>
							</div>
						</div>

         </div></div>
                              
							    <div class="tab-pane fade" id="profile">
                                <div class="panel-body">
									<div class="row">
					                <div class="col-lg-12">
				
				                          <div class="panel panel-primary panel-stage" id="divStage_1">
				
				                            <div class="panel-heading">
				        		              	 	 <i class="fa fa-fw"></i> <span class="stage-title">Etapa 1</span>
				                			    	</div>
				
				                             <div class="panel-body panel-medio" id="cuerpo_1">
				            						<div class="row" id="row_1">
				    	        						<div class="col-lg-4 col-tipo">
				    	        							  <div class="form-group">
				                                       		 	<label>Tipo de Gasto</label>
					                                       			 <select class="form-control" id="tipoGasto" name="id_cat_tipo_gasto" disabled>
					                                    	         </select>
				                                   			  </div>
				    	                             	</div>
				
				                                      	<div class="col-lg-2 col-price">
				    	        							<div class="form-group">
				                                     		 	<label>Importe</label>
				                                     		  	<input class="form-control" id="importe"  name="importe_asignado" disabled></input>
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
				                                     		 	<label>Importe Total de Etapa</label>
				                                     		  	<input class="form-control" id="importe_etapa"  name="importe_total_etapa" disabled></input>
				                                 			</div>
				                                 		</div>
													</div>
					                </div></div></div>
					                </div></div></div>
                                            
								
                                <div class="tab-pane fade" id="messages">
                                <div class="panel-body">
									<div class="row">
					                <div class="col-lg-12">
                    				<div class="panel panel-primary">
			                        <div class="panel-heading">
            		              	  <i class="fa fa-fw"></i> Responsable T&eacute;cnico
                    			    	</div>
											<div class="panel-body">
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>RFC</label>
                                           			 <input class="form-control" id="rfcTecnico" type="text" placeholder="DAJS785421FE8" disabled>
                                       			</div>
												</div>
												</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Nombre</label>
                                           			 <input class="form-control" id="nomTecnico" type="text" placeholder="DIEGO" disabled>
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido Paterno</label>
                                           			 <input class="form-control" id="apPatTecnico" type="text" placeholder="MARTINEZ" disabled>
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido materno</label>
                                           			 <input class="form-control" id="apMatTecnico" type="text" placeholder="FLORES" disabled>
                                       			</div>
												</div>
											</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Correo electr&oacute;nico</label>
                                           			 <input class="form-control" id="correoTecnico" type="text" placeholder="........@hotmail.com" disabled>
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Tel&eacute;fono</label>
                                           			 <input class="form-control" id="telTecnico" type="text" placeholder="26578498" disabled>
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
            		                <i class="fa fa-fw"></i> Responsable Administrativo
                    			    </div>
									<div class="panel-body">
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>RFC</label>
                                           			 <input class="form-control" id="rfcAdmin" type="text" placeholder="POLJ895421LK7" disabled>
                                       			</div>
												</div>
												</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Nombre</label>
                                           			 <input class="form-control" id="nomAdmin" type="text" placeholder="MARIA" disabled>
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido Paterno</label>
                                           			 <input class="form-control" id="apPatAdmin" type="text" placeholder="RODRIGUEZ" disabled>
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido materno</label>
                                           			 <input class="form-control" id="apMatAdmin" type="text" placeholder="DÍAZ" disabled>
                                       			</div>
												</div>
											</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Correo electr&oacute;nico</label>
                                           			 <input class="form-control" id="correoAdmin" type="text" placeholder="........@yahoo.com.mx" disabled>
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Tel&eacute;fono</label>
                                           			 <input class="form-control" id="telAdmin" type="text" placeholder="57849785" disabled>
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
            		                <i class="fa fa-fw"></i> Responsable Legal
                    			    </div>
									<div class="panel-body">
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>RFC</label>
                                           			 <input class="form-control" id="rfcResp" type="text" placeholder="JUGS854215BR6" disabled>
                                       			</div>
												</div>
												</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Nombre</label>
                                           			 <input class="form-control" id="nomResp" type="text" placeholder="ANA" disabled>
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido Paterno</label>
                                           			 <input class="form-control" id="apPatResp" type="text" placeholder="GUTIERREZ" disabled>
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Apellido materno</label>
                                           			 <input class="form-control" id="apMatResp" type="text" placeholder="HERRERA" disabled>
                                       			</div>
												</div>
											</div>
												<div class="row">
												<div class="col-lg-4">
												<div class="form-group">
                                           		 	<label>Correo electr&oacute;nico</label>
                                           			 <input class="form-control" id="correoResp" type="text" placeholder="........@gmail.com" disabled>
                                       			</div>
												</div>
													<div class="col-lg-4">
													<div class="form-group">
                                           		 	<label>Tel&eacute;fono</label>
                                           			 <input class="form-control" id="telResp" type="text" placeholder="57426351" disabled>
                                       			</div>
												</div>
												</div>

								</div>
								</div>
								</div>
								</div>
						
						
							</div>
							</div>

								
                                                    <div class="tab-pane fade" id="settings">
                                                    <div class="panel-body">
                                                    <div class="row">
                                                    <div class="col-lg-6">
                                                    <div class="form-group">
                                                                                    <br/><label>Proyecto</label><input type= "file"></input>
                                                                            </div>
                                                    </div>
                                                    </div>
                                                    <div class="row">
                                                    <div class="col-lg-3">
                                                    <div class="form-group">
                                                                                    <label>Otros</label>
                                                                                    <input type= "file"></input>
                                                                            </div>
                                                            </div>


                                                    </div>

                                                            </div>
                                                    </div>
                                                    <div class="tab-pane fade" id="autoriza">
                                <div class="panel-body">
								<div class="row">
											<div class="col-lg-3">
											<div class="form-group">
                                		            <br/><label>No. de Proyecto</label>
                                        		    <input class="form-control" id="disabledInput" type="text" placeholder="CY256879" disabled>
			                                </div>
											</div>
											</div>				
						
				 			            <div class="row">	
											<div class="col-lg-3">
											<div class="form-group">
                    	                        <div class="form-group">
                        	            	        <label>Vo.Bo.</label>
                                            		<div class="checkbox">
													<label><input type="checkbox">Validaci&oacute;n</label>
                                            		</div>
		                                        </div>
        	    	                        </div>
											</div>
											<div class="col-lg-6">
											<div class="form-group">
                                                                                            <label>Nombre de Funcionario</label>
                                                                                            <input class="form-control" id="disabledInput" type="text" placeholder="Datos_usuario">
                                                                                        </div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-9" align="right">
											<div class="form-group">
											<button type="submit" class="btn btn-primary">Enviar a Autorizaci&oacute;n</button>
                    					    <button type="reset" class="btn btn-default">Regresar</button>
											</div>
											</div>
										</div>
	
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
				
				<!------------------------------------------------------------------------------------------->	
			
			
         

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
    <script src="vendor/morrisjs/morris.min.js"></script>
    <script src="data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
    <script src="js/Consulta/ConsultaProyecto.js"></script>

</body>

</html>