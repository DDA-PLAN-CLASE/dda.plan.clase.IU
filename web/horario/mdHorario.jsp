<%-- 
    Document   : mdDocente
    Created on : 16/02/2017, 9:29:24
    Author     : User
--%>


<%@page import="dda.planclase.comun.Horario"%>
<%@page import="dda.planclase.comun.cDocente"%>
<%@page import="com.google.gson.Gson"%>
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
                if (strAcc.equals("getHorario")) {
                  
                   dda.planclase.wsc.DdaWSPlanClaseAD_Service service = new dda.planclase.wsc.DdaWSPlanClaseAD_Service();
	dda.planclase.wsc.DdaWSPlanClaseAD port = service.getDdaWSPlanClaseADPort();
	
                   	java.lang.String result = port.getHorarioDocenteCurso(strData);
                 
                    if (result.equals("")){
                        response.sendError(500, "ERROR: no es posible obtener los datos del docente "+strData+".");
                    } else {
    
                     
                        Gson gson = new Gson();
                        Horario horario = gson.fromJson(result, Horario.class);
                        session.setAttribute("horario", horario);
                        response.sendRedirect("../controladorHorarioDocente.jsp?opc=horario&tsk=mostrarHorario");
                        
                        
                        
                    }
                    
                }
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        
        
  
        
    </body>
</html>
