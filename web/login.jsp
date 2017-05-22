<%-- 
    Document   : login
    Created on : 17 May, 2017, 1:55:56 PM
    Author     : priyansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
<script>
function validate(){
var username=document.form.user.value;
var password=document.form.pass.value;
if(username==""){
 alert("Enter Username!");
  return false;
}
if(password==""){
 alert("Enter Password!");
  return false;
}
return true;
}
</script>
<form name="form" method="post" action="check.jsp" onsubmit="javascript:return validate();">
<table>
<tr><td>UserID:</td><td><input type="text" name="user"></td></tr>
<tr><td>Password:</td><td><input type="password" name="pass"></td></tr>
<tr><td></td><td><input type="submit" value="Submit"></td></tr>
</table>
</form>
</html>
<%String msg=request.getParameter("msg");
if(msg!=null){
    %>
<label><font color="red"><%=msg%></font></label> 
<%
}
    %>
