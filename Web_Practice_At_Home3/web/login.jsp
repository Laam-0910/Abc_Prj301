<%-- 
    Document   : index
    Created on : Feb 5, 2026, 10:09:12 AM
    Author     : caonh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="login" >
            Login <input type="text" name="txtUsername" required=""/> <br/>
            Password <input type="password" name="txtUserpassword" required=""/><br/>
            <input type="submit" value="login">
        </form>
        <c:if test="${not empty message}">
            <span style="color: red">
                ${message}
            </span>
        </c:if>
    </body>
</html>
