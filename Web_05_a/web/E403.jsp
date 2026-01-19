<%-- 
    Document   : E403
    Created on : Jan 19, 2026, 11:03:14 AM
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
        <h1><% String message = request.getAttribute("message") + "";
            message = (message.equals("null")) ? "" : message;
            %>
            <span style="color: red"> <%=message%></span>
        </h1>
    </body>
</html>
