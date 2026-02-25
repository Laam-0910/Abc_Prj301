<%-- 
    Document   : university-form
    Created on : Feb 2, 2026, 10:17:34 AM
    Author     : caonh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--
    private String id;
    private String name;
    private String shortName;
    private String description;
    private int foundedYear;
    private String address;
    private String city;
    private String region;
    private String type;
    private int totalStudents;
    private int totalFaculties;
    private boolean isDraft;-->
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="addUniversity">
            id <input type="text" name="id" value="${u.id}"><br/>
            name <input type="text" name="name" value="${u.name}"><br/>
            shortName <input type="text" name="shortName" value="${u.shortName}"><br/>
            description <input type="text" name="description" value="${u.description}"><br/>
            foundedYear <input type="number" step="1" min="0" name="foundedYear" value="${u.foundedYear}"><br/>
            address <input type="text" name="address" value="${u.address}"><br/>
            city <input type="text" name="city" value="${u.city}"><!-- comment --><br/>
            region <input type="text" name="region" value="${u.region}"><!-- comment --><br/>
            type <input type="text" name="type" value="${u.type}"><!-- comment --><br/>
            totalStudents <input type="number" step="1" min="0" name="totalStudents" value="${u.totalStudents}"><!-- comment --><br/>
            totalFaculties <input type="number" step="1" min="0" name="totalFaculties" value="${u.totalFaculties}"><!-- comment --><br/>
            isDraft <input type="checkbox"  name="isDraft" checked="${u.isDraft}"><!-- comment --><br/>
            <input type="submit" value="Add">
        </form>
        <p style="color: green">${msg}</p>
        <p style="color: red">${error}</p>

    </body>
</html>
