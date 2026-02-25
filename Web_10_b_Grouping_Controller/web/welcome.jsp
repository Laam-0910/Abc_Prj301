<%-- 
    Document   : a.jsp
    Created on : 08-01-2026, 11:15:32
    Author     : tungi
--%>

<%@page import="model.UserDTO"%>
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
            <h1>Welcome,${sessionScope.user.fullName} </h1>
            <a href="search.jsp">Search</a><br/>
            <a href="MainController?action=logout&">Logout</a><br/>
        </c:if>
        <c:if test="${empty sessionScope.user}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>


    </body>
</html>