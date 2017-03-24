<%-- 
    Document   : controladorCalendario
    Created on : 23/02/2017, 20:15:47
    Author     : Cristian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String strOpc = request.getParameter("opc");
            if (strOpc != null) {
                if (strOpc.equals("horario")) {
                    String strTsk = request.getParameter("tsk");
                    String v1 = request.getParameter("v1");
                    String v2 = request.getParameter("v2");
                    String v3 = request.getParameter("v3");
                    String v4 = request.getParameter("v4");
                    String v5 = request.getParameter("v5");
                 
                    
                    if (strTsk.equals("mostrar")) {
                         String strJSONData = "{\"strEscuela\":\"" + v1 + "\",\"strCeduladoc\":\"" + v2 + "\",\"strPeriodo\":\"" + v3 + "\",\"strMateria\":\"" + v4 + "\",\"strParalelo\":\"" + v5 + "\"}";

                        response.sendRedirect("horario/mdHorario.jsp?acc=getHorario&data="+ strJSONData);
                    } else if (strTsk.equals("mostrarHorario")) {
                        response.sendRedirect("horario/vwHorario.jsp");
                    } 
                   else if (strTsk.equals("mostrarError")) {
                        response.sendRedirect("error/vwError.jsp");
                    }
                }
            } else {
                response.sendRedirect("vwPlanClase.jsp");
            }
        %>

    </body>
</html>
