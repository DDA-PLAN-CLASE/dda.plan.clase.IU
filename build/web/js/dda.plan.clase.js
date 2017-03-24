////////////////////////////////////////////////////////////// PAGINAS DOCENTES
function clickDocente(id) {
    $.ajax({
       url: "./index.jsp",
        type: "GET",
        data: {opc: 'docente', tsk: 'mostrar', ci: id},
        success: function (datos) {
            var data = JSON.parse(datos);
            $("#contenidoDinamico").html(data.contenidoDinamico);
        },
        error: function (error) {
            $("#contenidoDinamico").html("Se presentado un error   holaaaaaaaa.......");
        }
    });
}