<%-- 
    Document   : index
    Created on : 09-ene-2017, 11:56:50
    Author     : Jorge
--%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>DDA | Dirección de Desarrollo Académico</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>   

        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" crossorigin="anonymous" rel="stylesheet" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" crossorigin="anonymous" rel="stylesheet" />


        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function ()
            {
                $("#lnkSubir").click(function () {
                    $("#mostrarmodal").modal("show");
                });


            });
        </script>
    </head>
    <body>
        <input type="hidden" id="codCarrera" value="<%=request.getParameter("codCarrera")%>">
        <input type="hidden" id="cedula" value="<%=request.getParameter("cedula")%>">
        <input type="hidden" id="codMateria" value="<%=request.getParameter("codMateria")%>">
        <header>
            <nav class="nav navbar navbar-dark bg-inverse navbar-top navbar-fixed-top" role="navigation">
                <!-- logo ESPOCH -->
                <a class="navbar-brand navbar-dark" href="http://www.espoch.edu.ec" target="blank">
                    <div class="d-inline-block sello_espoch_image"></div>
                </a>
                <!-- logo APP -->
                <div class="navbar-brand navbar-dark">
                    <img src="images/sello_app.png" class="d-inline-block" alt="SDA">
                    <img src="images/sello_app_texto.png" class="d-inline-block" alt="DESARROLLO ACADÉMICO">
                </div>

                <ul id="menu" class="nav navbar-nav float-xs-right">
                    <!-- opciones HORIZONTALES -->
                    <li class="nav-item toggler bg-inverse">
                        <a id="menuHorizontal" class="nav-link float-xs-right collapsed fa fa-bars" data-toggle="collapse" href="#menuHorizontalItems" aria-expanded="false"></a>                          
                        <ul id="menuHorizontalItems" class="navbar-toggleable float-xs-right collapse" aria-expanded="false">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Investigación &nbsp;&nbsp;&nbsp;|</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Vinculación &nbsp;&nbsp;&nbsp;|</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="mnuDocente" onclick="clicDocente(this)">Docencia &nbsp;&nbsp;&nbsp;</a>
                            </li>
                        </ul>
                    </li>

                    <!-- opciones VERTICALES -->
                    <li class="nav-item dropdown bg-inverse">
                        <a id="menuVertical" class="nav-link fa fa-chevron-down" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                        <ul class="dropdown-menu dropdown-menu-right bg-inverse" aria-labelledby="menuVerticalItems">
                            <li>
                                <a class="nav-link" href="#">Director de Escuela</a>
                            </li>
                            <li>
                                <a class="nav-link" id="mnuCoordinador" onclick="clicCoordinador(this)">
                                    Coordinador Campo de Formación
                                </a>
                            </li>
                            <li class="dropdown-divider"></li>
                            <li>
                                <a class="nav-link">Salir <i class="fa fa-sign-out" aria-hidden="true"></i></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </header>

        <main>
            <div class="container">
                <div id="contenidoEncabezado" class="row">
                    <div class="col-xs-2">
                        <i id="icon" class="fa fa-th fa-5x" aria-hidden="true"></i>
                    </div>
                    <div class="col-xs-10">
                        <p id="titulo">
                            Asignatura
                        </p>
                        <p id="subtitulo">
                            Docentes
                        </p>
                    </div>
                </div>      

                <div id="contenido" class="row">
                    <div id="menuLateralScrollbar"  class="col-xs-4">
                        <div id="menuLateral">
                            <!-- Menú Lateral-->
                            <ul id="treeview">
                                <li id="mnuDatosGenerales">Programa Anal&iacute;tico
                                    <ul>
                                        <li>
                                            <a class="nav-link" id="DatosGenerales" onclick="clicContenido(this, 'Datos Generales del Docente')">
                                                1. Datos Docente
                                            </a>
                                        </li>
                                        <li>A. Caracterización</li>
                                        <li> B. Objetivo</li>
                                        <li>C. Contenidos</li>
                                        <li>D. Metodología</li>
                                        <li>E. Recursos</li>
                                        <li>F. Procedimientos de evaluaci&oacute;n</li>
                                        <li>G. Bibliograf&iacute;a
                                            <ul>
                                                <li>B&aacute;sica</li>
                                                <li>Complementaria</li>
                                            </ul>
                                        </li>
                                        <li>H. Perfil del profesor</li>
                                    </ul>
                                </li>
                                <li id="mnuSilabo" data-expanded="true">S&iacute;labo
                                    <ul>
                                        <li>
                                            <a class="nav-link" id="DatosGenerales" onclick="clickDocente('1804751897'); return false;">
                                                1. Datos generales
                                            </a> 
                                        </li>
                                        <li>2. Estructura y desarrollo
                                            <ul>
                                                <li>

                                                    2.1. Unidad 1

                                                    <ul>
                                                        <li>
                                                            <a class="nav-link" id="Objetivos" onclick="clicContenido(this, 'Objetivo de Unidad')">
                                                                Objetivo
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="nav-link" id="Estrategias" onclick="clicContenido(this, 'Estrategias Metodológicas')">
                                                                Estrategias Metodol&oacute;gicas
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="nav-link" id="Recursos" onclick="clicContenido(this, 'Recursos')">
                                                                Recursos
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="nav-link" id="Aula" onclick="clicContenido(this, 'Actividades de Aprendizaje en el Aula')">
                                                                Actividades de Aprendizaje en el Aula
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="nav-link" id="Autonomas" onclick="clicContenido(this, 'Actividades de Aprendizaje Autónomas')">
                                                                Actividades de Aprendizaje Aut&oacute;nomas
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="nav-link" id="Logros" onclick="clicContenido(this, 'Logros de Aprendizaje')">
                                                                Logros de Aprendizaje
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>3. Escenario de aprendizaje
                                            <ul>
                                                <li>
                                                    <a class="nav-link" id="Real" onclick="clicContenido(this, 'Escenarios de Aprendizajes Reales')">
                                                        3.1. Reales
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="nav-link" id="Aulico" onclick="clicContenido(this, 'Escenarios de Aprendizajes Aúlicos')">
                                                        3.2. A&uacute;licos
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="nav-link" id="Virtual" onclick="clicContenido(this, 'Escenarios de Aprendizajes Virtuales');">
                                                        3.3. Virtuales
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a class="nav-link" id="Criterios" onclick="clicContenido(this, 'Criterios normativos para la Evaluación');">
                                                4. Criterios normativos para la evaluación
                                            </a>
                                        </li>
                                        <li>
                                            <a class="nav-link" id="Bibliografia" onclick="clicContenido(this, 'Bibliografías');">
                                                5. Bibliograf&iacute;a
                                            </a>
                                        </li>
                                        <li>
                                            <a class="nav-link" id="Docente" onclick="clicContenido(this, 'Datos de Docentes');">
                                                6. Datos de Docentes
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="mnuPlanificacion">Seguimiento del desarrollo acad&eacute;mico
                                </li>
                                <li id="mnuJornada">Jornada de trabajo semanal
                                    <ul>
                                        <li>1. Datos generales</li>
                                        <li>2. Tipo de docente</li>
                                        <li>3. Tiempo de dedicaci&oacute;n</li>
                                        <li>4. Horas de dedicaci&oacute;n
                                            <ul>
                                                <li>4.1. Docencia</li>
                                                <li>4.2. Investigaci&oacute;n</li>
                                                <li>4.3. Vinculaci&oacute;n</li>
                                                <li>4.4. Gesti&oacute;n</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="contenidoPrincipal" class="col-xs-8">
                        <!-- Contenido Principal -->
                        <div class="row">
                            <div id="contenidoTitulo" class="col-xs-9">
                                <strong>---</strong>
                            </div>
                            <div id="contenidoInfo" class="col-xs-3 text-white">
                                <a id="lnkSubir" class="nav-link text-white fa fa-cloud-upload"  data-toggle="tooltip" data-placement="bottom" title="Subir PDF"></a>
                                &nbsp;&nbsp;|&nbsp;&nbsp;
                                <a id="lnkDescargar" href="#" class="nav-link text-white fa fa-download"  data-toggle="tooltip" data-placement="bottom" title="Descargar PDF"></a>
                                &nbsp;&nbsp;|&nbsp;&nbsp;
                                <a id="lnkAyuda" href="#" class="nav-link text-white fa fa-question" tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-placement="left"></a>
                            </div>
                        </div>                      
                        <div class="row">
                            <div id="contenidoDinamicoScrollbar" class="col-xs-12">
                                <div id="contenidoDinamico" class="mt-1">
                                    <!-- Contenido -->
                                    <!-- Histórico de observaciones -->
                                </div>
                                <div id=contenidoObservaciones" class="mt-1">

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div id="contenidoPie" class="col-xs-12">
                                ...
                            </div>
                        </div>
                    </div>

                </div>            
            </div>
        </main>

        <footer class="float-xs-bottom">
            <div class="row text-xs-center">
                <div class="col-xs-3"></div>
                <div class="col-xs-6">
                    <hr>
                    <i class="fa fa-map-marker" aria-hidden="true"></i> Panamericana Sur km 1 &#189;, Riobamba, Chimborazo, Ecuador &nbsp;&nbsp;|&nbsp;&nbsp; EC060155
                    <br>
                    <i class="fa fa-phone"></i> 593 (03) 2998-200 &nbsp;&nbsp;|&nbsp;&nbsp; <i class="fa fa-print"></i> (03) 2317-001
                </div>
                <div class="col-xs-4"></div>
            </div>
        </footer>

        <!-- ShieldUI CSS para el MENU LATERAL (treeview)-->
        <link href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" type="text/css" rel="stylesheet" />
        <!-- ShieldUI JS para el MENU LATERAL (treeview)-->
        <script src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js" type="text/javascript"></script>
        <!-- DDA CSS -->
        <link href="css/dda.css" rel="stylesheet" type="text/css"/>
        <!-- DDA JS -->
        <script src="./js/dda.js" type="text/javascript"></script>
        <script src="./js/dda.plan.clase.js" type="text/javascript"></script>
    </body>
    <div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h3>DDA-SILABOS DE ASIGNATURA</h3>
                </div>
                <div class="modal-body">
                    <form  method="post" name="formulario" enctype="multipart/form-data" >
                        <h4>SELECCIONE EL ARCHIVO PDF A SUBIR:</h4>
                        <input type="file"  name="archivo" onchange="cargarArchivo(this)" accept=".pdf" multiple />
                        <input type="hidden" name="nombre" value=""/>
                    </form>
                    <iframe name="null" style="display:none"></iframe>

                </div>
                <div class="modal-footer">
                    <a data-dismiss="modal" class="btn btn-danger">Cerrar</a>
                </div>
            </div>
        </div>
    </div>
</html> 