/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function valida_siguiente(){ 
   	//valido el nombre 
   	if (document.fvalida.clave_proyecto.value.length===0){ 
      	alert("Tiene que escribir su numero de proyecto") ;
      	document.fvalida.clave_proyecto.focus();
      	return 0; 
   	} 
        
        if (document.fvalida.nombre_proyecto.value.length===0){ 
      	alert("Tiene que escribir el nombre de su proyecto") ;
      	document.fvalida.nombre_proyecto.focus();
      	return 0; 
   	} 
        
        if (document.fvalida.cat_fondos.selectedIndex===0){ 
      	alert("Tiene que seleccionar los fondos de su proyecto") ;
      	document.fvalida.cat_fondos.focus();
      	return 0; 
   	} 
        
        if (document.fvalida.fecha_inicio.value.length===0){ 
      	alert("Tiene que la fecha de inicio de su proyecto") ;
      	document.fvalida.fecha_inicio.focus();
      	return 0; 
   	} 
        
        if (document.fvalida.fecha_fin.value.length===0){ 
      	alert("Tiene que la fecha final de su proyecto") ;
      	document.fvalida.fecha_fin.focus();
      	return 0; 
   	} 

        if (document.fvalida.importe.value.length===0){ 
      	alert("Tiene que escribir su numero de proyecto") ;
      	document.fvalida.importe.focus();
      	return 0; 
   	}  
        
        if (document.fvalida.cat_moneda.selectedIndex===0){ 
      	alert("Tiene que seleccionar el tipo de moneda"); 
      	document.fvalida.cat_moneda.focus();
      	return 0; 
   	} 
        
        if (document.fvalida.cat_dependencias.selectedIndex===0){ 
      	alert("Tiene que seleccionar la dependencia"); 
      	document.fvalida.cat_dependencias.focus();
      	return 0; 
   	} 
        
        if (document.fvalida.cat_subdependencias.selectedIndex===0){ 
      	alert("Tiene que seleccionar la subdependencia"); 
      	document.fvalida.cat_subdependencias.focus();
      	return 0; 
   	} 
   	//el formulario se envia 
        alert("Llenado correcto");
        console.log(fvalida);
        document.fvalida.submit(href = 'inicio.jsp#profile');
        
}