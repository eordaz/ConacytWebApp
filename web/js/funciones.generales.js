/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function validarDigitos(e) { // 1
    var key;
    var keychar;
    if (window.event) { key = window.event.keyCode; }
    else if (e) { key = e.which; }
    else { return true; }
    keychar = String.fromCharCode(key);
    var validos = "0123456789.";
    if ((key == null) || (key == 0) || (key == 8) || (key == 9) || (key == 13) || (key == 27)) { return true; }
    if (validos.indexOf(keychar) > -1)
        return true;
    else
        return false;
}
function validarDigitosCopiar(id) {
    var cadena = document.getElementById(id).value;
    var validos = "0123456789.";
    var erroneos = "";
    var i;
    for (i = 0; i < cadena.length; i++) {
        if (!(validos.indexOf(cadena.charAt(i)) > -1)) {
            erroneos += cadena.charAt(i);
        }
    }
    if (erroneos == "") {
        return true;
    } else {
        if (erroneos.length == 1) {
            bootbox.alert("El caracter no es validos.");
            
            return false;
        } else {
            bootbox.alert("El caracter no es valido.");       
            
            return false;
        }
    }
}   

function validarLetras(e) { // 1
    var key;
    var keychar;
    if (window.event) { key = window.event.keyCode; }
    else if (e) { key = e.which; }
    else { return true; }
    keychar = String.fromCharCode(key);
    var validos = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ áéíóúÁÉÍÓÚ";
    if ((key == null) || (key == 0) || (key == 8) || (key == 9) || (key == 13) || (key == 27)) { return true; }
    if (validos.indexOf(keychar) > -1)
        return true;
    else
        return false;
}
function validarLetrasCopiar(id) {
    var cadena = document.getElementById(id).value;
   var validos = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ áéíóúÁÉÍÓÚÄËÏÖÜ";
    var erroneos = "";
    var i;
    for (i = 0; i < cadena.length; i++) {
        if (!(validos.indexOf(cadena.charAt(i)) > -1)) {
            erroneos += cadena.charAt(i);
        }
    }
    if (erroneos == "") {
        return true;
    } else {
        if (erroneos.length == 1) {
            bootbox.alert("El caracter no es validos.");
            
            return false;
        } else {
            bootbox.alert("El caracter no es valido.");       
            
            return false;
        }
    }
}   



function archivo_tipo(archivo, elemento) {
    //console.log(elemento);
    var i = elemento.split("_")[2];
    //tamaño máximo 300K
    var max_img_size = 307200;
    var ext_permitidas = new Array(".pdf");
    var error_f = "";
    var nombre_archivo;
    
    
    if (!archivo) {
        //Vacío, no ha seleccionado nada
    } else {
        //Extensión del nombre de archivo
        console.log(archivo.substring(archivo.lastIndexOf(".")).toLowerCase());
        var extension = (archivo.substring(archivo.lastIndexOf("."))).toLowerCase();
        
        if (elemento == "pdf_comprobante") {
            document.getElementById("extension").value = extension;
            
        }
        permitida = false;
        for (var i = 0; i < ext_permitidas.length; i++) {
            if (ext_permitidas[i] == extension) {
                permitida = true;

                var input = document.getElementById(elemento);
                document.getElementById("nombre_archivo").value = input.files[0].name;
                /*if (input.files && input.files.length == 1) {
                    if (input.files[0].size > max_img_size)
                        error_f = "El archivo no puede ser más grande de " + (max_img_size / 1024) + "KB";
                }*/
            }
        }
        if (!permitida) {
            error_f = "Sólo se permite incluir archivos:" + ext_permitidas.join();
        } else {
            //Correcto
        }
    }
    if (error_f != "") {
        $("#extension").parent().attr("class","form-group  has-error has-feedback" );
        $("#extension").parent().children("span").text("Solo se  permite archivos con formato PDF  ").show();
    } else {
        //Todo en orden
    }
}