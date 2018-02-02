/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function () {

    $("#btnConsultar").click(function () { // if submit button is clicked
        var NoProyecto = $("input#txtNoProyecto").val(); // define username variable     

        var json_param = JSON.stringify({"id_recurso": '189', "clave_proyecto": NoProyecto});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/proyectos/obtenerProyectosPorClave',
            data: 'json=' + json_param, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
            dataType: "json", // type of returned data
            success: function (data) {

                // if ajax function results success
                console.log(data);
                var json = JSON.stringify(data);
                console.log('esto es el json:' + json);
                var content = JSON.parse(json);
                //console.log(  "json " +content[0].obtenerProyectosPorClave);
                // console.log("valor de content" + content[0]["etapas_proyecto"]["0"]["recurso_descr"]);

                if (content[0].obtenerProyectosPorClave === -1) {

                    bootbox.alert("No existe el proyecto");

                } else {

                    $('#nomProyConsul').val(content[0]["datosGenerales"]["proyecto_desc"]);
                    $('#consulIdProy').val(content[0]["datosGenerales"]["id_proyecto"]);
                    $('#fondoConsul').val(content[0]["datosGenerales"]["fondo_desc"]);
                    $('#fechIniConsul').val(content[0]["datosGenerales"]["fecha_inicio"]);
                    $('#fechfinConsul').val(content[0]["datosGenerales"]["fecha_fin"]);
                    $('#imporConsul').val(content[0]["datosGenerales"]["importe_total"]);
                    $('#monedaConsul').val(content[0]["datosGenerales"]["moneda_desc"]);
                    $('#dependConsul').val(content[0]["datosGenerales"]["Dependencia_desc"]);
                    $('#subdependConsul').val(content[0]["datosGenerales"]["Subdependencia_desc"]);
                    //impresion valores en datos prespuestales


                        console.log('la longitud de las etapas>'+content[0]["etapas_proyecto"].length);
                   // for (var i = 0; i < content[0]["etapas_proyecto"].length; i++) {
                        // $('#tipoGasto').val(content[0]["etapas_proyecto"]["0"]["recurso_descr"]);
                        //$('#importe').val(content[0]["etapas_proyecto"]["0"]["importe_autorizado"]);
                        if (typeof content[0]["etapas_proyecto"]["0"] !== "undefined") {
                            $('#tipoGasto').val(content[0]["etapas_proyecto"]["0"]["recurso_descr"]);
                            $('#importe').val(content[0]["etapas_proyecto"]["0"]["importe_autorizado"]);
                        }
                        if (typeof content[0]["etapas_proyecto"]["1"] !== "undefined") {
                            $('#tipoGasto2').val(content[0]["etapas_proyecto"]["1"]["recurso_descr"]);
                            $('#importe2').val(content[0]["etapas_proyecto"]["1"]["importe_autorizado"]);
                        }
                    //}
                    //impresion valores Responsables


                    if (typeof content[0]["responsables"]["0"] !== "undefined") {
                    
                        $('#rfcTecnico').val(content[0]["responsables"]["0"]["rfc"]);
                        $('#nomTecnico').val(content[0]["responsables"]["0"]["nombre"]);
                        $('#apPatTecnico').val(content[0]["responsables"]["0"]["apellido_paterno"]);
                        $('#apMatTecnico').val(content[0]["responsables"]["0"]["apellido_materno"]);
                        $('#correoTecnico').val(content[0]["responsables"]["0"]["correo"]);
                        $('#telTecnico').val(content[0]["responsables"]["0"]["telefono"]);
                    }
                    console.log(content[0]["responsables"]);
                    if (typeof content[0]["responsables"]["1"] !== "undefined") {
                    
                        $('#rfcAdmin').val(content[0]["responsables"]["1"]["rfc"]);
                        $('#nomAdmin').val(content[0]["responsables"]["1"]["nombre"]);
                        $('#apPatAdmin').val(content[0]["responsables"]["1"]["apellido_paterno"]);
                        $('#apMatAdmin').val(content[0]["responsables"]["1"]["apellido_materno"]);
                        $('#correoAdmin').val(content[0]["responsables"]["1"]["correo"]);
                        $('#telAdmin').val(content[0]["responsables"]["1"]["telefono"]);
                    }
                    console.log(content[0]["responsables"]);
                    if (typeof content[0]["responsables"]["2"] !== "undefined") {
                    
                        $('#rfcResp').val(content[0]["responsables"]["2"]["rfc"]);
                        $('#nomResp').val(content[0]["responsables"]["2"]["nombre"]);
                        $('#apPatResp').val(content[0]["responsables"]["2"]["apellido_paterno"]);
                        $('#apMatResp').val(content[0]["responsables"]["2"]["apellido_materno"]);
                        $('#correoResp').val(content[0]["responsables"]["2"]["correo"]);
                        $('#telResp').val(content[0]["responsables"]["2"]["telefono"]);
                    }
                    //impresion valores Anexos
                    $('#proyArch').val(content[0]["documentos"]["nombre_archivo"]);

                }

                //impresion valores en pantalla de registro de proyecto


            },

            error: function () {
                alert("Proyecto inexistente");
            }
        })

        return  false;
    });

});
