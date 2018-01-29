/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function llenado(){
 
		var cveproy = document.getElementById('clave_proyecto').value;
		var nomproy = document.getElementById('nombre_proyecto').value;
		var catfon = document.getElementById('cat_fondos').value;
		var fechin = document.getElementById('fecha_inicio').value;
		var fechfin = document.getElementById('fecha_fin').value;
		var importe = document.getElementById('importe').value;
		var catmoneda = document.getElementById('cat_moneda').value;
                var catdependencia = document.getElementById('cat_dependencias').value;
                var catsubdependencia = document.getElementById('cat_subdependencias').value;

 
		
		if(cveproy == null || cveproy.length == 0 || isNaN(cveproy)){
			alert('ERROR: INGRESAR CLAVE');
			return false;
		}
    
                if(nomproy == null || nomproy.length == 0 || /^\s+$/.test(nomproy)){
			alert('ERROR: INGRESAR NOMBRE DE PROYECTO');
			return false;
		}
 
                if(catfon == -1){
			alert('ERROR: Debe seleccionar el fondo');
			return false;
		}
		
		if(!isNaN(fechin)){
			alert('ERROR: ELEGIR FECHA INICIO');
			return false;
		}
                
                if(!isNaN(fechfin)){
			alert('ERROR: ELEGIR FECHA FIN');
			return false;
		}
                
                if(importe == null || importe.length == 0 || isNaN(importe)){
			alert('ERROR: INGRESAR IMPORTE');
			return false;
		}
                
                if(catmoneda == -1){
			alert('ERROR: Debe seleccionar la moneda');
			return false;
		}
                
                if(catdependencia == -1){
			alert('ERROR: Debe seleccionar la dependencia');
			return false;
		}
                
                if(catsubdependencia == -1){
			alert('ERROR: Debe seleccionar la subdependencia');
			return false;
		}
 
		return true;
	}