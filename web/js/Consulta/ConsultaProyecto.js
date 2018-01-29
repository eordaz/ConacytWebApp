/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$(function () {
       
    $("#btnConsultar").click(function () { // if submit button is clicked
        var NoProyecto = 'CY'+$("input#txtNoProyecto").val(); // define username variable     
        
        var json_param = JSON.stringify({"clave_proyecto": NoProyecto, "esComprobacion": 'false'});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/proyectos/obtenerProyectosPorClave',
            data: 'json=' + json_param, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
            dataType: "json", // type of returned data
            success: function (data) {
                
                // if ajax function results success
                console.log(data);
                var json = JSON.stringify(data);
                console.log('esto es el json:'+json);
                var content = JSON.parse(json);
                console.log("valor de content" + content[0]["etapas_proyecto"]["etapa_1"]["recurso_descr"]);
                
                
                //impresion valores en pantalla de registro de proyecto
                $('#nomProyConsul').val(content[0]["datosGenerales"]["proyecto_desc"]);
                $('#fondoConsul').val(content[0]["datosGenerales"]["fondo_desc"]);
                $('#fechIniConsul').val(content[0]["datosGenerales"]["fecha_inicio"]);
                $('#fechfinConsul').val(content[0]["datosGenerales"]["fecha_fin"]);
                $('#imporConsul').val(content[0]["datosGenerales"]["importe_total"]);
                $('#monedaConsul').val(content[0]["datosGenerales"]["moneda_desc"]);
                $('#dependConsul').val(content[0]["datosGenerales"]["Dependencia_desc"]);
                $('#subdependConsul').val(content[0]["datosGenerales"]["Subdependencia_desc"]);
                //impresion valores en datos prespuestales
                $('#tipoGasto').val(content[0]["etapas_proyecto"]["etapa_1"][0]["recurso_descr"]);
                $('#importe_asignado').val(content[0]["etapas_proyecto"]["etapa_1"][0]["importe"]);
                //impresion valores Responsables
                /*$('#rfcTecnico').val(content[0]["responsables"]["RESPONSABLE TÉCNICO"]["rfc"]);
                $('#nomTecnico').val(content[0]["responsables"]["RESPONSABLE T&EACUTE;CNICO"]["nombre"]);
                $('#apPatTecnico').val(content[0]["responsables"]["RESPONSABLE T&EACUTE;CNICO"]["apellido_paterno"]);
                $('#apMatTecnico').val(content[0]["responsables"]["RESPONSABLE T&EACUTE;CNICO"]["apellido_materno"]);
                $('#correoTecnico').val(content[0]["responsables"]["RESPONSABLE T&EACUTE;CNICO"]["correo"]);
                $('#telTecnico').val(content[0]["responsables"]["RESPONSABLE T&EACUTE;CNICO"]["telefono"]);*/
                $('#rfcAdmin').val(content[0]["responsables"]["RESPONSABLE ADMINISTRATIVO"]["rfc"]);
                $('#nomAdmin').val(content[0]["responsables"]["RESPONSABLE ADMINISTRATIVO"]["nombre"]);
                $('#apPatAdmin').val(content[0]["responsables"]["RESPONSABLE ADMINISTRATIVO"]["apellido_paterno"]);
                $('#apMatAdmin').val(content[0]["responsables"]["RESPONSABLE ADMINISTRATIVO"]["apellido_materno"]);
                $('#correoAdmin').val(content[0]["responsables"]["RESPONSABLE ADMINISTRATIVO"]["correo"]);
                $('#telAdmin').val(content[0]["responsables"]["RESPONSABLE ADMINISTRATIVO"]["telefono"]);
                $('#rfcResp').val(content[0]["responsables"]["RESPONSABLE LEGAL"]["rfc"]);
                $('#nomResp').val(content[0]["responsables"]["RESPONSABLE LEGAL"]["nombre"]);
                $('#apPatResp').val(content[0]["responsables"]["RESPONSABLE LEGAL"]["apellido_paterno"]);
                $('#apMatResp').val(content[0]["responsables"]["RESPONSABLE LEGAL"]["apellido_materno"]);
                $('#correoResp').val(content[0]["responsables"]["RESPONSABLE LEGAL"]["correo"]);
                $('#telResp').val(content[0]["responsables"]["RESPONSABLE LEGAL"]["telefono"]);
                //impresion valores Anexos
                $('#proyArch').val(content[0]["documentos"]["nombre_archivo"]);
                
                
                
            },
        })    

        return  false;        
        });
 
});


