$(function()
{
  var valueBandera =$('#bandera').val();
  if(valueBandera == 1)
  {

       $(".alert").removeClass("in").show();
  $(".alert").delay(300).addClass("in").fadeOut(3000);
  // $('#bandera').val('3');
  }
  else if(valueBandera == 0)
  {
     $(".alert2").removeClass("in").show();
  $(".alert2").delay(300).addClass("in").fadeOut(3000);
  }
});

$(function()
{
  var valueBandera =$('#sel_certificacion').val();
  if(valueBandera == 0)
  {

    alert("Seleccione una certificacion");
  //   $(".alert").removeClass("in").show();
  //$(".alert").delay(300).addClass("in").fadeOut(3000);
  // $('#bandera').val('3');
  }
  
});


dropContainer.ondragover = dropContainer.ondragenter = function(evt) {
  evt.preventDefault();
};



dropContainer.ondrop = function(evt) {
  // pretty simple -- but not for IE :(
  fileInput.files = evt.dataTransfer.files;
  evt.preventDefault();
};







function mostrarImagen(input,objetivo) {
 if (input.files && input.files[0]) {
  var reader = new FileReader();
  reader.onload = function (e) {
  //$('#img_destino').attr('src', e.target.result);
   $('#'+objetivo).attr('src', e.target.result);


  }
  reader.readAsDataURL(input.files[0]);
 }
}
 
$("#fileInput").change(function(){
 mostrarImagen(this,'img_destino');

});



