<%-- 
    Document   : search
    Created on : Mar 1, 2026, 10:52:12 AM
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
       
        <jsp:include page="welcome.jsp" />

        <c:if test="${empty user}">
            <c:redirect url="login.jsp"/>
        </c:if>

        <c:if test="${not empty user}">
            
           
            <form action="MainController" method="post">
                <input type="hidden" name="action" value="searchBook"/>
                Input name:
                <input type="text" name="keywords" value="${keywords}" />
                <input type="submit" value="search"/>
            </form>
            <hr/>

            <c:if test="${empty list}">
                No data matching the search criteria found!
            </c:if>

            <c:if test="${not empty list}">
                <table border="1">
                    <thead>
                        <tr>
                             <th>BookID</th>
                            <th>Book Title</th>
                            <th> Author</th>
                            <th>Category</th>
                            <th>Status</th>
                            <th>Published Year</th>
                            <th></th>
                        </tr>
                    </thead>

                    <c:forEach items="${list}" var="u">
                        <tr>
                           <td>${u.book_id}</td>
                            <td>${u.book_title}</td>
                            <td>${u.author}</td>
                            <td>${u.category}</td>
                            <td>${u.status}</td>
                            <td>${u.published_year}</td>
                           
                            <td>
                                <form action="MainController" method="POST"
                                      onsubmit="return confirm('Do you want to delete book ? ');">
                                    <input type="hidden" name="action" value="deleteUniversity"/>
                                    <input type="hidden" name="id" value="${u.book_id}"/>
                                    <input type="hidden" name="keywords" value="${keywords}"/>
                                    <input type="submit" value="Delete"/>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
        </c:if>
    </body>
</html>
