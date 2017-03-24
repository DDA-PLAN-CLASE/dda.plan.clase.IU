<!DOCTYPE html>
<html lang="es">
    <head>
        <title>DDA | Dirección de Desarrollo Académico</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.css" crossorigin="anonymous" rel="stylesheet" />
        <script src="https://use.fontawesome.com/7c719b02b1.js"></script>

        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.js" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.js" crossorigin="anonymous"></script>

    </head>
    <body>
        <header>
            <nav class="nav navbar navbar-dark bg-inverse navbar-top navbar-fixed-top" role="navigation">
                <!-- sello ESPOCH -->
                <a class="navbar-brand navbar-dark" href="http://www.espoch.edu.ec" target="blank">
                    <div class="d-inline-block sello_espoch_image"></div>
                </a>
                <!-- logo APP -->
                <div class="navbar-brand navbar-dark">
                    <img src="images/sello_app.png" class="d-inline-block" alt="SDA">
                    <img src="images/sello_app_texto.png" class="d-inline-block" alt="DESARROLLO ACADÉMICO">
                </div>

                <ul id="menu" class="nav navbar-nav float-xs-right">
                    <!-- Alertas -->
                    <li class="nav-item bg-inverse">
                        <a id="menuVertical" href="#" class="nav-link" style="margin-top: 0rem;">
                            <i class="fa fa-bell alertaIcono"></i>
                            <div class="alertaNumero">4</div>
                        </a>
                    </li>
                    <!-- opciones VERTICALES -->
                    <li class="nav-item dropdown bg-inverse">
                        <a id="menuVertical" class="nav-link fa fa-chevron-down float-xs-right" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                            <i class="fa fa-user-o fa-lg float-xs-left mr-1"></i>&nbsp;
                            <span class="name float-xs-left mr-1">Diana Olmedo</span>&nbsp;
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right bg-inverse" aria-labelledby="menuVerticalItems">
                            <li>
                                <a class="nav-link" href="#">Director de Escuela</a>
                            </li>
                            <li>
                                <a class="nav-link" href="#">Coordinador Campo de Formación</a>
                            </li>
                            <li class="dropdown-divider"></li>
                            <li>
                                <a class="nav-link" href="#">Salir <i class="fa fa-power-off icon" aria-hidden="true"></i></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </header>

        <main>
            <div id="mainContainer" class="container">
                <!-- Encabezado -->
                <div id="contenidoEncabezadoAsignatura" class="row">
                    <!-- BOTON menu -->
                    <div id="contenidoIcono" class="col-xs-1 p-0" >
                        <a href="aplicaciones.html">
                            <div class="d-inline-block icono_menu"></div>
                        </a>
                    </div>
                    <div class="col-xs-9 contenidoTitulo" >
                        <p id="titulo" class="text-small-caps">
                            TECNOLOGÍAS DE LA INFORMACIÓN APLICADA A LA EDUCACIÓN SUPERIOR
                        </p>
                    </div>
                    <div id="contenidoEncabezadoDetalle" class="col-xs-3 p-0">
                        <p id="subtitulo" class="text-small-caps">
                            Ing. Nombre1 Nombre2 Apellido1 Apellido2<br>
                            Ing. Nombre1 Nombre2 Apellido1 Apellido2<br>
                            Ing. Nombre1 Nombre2 Apellido1 Apellido2<br>
                            Ing. Nombre1 Nombre2 Apellido1 Apellido2
                        </p>
                    </div>
                </div>    
                <div id="brrNavegacion" class="row">
                    <form class="form-inline">
                        <select class="form-control form-control-sm custom-select" id="v1">
                            <option value="eis">Facultada de Administración de Empresas</option>
   
                        </select>
                        &nbsp;|&nbsp;
                        <select class="form-control form-control-sm custom-select" id="v2" data-live-search="true">
                            <option  value="1804751897">Escuela de Informática</option>
                            <option>Escuela de Electrónica</option>
                            <option selected>Escuela de Diseño Gráfico</option>
                            <option>Escuela de Robótica</option>
                        </select>
                        &nbsp;|&nbsp;
                        <select class="form-control form-control-sm custom-select"  id="v3">
                            <option value="P0026">Informática</option>
                            <option>Electrónica</option>
                            <option selected>Diseño Gráfico</option>
                            <option>Robótica</option>
                        </select>
                        &nbsp;|&nbsp;
                        <select class="form-control form-control-sm custom-select"  id="v4">
                            
                            <option value="EIS0001">Programación O O</option>
                            <option>Tecnologías de la Información </option>
                            <option selected>Ingeniería de Software II</option>
                            <option>Proyecto Integrador III</option>
                        </select>
                        &nbsp;|&nbsp;
                        <select class="form-control form-control-sm custom-select"  id="v5">
                            <option value="A">A</option>
                            <option>B</option>
                           
                        </select>
        
                    </form>
                </div>
     

                <div id="contenido" class="row">
                    <div id="menuLateralScrollbar"  class="col-xs-3">
                        <div id="menuLateral">
                            <!-- Menú Lateral-->
                            <ul id="treeview">
                                <li id="mnuDatosGenerales">
                                    Programa Anal&iacute;tico
                                    <ul>
                                        <li>
                                            
                                             <a class="nav-link" id="DatosGenerales" onclick="clickHorario(); return false;">
                                                Datos generales
                                            </a> 
                                            
                                            
                                        </li>
                                        <li>A. Caracterización</li>
                                        <li><i class="fa fa-exclamation-triangle tag-warning"></i> B. Objetivo</li>
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
                                <li id="mnuSilabo">S&iacute;labo
                                    <ul>
                                      <li>
                                            <a class="nav-link" id="DatosGenerales" onclick="clickHorario(); return false;">
                                               Datos generales
                                          
                                            </a> 
                                        </li>
                                        
                                        
                                        
                                        
                                        <li>2. Estructura y desarrollo</li>
                                        <li>3. Escenario de aprendizaje</li>
                                        <li>4. Criterios normativos para la evaluación</li>
                                        <li>5. Bibliograf&iacute;a
                                            <ul>
                                                <li>B&aacute;sica</li>
                                                <li>Complementaria</li>
                                            </ul>
                                        </li>
                                        <li>6. Datos del profesor</li>
                                    </ul>
                                </li>
                                <li id="mnuPlanificacion">Seguimiento del desarrollo acad&eacute;mico
                                </li>
                                <li id="mnuJornada"  data-expanded="true">Jornada de trabajo semanal
                                    <ul>
                                        <li>1. Datos generales</li>
                                        <li>2. Tipo de docente</li>
                                        <li>3. Tiempo de dedicaci&oacute;n</li>
                                        <li data-expanded="true">4. Horas de dedicaci&oacute;n
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
                    
                    
                    
                    
                    
                    <div id="contenidoPrincipal" class="col-xs-9">
                        <!-- Contenido Principal -->
                        <div class="row dda-row">
                            <div id="contenidoTitulo" class="col-xs-9">
                                
                                
                                Planificaci&oacute;n de la asignatura
                            </div>
                            <div id="contenidoInfo" class="col-xs-3 text-white">
                                <a id="lnkCargar" href="#" class="nav-link text-white fa fa-cloud-upload" data-toggle="tooltip" data-placement="bottom" title="Cargar PDF"></a>
                                &nbsp;&nbsp;|&nbsp;&nbsp;
                                <a id="lnkDescargar" href="#" class="nav-link text-white fa fa-cloud-download" data-toggle="tooltip" data-placement="bottom" title="Descargar PDF"></a>
                                &nbsp;&nbsp;|&nbsp;&nbsp;
                                <a id="lnkAyuda" href="#" class="nav-link text-white fa fa-question" tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-placement="left"></a>
                            </div>
                        </div>
                        <div class="row">
                     
                            <div id="contenidoDinamicoScrollbar" class="col-xs-12">
                                
                                
                                <div id="contenidoDinamico" class="mt-1">
                                    
                                    
                                    
                                    <!-- Contenido -->
                                    <form>
                                        <div id="seccionContenido" >
                                            <!-- Semana 1 -->
                                            <div class="form-group row calendarioRow">
                                                <div class="col-xs-12">  
                                                    <div class="card-group">
                                                        <div class="card card-block day">

                                                            <div class="dayofweek">lunes</div>
                               
                                                        </div>
                                                        <div class="card card-block holiday" data-toggle="tooltip" data-placement="bottom" title="Feriado">
                                                           
                                                            <div class="dayofweek">martes</div>
                                                         
                                                        </div>
                                                      
                                                        
                                                       
                                                       
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                          
                                            
                                           
                                        </div>
                                    </form>

                                     <!-- Fin de contenido dinamico -->
                                    

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
            <!-- Ventana MODAL para PLANIFICAR -->
            <div class="modal fade container" id="mdlClasePlanificar" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header row">
                            <h5 class="modal-title col-xs-11" id="txtPlanificacion">Fecha: dd mmm yyyy | Clase: 2/3</h5>
                            <button type="button" class="close col-xs-1" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <div class="form-group row">
                                    <label class="col-xs-3 col-form-label">Unidad:</label>
                                    <div class="col-xs-9">
                                        <select class="form-control" id="slcUnidad" data-container="body">
                                            <option>Unidad 1</option>
                                            <option>Unidad 2</option>
                                            <option>Unidad 3</option>
                                            <option selected>Unidad 4</option>
                                            <option>Unidad 5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-xs-3 col-form-label">Tema:</label>
                                    <div class="col-xs-9">
                                        <select class="form-control" id="slcTema"  data-container="body">
                                            <option>Tema 1</option>
                                            <option selected>Tema 2</option>
                                            <option>Tema 3</option>
                                            <option>Tema 4</option>
                                            <option>Tema 5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-xs-3 col-form-label">M&eacute;todo:</label>
                                    <div class="col-xs-9">
                                        <select class="form-control" id="slcMetodo" data-container="body">
                                            <option>Metodo 1</option>
                                            <option>Metodo 2</option>
                                            <option>Metodo 3</option>
                                            <option>Metodo 4</option>
                                            <option>Metodo 5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-xs-3 col-form-label">T&eacute;cnica:</label>
                                    <div class="col-xs-9">
                                        <select class="form-control" id="slcTecnica" data-container="body">
                                            <option>Tecnica 1</option>
                                            <option>Tecnica 2</option>
                                            <option>Tecnica 3</option>
                                            <option>Tecnica 4</option>
                                            <option>Tecnica 5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-xs-3 col-form-label">Procedimiento:</label>
                                    <div class="col-xs-9">
                                        <select class="form-control" id="slcProcedimiento" data-container="body">
                                            <option>Procedimiento 1</option>
                                            <option>Procedimiento 2</option>
                                            <option>Procedimiento 3</option>
                                            <option>Procedimiento 4</option>
                                            <option>Procedimiento 5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-xs-3 col-form-label">Material:</label>
                                    <div class="col-xs-9">
                                        <select class="form-control" id="slcMaterial" data-container="body">
                                            <option>Material 1</option>
                                            <option>Material 2</option>
                                            <option>Material 3</option>
                                            <option>Material 4</option>
                                            <option>Material 5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-xs-3 col-form-label">Evaluaci&oacute;n:</label>
                                    <div class="col-xs-9">
                                        <select class="form-control" id="slcEvaluacion" data-container="body">
                                            <option>Diagn&oacute;stica</option>
                                            <option>Formativa</option>
                                            <option>Sumativa</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Ventana MODAL para planificar un día de clase -->

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
        <!-- link href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.css" type="text/css" rel="stylesheet" /> -->
        <link href="css/treeview.min.css" rel="stylesheet" type="text/css"/>
        <!-- ShieldUI JS para el MENU LATERAL (treeview)-->
        <!-- <script src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.js" type="text/javascript"></script> -->
        <script src="js/shieldui-core.min.js" type="text/javascript"></script>
        <script src="js/shieldui-treeview.min.js" type="text/javascript"></script>

        <!-- DDA CSS -->
        <link href="css/dda.css" rel="stylesheet" type="text/css"/>
        <link href="css/dda.calendario.css" rel="stylesheet" type="text/css"/>
        <link href="css/dda.select.css" rel="stylesheet" type="text/css"/>

        <!-- DDA JS -->
      
        
          <script src="./js/dda.js" type="text/javascript"></script>
        <script src="./js/dda.plan.clase.js" type="text/javascript"></script>
        <script src="./js/calendario.js" type="text/javascript"></script>
         <script src="./js/horario.js" type="text/javascript"></script>
        
        
        
        
    </body>
</html>