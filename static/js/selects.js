//Actualiza el combo mennus_generales de acuerdo al tipo de comida seleccionado con los datos obtenidos del ajax
function actualizar_combo_menu_general(data)
{
    $('#combo_menu_general').empty(); //elimino el cotenido actual del combo

    // agrego los tipos obtenidos por ajax
    $.each(data, function(index, datos){
      $('<option value="' + datos['id'] + '">' +
                            datos['nombre'] + '</option>')
      .appendTo('#combo_menu_general')     
   });
}

//Actualiza el menu general con json obtenido  de acuerdo al tipo de comida escogido

function actualizar_menu_general()
{
	//alert("entro");
	//alert(document.getElementById('tipo_comida').value);

    $.getJSON('/cocinero/menus_generales/'+ 
                   document.getElementById('tipo_comida').value,
               function(data){ actualizar_combo_menu_general(data);                               
                              });
}


function crear_momento(data)
{

  $.each(data, function () {
        $("#checkboxes").append($("<label>").text(this.nombre).prepend(
            $("<input>").attr('type', 'checkbox').val(this.id).id('momento')
               .prop('checked', this.checked)
        ));
    });




    

    $("#checkboxes").on('change', '[type=checkbox]', function () {
       console.log($(this).val());
    });
}






function listar_momentos()
{
 // alert("entro");
  //alert(document.getElementById('tipo_comida').value);

    $.getJSON('/cocinero/listar_momentos_api/',
               function(data){
                crear_momento(data);  


                
              // alert(data);                               
                              });
}



$(function(){
     // Actualizamos los selects, se hace esto
     // pues al recargar la pagina los selects pueden tener
     // un inicio distinto del por defecto
     actualizar_menu_general();

     listar_momentos();




})




