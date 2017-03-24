<%-- 
    Document   : vwCalendario1
    Created on : 09/03/2017, 20:50:04
    Author     : Cristian
--%>

<%@page import="dda.planclase.comun.cListaCalendario"%>
<%@page import="dda.planclase.iu.cCalendarioIU"%>
<%
   String resultJSON = "{}";
    
   
 cCalendarioIU oCalendarioIU = new cCalendarioIU();  

    cListaCalendario oListaCalendario = (cListaCalendario) session.getAttribute("calendario1");
    oCalendarioIU.setlCalendario(oListaCalendario.getCalendario());
 
    if (oCalendarioIU != null) {
        resultJSON = "{"
                + "\"contenidoDinamico\":\"" + oCalendarioIU.toHTML() + "\""
                + "}";
    }

    response.setContentType("text/plain");
    response.getWriter().write(resultJSON);
%>
