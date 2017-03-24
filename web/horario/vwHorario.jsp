

<%@page import="dda.planclase.iu.cHorarioIU"%>
<%@page import="dda.planclase.comun.Horario"%>
<%@page import="dda.planclase.comun.cDocente"%>
<%@page import="dda.planclase.iu.cDocenteIU"%>
<%@page import="java.io.PrintWriter"%>

<%
    String resultJSON = "{}";
   
   
    Horario horario = (Horario) session.getAttribute("horario");
    cHorarioIU horarioIU = new cHorarioIU();
    horarioIU.setHorarioIU(horario);
 
    if (horarioIU != null) {
        resultJSON = "{"
                + "\"contenidoDinamico\":\"" + horarioIU.toHTML() + "\""
                + "}";
    }

    response.setContentType("text/plain");
    response.getWriter().write(resultJSON);
%>