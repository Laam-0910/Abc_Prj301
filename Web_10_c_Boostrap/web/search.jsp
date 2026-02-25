<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Search University</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <jsp:include page="welcome.jsp" />

        <div class="container mt-4">
            <c:if test="${empty user}">
                <c:redirect url="login.jsp"/>
            </c:if>

            <c:if test="${not empty user}">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h2 class="text-primary">University Management</h2>
                    <a href="university-form.jsp" class="btn btn-success shadow-sm">+ Add New University</a>
                </div>

                <div class="card shadow-sm mb-4">
                    <div class="card-body">
                        <form action="MainController" method="post" class="row g-3 align-items-center">
                            <input type="hidden" name="action" value="searchUniversity"/>
                            <div class="col-auto">
                                <label class="col-form-label fw-bold">Input name:</label>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="keywords" value="${keywords}" placeholder="Enter university name..."/>
                            </div>
                            <div class="col-auto">
                                <button type="submit" class="btn btn-primary px-4">Search</button>
                            </div>
                        </form>
                    </div>
                </div>

                <hr/>

                <c:if test="${empty list}">
                    <div class="alert alert-warning text-center shadow-sm">
                        No data matching the search criteria found!
                    </div>
                </c:if>

                <c:if test="${not empty list}">
                    <div class="table-responsive shadow-sm rounded">
                        <table class="table table-hover table-striped bg-white align-middle mb-0">
                            <thead class="table-dark">
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Short Name</th>
                                    <th>City</th>
                                    <th>Region</th>
                                    <th>Type</th>
                                    <th>Founded</th>
                                    <th>Students</th>
                                    <th>Faculties</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${list}" var="u">
                                    <tr>
                                        <td class="fw-bold text-secondary">${u.id}</td>
                                        <td>${u.name}</td>
                                        <td><span class="badge bg-info text-dark">${u.shortName}</span></td>
                                        <td>${u.city}</td>
                                        <td>${u.region}</td>
                                        <td>${u.type}</td>
                                        <td>${u.foundedYear}</td>
                                        <td>${u.totalStudents}</td>
                                        <td>${u.totalFaculties}</td>
                                        <td>
                                            <c:if test="${u.isDraft}">
                                                <a href="MainController?action=updateUniversity&id=${u.id}" class="btn btn-sm btn-outline-warning">Update</a>
                                            </c:if>
                                        </td>
                                        <td>
                                            <form action="MainController" method="POST"
                                                  onsubmit="return confirm('Bạn có chắc chắn muốn xóa trường đại học này không?');"
                                                  class="m-0">
                                                <input type="hidden" name="action" value="deleteUniversity"/>
                                                <input type="hidden" name="id" value="${u.id}"/>
                                                <input type="hidden" name="keywords" value="${keywords}"/>
                                                <input type="submit" class="btn btn-sm btn-outline-danger" value="Delete"/>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </c:if>
            </c:if>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>