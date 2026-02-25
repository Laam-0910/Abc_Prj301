<%-- 
    Document    : university-form.jsp
    Created on : 02-02-2026, 09:58:31
    Author     : tungi
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>University Form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="card shadow">
                <div class="card-header bg-primary text-white">
                    <h3 class="mb-0 text-center">${mode == 'update' ? 'Update University' : 'Add New University'}</h3>
                </div>
                <div class="card-body">
                    <form action="MainController" method="POST">
                        <%-- Giữ nguyên logic action --%>
                        <input type="hidden" name="action" value="${mode=='update'?'saveUpdateUniversity':'addUniversity'}"/>

                        <div class="row g-3">
                            <div class="col-md-6">
                                <label class="form-label">ID:</label>
                                <input type="text" class="form-control" name="id" value="${u.id}" ${mode == 'update' ? 'readonly' : ''} />
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Name:</label>
                                <input type="text" class="form-control" name="name" value="${u.name}" />
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Short Name:</label>
                                <input type="text" class="form-control" name="shortName" value="${u.shortName}" />
                            </div>
                            <div class="col-md-8">
                                <label class="form-label">Description:</label>
                                <input type="text" class="form-control" name="description" value="${u.description}" />
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Founded Year:</label>
                                <input type="number" step="1" min="0" class="form-control" name="foundedYear" value="${u.foundedYear}" />
                            </div>
                            <div class="col-md-8">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" name="address" value="${u.address}" />
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">City:</label>
                                <input type="text" class="form-control" name="city" value="${u.city}" />
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Region:</label>
                                <input type="text" class="form-control" name="region" value="${u.region}" />
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Type:</label>
                                <input type="text" class="form-control" name="type" value="${u.type}" />
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Total Students:</label>
                                <input type="number" step="1" min="0" class="form-control" name="totalStudents" value="${u.totalStudents}" />
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Total Faculties:</label>
                                <input type="number" step="1" min="0" class="form-control" name="totalFaculties" value="${u.totalFaculties}" />
                            </div>
                            
                            <div class="col-12 mt-3">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="isDraft" ${u.isDraft ? 'checked' : ''} name="isDraft"/>
                                    <label class="form-check-label" for="isDraft">Is Draft</label>
                                </div>
                            </div>

                            <div class="col-12 text-center mt-4">
                                <c:choose>
                                    <c:when test="${mode == 'update'}">
                                        <button type="submit" class="btn btn-warning px-5">Update</button>
                                    </c:when>
                                    <c:otherwise>
                                        <button type="submit" class="btn btn-success px-5">Add</button>
                                    </c:otherwise>
                                </c:choose>
                                <a href="MainController?action=searchUniversity" class="btn btn-secondary px-5">Back</a>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="card-footer text-center">
                    <p class="text-success mb-0">${msg}</p>
                    <p class="text-danger mb-0">${error}</p>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>