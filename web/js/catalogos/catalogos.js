/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//FUNCION CAT_FONDOS
$(function () {
    //$("#cat_fondos").click(function () { // if submit button is clicked
        var json_param = JSON.stringify({"tabla": 'cat_fondos'});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/catalogos/getCatalogo',
            data: 'json=' + json_param, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
            dataType: "json", // type of returned data
            success: function (data) { // if ajax function results success
                if (data === 0) { // if the returned data equal 0
                    alert('Wrong Login Data'); // print error message
                } else { // if the reurned data not equal 0
                    
                    var json = JSON.stringify(data);
                    
                    var content = JSON.parse(json);

                    fondoLen = content.length;
                    $("#cat_fondos").empty();
                    $("#cat_fondos").append(new Option("Seleccione", "-1"));
                   for (i = 0; i <= fondoLen - 1; i++)
                    {
                        $("#cat_fondos").append(new Option(content[i].descripcion, content[i].valor));
                    }
                    
                }
            },
        })

        return false;
    });
//});




//FUNCION CAT_MONEDA
$(function () {
   // $("#cat_moneda").click(function () { // if submit button is clicked
        var json_param = JSON.stringify({"tabla": 'cat_moneda'});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/catalogos/getCatalogo',
            data: 'json=' + json_param, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
            dataType: "json", // type of returned data
            success: function (data) { // if ajax function results success
                if (data === 0) { // if the returned data equal 0
                    alert('Wrong Login Data'); // print error message
                } else { // if the reurned data not equal 0
                    //console.log("sin valor" + data);
                    //alert('<b style="color: green;">you are logged. wait for redirection</b>');// print success message  
                    //var obj = JSON.parse(data);
                    var json = JSON.stringify(data);
                    //alert(json);
                    //console.log(json);
                    /*JSON.parse(json, function (k, v) {
                     return alert(k[1] + v);          // log the current property name, the last is "".
                     //return v;                  // return the unchanged property value.
                     });*/
                    var content = JSON.parse(json);

                    fondoLen = content.length;
                    //limpiacombos();
                    //$("#cat_moneda").empty();
                    $("#cat_moneda").append(new Option("Seleccione", "-1"));
                    for (i = 0; i <= fondoLen - 1; i++)
                    {
                        $("#cat_moneda").append(new Option(content[i].descripcion, content[i].valor));
                    }
                    // console.log(content['id_cat_tabla']);
                    // alert(content['id_cat_tabla']);
                    // alert(content['valor']);
                    //$("usuario").val(content['nombre_completo']);

                    /*document.location.href = 'inicio.jsp';
                     
                     document.getElementById("usuario").value = "Sair Esparza";*/
                }
            },
        })/*.done(function (data) {
         var content = JSON.parse(data);
         console.log(content)
         alert(content[0].nombre)
         });*/

        return false;
    });
//});
//FUNCION CAT_TIPO_GASTO
$(function () {
    //$("#tipoGasto").click(function () { // if submit button is clicked
        var json_param = JSON.stringify({"tabla": 'cat_tipo_gasto'});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/catalogos/getCatalogo',
            data: 'json=' + json_param, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
            dataType: "json", // type of returned data
            success: function (data) { // if ajax function results success
                if (data === 0) { // if the returned data equal 0
                    alert('Wrong Login Data'); // print error message
                } else { // if the reurned data not equal 0
                    //console.log("sin valor" + data);
                    //alert('<b style="color: green;">you are logged. wait for redirection</b>');// print success message  
                    //var obj = JSON.parse(data);
                    var json = JSON.stringify(data);
                    //alert(json);
                    //console.log(json);
                    /*JSON.parse(json, function (k, v) {
                     return alert(k[1] + v);          // log the current property name, the last is "".
                     //return v;                  // return the unchanged property value.
                     });*/
                    var content = JSON.parse(json);

                    fondoLen = content.length;
                    //limpiacombos();
                    //$("#tipoGasto").empty();
                    $("#tipoGasto").append(new Option("Seleccione", "-1"));
                    for (i = 0; i <= fondoLen - 1; i++)
                    {
                        $("#tipoGasto").append(new Option(content[i].descripcion, content[i].valor));
                    }
                    // console.log(content['id_cat_tabla']);
                    // alert(content['id_cat_tabla']);
                    // alert(content['valor']);
                    //$("usuario").val(content['nombre_completo']);

                    /*document.location.href = 'inicio.jsp';
                     
                     document.getElementById("usuario").value = "Sair Esparza";*/
                }
            },
        })/*.done(function (data) {
         var content = JSON.parse(data);
         console.log(content)
         alert(content[0].nombre)
         });*/

        return false;
    });
//});
//FUNCION CAT_DOCUMENTOS
$(function () {
    //$("#cat_documentos").click(function () { // if submit button is clicked
        var json_param = JSON.stringify({"tabla": 'cat_documentos'});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/catalogos/getCatalogo',
            data: 'json=' + json_param, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
            dataType: "json", // type of returned data
            success: function (data) { // if ajax function results success
                if (data === 0) { // if the returned data equal 0
                    alert('Wrong Login Data'); // print error message
                } else { // if the reurned data not equal 0
                    //console.log("sin valor" + data);
                    //alert('<b style="color: green;">you are logged. wait for redirection</b>');// print success message  
                    //var obj = JSON.parse(data);
                    var json = JSON.stringify(data);
                    //alert(json);
                    //console.log(json);
                    /*JSON.parse(json, function (k, v) {
                     return alert(k[1] + v);          // log the current property name, the last is "".
                     //return v;                  // return the unchanged property value.
                     });*/
                    var content = JSON.parse(json);

                    fondoLen = content.length;
                    //limpiacombos();
                    //$("#cat_documentos").empty();
                    $("#cat_documentos").append(new Option("Seleccione", "-1"));
                    for (i = 0; i <= fondoLen - 1; i++)
                    {
                        $("#cat_documentos").append(new Option(content[i].descripcion, content[i].valor));
                    }
                    // console.log(content['id_cat_tabla']);
                    // alert(content['id_cat_tabla']);
                    // alert(content['valor']);
                    //$("usuario").val(content['nombre_completo']);

                    /*document.location.href = 'inicio.jsp';
                     
                     document.getElementById("usuario").value = "Sair Esparza";*/
                }
            },
        })/*.done(function (data) {
         var content = JSON.parse(data);
         console.log(content)
         alert(content[0].nombre)
         });*/

        return false;
    });
//});
//FUNCION CAT_DEPENDENCIAS
$(function () {
   // $("#cat_dependencias").click(function () { // if submit button is clicked
        var json_param = JSON.stringify({"tabla": 'cat_dependencias'});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/catalogos/getCatalogo',
            data: 'json=' + json_param, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
            dataType: "json", // type of returned data
            success: function (data) { // if ajax function results success
                if (data === 0) { // if the returned data equal 0
                    alert('Wrong Login Data'); // print error message
                } else { // if the reurned data not equal 0
                    //console.log("sin valor" + data);
                    //alert('<b style="color: green;">you are logged. wait for redirection</b>');// print success message  
                    //var obj = JSON.parse(data);
                    var json = JSON.stringify(data);
                    //alert(json);
                    //console.log(json);
                    /*JSON.parse(json, function (k, v) {
                     return alert(k[1] + v);          // log the current property name, the last is "".
                     //return v;                  // return the unchanged property value.
                     });*/
                    var content = JSON.parse(json);

                    fondoLen = content.length;
                    //limpiacombos();
                    //$("#cat_dependencias").empty();
                    $("#cat_dependencias").append(new Option("Seleccione", "-1"));
                    for (i = 0; i <= fondoLen - 1; i++)
                    {
                        $("#cat_dependencias").append(new Option(content[i].descripcion, content[i].valor));
                    }
                    // console.log(content['id_cat_tabla']);
                    // alert(content['id_cat_tabla']);
                    // alert(content['valor']);
                    //$("usuario").val(content['nombre_completo']);

                    /*document.location.href = 'inicio.jsp';
                     
                     document.getElementById("usuario").value = "Sair Esparza";*/
                }
            },
        })/*.done(function (data) {
         var content = JSON.parse(data);
         console.log(content)
         alert(content[0].nombre)
         });*/

        return false;
    });
//});


//SUBDEPENDENCIAS
$("#cat_dependencias").change(function () {
    $("#cat_subdependencias").empty();
    $.getJSON('http://localhost:8080/conacyt-war/resources/conacyt/catalogos/getSubdependencias=' + $("#cat_dependencias").val(), function (data) {
        console.log(JSON.stringify(data));
        $.each(data, function (k, v) {
            $("#cat_subdependencias").append("<option value=\"" + k + "\">" + v + "</option>");
        }).removeAttr("disabled");
    });
});

/**$(function () {
   // $("#cat_subdependencias").click(function () { // if submit button is clicked
        var json_param = JSON.stringify({"id_cat_catalogo": 'valorDependencia'});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/catalogos/getSubdependencias',
            data: 'json=' + json_param, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
            dataType: "json", // type of returned data
            success: function (data) { // if ajax function results success
                if (data === 0) { // if the returned data equal 0
                    alert('Wrong Login Data'); // print error message
                } else { // if the reurned data not equal 0
                    //console.log("sin valor" + data);
                    //alert('<b style="color: green;">you are logged. wait for redirection</b>');// print success message  
                    //var obj = JSON.parse(data);
                    var json = JSON.stringify(data);
                    //alert(json);
                    //console.log(json);
                    /*JSON.parse(json, function (k, v) {
                     return alert(k[1] + v);          // log the current property name, the last is "".
                     //return v;                  // return the unchanged property value.
                     });*/
               /**     var content = JSON.parse(json);

                    fondoLen = content.length;
                    //limpiacombos();
                    $("#cat_subdependencias").empty();
                    $("#cat_subdependencias").append(new Option("Seleccione", "-1"));
                    for (i = 0; i <= fondoLen - 1; i++)
                    {
                        $("#cat_subdependencias").append(new Option(content[i].descripcion, content[i].valor));
                    }
                    // console.log(content['id_cat_tabla']);
                    // alert(content['id_cat_tabla']);
                    // alert(content['valor']);
                    //$("usuario").val(content['nombre_completo']);

                    /*document.location.href = 'inicio.jsp';
                     
                     document.getElementById("usuario").value = "Sair Esparza";
                }
            },
        })/*.done(function (data) {
         var content = JSON.parse(data);
         console.log(content)
         alert(content[0].nombre)
         });*/

/*        return false;
    });
//});
*/


//FUNCION CAT_FONDOS COMPLEMENTO
var mostrarValor = function(x){
    document.getElementById('cat_fondos').value=x;
     console.log(x);
     $("#cat_fondos").append("Seleccione", x);
     
};

/*$(document).ready(function(){
        $("#cat_fondos").change(function(){
                var op = $("#cat_fondos option:selected").val();
                $('#cat_fondos').html(op);
                alert (cat_fondos);
        });
});*/
/*function ShowSelected()
{

var cod = document.getElementById("cat_fondos").value;
alert(cod);
 

var combo = document.getElementById("cat_fondos");
var selected = combo.options[combo.selectedIndex].text;
alert(selected);
}  
    */
   
   