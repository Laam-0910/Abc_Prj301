<%-- 
    Document   : welcome
    Created on : Jan 30, 2026, 4:18:03 PM
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
            <h1 style="color: blue">Welcome,${sessionScope.user.fullName}</h1>
            <a href="search.jsp">Search</a><br/>
            <a href="MainController?action=logout&">Logout</a><br/>
        </c:if>
        <c:if test="${empty sessionScope.user}">
            <c:redirect url="login.jsp">
                
            </c:redirect>
        </c:if>
    </body>
</html>
