<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>

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
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script> 
	<script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/Consulta/consultaComprobacion.js"></script>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <%@ include file="navmenu.html" %>
        
     
        <div id="page-wrapper">
        	<div class="row">  
		    <br/>    
                    <br/>               
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>No. de Proyecto </label>
                                <input class="form-control" id="consulComprobProy" name="consulComprobProy" />
                        </div>
                    </div>	
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>Nombre de Proyecto</label>
                            <input id="nombreProyConsul" class="form-control" disabled="disabled" />
                        </div>
                    </div>	
		</div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <input type="button" id="btnConsultarComprobacion"  name="btnConsultarComprobacion" class="btn btn-primary"  value="Consultar"/>
                        </div>
                    </div>
                </div>
            
                
        
            <div class="row" >
                <div class="col-lg-12">
                    <h1 class="page-header">Comprobaciones</h1>
		</div>
						<!-- /.col-lg-12 -->
            </div>
			
            <div class="panel-body">
                					<!-- Nav tabs -->
		<ul class="nav nav-tabs">
                    <li class="active" > Datos de Comprobación			
                    </li>
                    <li><!--a href="#polizas" data-toggle="tab">Pólizas</a-->					
                    </li>					
						
		</ul>
						
						<!-- Tab panes -->
		<div class="tab-content">
                    <div class="tab-pane fade in active" id="profile">
                        <BR/>
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <i class="fa fa-fw"></i> Datos de Comprobación
                                </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <label>Tipo de Gasto</label>
                                                        <INPUT type="text" class="form-control" id="cmbComprobacion"  name="cmbComprobacion" disabled="disabled"/> 
						</div>
                                            </div>
					</div>
					<div class="row">
                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <label>Importe a Comprobar</label>
                                                        <input class="form-control" id="importeComprobacion"  name="importeComprobacion"  disabled="disabled">
						</div>
                                            </div>
					</div>	
                                    </div>
                            </div>
						
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <i class="fa fa-fw"></i> Anexos
                    		</div>
				<div class="panel-body">
                                    <div class="row">                               
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <label>Tipo de documento</label>
                                                    <input class="form-control" id="cmbTipodoc"  name="cmbTipodoc" disabled="disabled"/>  
                                            </div>	
					</div>
                                    	<div class="col-lg-3" id="divOtros" style="display:none">
                                            <div class="form-group">
                                                <label>Descripci&oacute;n</label>
                                                    <input class="form-control" id="descrip" name="descrip"   type="text"/>
                                            </div>
					</div>
                                    </div>
                                    <div class="row">             
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Documento Comprobatorio</label>                                           
                                                <input id="anexoComprob" name="anexoComprob" disabled="disabled">
                                            </div>
					</div>
                                    </div>
                                    <div class="row">   
                                        <br/>          
                                        <br/>          
                                        <div class="col-lg-3" align="right">
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-primary">Guardar</button>
			                        <button type="reset" class="btn btn-default">Limpiar</button>
                                            </div>
					</div>
                                    </div>
                                </div>
                            </div>
                    </div><!--TAB 2 -->
                    <div class="tab-pane fade " id="polizas">
                        <br/>
			<br/>
                            <div class="row">                               
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Tipo de póliza</label>
                                            <select class="form-control" id="poliza"  name="poliza" disabled="disabled"> 
						<option selected>Seleccionar</option>
						<option value="2">Gasto</option>
						<option value="3">Ingreso</option>
                                            </select>
                                    </div>	
				</div>
				<div class="col-lg-3">
                                    <div class="form-group">
                                        <label>No. de póliza</label>
                                            <input class="form-control" id="nopoliza"  name="nopoliza" disabled="disabled" value= "0000001"/> 
                                    </div>	
				</div>
				<div class="col-lg-3">
                                    <div class="form-group">
                                        <label>No. de Cheque</label>
                                            <input class="form-control" id="nocheque"  name="nocheque"  value= "0000001" disabled="disabled"/> 
                                    </div>	
				</div>
                            </div>
                            <div class="row">  
                                <br/>
                                    <div class="col-lg-1">
                                        <div class="form-group">
                                            <label>No.</label>
                                                <input class="form-control" id="cmbCtaconc" disabled="disabled"  name="cmbCtacont"  value="1"/>
					</div>	
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label>Cuenta contable</label>
                                                <input class="form-control" id="cmbCtaconc" disabled="disabled"  name="cmbCtacont" />
					</div>	
                                    </div>                             
                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label>Cargo</label>
                                                <input class="form-control" id="importe"  name="importe"  value= "$" disabled="disabled"/> 													
					</div>	
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label>Cuenta contable</label>
                                                <input class="form-control" id="cmbCtaconc" disabled="disabled"  name="cmbCtacont" />
					</div>	
                                    </div>                             
                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label>Abono</label>
                                                <input class="form-control" id="importe"  name="importe" value= "$" disabled="disabled"/> 													
					</div>	
                                    </div>
				</div>
				<div class="row"> 
                                    <div class="col-lg-1">
                                        <div class="form-group">
                                            <label>No.</label>
                                                <input class="form-control" id="cmbCtaconc" disabled="disabled"  name="cmbCtacont"  value="2"/>
					</div>	
                                    </div> 
                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label>Cuenta contable</label>
                                                <input class="form-control" id="cmbCtaconc" disabled="disabled" name="cmbCtacont" />
					</div>	
                                    </div>                             
                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label>Cargo</label>
                                                <input class="form-control" id="importe"  name="importe"  value= "$" disabled="disabled"/> 													
					</div>	
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label>Cuenta contable </label>
                                                <input class="form-control" id="cmbCtaconc" disabled="disabled"  name="cmbCtacont" />
					</div>	
                                    </div>                             
                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label>Abono</label>
                                                <input class="form-control" id="importe"  name="importe"  value= "$" disabled="disabled"/> 													
					</div>	
                                    </div>
                                </div>
				<div class="row">  
                                    <br/>                             
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <label>Fecha</label>
                                                    <input class="form-control" id="fecha"  name="fecha" disabled="disabled" value= ""/> 		
                                            </div>	
					</div>
				</div>
                    </div>
                </div>
            </div>
            <!-- /.panel-body -->
	</div>
	<!-- /.panel -->
    </div>


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

</body>

</html>