/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {
    var NoProyecto = $("input#addComprobProy").val(); // define username variable     
        
        var json_param = JSON.stringify({"id_recurso": '189', "clave_proyecto": NoProyecto});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/proyectos/obtenerProyectosPorClave',
            data: 'json=' + json_param, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
            dataType: "json", // type of returned data
            success: function (data) {
                    console.log(data);
                //impresion valores en pantalla de registro de proyecto
                $('#nomProyComprobConsul').val(data[0]["datosGenerales"]["proyecto_desc"]);
            },
            
        })    

        return  false;        
        });