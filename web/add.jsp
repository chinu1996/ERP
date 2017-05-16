<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : add
    Created on : 18 Apr, 2017, 11:11:52 PM
    Author     : priyansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <sql:update var="entry" dataSource="jdbc/das">
        INSERT INTO User
        VALUES ('4','test@gmail.com','t1','t2')
    </sql:update>
    </body>
</html>
