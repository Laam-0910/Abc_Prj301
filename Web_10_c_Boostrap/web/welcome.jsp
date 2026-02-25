<%-- 
    Document    : a.jsp
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <c:if test="${not empty sessionScope.user}">
                <div class="card shadow-sm p-4">
                    <h1 class="display-6 text-primary">Welcome, ${sessionScope.user.fullName}</h1>
                    <hr>
                    <div class="d-grid gap-2 d-md-block">
                        <a href="search.jsp" class="btn btn-outline-info">Search</a>
                        <a href="MainController?action=logout&" class="btn btn-danger">Logout</a>
                    </div>
                </div>
            </c:if>
            
            <c:if test="${empty sessionScope.user}">
                <c:redirect url="login.jsp"></c:redirect>
            </c:if>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>