/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function clickHorario() {
    v1=$("#v1").val();
    v2=$("#v2").val();
    v3=$("#v3").val();
    v4=$("#v4").val();
    v5=$("#v5").val();
    $.ajax({
       url: "./controladorHorarioDocente.jsp",
        type: "GET",
        data: {opc: 'horario', tsk: 'mostrar', v1: v1, v2: v2, v3: v3, v4: v4, v5: v5},
        success: function (datos) {
            var data = JSON.parse(datos);
             // $("#contenidoDinamico").add(data.contenidoDinamico);
        $("#contenidoDinamico").html(data.contenidoDinamico);
        },
        error: function (error) {
            $("#contenidoDinamico").html("Se presentado un error   holaaaaaaaa.......");
        }
    });
}
