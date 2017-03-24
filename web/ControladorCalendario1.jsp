<%-- 
    Document   : ControladorCalendario1
    Created on : 09/03/2017, 20:39:20
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
                if (strOpc.equals("calendario")) {
                    String strTsk = request.getParameter("tsk");
                  
                    if (strTsk.equals("mostrar")) {
                        
                        response.sendRedirect("calendario/mdCalendario1.jsp?acc=getCalendario");
                    } else if (strTsk.equals("mostrarCalendario")) {
                        response.sendRedirect("calendario/vwCalendario1.jsp");
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
