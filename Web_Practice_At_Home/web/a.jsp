<%-- 
    Document   : a
    Created on : Jan 21, 2026, 1:29:44 PM
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
        UserDTO u= (UserDTO) session.getAttribute("user");
        if(u!=null){
        %>
        <h2>Bang dieu khien</h2>
        <a href="search.jsp">Search</a><br/>
        <a href="MainController?action=logout">Logout</a><br/>
        Tinh nang 1 <br/>
        Tinh nang 2 <br/>
        Tinh nang 3 <br/>
          <%  } else {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
