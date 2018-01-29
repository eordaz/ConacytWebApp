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
                console.log(content);
                //impresion valores en pantalla de registro de proyecto
                $('#nomProyConsul').val(content[0]['proyecto_desc']);
                $('#fondoConsul').val(content[0]['fondo_desc']);
                $('#fechIniConsul').val(content[0]['fecha_inicio']);
                $('#fechfinConsul').val(content[0]['fecha_fin']);
                $('#imporConsul').val(content[0]['importe_total']);
                $('#monedaConsul').val(content[0]['moneda_desc']);
                $('#dependConsul').val(content[0]['Dependencia_desc']);
                $('#subdependConsul').val(content[0]['Subdependencia_desc']);
                //impresion valores en datos prespuestales
                $('#tipoGasto').val(content[0]['']);
                $('#importe_asignado').val(content[0]['']);
                $('#importe_etapa').val(content[0]['']);
                //impresion valores Responsables
                $('#rfcTecnico').val(content[0]['']);
                $('#nomTecnico').val(content[0]['']);
                $('#apPatTecnico').val(content[0]['']);
                $('#apMatTecnico').val(content[0]['']);
                $('#correoTecnico').val(content[0]['']);
                $('#telTecnico').val(content[0]['']);
                $('#rfcAdmin').val(content[0]['']);
                $('#nomAdmin').val(content[0]['']);
                $('#apPatAdmin').val(content[0]['']);
                $('#apMatAdmin').val(content[0]['']);
                $('#correoAdmin').val(content[0]['']);
                $('#telAdmin').val(content[0]['']);
                $('#rfcResp').val(content[0]['']);
                $('#nomResp').val(content[0]['']);
                $('#apPatResp').val(content[0]['']);
                $('#apMatResp').val(content[0]['']);
                $('#correoResp').val(content[0]['']);
                $('#telResp').val(content[0]['']);
                //impresion valores Anexos
                
                
                
            },
        })    

        return  false;        
        });
 
});


