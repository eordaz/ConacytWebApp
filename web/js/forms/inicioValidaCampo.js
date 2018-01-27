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
    var validos = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ";
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

