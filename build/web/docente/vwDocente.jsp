<%@page import="dda.planclase.comun.cDocente"%>
<%@page import="dda.planclase.iu.cDocenteIU"%>
<%@page import="java.io.PrintWriter"%>

<%
   String resultJSON = "{}";
    
   
 cDocenteIU docenteIU = new cDocenteIU();  
   
   
    cDocente docente = (cDocente) session.getAttribute("docente");
    docenteIU.setStrCedula(docente.getStrCedula());
    docenteIU.setStrId(docente.getStrId());
    
   
    if (docenteIU != null) {
        resultJSON = "{"
                + "\"contenidoDinamico\":\"" + docenteIU.toHTML() + "\""
                + "}";
    }

    response.setContentType("text/plain");
    response.getWriter().write(resultJSON);
%>