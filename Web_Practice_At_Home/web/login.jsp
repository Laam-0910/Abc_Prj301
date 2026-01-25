<%-- 
    Document   : login
    Created on : Jan 21, 2026, 1:29:25 PM
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
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="login">
            Login <input name="txtUsername"  type="text" required=""/><br/>
            Password <input name="txtPassword" type="password" required=""/><br/>
            <input type="submit" value="Login">
        </form>
       <% String message = request.getAttribute("message") + "";
            message = (message.equals("null")) ? "" : message;
        %>
        <span style="color: red"> <%=message%></span>
    </body>
</html>
