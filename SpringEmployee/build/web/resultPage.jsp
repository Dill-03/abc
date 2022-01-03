<%-- 
    Document   : resultPage
    Created on : Nov 07, 2021, 9:41:08 AM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>Employee ID</th>
                <th>Employee Name</th>
                <th>Designation</th>
                <th>Salary</th>
            </tr>
            <hr>
            <c:forEach var="e" items="${employee}">
                <tr>
                    <td>${e.empId}</td>
                    <td>${e.empName}</td>
                    <td>${e.designation}</td>
                    <td>${e.salary}</td>
                    <td>                      
                        <form method="POST" action="updateForm">
                            <input type="hidden" name="empId" value="${e.empId}"/>
                            <input type="hidden" name="empName" value="${e.empName}"/>
                            <input type="hidden" name="designation" value="${e.designation}"/>
                            <input type="hidden" name="salary" value="${e.salary}"/>
                            <input type="submit" value="Update"/>
                        </form>
                    </td>
                    <td>                      
                        <form method="POST" action="delete">
                            <input type="hidden" name="empId" value="${e.empId}"/>
                            <input type="submit" value="Delete"/>                            
                        </form>
                    </td>
                </tr>
           </c:forEach>
        </table>
    </body>
</html>
