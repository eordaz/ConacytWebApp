/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {
       
        var json_param = JSON.stringify({"id_proyecto": '4'});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/proyectos/obtenerComprobacionesProyecto',
            data: 'json=' + json_param, //'{\"id_proyecto\":\"' 4 '\"}',      
            dataType: "json", // type of returned data
            success: function (data) {
                
                // if ajax function results success
                console.log(data);
                var json = JSON.stringify(data);
                console.log('esto es el json:'+json);
                var content = JSON.parse(json);
                console.log("valor de content" + content);
                
                //impresion valores en pantalla de registro de proyecto
                $('#consulComprobProy').val(content[0]["clave_proyecto"]);
                $('#nombreProyConsul').val(content[0]["proyecto_desc"]);
                $('#cmbComprobacion').val(content[0]["descripcion"]);
                $('#importeComprobacion').val(content[0]["importe"]);
                $('#cmbTipodoc').val(content[0]["documentos_descr"]);
                $('#anexoComprob').val(content[0]["nombre_archivo"]);
                
            },
            
        error: function() {
                    alert("Proyecto inexistente");
                }
        })    

        return  false;        
        });
