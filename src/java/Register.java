/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author priyansh
 */
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Register extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String UserID = request.getParameter("UserID");
                String Email = request.getParameter("Email");
                String FirstName = request.getParameter("FirstName");
                String LastName = request.getParameter("LastName");
                String qual = request.getParameter("qual");
                String address = request.getParameter("address");
                
                String numb = request.getParameter("numb");
                String gender = request.getParameter("gender");
                String pass = request.getParameter("pass");
        try{
        
        //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database 
          Connection  con=DriverManager.getConnection
                     ("jdbc:mysql://localhost:3306/das","root","root");

        PreparedStatement ps=con.prepareStatement
                  ("insert into User values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, UserID);
		ps.setString(2, Email);
		ps.setString(3, FirstName);
		ps.setString(4, LastName);
                ps.setString(5, qual);
                ps.setString(6, address);
		ps.setString(7, numb);
                ps.setString(8, gender);
                ps.setString(9, pass);
		
		int i=ps.executeUpdate();
		if(i>0)
		out.print("<h1>You are successfully registered...</h1>");
                out.print("<a href='form.jsp'>click here to enter another entry</a>");
		
			
		}catch (Exception e2) {System.out.println(e2);}
        
        }
    }
		
		