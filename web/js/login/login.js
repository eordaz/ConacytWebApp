/*
 * Patronato Universitario
 * Universidad Nacional Autónoma de México
 * 
 * @Date 22 de Enero del 2018   
 */
//<script type="text/javascript" src="js/bootbox.min.js"></script>
$(function () {
    $("#submit_login").click(function () { // if submit button is clicked
        var username = $("input#usuario").val(); // define username variable     
        if (username === "") { // if username variable is empty        
            alert('Please Insert Your Username'); // printing error message
            return false; // stop the script
        }
        var password = $("input#password").val(); // define password variable
        if (password === "") { // if password variable is empty
            alert('Please Insert Your Password'); // printing error message
            return false; // stop the script
        }

        var json_param = JSON.stringify({"usuario": username, "pass": password});




        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/login/getLogin',
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

                    /*JSON.parse(json, function (k, v) {
                        return alert(k[1] + v);          // log the current property name, the last is "".
                        //return v;                  // return the unchanged property value.
                    });*/

                    var content = JSON.parse(json);
                         console.log(content['id_usuario_rol']);
                         alert(content['id_usuario']);
                         alert(content['id_usuario_rol']);
                         alert(content['nombre_completo']);
                    //$("usuario").val(content['nombre_completo']);

                    document.location.href = 'inicio.jsp';

                    document.getElementById("usuario").value = "Sair Esparza";
                }
            },
                    })/*.done(function (data) {
                 var content = JSON.parse(data);
                 console.log(content)
                 alert(content[0].nombre)
                });*/

        return false;
    });
});


/**$(document).ready(function login() {
 $.ajax({
 
 url: $("#form1").attr("action"),
 data: formData,
 type: "POST",
 dataType: "json",
 async: false,
 contentType: false,
 processData: false,
 cache: false,
 success: function (data) {
 //console.log(data);
 if (data.resultado) {
 $("#noConvenioCmb,#cuentaBancariaCmb,#noChequeCmb,#monedaCmb,#etapaCmb,#tipoBecarioCmb,#tipoDeBecaCmb,#conceptoCmb,#origenRecursoCmb,#descripcionArchivoCmb").each(function () {
 $($(this)).val("-1").selectric("refresh");
 });
 $("#rfcTxt,#nombreTxt,#montoBecaTxt,#observacionesBecasTxt,#mesBecasComprobacionTxt,#montoCodigoBecaTxt,#pdf_comprobante,#pdf_comprobante_aux").each(function () {
 $($(this)).val("");
 });
 tabla_becasMontos.clear().draw();
 $("#divbecasq").trigger("click");
 setTimeout(function () {
 $(".cancela").hide();
 document.getElementById("p1_aux_registrado_sin").value = data.descripcion;
 borra_cont_abre_modal();
 }, 1000);
 } else {
 $(".cancela").hide();
 document.getElementById("p1_aux_registrado_sin").value = data.descripcion;
 borra_cont_abre_modal();
 }
 
 }
 ,
 error: function (XMLHttpRequest, textStatus, errorThrown) {
 
 alert("Prueba:" + textStatus + ": " + XMLHttpRequest.responseText);
 }
 ,
 complete: function (jqXHR, status) {
 
 console.log(jqXHR);
 //alert("complete\njqXHR="+jqXHR+"\nstatus="+status);
 
 }
 
 });        
 }*/
