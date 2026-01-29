<%-- 
    Document   : search
    Created on : Jan 23, 2026, 5:36:41 PM
    Author     : caonh
--%>

<%@page import="model.UniversityDTO"%>
<%@page import="java.util.ArrayList"%>
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
        <jsp:include page="welcome.jsp" />
        <c:if test="${empty user}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        <c:if test="${not empty user}">
            <form action="MainController" method="post">
                <input type="hidden" name="action" value="search"/>
                Input name: <input type="text" name="keywords" value="${keywords}"/>
            </form>
            <hr/>
            <table border="1">
                <thead>
                <th>Id</th>
                <th>Name</th>
                <th>Short Name</th>
                <th>City</th>
                <th>Region</th>
                <th>Type</th>
                <th>Founded Year</th>
                <th>Students</th>
                <th>Faculties</th>
                <th></th> 
            </thead>  
        </c:if>

        <c:if test="${empty list}">
            No data matching the search criteria found!
        </c:if>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.id}</td>
                <td>${u.name}</td>
                <td>${u.shortName}</td>
                <td>${u.city}</td>
                <td>${u.region}</td>
                <td>${u.type}</td>
                <td>${u.foundedYear}</td> 
                <td>${u.totalStudents}</td>
                <td>${u.totalFaculties}</td>
                <td>
                    <c:if test="${u.isDraft}">
                        <input type="submit" value="Update"/>
                    </c:if>
                </td>
            </tr>

        </c:forEach>

    </table>

</body>
</html>
