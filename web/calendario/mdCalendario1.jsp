<%-- 
    Document   : mdCalendario1
    Created on : 09/03/2017, 20:41:57
    Author     : Cristian
--%>

<%@page import="dda.planclase.comun.cListaCalendario"%>
<%@page import="com.google.gson.Gson"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                String strAcc = request.getParameter("acc");
                if (strAcc.equals("getCalendario")) {

                    dda.planclase.ws.DdaWSPlanClaseAD_Service service = new dda.planclase.ws.DdaWSPlanClaseAD_Service();
                    dda.planclase.ws.DdaWSPlanClaseAD port = service.getDdaWSPlanClaseADPort();
                    // TODO process result here
                    java.lang.String result = port.getCalendario();

                    if (result.equals("")) {
                        response.sendError(500, "ERROR: no es posible obtener los datos del calendario");
                    } else {
                        Gson gson = new Gson();
                        cListaCalendario calendario1 = gson.fromJson(result, cListaCalendario.class);
                        session.setAttribute("calendario1", calendario1);
                        response.sendRedirect("../ControladorCalendario1.jsp?opc=calendario&tsk=mostrarCalendario");
                    }

                }
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
    </body>
</html>



