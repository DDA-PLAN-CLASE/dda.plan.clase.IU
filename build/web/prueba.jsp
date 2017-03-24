<%-- 
    Document   : prueba
    Created on : 03/03/2017, 14:25:53
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
           <%-- start web service invocation --%><hr/>
    <%
    try {
	dda.planclase.wsc.DdaWSPlanClaseAD_Service service = new dda.planclase.wsc.DdaWSPlanClaseAD_Service();
	dda.planclase.wsc.DdaWSPlanClaseAD port = service.getDdaWSPlanClaseADPort();
	 // TODO initialize WS operation arguments here
	java.lang.String data = "";
	// TODO process result here
	java.lang.String result = port.getHorarioDoc(data);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
   
    </body>
</html>
