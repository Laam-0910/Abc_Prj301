<%-- 
    Document   : welcome
    Created on : Feb 5, 2026, 10:27:25 AM
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
        <c:if test="${not empty sessionScope.user}">
            <h1>Welcome,${sessionScope.user.fullName}</h1>
            <a href="search.jsp">Search</a><br/>
            <a href="MainController?action=logout">Logout</a><br/>
        </c:if>
        <c:if test="${empty sessionScope.user}">
            <c:redirect url="login.jsp"> </c:redirect>
        </c:if>
    </body>
</html>
