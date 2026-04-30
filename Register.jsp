<%-- 
    Document   : Registration
    Created on : 25 Apr 2026, 10:38:21 pm
    Author     : anand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body bgcolor="cyan">
        <h2>WelCome Registration Page</h2>
        <form action="home.jsp" method="post">
        <table>
                    <tr>
                        <td>Username :</td>
                <td>
                    <input type="text" name="username" 
                           placeholder="Enter username" required>
                </td>
                        <td> <td>Password :</td>
                <td>
                    <input type="password" name="password" 
                           placeholder="Enter password" required>
                </td>
                        <td> <input type="submit" value="Register" 
                           style="background-color:window; color:black; padding:5px 15px;"></td>
                        <td></td>
                    </tr>
        </table>
        </form>
        
    </body>
</html>
