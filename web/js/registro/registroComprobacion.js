/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
        
        
       // inicio(); 
        $("#btn_guardar").click(function () {//Guardar

           
            
            var comprobacionJson = JSON.stringify(getComprobacion()).toString();     
            

            var json = '{ "json":{"comprobacion": '+ comprobacionJson + '} }';

            console.log(json);  
    
    
    
});
	});


function getComprobacion(){
    
    var gC = new Object();//datosGenerales
    var  cve_recurso, cve_proy,tipo_gasto, importe, tipo_documento, ruta_archivo, nombre_archivo;   
     
    cve_recurso= 189;//fijo hasta resolver combo de recursos (CY,CC,CO)
    cve_proy=$("#numProyComprob").val();
    tipo_gasto=$("#tipoGasto").val();
    importe=$("importe").val();
    tipo_documento=$("cat_documentos").val();
    ruta_archivo=$("ruta").val();
    nombre_archivo=$("docComprobacion").val();
    id_usuario=1;
    
    gC.id_proyecto = cve_proy;
    gc.id_cheque = 1;
    gC.id_etapa_proyecto = 1;
    gC.concepto = 1;
    gC.importe = importe;
    gC.numero_total_doc = 1;
    gC.id_usuario = 1;

    gC.tipo_documento = tipo_documento;
    gC.ruta = ruta_archivo;
    gC.nombre_archivo = nombre_archivo;
    
    return gC;
	
    
}

