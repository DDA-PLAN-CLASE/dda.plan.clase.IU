<%-- 
    Document   : index
    Created on : 16/02/2017, 9:02:35
    Author     : User
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
                if (strOpc.equals("docente")) {
                    String strTsk = request.getParameter("tsk");
                    String strCI = request.getParameter("ci");
                    if (strTsk.equals("mostrar")) {
                        String strJSONData = "{\"strCedula\":\"" + strCI + "\"}";
                        response.sendRedirect("docente/mdDocente.jsp?acc=getDocente&data="+ strJSONData);
                    } else if (strTsk.equals("mostrarDocente")) {
                        response.sendRedirect("docente/vwDocente.jsp");
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
