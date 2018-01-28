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
                var json = JSON.stringify(data);
                var content = JSON.parse(json);
                console.log(content);
                $('#nomProyConsul').val(content[0]['proyecto_desc']);
                $('#fondoConsul').val(content[0]['fondo_desc']);
                $('#fechIniConsul').val(content[0]['proyecto_desc']);
                $('#fechfinConsul').val(content[0]['proyecto_desc']);
                $('#imporConsul').val(content[0]['clave_moneda']);
                $('#monedaConsul').val(content[0]['moneda_desc']);
                $('#dependConsul').val(content[0]['Dependencia_desc']);
                $('#subdependConsul').val(content[0]['Subdependencia_desc']);
                $('#subdependConsul').val(content[0]['Subdependencia_desc']);
                $('#subdependConsul').val(content[0]['Subdependencia_desc']);
                
                
            },
        })    

        return  false;        
        });
 
});


