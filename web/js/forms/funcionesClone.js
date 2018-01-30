/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function addColumnPriceV() {
        /*stageId =  stageId+ 1;
        newID =  newID+ 1;
        console.log("valor debe ser 1 de stageId " + stageId);
        newClone = $('#row_'+ stageId).last().clone(true);
        newClone.attr("id",'row_'+newID);
        newClone.insertAfter($('#row_'+stageId));
        console.log(' antes del find valor del newID ' +  newID);
        newClone.find($('#tipoGasto').attr('id','tipoGasto'+stageId));
        newClone.find($('#importe').attr('id','importe'+stageId));
        newClone.find($('#quitar_1').attr('id','quitar_'+stageId));*/

        stageId =  stageId+ 1;

        newClone = $('#row_1').last().clone(true);
        newClone.insertAfter($('#row_1'));
        console.log("valor del stageId:" +stageId);
        newClone.find($('#tipoGasto').attr('id','tipoGasto'+stageId));
        newClone.find($('#importe').attr('id','importe'+stageId));

            }

            /* function addColumnPrice() {
            stageId =  stageId+ 1;

            console.log("valor debe ser 1 " + stageId);
            //var lastPrice = $('#divStage_'+stageId).find('.col-price').last();
            //console.log('last- price', lastPrice);

            //$('#row_1').clone().attr('id','row_' + (stageId + 1)).appendTo('#row_'+stageId);
            //alert($('#row_'+stageId).attr('id'));



            $('#tipoGasto').clone().attr( 'id', 'tipoGasto' + stageId ).appendTo('#row_1');
            $('#tipoGasto_' +stageId ).val('');

            //document.getByelementId('tipoGasto').style="width:200px";

            //var e = document.getElementById("tipoGasto");
            //e.id = 'tipoGasto' + stageId;
            $('#divImporte').clone().attr( 'id', 'importe_asignado' + stageId ).appendTo('#row_1');
            $('#divImporte_' +stageId ).val('');
            //var o = document.getElementById("importe_asignado");
            //o.id = 'importe_asignado' + stageId;
            //$('#divTipoGasto').clone(lastPrice);

            //$("</br>").insertAfter('#importe_' +stageId);

            //$newClone = $('#divStage_'+stageId).find('tipoGasto').last().clone(false);
            //$newClone.insertAfter(lastTipo);
            // inserta el elemento clonado despuï¿½s de la ï¿½ltima columna de "importe"
            //$newClone = $('#divStage_'+stageId).find('importe'+stageId).last().clone(false);
            //$newClone.insertAfter(lastPrice);
            //console.log("despues del after " + stageId);

    } */

// Funciï¿½n para agregar nueva etapa

function remover(id) {
        //console.log("valor de quitar "  +  id);
        //$(this).(('#quitar').remove());

        /*var valor = id.split('_')[1];
        console.log("mi valor del  id " +  valor);
        $("#row_"+valor).remove();*/
        //$('table tr').find('td:eq(n),th:eq(n)').remove();
        $('#row_1').remove();
        console.log("valor del stageId" +stageId);
      }
      
      function agrega_etapa() 
    {
        
      alert("entra");
      // Obtengo el id del último elemento de "etapa"
      //var lastStageId = parseInt($('.panel-stage').last().attr('id').split('_')[1]);
      //var newId = lastStageId+1;

      // Clono e inserto el último elemento de "etapa"
      //$newClone = $('.panel-stage').last().clone(true);
      //$newClone.attr("id",'divStage_'+newId);

      // coloco nuevo título "etapa 1, 2, 3..."
      //$newClone.children('.panel-heading').html('<i class="fa fa-fw"></i> <span class="stage-title">Etapa '+newId+'</span>');

      // Actualizo función "addColumnPrice" del nuevo elemento
      //$newClone.find('.btn-add-price').removeAttr("onclick"); // quito onclick del elemento clonado
      //$newClone.find('.btn-add-price').unbind('click'); // quito onclick del elemento clonado
      //$newClone.find('.btn-add-price').on("click", function(){ addColumnPrice(newId); });

      // inserto nuevo elemento
      //$newClone.insertAfter($('#divStage_'+lastStageId));
    }