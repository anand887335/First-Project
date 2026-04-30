<%-- 
    Document   : home
    Created on : 7 Apr 2026, 3:06:08 pm
    Author     : anand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan">
        <% String username = (String) session.getAttribute("username");
        if(username == null || username.trim().equals("")){
           response.sendRedirect("login.html");
        }
            %>
            <h1>Hello And Welcome <%=username%>......!</h1>
        <h2>Login is Completed</h2>
        <a href="logout.jsp"> Sign Out </a>
        
    </body>
</html>
