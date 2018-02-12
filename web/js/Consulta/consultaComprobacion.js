/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {
       
   $("#btnConsultarComprobacion").click(function () { // if submit button is clicked
    var NoProyecto = $("input#consulComprobProy").val(); // define username variable     

    var json_param = JSON.stringify({"id_recurso": '189', "clave_proyecto": NoProyecto});
    $.ajax({// JQuery ajax function
        type: "POST", // Submitting Method
        url: 'http://192.168.29.80:8080/conacyt-war/resources/conacyt/proyectos/obtenerComprobacionesProyecto',
        data: 'json=' + json_param, //'{\"id_proyecto\":\"' 4 '\"}',      
        dataType: "json", // type of returned data
        success: function (data) {

            // if ajax function results success
            console.log(data);
            var json = JSON.stringify(data);
            console.log('esto es el json:'+json);
            var content = JSON.parse(json);
            console.log(content.lenght);
            i=0; i < content.lenght; i++;
            console.log("valor de content" + content[i]["documentos_descr"]);

            //impresion valores en pantalla de registro de proyecto
            $('#nombreProyConsul').val(content[0]["proyecto_desc"]);
            $('#cmbComprobacion').val(content[0]["descripcion"]);
            $('#importeComprobacion').val(content[0]["importe"]);
            $('#cmbTipodoc').val(content[0]["documentos_descr"]);
            
            //i=0; i < content.lenght; 
            $('#anexoComprob').val(content[0]["nombre_archivo"]);

        },

    error: function() {
                alert("Proyecto inexistente");
            }
    })    

    return  false;        
    });
        
});        

$(function () {
       
   $("#btnConsultarRegComprobacion").click(function () { // if submit button is clicked
    var NoProyecto = $("input#numProyComprob").val(); // define username variable     

    var json_param = JSON.stringify({"id_recurso": '189', "clave_proyecto": NoProyecto});
    $.ajax({// JQuery ajax function
        type: "POST", // Submitting Method
        url: 'http://192.168.29.80:8080/conacyt-war/resources/conacyt/proyectos/obtenerComprobacionesProyecto',
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
            $('#nomProyComprobConsul').val(content[0]["proyecto_desc"]);

        },

    error: function() {
                alert("Proyecto inexistente");
            }
    })    

    return  false;        
    });
        
});   

$(document).ready(function(){ 
    $('#tipoGasto').on('click',function(){
        dato = $('#tipoGasto').val();
        if (dato==2){
            //$('#divSicop').toggle();
            $('#divSicop').show();
            }
        else{
                //document.getByElementID('divSicop').style="display:none"; 
                $('#divSicop').hide();
            }

 });

});

$(document).ready(function(){ 
    $('#cat_documentos').on('click',function(){
        dato = $('#cat_documentos').val();
        if (dato==7){
                //$('#divSicop').toggle();
                 $('#divOtros').show();

        }
        else{
                //document.getByElementID('divSicop').style="display:none"; 
                $('#divOtros').hide();
        }

 });

});