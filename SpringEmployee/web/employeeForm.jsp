<%-- 
    Document   : employeeForm
    Created on : Nov 07, 2021, 9:40:28 AM
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
        <form method="POST" action="resultPage">           
            Employee ID :<input type="text" name="empId"/><br>
            Employee Name :<input type="text" name="empName"/><br>
            Designation :<input type="text" name="designation"/><br>
            Salary :<input type="text" name="salary"/><br>
            <input type="submit" value="SaveData" />
        </form>
    </body>
</html>
