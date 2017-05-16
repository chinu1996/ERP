<%-- 
    Document   : form
    Created on : 20 Apr, 2017, 12:31:13 AM
    Author     : priyansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    <head>
        <title>Register form</title>
    </head>
    <body>
        <form method="post" action="register">
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">UserID</label>
        <input type="text" name="UserID" value="${user.UserId}" 
               required><br>
        
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}" 
               required><br>
        
        <label class="pad_top">First Name</label>
        <input type="text" name="FirstName" value="${user.FirstName}"  
               required><br>  
        
        <label class="pad_top">Last Name</label>
        <input type="text" name="LastName" value="${user.LastName}"  
               required><br>  
        
        <label>&nbsp;</label>
        <input type="submit" value="register" />
        </form>
    </body>
</html>
