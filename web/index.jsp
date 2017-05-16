<%-- 
    Document   : test
    Created on : 15 Apr, 2017, 11:37:28 PM
    Author     : priyansh
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="styles/main.css" type="text/css"/>
<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>

  <h2>Results</h2>
  <sql:query var="user" dataSource="jdbc/das">
      SELECT * FROM User
  </sql:query>
      <sql:query var="result" dataSource="jdbc/das">
          SELECT * FROM User
      </sql:query>
          
      <table border="1">
          <!-- column headers -->
          <tr>
              <c:forEach var="columnName" items="${result.columnNames}">
                  <th><c:out value="${columnName}"/></th>
                  </c:forEach>
          </tr>
          <!-- column data -->
          <c:forEach var="row" items="${result.rowsByIndex}">
              <tr>
                  <c:forEach var="column" items="${row}">
                      <td><c:out value="${column}"/></td>
                  </c:forEach>
              </tr>
          </c:forEach>
      </table>
          <a href="servlet1">click here</a>
  </body>
</html>
