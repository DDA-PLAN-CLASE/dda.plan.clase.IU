<%-- 
    Document   : mdCalendario
    Created on : 23/02/2017, 20:38:07
    Author     : Cristian
--%>

<%@page import="com.google.gson.Gson"%>
<%@page import="dda.planclase.comun.cCalendario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DDA Planificacion de Clase MODELO</title>
    </head>
    <body>

        <%
            try {
                String strAcc = request.getParameter("acc");
                String strData = request.getParameter("data");
                
                if (strAcc.equals("getCalendario")) {
                       Gson gson = new Gson();

                   dda.planclase.ws.DdaWSPlanClaseAD_Service service = new dda.planclase.ws.DdaWSPlanClaseAD_Service();
	dda.planclase.ws.DdaWSPlanClaseAD port = service.getDdaWSPlanClaseADPort();
                   // // TODO process result here
                    //cCalendario obj = new cCalendario();
                    //obj.setStrdocumento("nuevo");
                    //obj.setStrhorainicio("12:00");
                    //String    docenteJSON = gson.toJson(obj);
                   
                 java.lang.String result = port.setCalendario(strData);
                  
                    if (result.equals("")) {
                        response.sendError(500, "ERROR: no es posible obtener los datos del calendario " + strData + ".");
                    } else {
                       
                        String calendario = gson.fromJson(result, String.class);
                        session.setAttribute("calendario", calendario);
                        response.sendRedirect("../controladorCalendario.jsp?opc=calendario&tsk=mostrarCalendario");
                    }

                }
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
    </body>/**/
</html>









