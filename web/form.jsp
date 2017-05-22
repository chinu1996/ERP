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
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
 $('#UserID').keyup(function() {
  var uname = $('#UserID').val();
  var datastr='UserID='+uname;
  $.ajax({
   type:"post",
   url:"ajaxname",
   data:datastr,
   success:function(msg)
   {
    $("#useravail").hide();
    $("#useravail").html(msg).fadeIn("slow");
   }
  });
 });
});
</script>
        <title>Register form</title>
    </head>
    <body><h1>Enter the details:
        <form method="post" action="register" >
            
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">UserID</label>&nbsp;&nbsp;&nbsp;
        <input type="text" name="UserID" id="UserID" value="${user.UserId}" 
               required><span id="useravail"></span><br>
        
        <label class="pad_top">Email:</label>&nbsp;&nbsp;&nbsp;
        <input type="email" name="Email" value="${user.Email}" 
               required><br>
       
        
        <label class="pad_top">First Name</label>&nbsp;
        <input type="text" name="FirstName" value="${user.FirstName}"  
               required><br>  
        
        <label class="pad_top">Last Name</label>&nbsp;
        <input type="text" name="LastName" value="${user.LastName}"  
               required><br>  
        
        <label class="pad_top">Sex:</label>&nbsp;
        <input type="radio" name="gender" value="male"> Male
        <input type="radio" name="gender" value="female"> Female
        <br>
         <label class="pad_top">Qualifications</label>
        <select name="qual">
			<option value="-1" selected>SELECT..</option>
			<option value="B.tech">B.TECH</option>
			<option value="BBA">BBA</option>
			<option value="M.TECH">M.TECH</option>
        </select><br>
         <label class="pad_top">Permanent Address:</label>&nbsp;&nbsp;
        <input type="text" name="address" value="${user.address}"  
               required><br> 
        <label class="pad_top">Phone number:</label>&nbsp;
        <input type="text" name="numb" value="${user.numb}"  
               required><br> 
        
        
        <label class="pad_top">Password:</label>&nbsp;
        <input type="password" name="pass" value="${user.pass}"  
               required><br> 
        
        
        <label>&nbsp;</label>
        <input type="submit" value="Register" />
        </form>
    
    </body>
</html>
