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
                if (strOpc.equals("calendario")) {
                    String strTsk = request.getParameter("tsk");
                    String v1 = request.getParameter("v1");
                    String v2 = request.getParameter("v2");
                    String v3 = request.getParameter("v3");
                    String v4 = request.getParameter("v4");
                    String v5 = request.getParameter("v5");
                    String v6 = request.getParameter("v6");
                    String v7 = request.getParameter("v7");
                    String v8 = request.getParameter("v8");
                  
                    if (strTsk.equals("insertar")) {
                        String strJSONData = "{\"strfechainicio\":\"" + v1 + "\",\"strfechafin\":\"" + v2 + "\",\"strhorainicio\":\"" + v3 + "\",\"strhorafin\":\"" + v4 + "\",\"strmotivo\":\"" + v5 + "\",\"strdocumento\":\"" + v6 + "\",\"strid\":\"" + v7 + "\",\"strestado\":\"" + v8 + "\"}";
                        response.sendRedirect("calendario/mdCalendario.jsp?acc=getCalendario&data="+ strJSONData);
                    } else if (strTsk.equals("mostrarCalendario")) {
                        response.sendRedirect("calendario/vwCalendario.jsp");
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
