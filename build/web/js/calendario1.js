function clickCalendario1() {
    v1=$("#v1").val();
    v2=$("#v2").val();
    v3=$("#v3").val();
    v4=$("#v4").val();
    v5=$("#v5").val();
    v6=$("#v6").val();
    v7="1";
    v8=$("#v8").val();
    $.ajax({
       url: "./controladorCalendario.jsp",
        type: "GET",
        data: {opc: 'calendario', tsk: 'insertar', v1: v1, v2: v2, v3: v3, v4: v4, v5: v5, v6: v6, v7: v7, v8: v8},
        success: function (datos) {
            var data = JSON.parse(datos);
            $("#contenidoDinamico").html(data.contenidoDinamico);
        },
        error: function (error) {
            $("#contenidoDinamico").html("Se presentado un error   holaaaaaaaa.......");
        }
    });

}
