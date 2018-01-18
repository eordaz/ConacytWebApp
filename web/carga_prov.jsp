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
        
        
       
            <!-- /.row -->
            <!-- /.row -->
<!------------------------------------------------------------------------------------------------------------------->
	<form name="formCaptura" method="post" action="usuario.jsp">   

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
                        <li class="active"><a href="#inicio" data-toggle="tab">Datos Generales</a>
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
                        <div class="tab-pane fade in active" id="inicio">
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
		                                <select class="form-control" name="id_fondo">
                                                    <option>Seleccionar</option>
		                                    <option value="3">FOINS</option>
		                                    <option value="1">FONDO SECTORIAL</option>
		                                    <option value="2">FONDO MIXTO</option>
		                                    <option value="4">FORDECYT</option>
		                                    <option value="5">FONCICYT</option>
		                                    <option value="6">CIBIOGEM</option>
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
                                            <select class="form-control" name="id_moneda">
                                                <option>Seleccionar</option>
                                                <option value="1">DIRHAM DE LOS EMIRATOS AR&Aacute;BES UNIDOS</option>
                                                <option value="2">AFGANI AFGANO</option>
                                                <option value="3">LEK ALBAN&Eacute;S</option>
                                                <option value="4">DRAM ARMENIO</option>
                                                <option value="5">FLOR&Iacute;N ANTILLANO NEERLAND&Eacute;S</option>
                                                <option value="6">KWANZA ANGOLE&Ntilde;O</option>
                                                <option value="7">PESO ARGENTINO</option>
                                                <option value="8">D&Oacute;LAR AUSTRALIANO</option>
                                                <option value="9">FLOR&Iacute;N ARUBE&Ntilde;O</option>
                                                <option value="10">MANAT AZERBAIYANO</option>
                                                <option value="11">MARCO CONVERTIBLE DE BOSNIA-HERZEGOVINA</option>
                                                <option value="12">D&Oacute;LAR DE BARBADOS</option>
                                                <option value="13">TAKA DE BANGLAD&Eacute;S</option>
                                                <option value="14">LEV B&Uacute;LGARO</option>
                                                <option value="15">DINAR BAHREIN&Iacute;</option>
                                                <option value="16">FRANCO BURUND&Eacute;S</option>
                                                <option value="17">D&Oacute;LAR DE BERMUDA</option>
                                                <option value="18">D&Oacute;LAR DE BRUN&Eacute;I</option>
                                                <option value="19">BOLIVIANO</option>
                                                <option value="20">MVDOL BOLIVIANO (C&Oacute;DIGO DE FONDOS)</option>
                                                <option value="21">REAL BRASILE&Ntilde;O</option>
                                                <option value="22">D&Oacute;LAR BAHAME&Ntilde;O</option>
                                                <option value="23">NGULTRUM DE BUT&Aacute;N</option>
                                                <option value="24">PULA DE BOTSUANA</option>
                                                <option value="25">RUBLO BIELORRUSO</option>
                                                <option value="26">D&Oacute;LAR DE BELICE</option>
                                                <option value="27">D&Oacute;LAR CANADIENSE</option>
                                                <option value="28">FRANCO CONGOLE&Ntilde;O, O CONGOL&Eacute;S</option>
                                                <option value="29">FRANCO SUIZO</option>
                                                <option value="30">UNIDADES DE FOMENTO CHILENAS (C&Oacute;DIGO DE FONDOS)</option>
                                                <option value="31">PESO CHILENO</option>
                                                <option value="32">YUAN CHINO</option>
                                                <option value="33">PESO COLOMBIANO</option>
                                                <option value="34">UNIDAD DE VALOR REAL COLOMBIANA (A&Ntilde;ADIDA AL COP)</option>
                                                <option value="35">COL&Oacute;N COSTARRICENSE</option>
                                                <option value="36">DINAR SERBIO (REEMPLAZADO POR RSD EL 25 DE OCTUBRE DE 2006)</option>
                                                <option value="37">PESO CUBANO CONVERTIBLE</option>
                                                <option value="38">PESO CUBANO</option>
                                                <option value="39">ESCUDO CABOVERDIANO</option>
                                                <option value="40">KORUNA CHECA</option>
                                                <option value="41">FRANCO YIBUTIANO</option>
                                                <option value="42">CORONA DANESA</option>
                                                <option value="43">PESO DOMINICANO</option>
                                                <option value="44">DINAR ARGELINO</option>
                                                <option value="45">LIBRA EGIPCIA</option>
                                                <option value="46">NAKFA ERITREO</option>
                                                <option value="47">BIRR ET&Iacute;OPE</option>
                                                <option value="48">EURO</option>
                                                <option value="49">D&Oacute;LAR FIYIANO</option>
                                                <option value="50">LIBRA MALVINENSE</option>
                                                <option value="51">LIBRA ESTERLINA</option>
                                                <option value="52">LARI GEORGIANO</option>
                                                <option value="53">CEDI GHAN&Eacute;S</option>
                                                <option value="54">LIBRA DE GIBRALTAR</option>
                                                <option value="55">DALASI GAMBIANO</option>
                                                <option value="56">FRANCO GUINEANO</option>
                                                <option value="57">QUETZAL GUATEMALTECO</option>
                                                <option value="58">D&Oacute;LAR GUYAN&Eacute;S</option>
                                                <option value="59">D&Oacute;LAR DE HONG KONG</option>
                                                <option value="60">LEMPIRA HONDURE&Ntilde;O</option>
                                                <option value="61">KUNA CROATA</option>
                                                <option value="62">GOURDE HAITIANO</option>
                                                <option value="63">FORINT H&Uacute;NGARO</option>
                                                <option value="64">RUPIAH INDONESIA</option>
                                                <option value="65">NUEVO SH&Eacute;QUEL ISRAEL&Iacute;</option>
                                                <option value="66">RUPIA INDIA</option>
                                                <option value="67">DINAR IRAQU&Iacute;</option>
                                                <option value="68">RIAL IRAN&Iacute;</option>
                                                <option value="69">KR&Oacute;NA ISLANDESA</option>
                                                <option value="70">D&Oacute;LAR JAMAICANO</option>
                                                <option value="71">DINAR JORDANO</option>
                                                <option value="72">YEN JAPON&Eacute;S</option>
                                                <option value="73">CHEL&Iacute;N KENIATA</option>
                                                <option value="74">SOM KIRGU&Iacute;S (DE KIRGUIST&Aacute;N)</option>
                                                <option value="75">RIEL CAMBOYANO</option>
                                                <option value="76">FRANCO COMORIANO (DE COMORAS)</option>
                                                <option value="77">WON NORCOREANO</option>
                                                <option value="78">WON SURCOREANO</option>
                                                <option value="79">DINAR KUWAIT&Iacute;</option>
                                                <option value="80">D&Oacute;LAR CAIMANO (DE ISLAS CAIM&Aacute;N)</option>
                                                <option value="81">TENGE KAZAJO</option>
                                                <option value="82">KIP LAO</option>
                                                <option value="83">LIBRA LIBANESA</option>
                                                <option value="84">RUPIA DE SRI LANKA</option>
                                                <option value="85">D&Oacute;LAR LIBERIANO</option>
                                                <option value="86">LOTI LESOTENSE</option>
                                                <option value="87">LITAS LITUANO</option>
                                                <option value="88">LAT LET&Oacute;N</option>
                                                <option value="89">DINAR LIBIO</option>
                                                <option value="90">DIRHAM MARROQU&Iacute;</option>
                                                <option value="91">LEU MOLDAVO</option>
                                                <option value="92">ARIARY MALGACHE</option>
                                                <option value="93">DENAR MACEDONIO</option>
                                                <option value="94">KYAT BIRMANO</option>
                                                <option value="95">TUGHRIK MONGOL</option>
                                                <option value="96">PATACA DE MACAO</option>
                                                <option value="97">OUGUIYA MAURITANA</option>
                                                <option value="98">RUPIA MAURICIA</option>
                                                <option value="99">RUFIYAA MALDIVA C&Oacute;DIGO MONEDA</option>
                                                <option value="100">KWACHA MALAU&Iacute;</option>
                                                <option value="101">PESO MEXICANO</option>
                                                <option value="102">UNIDAD DE INVERSI&Oacute;N (UDI) MEXICANA (C&Oacute;DIGO DE FONDOS)</option>
                                                <option value="103">RINGGIT MALAYO</option>
                                                <option value="104">METICAL MOZAMBIQUE&Ntilde;O</option>
                                                <option value="105">D&Oacute;LAR NAMIBIO</option>
                                                <option value="106">NAIRA NIGERIANA</option>
                                                <option value="107">C&Oacute;RDOBA NICARAGÜENSE</option>
                                                <option value="108">CORONA NORUEGA</option>
                                                <option value="109">RUPIA NEPALESA</option>
                                                <option value="110">D&Oacute;LAR NEOZELAND&Eacute;S</option>
                                                <option value="111">RIAL OMAN&Iacute;</option>
                                                <option value="112">BALBOA PANAME&Ntilde;A</option>
                                                <option value="113">NUEVO SOL PERUANO</option>
                                                <option value="114">KINA DE PAP&Uacute;A NUEVA GUINEA</option>
                                                <option value="115">PESO FILIPINO</option>
                                                <option value="116">RUPIA PAKISTAN&Iacute;</option>
                                                <option value="117">ZLOTY POLACO</option>
                                                <option value="118">GUARAN&Iacute; PARAGUAYO</option>
                                                <option value="119">RIAL QATAR&Iacute;</option>
                                                <option value="120">LEU RUMANO</option>
                                                <option value="121">RUBLO RUSO</option>
                                                <option value="122">FRANCO RUAND&Eacute;S</option>
                                                <option value="123">RIYAL SAUD&Iacute;</option>
                                                <option value="124">D&Oacute;LAR DE LAS ISLAS SALOM&Oacute;N</option>
                                                <option value="125">RUPIA DE SEYCHELLES</option>
                                                <option value="126">DINAR SUDAN&Eacute;S</option>
                                                <option value="127">CORONA SUECA</option>
                                                <option value="128">D&Oacute;LAR DE SINGAPUR</option>
                                                <option value="129">LIBRA DE SANTA HELENA</option>
                                                <option value="130">LEONE DE SIERRA LEONA</option>
                                                <option value="131">CHEL&Iacute;N SOMAL&Iacute;</option>
                                                <option value="132">D&Oacute;LAR SURINAM&Eacute;S</option>
                                                <option value="133">DOBRA DE SANTO TOM&Eacute; Y PR&Iacute;NCIPE</option>
                                                <option value="134">LIBRA SIRIA</option>
                                                <option value="135">LILANGENI SUAZI</option>
                                                <option value="136">BAHT TAILAND&Eacute;S</option>
                                                <option value="137">SOMONI TAYIK (DE TAYIKIST&Aacute;N)</option>
                                                <option value="138">MANAT TURCOMANO</option>
                                                <option value="139">DINAR TUNECINO</option>
                                                <option value="140">PA'ANGA TONGANO</option>
                                                <option value="141">LIRA TURCA</option>
                                                <option value="142">D&Oacute;LAR DE TRINIDAD Y TOBAGO</option>
                                                <option value="143">D&Oacute;LAR TAIWAN&Eacute;S</option>
                                                <option value="144">CHEL&Iacute;N TANZANO</option>
                                                <option value="145">GRIVNA UCRANIANA</option>
                                                <option value="146">CHEL&Iacute;N UGAND&Eacute;S</option>
                                                <option value="147">DOLAR AMERICANO</option>
                                                <option value="148">D&Oacute;LAR ESTADOUNIDENSE (SIGUIENTE D&Iacute;A) (C&Oacute;DIGO DE FONDOS)</option>
                                                <option value="149">D&Oacute;LAR ESTADOUNIDENSE (MISMO D&Iacute;A) (C&Oacute;DIGO DE FONDOS)</option>
                                                <option value="150">PESO URUGUAYO</option>
                    
                                            </select>

                                        </div>
                                    </div>
                        	</div>
                        	<div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Dependencia</label>
                                            <select class="form-control" name="id_cat_dependencia" >
                                                <option>Seleccionar</option>
                                                <option value="1">UNIVERSIDAD NACIONAL AUTONOMA DE M&Eacute;XICO</option>
                                                <option value="2">INSTITUTO POLITECNICO NACIONAL</option>
                                                <option value="3">UNIVERSIDAD AUTONOMA DE MEXICO</option>
                                                <option value="4">CONACYT</option>
                                                <option value="5">DGP</option>
                                            </select>
                                        </div>
                                    </div>
                        	</div>
                        	<div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>SubDependencia</label>
                                            <select class="form-control" name="id_cat_subdependencia">
                                                <option>Seleccionar</option>
                                                <option value="1">COORDINACI&Oacute;N Y CONSEJO  T&Eacute;CNICO DE  HUMANIDADES</option>
                                                <option value="3">CENTROS DE INVESTIGACI&Oacute;N INBTERDISCIPLINARIAS EN CIENCIAS  Y HUMANIDADES</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <br/><label>Proyecto</label>
                                            <input type="file" name="uploadfile" style="width:300px"></input>
                                        </div>
                                    </div>
				</div>
                                
                                </div>
                        </div>

				<div class="row">
                                    <div class="col-lg-6" align="right">
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
                
		</form>		
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
    <!--<script src="vendor/morrisjs/morris.min.js"></script>
    <script src="data/morris-data.js"></script> --->

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
	 
	
</body>

</html>