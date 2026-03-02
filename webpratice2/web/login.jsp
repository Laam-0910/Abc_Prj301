<%-- 
    Document   : index
    Created on : Feb 28, 2026, 11:04:52 AM
    Author     : caonh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="login">
            Login <input type="text" name="txtUsername" required=""><br/><!-- comment -->
            Password<input type="password" name="txtPassword" required=""><br/><!-- comment -->
            <input type="submit" value="login"><!-- comment -->
            
        </form>
        <c:if test="${not empty message}">
            <span style="color: red">${message}</span>
        </c:if>
    </body>
</html>
