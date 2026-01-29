<%-- 
    Document   : index
    Created on : Jan 28, 2026, 2:05:39 PM
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
            Login <input name="txtUsername" type="text" required=""><br/> 
            Password <input name="txtPassword" type="password" required=""><br/>
            <input type="submit" value="login">
        </form>
        <c:if test="${not empty message}">
            <span style="color: red">  ${message}</span>

        </c:if>
    </body>
</html>
