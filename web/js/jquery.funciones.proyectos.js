/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
        
        
       // inicio(); 
        $("#btn_guardar").click(function () {//Guardar

        $("#tab1").removeClass("disabledTab");
        $("#tab2").removeClass("disabledTab");
        $("#tab3").removeClass("disabledTab");
        $("#tab4").removeClass("disabledTab");    
            
            var datosgeneralesJson = JSON.stringify(getDatosgenerales()).toString();     
            var datosEtapasJson = JSON.stringify(getEtapas()).toString();
            var datosResponsablesJson = JSON.stringify(getResponsables()).toString();
            var datosDocumentosJson = JSON.stringify(getDocumentos()).toString();

            var json = '{ "json":{"datosGenerales":' + datosgeneralesJson + ',"etapasProyecto":' + datosEtapasJson + ',"responsables":' + datosResponsablesJson + ',"documentos":' + datosDocumentosJson + '} }';

            console.log(json);


      /*  $.ajax({// JQuery ajax function
                type: "POST", // Submitting Method
                url: 'http://localhost:8080/conacyt-war/resources/conacyt//proyectos/insertarOactualizarProyecto',
                data: 'json=' + json, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
                dataType: "json", // type of returned data
                success: function (data) {

                    // if ajax function results success
                    var json = JSON.stringify(data);
                    var content = JSON.parse(json);
                    //console.log(content['getLogin']);

                    if (content['getLogin']==='-1') { // if the returned data equal 0
                    
                        console.log("Ocurrio un error…");

                    } else { 
                        
                        bootbox.alert("Registro exitoso…");
                        
                        

                    }
                },
            })*/


           
    });
    
   /* $('#form').validator().on('submit', function (e) {
      if (e.isDefaultPrevented()) {
        // handle the invalid form...
        console.log("invalido");
        
        $("#importe").parent().attr("class","form-group has-error has-feedback has-feedback");
	$("#importe").parent().children("span").text("Debe ingresar dígitos").show();

            
      } else {
          console.log("valido");
        // everything looks good!
      }
    });*/
    
    
    $("#btn1").on("click", function(e) {
      $("span.help-block").hide();
      e.preventDefault();
      validar_personales();
 
    });
    

    $("#btn2").on("click", function(e) {
      $("span.help-block").hide();
      e.preventDefault();
      validar_etapas();
      $("#tab1").removeClass("disabledTab");
      $("#tab2").removeClass("disabledTab");
    });
    
      $("#btn3").on("click", function(e) {
      $("span.help-block").hide();
      e.preventDefault();
      validar_responsables();
       $("#tab1").removeClass("disabledTab");
       $("#tab2").removeClass("disabledTab");
       $("#tab3").removeClass("disabledTab");
    });
    
});


function inicio(){ // 1

    $("span.help-block").hide();
    $("#btnsig1").click(function(){
		if(validar()==false){
		console.log("no valido ");
		}
        else{
		console.log("validos");
		$("#li2").removeClass("disabledTab");
		
		}

    });
    $("#clave_proyecto").keyup(validar);
 	
}




function  validar_personales()
{
       
    
        var valor = document.getElementById("clave_proyecto").value;
	if ( valor == null || valor.length==0  ||  !(/CY\d{6}/.test(valor)))
	{
	  $("#iconotexto").remove();
	  $("#clave_proyecto").parent().attr("class","form-group has-error has-feedback");
	  $("#clave_proyecto").parent().children("span").text("Debe ingresar caracteres con formato CY999999").show();
	  
	  return false;
	}
	else{
		$("#iconotexto").remove();
		$("#clave_proyecto").parent().attr("class","form-group  has-success has-feedback" );
		$("#clave_proyecto").parent().children("span").text("").hide();
	 
	}
        
        var valor = document.getElementById("nombre_proyecto").value;
	if ( valor == null || valor.length==0  ||  !(/\w+/.test(valor)))
	{
	  $("#iconotexto").remove();
	  $("#nombre_proyecto").parent().attr("class","form-group has-error has-feedback");
	  $("#nombre_proyecto").parent().children("span").text("Error de datos").show();
	  
	  return false;
	}
	else{
		$("#iconotexto").remove();
		$("#nombre_proyecto").parent().attr("class","form-group  has-success has-feedback" );
		$("#nombre_proyecto").parent().children("span").text("").hide();
	 
	}
        var valor = document.getElementById("importe").value;
	if ( valor == null || valor.length==0  ||  !(/\d{1,10}\.\d{2}/.test(valor)))
	{
	  $("#iconotexto").remove();
	  $("#importe").parent().attr("class","form-group has-error has-feedback");
	  $("#importe").parent().children("span").text("Solo dígitos").show();	  
	  return false;
	}
	else{
            $("#iconotexto").remove();
            $("#importe").parent().attr("class","form-group  has-success has-feedback" );
            $("#importe").parent().children("span").text("").hide();
	    //return true;
             $('#TabProy a[href="#datos_pres"]').tab('show');
	 
	}
        
}

function  validar_etapas()
{
        var valor = document.getElementById("importe_asignado").value;
	if ( valor == null || valor.length==0  ||  !(/\d{1,10}\.\d{2}/.test(valor)))
	{
	  $("#iconotexto").remove();
	  $("#importe_asignado").parent().attr("class","form-group has-error has-feedback");
	  $("#importe_asignado").parent().children("span").text("Formato de importe a dos decimales 0.00").show();
	  
	  return false;
	}
	else{
		$("#iconotexto").remove();
		$("#importe_asignado").parent().attr("class","form-group  has-success has-feedback" );
		$("#importe_asignado").parent().children("span").text("").hide();
	 
	}
        
        var valor = document.getElementById("importe_asignado2").value;
	if ( valor == null || valor.length==0  ||  !(/\d{1,10}\.\d{2}/.test(valor)))
	{
	  $("#iconotexto").remove();
	  $("#importe_asignado2").parent().attr("class","form-group has-error has-feedback");
	  $("#importe_asignado2").parent().children("span").text("Formato de importe a dos decimales 0.00").show();
	  
	  return false;
	}
	else{
		$("#iconotexto").remove();
		$("#importe_asignado2").parent().attr("class","form-group  has-success has-feedback" );
		$("#importe_asignado2").parent().children("span").text("").hide();
                $('#TabProy a[href="#resp"]').tab('show');
	}
       
}


function  validar_responsables()
{
        /*var valor = document.getElementById("importe_asignado").value;
	if ( valor == null || valor.length==0  ||  !(/\d{1,10}\.\d{2}/.test(valor)))
	{
	  $("#iconotexto").remove();
	  $("#importe_asignado").parent().attr("class","form-group has-error has-feedback");
	  $("#importe_asignado").parent().children("span").text("Debe ingresar caracteres con formato CY999999").show();
	  
	  return false;
	}
	else{
		$("#iconotexto").remove();
		$("#importe_asignado").parent().attr("class","form-group  has-success has-feedback" );
		$("#importe_asignado").parent().children("span").text("").hide();
	 
	}
        
        var valor = document.getElementById("importe_asignado2").value;
	if ( valor == null || valor.length==0  ||  !(/\d{1,10}\.\d{2}/.test(valor)))
	{
	  $("#iconotexto").remove();
	  $("#importe_asignado2").parent().attr("class","form-group has-error has-feedback");
	  $("#importe_asignado2").parent().children("span").text("Debe ingresar caracteres con formato CY999999").show();
	  
	  return false;
	}
	else{
		$("#iconotexto").remove();
		$("#importe_asignado2").parent().attr("class","form-group  has-success has-feedback" );
		$("#importe_asignado2").parent().children("span").text("").hide();*/
                $('#TabProy a[href="#anexos"]').tab('show');
	/*}*/
       
}

function getDatosgenerales(){
    
    var dg = new Object();//datosGenerales
    var  cve_recurso, cve_proy,nombre_proy,cat_fondos,fecha_ini,fecha_fin,importe,cat_moneda,cat_dep,cat_subdep	;   
     
    cve_recurso= 189;//$("#clave_proyecto").val().substring(0,2);
    cve_proy=$("#clave_proyecto").val().substring(2,$("#clave_proyecto").val().length);
    nombre_proy=$("#nombre_proyecto").val();
    cat_fondos=$("#cat_fondos").val();
    fecha_ini= $("#fecha_inicio").val();
    fecha_fin = $("#fecha_fin").val();
    importe=$("#importe").val();
    cat_moneda=$("#cat_moneda option:selected").val();
    cat_dep=$("#cat_dependencias").val();
    cat_subdep=$("#cat_subdependencias").val();
    id_usuario=1;
    
    dg.id_fondo = cat_fondos;
    dg.id_moneda =cat_moneda;
    dg.id_recurso = cve_recurso;
    dg.clave_proyecto = cve_proy;
    dg.nombre_proyecto = nombre_proy;//
    dg.id_dependencia =cat_dep;
    dg.id_subdependencia = cat_subdep;
    dg.importe_total =importe;
    dg.fecha_inicio = fecha_ini;
    dg.fecha_fin = fecha_fin;//id_partida
    dg.id_usuario = 1;
    return dg;
	
    
}


function getEtapas(){
    
    var dg = new Object();//datosGenerales
    var etapas = [];
    var renglonE1 = {};
    var renglonE2 = {};
    var renglonE3 = {};
    var renglonE4 = {};
    
    var clave_etapa,clave_recurso,tipogasto, importe_asignado, importe_autorizado,no_filas;
    var tipogasto2, importe_asignado2, importe_autorizado2,ministracion;   
    var tipogasto3, importe_asignado3, importe_autorizado3;       
    var tipogasto4, importe_asignado4, importe_autorizado4;   
    
    ministracion=1;
    clave_etapa=1;
    no_filas=2;
    clave_recurso= 189;//CY $("#clave_proyecto").val().substring(0,2);
    
    tipogasto=$("#tipoGasto option:selected").val();
    importe_asignado=$("#importe_asignado").val();
    importe_autorizado=$("#importe_asignado").val();
    
    tipogasto2=$("#tipoGasto option:selected").val();
    importe_asignado2=$("#importe_asignado2").val();
    importe_autorizado2=$("#importe_asignado2").val();
    
    
    
        renglonE1["id_etapa"] = clave_etapa;
        renglonE1["id_recurso"] = clave_recurso;
        renglonE1["id_ministracion"] = ministracion;
        renglonE1["id_cat_tipo_gasto"] = tipogasto;
        renglonE1["importe_asignado"] = importe_asignado;
        renglonE1["importe_autorizado"] = importe_autorizado;
        renglonE1["id_usuario"] = 1;
        etapas.push(renglonE1);
        
        renglonE2["id_etapa"] = clave_etapa;
        renglonE2["id_recurso"] = clave_recurso;
        renglonE1["id_ministracion"] = ministracion;
        renglonE2["id_cat_tipo_gasto"] = tipogasto2;
        renglonE2["importe_asignado"] = importe_asignado2;
        renglonE2["importe_autorizado"] = importe_autorizado2;
        renglonE2["id_usuario"] = 1;
        etapas.push(renglonE2);
    
        renglonE3["id_etapa"] = "2";
        renglonE3["id_recurso"] = clave_recurso;
        renglonE1["id_ministracion"] = ministracion;
        renglonE3["id_cat_tipo_gasto"] = tipogasto3;
        renglonE3["importe_asignado"] = importe_asignado3;
        renglonE3["importe_autorizado"] = importe_autorizado3;
        renglonE3["id_usuario"] = 1;
        etapas.push(renglonE3);
        
        renglonE4["id_etapa"] = "2";
        renglonE4["id_recurso"] = clave_recurso;
        renglonE1["id_ministracion"] = ministracion;
        renglonE4["id_cat_tipo_gasto"] = tipogasto4;
        renglonE4["importe_asignado"] = importe_asignado4;
        renglonE4["importe_autorizado"] = importe_autorizado4;
        renglonE4["id_usuario"] = 1;
        etapas.push(renglonE4);
    
   /* dg.clave_etapa =1;
    dg.id_recurso=clave_recurso;
    dg.id_cat_tipo_gasto=tipogasto;
    dg.id_dependencia =tipogasto;
    dg.importe_asignado = importe_asignado;
    dg.importe_autorizado =importe_autorizado;
    dg.id_usuario=1;*/
    
     /*for (var i = 0; i <= 1; i++) {
         
        renglon["clave_etapa"] = clave_etapa;
        renglon["id_recurso"] = clave_recurso;
        renglon["id_cat_tipo_gasto"] = tipogasto;
        renglon["importe_asignado"] = importe_asignado;
        renglon["importe_autorizado"] = importe_autorizado;
        renglon["id_usuario"] = 1;
        etapas.push(renglon);
        clave_etapa=clave_etapa+1;
     }*/
    
    
     return etapas;
    
   /* for (var i = 0; i < no_filas; i++) {*/
    
}
	

function getResponsables(){
    
    var dg = new Object();//datosGenerales
    var responsables = [];
    var renglonRT = {};
    var renglonRA = {};
    var renglonRL = {};
      
        
        renglonRT["id_cat_tipo_responsable"] =  $("#RT_tipo_responsable").val();
        renglonRT["rfc"] = $("#RT_rfc").val();
        renglonRT["nombre"] =  $("#RT_nombre").val();
        renglonRT["apellido_paterno"] =$("#RT_apellido_paterno").val();
        renglonRT["apellido_materno"] =  $("#RT_apellido_materno").val();
        renglonRT["clave_empleado"] = "";
        renglonRT["correo"] =  $("#RT_correo").val();
        renglonRT["telefono"] = $("#RT_telefono").val();
        renglonRT["id_usuario"] = 1;
        
        responsables.push(renglonRT);
        
        
        renglonRA["id_cat_tipo_responsable"] = $("#RA_tipo_responsable").val();
        renglonRA["rfc"] = $("#RA_rfc").val();
        renglonRA["nombre"] =  $("#RA_nombre").val();
        renglonRA["apellido_paterno"] =$("#RA_apellido_paterno").val();
        renglonRA["apellido_materno"] =  $("#RA_apellido_materno").val();
        renglonRA["clave_empleado"] = "";
        renglonRA["correo"] =  $("#RA_correo").val();
        renglonRA["telefono"] = $("#RA_telefono").val();
        renglonRA["id_usuario"] = 1;
        
        responsables.push(renglonRA);
        
                
        
        renglonRL["id_cat_tipo_responsable"] =$("#RL_tipo_responsable").val();
        renglonRL["rfc"] = $("#RL_rfc").val();
        renglonRL["nombre"] =  $("#RL_nombre").val();
        renglonRL["apellido_paterno"] =$("#RL_apellido_paterno").val();
        renglonRL["apellido_materno"] =  $("#RL_apellido_materno").val();
        renglonRL["clave_empleado"] = "";
        renglonRL["correo"] =  $("#RL_correo").val();
        renglonRL["telefono"] = $("#RL_telefono").val();
        renglonRL["id_usuario"] = 1;
        responsables.push(renglonRL);
     return responsables;
}

function getDocumentos(){
    var documentos = [];
    var documento = {};
    documento["id_cat_documento"] = 250;
    documento["nombre_archivo"] = $("#nombre_archivo").val();
    documento["ruta"] = 'contratos';
    documento["id_usuario"] = 1;
    
    documentos.push(documento);
        
   return documentos;
    
}



function agrega_etapa(){
    //alert("EENTRA");
    	var numerot = document.getElementById("num").value;
	//var numerot = $('#num').val();

	if(numerot==6){
		}
		else{
			numerot++;
			document.getElementById("num").value = numerot;	

			if (numerot==2) { 
				//$('#tel3, #tel4, #tel5, #tel6').hide();
				$('#etapa2').show();
			}
			else if (numerot==3) { 
				//$('#tel4, #tel5, #tel6').hide();
				//$('#tel2, #tel3').show();
			}
			else if (numerot==4) { 
				//$('#tel5, #tel6').hide();
				//$('#tel2, #tel3, #tel4').show();
			}
			else if (numerot==5) { 
				//$('#tel6').hide();
				//$('#tel2, #tel3, #tel4, #tel5').show();
			}
			else if (numerot==6) { 
				//$('#tel2, #tel3, #tel4, #tel5, #tel6').show();
			}
			else {}	
		}    
}


function eliminar_etapa(cualtel){
	var numerot = document.getElementById("num").value;	
			if(numerot==1){
			}
			else{
                            numerot--;
                            document.getElementById("num").value = numerot;
			}
	switch (cualtel) {

		case 2:
			$('#tel2').hide();
			$('#tipo_telefono2').removeAttr('selected');
			$('#telefono2, #tipo_telefono2').val('');
			break;
		case 3:
			$('#tel3').hide();
			$('#tipo_telefono3').removeAttr('selected');
			$('#telefono3, #tipo_telefono3').val('');
			break;
		case 4:
			$('#tel4').hide();
			$('#tipo_telefono4').removeAttr('selected');
			$('#telefono4, #tipo_telefono4').val('');
			break;
		case 5:
			$('#tel5').hide();
			$('#tipo_telefono5').removeAttr('selected');
			$('#telefono5, #tipo_telefono5').val('');
			break;
		case 6:
			$('#tel6').hide();
			$('#tipo_telefono6').removeAttr('selected');
			$('#telefono6, #tipo_telefono6').val('');
			break;
	}
	
}                        

