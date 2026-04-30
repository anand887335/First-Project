<%-- 
    Document   : logout
    Created on : 16 Apr 2026, 7:51:28 pm
    Author     : anand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
        response.sendRedirect("login.html");    

            %>
    </body>
</html>
