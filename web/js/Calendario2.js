/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function clickReporteCalendario() {
    $.ajax({
       url: "./ControladorCalendario1.jsp",
        type: "GET",
        data: {opc: 'calendario', tsk: 'mostrar'},
        success: function (datos) {
            var data = JSON.parse(datos);
            $("#contenidoDinamico").html(data.contenidoDinamico);
        },
        error: function (error) {
            $("#contenidoDinamico").html("Se presentado un error   holaaaaaaaa.......");
        }
    });
}

