function obtenerresultado(data,mensaje,anio,m,d){
        console.log(data);

        console.log(data[0]);

        var j = 0;
        var horas=1;
        var html_dia="";
        while(horas<=24)
        {
            html_dia+="<tr><td> "+horas+":00 </td><td><div id='div_hora_"+horas+"' onclick='nuevo_horario("+horas+")' class='div_reserva_horario_sin'></div> </td></tr>";
            horas++;
        }
        document.getElementById('body_dia').innerHTML=html_dia;
        while (data[j]!=null){
           // console.log(data[j]["hora_inicial"]);

            //console.log(data[j]["hora_final"]);

            var inicial = data[j]["hora_inicial"].split(":")[0];
            var final = data[j]["hora_final"].split(":")[0];

            inicial=parseInt(inicial);
            final=parseInt(final);

            //console.log(inicial);
            //console.log(final);



            while (inicial<final){
               // document.getElementById('div_hora_'+inicial).innerHTML = "comienza";
                document.getElementById('div_hora_'+inicial).setAttribute("class", "div_reserva_horario");
                var hidden=document.createElement('input');
                hidden.type='hidden';
                hidden.value = data[j]["id"]; 
                hidden.id = 'hidden_div_hora_'+inicial;
                document.getElementById('div_hora_'+inicial).appendChild(hidden);
                document.getElementById('div_hora_'+inicial).setAttribute("onClick","cancelar_agenda("+inicial+")");
                inicial++;
            }          

            
            //console.log('div_hora_'+inicial+'_');

            j++;
        }

            var div1 = document.getElementById('calendario2');    
            var div2 = document.getElementById('horario');           
            
          
            div1.style.display = 'none';
            div2.style.display = 'block';    
            document.getElementById('fecha').value = mensaje; 
            document.getElementById('dia').value = d; 
            document.getElementById('mes').value = m; 
            document.getElementById('anio').value = anio;           
        
       }

       	function ver_reserva_dia(anio, mes, dia)
        {

           // alert(String(mes));

            if(String(mes).length==1){
                m = "0"+String(mes);
               // alert(m);
            }else{
                m=mes;
            }

            if(String(dia).length==1){
                d = "0"+String(dia);

                //alert(d);
            }
            else{
                d = dia;
            }

            var mensaje=String(anio)+String(m)+String(d);
           // alert(mensaje);

              $.getJSON('/listar_horarios/'+ 
                   mensaje,
               function(data){ obtenerresultado(data,mensaje,anio,m,d);                               
                              });


                   
           
        }
        function ver_reserva_semana(anio, mes, semana, orden_Semana,arraysemanas)
        {   

            document.getElementById('semana_act').value=semana;
            document.getElementById('orden_Semana_act').value=orden_Semana;

            console.log(anio);
            console.log(mes);
            console.log(semana);
            console.log(orden_Semana);
            console.log(arraysemanas);            
            
                        
         
            var div1 = document.getElementById('ver_horario_semana');    
            var div2 = document.getElementById('calendario2');           
            
          
            div1.style.display = 'block';   
            div2.style.display = 'none';

           // console.log("entro") ;
           // console.log(arraysemanas);
        	
            var semanasel;
            var NoSemana;
            for (i = 0;i<arraysemanas.length;i++){
                if (semana == arraysemanas[i].semana){
                    NoSemana=i;
                    semanasel=arraysemanas[i];
                    i=arraysemanas.length;
                    

                }

            }

          //  console.log(NoSemana);
            // console.log(semanasel);

             //console.log(arraysemanas.length);


    
             var dia;
             if (NoSemana==0){
              dia=1;
            }
            else if(NoSemana == arraysemanas.length-1){
                dia =  semanasel.dia_comienzo_semana - semanasel.dia_final;  
            }
           
            else{
                dia = semanasel.dia_comienzo_semana -7;
            }


             var htmlhorasemana="";
        for (j = 1; j < 25;j++){
            htmlhorasemana+="<tr>";
            var dia_trabajo=dia;
            for (i=0;i<8;i++){
                 //Horas
                 if(i==0)
                 {
                    htmlhorasemana+="<td>"+j+":00</td>"
                 }

                    else if(semanasel.dia_inicial<=i && semanasel.dia_final>=i){
                    htmlhorasemana+="<td><div id='div_dia_"+dia_trabajo+"_hora_"+j+"'  class='div_reserva_horario_sin'>"+dia_trabajo+"</div> </td>";  


                    dia_trabajo++;   
                }
                else
                {
                    htmlhorasemana+="<td><div class='div_blanco'></div> </td>";  
                }
                }
                 
                 htmlhorasemana+="</tr>";
            }
            document.getElementById('body_semana').innerHTML=htmlhorasemana;


            var dia_trabajo2=dia;
           // console.log(dia);
            for (i=semanasel.dia_inicial;i<=semanasel.dia_final;i++){

                if(semanasel.dia_inicial<=i && semanasel.dia_final>=i){
                   

                    for(j=1;j<25;j++){
                       // console.log('div_dia_'+dia_trabajo2+'_hora_'+j);
                         document.getElementById('div_dia_'+dia_trabajo2+'_hora_'+j).setAttribute("class", "div_reserva_horario_sin");

                         document.getElementById('div_dia_'+dia_trabajo2+'_hora_'+j).setAttribute("onClick", "nuevo_horario2("+ j+","+dia_trabajo2+","+mes+","+anio+")"); 
                       
                    }
                    //dia++;
                }
                dia_trabajo2++;

            } 

            var primerdiasem;
            var finaldiasem;
             if (NoSemana==0){
              primerdiasem=1;
            }
            else if(NoSemana == arraysemanas.length-1){
                primerdiasem =  semanasel.dia_comienzo_semana - semanasel.dia_final;  
            }
           
            else{
                primerdiasem = semanasel.dia_comienzo_semana -7;
            }

            //console.log("lina");
            //console.log(primerdiasem);

            finaldiasem = parseInt(semanasel.dia_comienzo_semana) -1 ;
            //console.log(finaldiasem);


            if (String(mes).length==1){
                mes= "0"+String(mes);
            }






            while(primerdiasem<=finaldiasem){

                if (String(primerdiasem).length==1){
                    primerdiasem= "0"+String(primerdiasem);
                 }

                mensaje= String(anio)+String(mes)+String(primerdiasem);


               // console.log(mensaje);
                //console.log(anio);
               // console.log(mes);
               // console.log(primerdiasem);
                //console.log("lina");

                 $.getJSON('/listar_horarios/'+ 
                   mensaje,
               function(data){ 

                   // console.log(data);
                   // console.log(primerdiasem)

                    var j=0;
                     while (data[j]!=null){
               // console.log(data[j]["hora_inicial"]);

               // console.log(data[j]["hora_final"]);

                        var inicial = data[j]["hora_inicial"].split(":")[0];
                        var final = data[j]["hora_final"].split(":")[0];

                         var id_agenda = data[j]["id"].split(":")[0];



                        inicial=parseInt(inicial);
                        final=parseInt(final);

                       //  console.log(inicial);
                         //console.log(final);
                         //console.log(data[j]["dia"]);


                        while (inicial<final){

                            //console.log('div_dia_'+parseInt(primerdiasem)+'_hora_'+inicial);
                             document.getElementById('div_dia_'+parseInt(data[j]["dia"])+'_hora_'+inicial).setAttribute("class", "div_reserva_horario");                        


                            

                             document.getElementById('div_dia_'+parseInt(data[j]["dia"])+'_hora_'+inicial).setAttribute("onClick","cancelar_agenda2("+inicial+","+id_agenda+","+anio+","+mes+","+semana+","+orden_Semana+")");
                          
                                

                            inicial++;
                        
                        }
                         j++;   
                    }               

                    
                              });


                primerdiasem++;
            }




         
            
        }

      







          function nuevo_horario(hora)
        {
            //alert(hora);
            var div1 = document.getElementById('seleccion_horas');
            div1.style.display = 'block'; 

            hf = hora+1; 


             if (String(hf).length == 1 ){
                hf= "0"+String(hf);
            }

           // alert("esta es la hora"+hora);

            HF = hf + ":00";






            if (String(hora).length == 1 ){
                hora= "0"+String(hora);
            }

           // alert("esta es la hora"+hora);

            H = hora + ":00";





            document.getElementById("hora_inicial").value = H;

            document.getElementById("hora_final").setAttribute("min",HF);
            document.getElementById("hora_final").value = HF;

            


           

           //alert( document.getElementById(ani).value);

            
        }

         function nuevo_horario2(hora,dia,mes,anio)
        {
            //alert(hora);
           // console.log(dia);
            //console.log(mes);
            //console.log(anio);

            hf = hora+1; 


             if (String(hf).length == 1 ){
                hf= "0"+String(hf);
            }

           // alert("esta es la hora"+hora);

            HF = hf + ":00";






            if (String(hora).length == 1 ){
                hora= "0"+String(hora);
            }

           // alert("esta es la hora"+hora);

            H = hora + ":00";








            var div1 = document.getElementById('seleccion_horas2');
            div1.style.display = 'block';  
            document.getElementById("hora_inicial2").value = H;
             document.getElementById("hora_final2").setAttribute("min",HF);
            document.getElementById("hora_final2").value = HF;





            document.getElementById("dia_act").value = dia;
            document.getElementById("mes_act").value = mes;
            document.getElementById("anio_act").value = anio;






           

           //alert( document.getElementById(ani).value);

            
        }

        function cancelar_agenda(hora) {
           
           if(confirm("Esta seguro que desea eliminar esta agenda?")){
                var id_horario = document.getElementById('hidden_div_hora_'+hora).value;
                alert(id_horario); 

                $.getJSON('/eliminar_horario/'+ 
                          id_horario,
                    function(data){ verificarCancelar(data);                                              
                                      });

           }

           




            // body...
        }

        function verificarCancelar(data){
            if (data.error == ""){
                var arrayFecha = data.fecha.split("-");
                if (data.count == 0){
                     document.getElementById(parseInt(arrayFecha[0])+"-"+parseInt(arrayFecha[1])+"-"+parseInt(arrayFecha[2])).setAttribute("class", "div_libre");
                }

                
                ver_reserva_dia(arrayFecha[0],arrayFecha[1],arrayFecha[2]);

            }
            else{
                alert(data.error);
            }
           
        }

        function  almacenaragenda() {
            
           // var fecha=String(anio)+String(m)+String(d);
            var hora_inicial =  document.getElementById('hora_inicial').value;
            var hora_final =  document.getElementById('hora_final').value;
            var fecha =  document.getElementById('fecha').value;

            var dia =  document.getElementById('dia').value;
            var mes =  document.getElementById('mes').value;
            var anio =  document.getElementById('anio').value;


            var horaI = hora_inicial.split(":");

            hora_inicial = horaI[0];

            

             var horaF = hora_final.split(":");

            hora_final = horaF[0];

           


            if (hora_inicial<hora_final){

                 if(String(hora_inicial).length==1){
                HI = "0"+String(hora_inicial);
               // alert(m);
            }else{
                HI=hora_inicial;
            }
             if(String(hora_final).length==1){
                HF = "0"+String(hora_final);
               // alert(m);
            }else{
                HF=hora_final;
            }

            mensaje = String(fecha)+ String(HI)+ String(HF);

            //alert(mensaje);
              $.getJSON('/verificar_horario_crear/'+ 
                   mensaje,
               function(data){ validacreacion(data,dia,mes,anio);                               
                              });


            }
            else{

                alert("Debes seleccionar una hora superior a la hora inicial.");
            }


          

            
            
            // body...
        }

        function  validacreacion(data,dia,mes,anio){
            if (data.error==""){
                alert("SE ALMACENO CORRECTAMENTE");
                ver_reserva_dia(anio,mes,dia);
                document.getElementById(parseInt(anio)+"-"+parseInt(mes)+"-"+parseInt(dia)).setAttribute("class","div_reserva");
                 document.getElementById('seleccion_horas').style.display = 'none';


            }
            else{
                alert(data.error);
            }
        }

        function ocultarregistro(){

             var div1 = document.getElementById('seleccion_horas');
            div1.style.display = 'none';  
            var div2 = document.getElementById('seleccion_horas2');
            div2.style.display = 'none';  


        }

        function volverMes(){

             var div1 = document.getElementById('calendario2');    
            var div2 = document.getElementById('horario'); 
            var div3 = document.getElementById('ver_horario_semana');          
            
          
                 div1.style.display = 'block';
                 div2.style.display = 'none'; 
                 div3.style.display = 'none'; 


        }



        function  almacenaragendasemana(array) {


            
           // var fecha=String(anio)+String(m)+String(d);
            var hora_inicial =  document.getElementById('hora_inicial2').value;
            var hora_final =  document.getElementById('hora_final2').value;

             var dia =  document.getElementById('dia_act').value;
            var mes =  document.getElementById('mes_act').value;
            var anio =  document.getElementById('anio_act').value;

           //console.log("arra");
            //console.log(array);


             var horaI = hora_inicial.split(":");

            hora_inicial = horaI[0];

            

             var horaF = hora_final.split(":");

            hora_final = horaF[0];


             if (hora_inicial<hora_final){

             
           

             if(String(hora_inicial).length==1){
                HI = "0"+String(hora_inicial);
               // alert(m);
            }else{
                HI=hora_inicial;
            }
             if(String(hora_final).length==1){
                HF = "0"+String(hora_final);
               // alert(m);
            }else{
                HF=hora_final;
            }


             if(String(dia).length==1){
                dd = "0"+String(dia);
               // alert(m);
            }else{
                dd=dia;
            }

             if(String(mes).length==1){
                mm = "0"+String(mes);
               // alert(m);
            }else{
                mm=mes;
            }


            fecha = String(anio)+String(mm)+String(dd);



            mensaje = String(fecha)+ String(HI)+ String(HF);

            console.log(mensaje);

            //alert(mensaje);
              $.getJSON('/verificar_horario_crear/'+ 
                   mensaje,
               function(data){ validacreacion2(data,dia,mes,anio,array);                               
                              });
           

          }else{
            alert("Debes seleccionar una hora superior a la hora inicial.");

          }

            

           


           
        }

        function  validacreacion2(data,dia,mes,anio,array){

           console.log("hola");
           arraysemanas= document.getElementById('array_semana_text').value;
           semana  = document.getElementById('semana_act').value;
           orden_Semana= document.getElementById('orden_Semana_act').value;






            if (data.error==""){
                alert("SE ALMACENO CORRECTAMENTE");
                console.log(anio);
                console.log(mes);
                console.log(semana);
                console.log(orden_Semana);

                console.log(array);
                

               // arraysemanas = arraysemanas.replace( "'",String.fromCharCode(34));
 

                ver_reserva_semana(anio, mes, semana, orden_Semana,array);
                document.getElementById(parseInt(anio)+"-"+parseInt(mes)+"-"+parseInt(dia)).setAttribute("class","div_reserva");
                 document.getElementById('seleccion_horas2').style.display = 'none';


            }
            else{
                alert(data.error);
            }
        }

        function ocultarregistrosemana(){

             
            var div2 = document.getElementById('seleccion_horas2');
            div2.style.display = 'none'; 

        }

                          
         function cancelar_agenda2(hora,id_agenda,anio,mes,semana,orden_Semana) {
           
           if(confirm("Esta seguro que desea eliminar esta agenda?")){
               
                alert(id_agenda); 

                $.getJSON('/eliminar_horario/'+ 
                          id_agenda,
                    function(data){ verificarCancelar2(data,anio,mes,semana,orden_Semana); 
                        console.log(data);                                             
                                      });
           }          
        }


       



            function mostrarmodal(){
                //alert("hola");
                 var modal = document.getElementById('myModal');
                modal.style.display = "block";
            }

            function ocultarmodal(){               
               var modal = document.getElementById('myModal');
                modal.style.display = "none";
            }


      


       
        