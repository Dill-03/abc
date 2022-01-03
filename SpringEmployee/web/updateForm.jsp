<%-- 
    Document   : updateForm
    Created on : Nov 07, 2021, 9:50:18 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form method="POST" action="update">           
            Employee ID :<input type="text" readonly name="empId" value="${em.empId}"/><br>
            Employee Name :<input type="text" name="empName" value="${em.empName}"/><br>
            Designation :<input type="text" name="designation" value="${em.designation}"/><br>
            Salary :<input type="text" name="salary" value="${em.salary}"/><br>
            <input type="submit" value="UpdateData" />   
        </form>
    </body>
</html>
