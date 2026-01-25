<%-- 
    Document   : E403
    Created on : Jan 21, 2026, 1:55:33 PM
    Author     : caonh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>403 - Access denied!!!</h1>
         <h1><% String message = request.getAttribute("message") + "";
            message = (message.equals("null")) ? "" : message;
            %>
            <span style="color: red"> <%=message%></span>
    </body>
</html>
