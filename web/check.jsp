<%-- 
    Document   : check
    Created on : 17 May, 2017, 1:56:44 PM
    Author     : priyansh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/das","root","root");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from admin where UserID='"+user+"' and password='"+pass+"'");
int count=0;
          while(rs.next())
          {

                   count++;
          }

                    if(count>0)
          {
            out.println("welcome "+user);
            out.println("<a href='index.jsp'>Here </a> is the list of applicants");
            
          }
          else
          {
                       response.sendRedirect("login.jsp?msg=Invalid Username or Password");
          }
%>
