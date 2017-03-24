<%@page import="dda.planclase.iu.cCalendarioIU"%>
<%@page import="dda.planclase.comun.cDocente"%>
<%@page import="dda.planclase.iu.cDocenteIU"%>
<%@page import="java.io.PrintWriter"%>

<%
   String resultJSON = "{}";
   
   
    String calendario = (String) session.getAttribute("calendario");
    cCalendarioIU calendarioIU = new cCalendarioIU();
    calendarioIU.setStrid(calendario);
    
   
    if (calendarioIU != null) {
        resultJSON = "{"
                + "\"contenidoDinamico\":\"" + calendarioIU.toHTML1() + "\""
                + "}";
    }
    response.setContentType("text/plain");
    response.getWriter().write(resultJSON);
%>
