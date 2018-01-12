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

<!-- --------------------------------------termina navegacion menu -->

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Solicitud Cuenta Bancaria </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
			<div class="panel-body">
	<!-- Nav tabs -->
					<ul class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Datos de Cuenta Bancaria</a>
				
					</li>
					<li><a href="#profile" data-toggle="tab">Responsables</a>
				
					</li>
					<li><a href="#messages" data-toggle="tab">Anexos</a>
				
					</li>
					
					</ul>
					
					<!-- Tab panes -->
					<div class="tab-content">
					<div class="tab-pane fade in active" id="home">
					<br/>
					<br/>
					<div class="row">
                                <div class="col-lg-3">
                                	<div class="form-group">
                                            <label>No. de Proyecto</label>
                                            <input class="form-control">
                                    </div>
								</div>                               
								<div class="col-lg-6">
								  <div class="form-group">
                                    <label>Nombre de Proyecto</label>
                                    <input name="Input" class="disable form-control">
                                  </div>	
								</div>
								<div class="col-lg-3">	
									
								</div>
                             </div>
                             <div class="row">             
                             	 <div class="col-lg-3">
                                 	<div class="form-group">
                                            <label>Banco</label>
											<select class="form-control">
												<option value="1">CITIBANAMEXBANCO NACIONAL DE M&Eacute;XICO, S.A.</option>
                                                                                                <option value="2">BBVA BANCOMERBBVA BANCOMER, S.A.</option>
                                                                                                <option value="3">SANTANDERBANCO SANTANDER, S.A.</option>
                                                                                                <option value="4">BANJERCITOBANCO NACIONAL DEL EJ&Eacute;RCITO, FUERZA A&Eacute;REA Y ARMADA, S.N.C.</option>
                                                                                                <option value="5">HSBCHSBC M&Eacute;XICO, S.A.</option>
                                                                                                <option value="6">GE MONEYGE MONEY BANK, S.A.</option>
                                                                                                <option value="7">BAJ&Iacute;OBANCO DEL BAJ&Iacute;O, S.A.</option>
                                                                                                <option value="8">IXEIXE BANCO, S.A.</option>
                                                                                                <option value="9">INBURSABANCO INBURSA, S.A.</option>
                                                                                                <option value="10">INTERACCIONESBANCO INTERACCIONES, S.A.</option>
                                                                                                <option value="11">MIFELBANCA MIFEL, S.A.</option>
                                                                                                <option value="12">SCOTIABANKSCOTIABANK INVERLAT, S.A.</option>
                                                                                                <option value="13">BANREGIOBANCO REGIONAL DE MONTERREY, S.A.</option>
                                                                                                <option value="14">INVEXBANCO INVEX, S.A.</option>
                                                                                                <option value="15">BANSIBANSI, S.A.</option>
                                                                                                <option value="16">AFIRMEBANCA AFIRME, S.A.</option>
                                                                                                <option value="17">BANORTEBANCO MERCANTIL DEL NORTE, S.A.</option>
                                                                                                <option value="18">ABNAMROABN AMRO BANK M&Eacute;XICO, S.A.</option>
                                                                                                <option value="19">AMERICAN EXPRESSAMERICAN EXPRESS BANK (M&Eacute;XICO), S.A.</option>
                                                                                                <option value="20">BAMSABANK OF AMERICA M&Eacute;XICO, S.A.</option>
                                                                                                <option value="21">TOKYOBANK OF TOKYO-MITSUBISHI UFJ (M&Eacute;XICO), S.A.</option>
                                                                                                <option value="22">JP MORGANBANCO J.P. MORGAN, S.A.</option>
                                                                                                <option value="23">BMONEXBANCO MONEX, S.A.</option>
                                                                                                <option value="24">VE POR MASBANCO VE POR MAS, S.A.</option>
                                                                                                <option value="25">INGING BANK (M&Eacute;XICO), S.A.</option>
                                                                                                <option value="26">DEUTSCHEDEUTSCHE BANK M&Eacute;XICO, S.A.</option>
                                                                                                <option value="27">CREDIT SUISSEBANCO CREDIT SUISSE (M&Eacute;XICO), S.A.</option>
                                                                                                <option value="28">AZTECABANCO AZTECA, S.A.</option>
                                                                                                <option value="29">AUTOFINBANCO AUTOFIN M&Eacute;XICO, S.A.</option>
                                                                                                <option value="30">BARCLAYSBARCLAYS BANK M&Eacute;XICO, S.A.</option>
                                                                                                <option value="31">COMPARTAMOSBANCO COMPARTAMOS, S.A.</option>
                                                                                                <option value="32">FAMSABANCO AHORRO FAMSA, S.A.</option>
                                                                                                <option value="33">BMULTIVABANCO MULTIVA, S.A.</option>
                                                                                                <option value="34">PRUDENTIALPRUDENCIAL BANK, S.A.</option>
                                                                                                <option value="35">WAL-MARTBANCO WAL MART DE M&Eacute;XICO ADELANTE, S.A.</option>
                                                                                                <option value="36">NAFINNACIONAL FINANCIERA, S.N.C.</option>
                                                                                                <option value="37">REGIONALBANCO REGIONAL, S.A.</option>
                                                                                                <option value="38">BANCOPPELBANCOPPEL, S.A.</option>
                                                                                                <option value="39">AMIGOBANCO AMIGO, S.A.</option>
                                                                                                <option value="40">UBS BANKUBS BANCO, S.A.</option>
                                                                                                <option value="41">F&Aacute;CILBANCO F&Aacute;CIL, S.A.</option>
                                                                                                <option value="42">VOLKSWAGENVOLKSWAGEN BANK S.A. INSTITUCI&Oacute;N DE BANCA M&Uacute;LTIPLE</option>
                                                                                                <option value="43">CIBancoCONSULTOR&Iacute;A INTERNACIONAL BANCO, S.A.</option>
                                                                                                <option value="44">BBASEBANCO BASE, S.A. DE I.B.M.</option>
                                                                                                <option value="45">BANKAOOLBANKAOOL, S.A., INSTITUCI&Oacute;N DE BANCA M&Uacute;LTIPLE</option>
                                                                                                <option value="46">BANSEFIBANCO DEL AHORRO NACIONAL Y SERVICIOS FINANCIEROS, S.N.C.</option>
                                                                                                <option value="47">HIPOTECARIA FEDERALSOCIEDAD HIPOTECARIA FEDERAL, S.N.C.</option>
                                                                                                <option value="48">MONEXCBMONEX CASA DE BOLSA, S.A. DE C.V.</option>
                                                                                                <option value="49">GBMGBM GRUPO BURS&Aacute;TIL MEXICANO, S.A. DE C.V.</option>
                                                                                                <option value="50">MASARI CC.MASARI CASA DE CAMBIO, S.A. DE C.V.</option>
                                                                                                <option value="51">C.B. INBURSAINVERSORA BURS&Aacute;TIL, S.A. DE C.V.</option>
                                                                                                <option value="52">VALU&Eacute;VALU&Eacute;, S.A. DE C.V., CASA DE BOLSA</option>
                                                                                                <option value="53">CB BASEBASE INTERNACIONAL CASA DE BOLSA, S.A. DE C.V.</option>
                                                                                                <option value="54">TIBERCASA DE CAMBIO TIBER, S.A. DE C.V.</option>
                                                                                                <option value="55">VECTORVECTOR CASA DE BOLSA, S.A. DE C.V.</option>
                                                                                                <option value="56">B&BB Y B CASA DE CAMBIO, S.A. DE C.V.</option>
                                                                                                <option value="57">INTERCAMINTERCAM CASA DE CAMBIO, S.A. DE C.V.</option>
                                                                                                <option value="58">MULTIVAMULTIVALORES CASA DE BOLSA, S.A. DE C.V. MULTIVA GPO. FIN.</option>
                                                                                                <option value="59">ACCIVALACCIONES Y VALORES BANAMEX, S.A. DE C.V., CASA DE BOLSA</option>
                                                                                                <option value="60">MERRILL LYNCHMERRILL LYNCH M&Eacute;XICO, S.A. DE C.V., CASA DE BOLSA</option>
                                                                                                <option value="61">FINAMEXCASA DE BOLSA FINAMEX, S.A. DE C.V.</option>
                                                                                                <option value="62">VALMEXVALORES MEXICANOS CASA DE BOLSA, S.A. DE C.V.</option>
                                                                                                <option value="63">&Uacute;NICA&Uacute;NICA CASA DE CAMBIO, S.A. DE C.V.</option>
                                                                                                <option value="64">ASEGURADORA MAPFREMAPFRE TEPEYAC S.A.</option>
                                                                                                <option value="65">AFORE PROFUTUROPROFUTURO G.N.P., S.A. DE C.V.</option>
                                                                                                <option value="66">CB ACTINBERACTINVER CASA DE BOLSA, S.A. DE C.V.</option>
                                                                                                <option value="67">ACTINVE SIACTINVER S.A. DE C.V.</option>
                                                                                                <option value="68">SKANDIASKANDIA VIDA S.A. DE C.V.</option>
                                                                                                <option value="69">CONSULTOR&Iacute;ACONSULTOR&Iacute;A INTERNACIONAL CASA DE CAMBIO, S.A. DE C.V.</option>
                                                                                                <option value="70">ZURICHZURICH COMPA&Ntilde;&Iacute;A DE SEGUROS, S.A.</option>
                                                                                                <option value="71">ZURICHVIZURICH VIDA, COMPA&Ntilde;&Iacute;A DE SEGUROS, S.A.</option>
                                                                                                <option value="72">HIPOTECARIA SU CASITAHIPOTECARIA SU CASITA, S.A. DE C.V.</option>
                                                                                                <option value="73">C.B. INTERCAMINTERCAM CASA DE BOLSA, S.A. DE C.V.</option>
                                                                                                <option value="74">C.B. VANGUARDIAVANGUARDIA CASA DE BOLSA, S.A. DE C.V.</option>
                                                                                                <option value="75">BULLTICK C.B.BULLTICK CASA DE BOLSA, S.A. DE C.V.</option>
                                                                                                <option value="76">STERLINGSTERLING CASA DE CAMBIO, S.A. DE C.V.</option>
                                                                                                <option value="77">FINCOMUNFINCOM&Uacute;N, SERVICIOS FINANCIEROS COMUNITARIOS, S.A. DE C.V., SOCIEDAD FINANCIERA POPULAR.</option>
                                                                                                <option value="78">ORDERORDEREXPRESS CASA DE CAMBIO , S.A. DE C.V. AAC</option>
                                                                                                <option value="79">AKALAAKALA, S.A. DE C.V., SOCIEDAD FINANCIERA POPULAR</option>
                                                                                                <option value="80">JP MORGAN C.B.J.P. MORGAN CASA DE BOLSA, S.A. DE C.V.</option>
                                                                                                <option value="81">STPSISTEMA DE TRANSFERENCIAS Y PAGOS STP, S.A. DE C.V., SOFOM E.N.R.</option>
                                                                                                <option value="82">SKANDIASKANDIA OPERADORA S.A. DE C.V.</option>
                                                                                                <option value="83">CLSCLS BANK INTERNATIONAL</option>
                                                                                                <option value="84">INDEVALSD. INDEVAL, S.A. DE C.V.</option>
                                                                                                <option value="85">ABN AMRO BANKABN AMRO BANK</option>
                                                                                                <option value="86">BANK OF MONTREALBANK OF MONTREAL</option>
                                                                                                <option value="87">BARCLAYS BANK PLCBARCLAYS BANK PLC</option>
                                                                                                <option value="88">NORTHERN TRUSTNORTHERN TRUST</option>
                                                                                                <option value="89">BANCO BILBAO VIZCAYABANCO BILBAO VIZCAYA</option>
                                                                                                <option value="90">BANCO DE CHILEBANCO DE CHILE</option>
                                                                                                <option value="91">BANCO SANTANDERBANCO SANTANDER</option>
                                                                                                <option value="92">BASLER KANTONALBANKBASLER KANTONALBANK</option>
                                                                                                <option value="93">HSBCHSBC</option>
                                                                                                <option value="94">BNP PARIBASBNP PARIBAS</option>
                                                                                                <option value="95">BANK OF NEW YORKBANK OF NEW YORK</option>
                                                                                                <option value="96">BANK OF AMERICA, N.A.BANK OF AMERICA, N.A.</option>
                                                                                                <option value="97">BANK OF AMERICABANK OF AMERICA</option>
                                                                                                <option value="98">BANK OF AMERICA N.A.BANK OF AMERICA N.A.</option>
                                                                                                <option value="99">BANCO DO BRASILBANCO DO BRASIL</option>
                                                                                                <option value="100">BANCO SANTANDER, S.A.BANCO SANTANDER, S.A.</option>
                                                                                                <option value="101">CAIXABANK, S.A.CAIXABANK, S.A.</option>
                                                                                                <option value="102">JPMORGAN CHASE BANKJPMORGAN CHASE BANK</option>
                                                                                                <option value="103">CHASE MANHATTAN BANKCHASE MANHATTAN BANK</option>
                                                                                                <option value="104">CITY NATIONAL BANKCITY NATIONAL BANK</option>
                                                                                                <option value="105">CITIBANK N.A.CITIBANK N.A.</option>
                                                                                                <option value="106">CITIBANKCITIBANK</option>
                                                                                                <option value="107">CITIBANK NACITIBANK NA</option>
                                                                                                <option value="108">CREDIT LYONNAISCREDIT LYONNAIS</option>
                                                                                                <option value="109">COMMERZBANKCOMMERZBANK</option>
                                                                                                <option value="110">CHARTER ONE BANKCHARTER ONE BANK</option>
                                                                                                <option value="111">COMPASS BANKCOMPASS BANK</option>
                                                                                                <option value="112">CREDIT SUISSECREDIT SUISSE</option>
                                                                                                <option value="113">CITIZENS BANKCITIZENS BANK</option>
                                                                                                <option value="114">DANSKE BANKDANSKE BANK</option>
                                                                                                <option value="115">DEUTSCHE BANKDEUTSCHE BANK</option>
                                                                                                <option value="116">DEUTSCHE BANK AGDEUTSCHE BANK AG</option>
                                                                                                <option value="117">DEUTSCHEDEUTSCHE</option>
                                                                                                <option value="118">FIRST NATIONAL BANKFIRST NATIONAL BANK</option>
                                                                                                <option value="119">FROST NATIONAL BANKFROST NATIONAL BANK</option>
                                                                                                <option value="120">PACIFIC WESTERN BANKPACIFIC WESTERN BANK</option>
                                                                                                <option value="121">FROST BANKFROST BANK</option>
                                                                                                <option value="122">FINANCIAL SERVICESFINANCIAL SERVICES</option>
                                                                                                <option value="123">BNP PARIBAS FORTISBNP PARIBAS FORTIS</option>
                                                                                                <option value="124">BMO HARRIS BANK N.A.BMO HARRIS BANK N.A.</option>
                                                                                                <option value="125">HSBC BANK CANADAHSBC BANK CANADA</option>
                                                                                                <option value="126">HSBC BANK PLCHSBC BANK PLC</option>
                                                                                                <option value="127">ISRAEL DISCOUNT BANK LTDISRAEL DISCOUNT BANK LTD</option>
                                                                                                <option value="128">NATIXISNATIXIS</option>
                                                                                                <option value="129">LLOYDS TSB BANK PLCLLOYDS TSB BANK PLC</option>
                                                                                                <option value="130">COMERICA BANKCOMERICA BANK</option>
                                                                                                <option value="131">THE BANK OF NOVA SCOTIATHE BANK OF NOVA SCOTIA</option>
                                                                                                <option value="132">NATIONAL PENN BANKNATIONAL PENN BANK</option>
                                                                                                <option value="133">TD BANK, N.A.TD BANK, N.A.</option>
                                                                                                <option value="134">WELLS FARGO BANKWELLS FARGO BANK</option>
                                                                                                <option value="135">WELLS FARGO BANK, N. A.WELLS FARGO BANK, N. A.</option>
                                                                                                <option value="136">ROYAL BANK OF CANADAROYAL BANK OF CANADA</option>
                                                                                                <option value="137">SUNTRUST BANKSUNTRUST BANK</option>
                                                                                                <option value="138">TOWN BANKTOWN BANK</option>
                                                                                                <option value="139">TRESOR PUBLICTRESOR PUBLIC</option>
                                                                                                <option value="140">UNION BANKUNION BANK</option>
                                                                                                <option value="141">UBS AGUBS AG</option>
                                                                                                <option value="142">UMPQUA BANKUMPQUA BANK</option>
                                                                                                <option value="143">UNICREDIT BANCAUNICREDIT BANCA</option>
                                                                                                <option value="144">REGIONS BANKREGIONS BANK</option>
                                                                                                <option value="145">ARGENTAARGENTA</option>

												</select>                                        
                                    </div>
								 </div>
								  <div class="col-lg-3">
                                 	<div class="form-group">
                                            <label>Moneda</label>
                                            <select class="form-control">
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
								 <div class="col-lg-3">
                                 	
								 </div>
								 <div class="col-lg-3">
                                 	
								 </div>
                             </div>
                              <div class="row">             
                             	 <div class="col-lg-2">
                                 	<div class="form-group">
                                           <label>Fecha de  solicitud</label>
                                    		<input name="Input"  id="fecha_solicitud" class="disable form-control  date"/>
                                    </div>
                                 </div>
                              </div>      
					</div>
					<div class="tab-pane fade" id="profile">
					<br/>
					<br/>
					<div class="row">             
                             	 <div class="col-lg-3">
                                 	<div class="form-group">
                                            <label>Responsable Administrativo</label>
                                            <input class="form-control" placeholder="RFC">
                                    </div>
								</div>	
								<div class="col-lg-3">
									<div class="form-group">
									 		<label style="height:20px" ></label>
                                            <input class="form-control" placeholder="Nombre">
                                    </div>
							   </div>
                             </div>
							 <div class="row">             
                             	 <div class="col-lg-3">
                                 	<div class="form-group">
                                            <label>Responsable Tecnico</label>
                                            <input class="form-control" placeholder="RFC">
                                    </div>
								 </div>	
	       						 <div class="col-lg-3">
	                                 	<div class="form-group">
                                            <label style="height:20px"></label>
                                            <input class="form-control" placeholder="Nombre">
                                        </div>
								 </div>
                             </div>
							 <div class="row">             
                             	 <div class="col-lg-6">
                                 	<div class="form-group">
                                            <label>Observaciones</label>
                                            <input class="form-control">
                                    </div>
								 </div>
                             </div>
							 
					</div>
					<div class="tab-pane fade" id="messages">
					<br/>
					<br/>
					<div class="row">             
                             	 <div class="col-lg-6">
                                 	<div class="form-group">
                                            <label>Caratula de servicios y productos </label>                                           
                                            <input type="file">
                                    </div>
								 </div>
                             </div>
							 <div class="row">             
                             	 <div class="col-lg-6">
                                 	<div class="form-group">
                                            <label>Tarjeta de firmas  </label>                                           
                                            <input type="file">
                                    </div>
								 </div>
                             </div>
							 <div class="row">             
                             	 <div class="col-lg-6">
                                 	<div class="form-group">
                                            <label>Responsiva </label>                                            										
                                            <input type="file">
                                    </div>
								 </div>
                             </div>
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
					</div>
					<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
					</div>
							
			
        </div>
        <!-- /#page-wrapper -->

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

</body>

</html>
