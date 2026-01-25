<%-- 
    Document   : a
    Created on : Jan 25, 2026, 2:05:36 PM
    Author     : caonh
--%>

<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UserDTO u = (UserDTO) session.getAttribute("user");
            if (u != null) {
        %>
        <h1>Welcome, <%=u.getFullName()%> </h1>
        <a href="search.jsp">Search</a>
        <a href="MainController?action=logout">Logout</a><br/>
    </body>
    <%
        } else {
            response.sendRedirect("login.jsp");
        }
    %>
</html>
