<%-- 
    Document    : login
    Created on : Jan 8, 2026, 11:21:08 AM
    Author     : caonh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body { background-color: #f8f9fa; }
            .login-container { max-width: 400px; margin-top: 100px; }
        </style>
    </head>
    <body>
        <div class="container d-flex justify-content-center">
            <div class="login-container w-100">
                <div class="card shadow-sm">
                    <div class="card-header bg-primary text-white text-center py-3">
                        <h4 class="mb-0">Member Login</h4>
                    </div>
                    <div class="card-body p-4">
                        <form action="MainController" method="post">
                            <input type="hidden" name="action" value="login">
                            
                            <div class="mb-3">
                                <label class="form-label">Username</label>
                                <input type="text" name="txtUsername" class="form-control" required placeholder="Enter username"/>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <input type="password" name="txtPassword" class="form-control" required placeholder="Enter password"/>
                            </div>
                            
                            <div class="d-grid gap-2 mt-4">
                                <input type="submit" class="btn btn-primary" value="Login" />
                            </div>
                        </form>
                    </div>
                    
                    <c:if test="${not empty message}">
                        <div class="card-footer text-center">
                            <span class="text-danger small fw-bold">${message}</span>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>