$('document').ready(function(){

    $('#evaluar_test').click(function(){


        if($('input:checked').length == 88){



           var estilo_aprendizaje = '';
            
            var number_ref = $("input[categoria='reflexivo']:checked").length;    
            var number_act = $("input[categoria='activo']:checked").length;
            
            var number_sen = $("input[categoria='sensitivo']:checked").length;
            var number_int = $("input[categoria='intuitivo']:checked").length;

            var number_vis = $("input[categoria='visual']:checked").length;  
            var number_ver = $("input[categoria='verbal']:checked").length;

            var number_sec = $("input[categoria='secuencial']:checked").length;
            var number_glo = $("input[categoria='global']:checked").length;


            var ref_act = Math.abs(number_ref - number_act);
            var sen_int = Math.abs(number_sen - number_int);
            var vis_ver = Math.abs(number_vis - number_ver);
            var sec_glo = Math.abs(number_sec - number_glo);

            var estilos = ['activo', 'reflexivo', 'sensitivo', 'intuitivo', 'visual', 'verbal', 'secuencial', 'global'];

            var contadores = [number_act, number_ref, number_sen, number_int, number_vis, number_ver, number_glo];


            var mayor_dif = Math.max(ref_act, sen_int, vis_ver, sec_glo);

            var diff = [ref_act, sen_int, vis_ver, sec_glo];

            var indices = [];

            for(var i = 0; i < diff.length ; i++){

                if(mayor_dif == diff[i]){
                    indices.push(i);
                }
            }

            

            if(indices.length == 1){

                switch(indices[0]){

                    case 0:
                        var mayor_final = Math.max(contadores[0], contadores[1]);

                        if(mayor_final == contadores[0]){
                            estilo_aprendizaje = estilos[0];            
                        }else{
                            estilo_aprendizaje = estilos[1];
                        }

                        break;

                    case 1:
                        var mayor_final = Math.max(contadores[2], contadores[3]);

                        if(mayor_final == contadores[2]){
                            estilo_aprendizaje = estilos[2];            
                        }else{
                            estilo_aprendizaje = estilos[3];
                        }
                        break;

                    case 2:
                        var mayor_final = Math.max(contadores[4], contadores[5]);

                        if(mayor_final == contadores[4]){
                            estilo_aprendizaje = estilos[4];            
                        }else{
                            estilo_aprendizaje = estilos[5];
                        }
                        break;

                    case 3:
                        var mayor_final = Math.max(contadores[6], contadores[7]);

                        if(mayor_final == contadores[6]){
                            estilo_aprendizaje = estilos[6];            
                        }else{
                            estilo_aprendizaje = estilos[7];
                        }
                        break;

                }

            }else{


            }

            if(estilo_aprendizaje == ''){
                var rand = Math.random() * 7;
                estilo_aprendizaje = estilos[rand];

                //alert('se eligió por random');
            }



            $('#estilo_aprendizaje').val(estilo_aprendizaje);

            //alert(estilo_aprendizaje);


            // Abrir Modal informando el estilo de aprendizaje , solicitando finalizar el registro 


            // Using init options


            $('#modal_form').modal('show');


            
 
        }else{

            $('#modal_alerta').modal('show');

        }


    });


});