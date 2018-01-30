/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {

        $("#btn_guardar").click(function () {//Guardar
            var datosgeneralesJson = JSON.stringify(getDatosgenerales()).toString();     
            var datosEtapasJson = JSON.stringify(getEtapas()).toString();
            var datosResponsablesJson = JSON.stringify(getResponsables()).toString();
            var datosDocumentosJson = JSON.stringify(getDocumentos()).toString();

            var json = '{ "json":{"datosGenerales":' + datosgeneralesJson + ',"etapasProyecto":' + datosEtapasJson + ',"responsables":' + datosResponsablesJson + ',"documentos":' + datosDocumentosJson + '} }';

            console.log(json);

           /* $.ajax({
                url: $("#form1").attr("action"),
                data: formData,
                type: "POST",
                dataType: "json",
                async: false,
                contentType: false,
                processData: false,
                cache: false,
                success: function (data) {
                console.log("probando");

                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("Prueba:" + textStatus + ": " + XMLHttpRequest.responseText);
                },
                complete: function (jqXHR, status) {
                    console.log(jqXHR);

                }
            });*/
    });

});
function getDatosgenerales(){
    
    var dg = new Object();//datosGenerales
    var  cve_recurso, cve_proy,nombre_proy,cat_fondos,fecha_ini,fecha_fin,importe,cat_moneda,cat_dep,cat_subdep	;   
     
    cve_recurso= $("#clave_proyecto").val().substring(0,2);
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
    
    
    dg.clave_recurso = cve_recurso;
    dg.clave_proyecto = cve_proy;
    dg.nombre_proyecto = nombre_proy;//
    dg.id_fondo = cat_fondos;
    dg.fecha_inicio = fecha_ini;
    dg.fecha_fin = fecha_fin;//id_partida
    dg.importe_total =importe;
    dg.id_moneda =cat_moneda;
    dg.id_dependencia =cat_dep;
    dg.id_subdependencia = cat_subdep;
    dg.id_usuario = 1;
    
    return dg;
	
    
}


function getEtapas(){
    
    var dg = new Object();//datosGenerales
    var etapas = [];
    var renglon = {};
    var clave_etapa,clave_recurso,tipogasto, importe_asignado, importe_autorizado,no_filas;   
    
    clave_etapa=1;
    no_filas=2;
    clave_recurso= 189;//CY $("#clave_proyecto").val().substring(0,2);
    tipogasto=$("#tipoGasto option:selected").val();
    importe_asignado=$("#importe_asignado").val();
    importe_autorizado=$("#importe_asignado").val();
    
   /* dg.clave_etapa =1;
    dg.id_recurso=clave_recurso;
    dg.id_cat_tipo_gasto=tipogasto;
    dg.id_dependencia =tipogasto;
    dg.importe_asignado = importe_asignado;
    dg.importe_autorizado =importe_autorizado;
    dg.id_usuario=1;*/
    
     for (var i = 0; i <= 1; i++) {
         
        renglon["clave_etapa"] = clave_etapa;
        renglon["id_recurso"] = clave_recurso;
        renglon["id_cat_tipo_gasto"] = tipogasto;
        renglon["importe_asignado"] = importe_asignado;
        renglon["importe_autorizado"] = importe_autorizado;
        renglon["id_usuario"] = 1;
        etapas.push(renglon);
        clave_etapa=clave_etapa+1;
     }
    
    
     return etapas;
    
   /* for (var i = 0; i < no_filas; i++) {*/
    
}
	

function getResponsables(){
    
    var dg = new Object();//datosGenerales
    var responsables = [];
    var renglonRT = {};
    var renglonRA = {};
    var renglonRL = {};
      
        renglonRT["rfc"] = $("#RT_rfc").val();
        renglonRT["id_cat_tipo_responsable"] =  $("#RT_tipo_responsable").val();
        renglonRT["nombre"] =  $("#RT_nombre").val();
        renglonRT["apellido_paterno"] =$("#RT_apellido_paterno").val();
        renglonRT["apellido_materno"] =  $("#RT_apellido_materno").val();
        renglonRT["clave_empleado"] = "";
        renglonRT["correo"] =  $("#RT_correo").val();
        renglonRT["telefono"] = $("#RT_telefono").val();
        renglonRT["id_usuario"] = 1;
        
        responsables.push(renglonRT);
        
        renglonRA["rfc"] = $("#RA_rfc").val();
        renglonRA["id_cat_tipo_responsable"] = $("#RA_tipo_responsable").val();
        renglonRA["nombre"] =  $("#RA_nombre").val();
        renglonRA["apellido_paterno"] =$("#RA_apellido_paterno").val();
        renglonRA["apellido_materno"] =  $("#RA_apellido_materno").val();
        renglonRA["clave_empleado"] = "";
        renglonRA["correo"] =  $("#RA_correo").val();
        renglonRA["telefono"] = $("#RA_telefono").val();
        renglonRA["id_usuario"] = 1;
        
        responsables.push(renglonRA);
        
                
        renglonRL["rfc"] = $("#RL_rfc").val();
        renglonRL["id_cat_tipo_responsable"] =$("#RL_tipo_responsable").val();
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
    documento["id_documento"] = 250;
    documento["nombre_archivo"] = 'datos.pdf';
    documento["ruta"] = 'contratos';
    documento["id_usuario"] = 1;
    
    documentos.push(documento);
        
   return documentos;
    
}

